const path = require('path');
const Max = require('max-api');
const fs = require('fs')
const glob = require('glob');
const tf = require('@tensorflow/tfjs-node');
// const { Midi } = require('@tonejs/midi'); // https://github.com/Tonejs/Midi

// Constants 
// const DRUM_CLASSES = require('./src/constants.js').DRUM_CLASSES;
const NUM_FIXTURE_CLASSES = require('.//src/constants.js').NUM_FIXTURE_CLASSES;
const LOOP_DURATION = require('.//src/constants.js').LOOP_DURATION;
const MIN_ONSETS_THRESHOLD = require('./src/constants.js').MIN_ONSETS_THRESHOLD;

// VAE model and Utilities
const utils = require('./src/utils.js');
const vae = require('./src/vae.js');

// This will be printed directly to the Max console
Max.post(`Loaded the ${path.basename(__filename)} script`);
Max.outlet("after");


// Global varibles
var train_data_onsets = []; 
var train_data_velocities = []; 
var train_data_timeshifts = [];
var isGenerating = false;


function getNumOfDrumOnsets(onsets){
    var count = 0;
    for (var i = 0; i < NUM_FIXTURE_CLASSES; i++){
        for (var j=0; j < LOOP_DURATION; j++){
            if (onsets[i][j] > 0) count += 1;
        }
    }
    // Max.post("last", count);
    return count;
}

function process_plist(mat){
    var out_onset = [];
    var onsets2 = new Array(9);
    mat_list = mat.split('[');
    for(var i = 0; i < mat_list.length - 1; i++){
        var split_mat = mat_list[i + 1].split('');
        onsets2[i] = new Array(32);
        for(var j=0; j < 16; j++){
            onsets2[i][j] = Number(split_mat[j * 3]);
            onsets2[i][j + 16] = Number(split_mat[j * 3]);
        }
        
    }
    onsets2[8] = new Array(32);
    for(var k=0; k < 16; k++){
        onsets2[8][k] = 0;
        onsets2[8][k + 16] = 0;
    }
    for(var i = 0; i < 4; i++){
        out_onset.push(onsets2)
    }

    // 2D array to tf.tensor2d
    for (var i=0; i < out_onset.length; i++){
        if (getNumOfDrumOnsets(out_onset[i]) > MIN_ONSETS_THRESHOLD){
            train_data_onsets.push(tf.tensor2d(out_onset[i], [NUM_FIXTURE_CLASSES, LOOP_DURATION]));
            train_data_velocities.push(tf.tensor2d(out_onset[i], [NUM_FIXTURE_CLASSES, LOOP_DURATION]));
            train_data_timeshifts.push(tf.tensor2d(out_onset[i], [NUM_FIXTURE_CLASSES, LOOP_DURATION]));
        }
    }
}

function processdmxpFile(filename){
    var input = fs.readFileSync(filename, 'utf-8');
    process_plist(input);

    return true;
}

// Add training data
Max.addHandler("dmxp", (filename) =>  {
    var count = 0;
    // is directory? 
    for(var aug = 0; aug < 3; aug++){
        if (fs.existsSync(filename) && fs.lstatSync(filename).isDirectory()){
            // iterate over *.dmxp files
            glob(filename + '**/*.dmxp*', {}, (err, files)=>{
                utils.post("# of files in dir: " + files.length);
                if (err) utils.error(err); 
                else {
                    for (var idx in files){   
                        try {
                            if (processdmxpFile(files[idx])) count += 1;
                            // utils.post("after");
                        } catch(error) {
                            console.error("failed to process " + files[idx] + " - " + error);
                          }
                    }
                    // utils.post("# of dmxp files added: " + count);    
                    reportNumberOfBars();
                }
            })
            // Max.post("END!!"); 
        } else {
            if (processdmxpFile(filename)) count += 1;
            // Max.post("# of dmxp files added: " + count);    
            reportNumberOfBars();
        }
    }
});



// Start training! 
Max.addHandler("train", ()=>{
    if (vae.isTraining()){
        utils.error_status("Failed to start training. There is already an ongoing training process.");
        return;
    }

    utils.log_status("Start training...");
    console.log("# of bars in training data:", train_data_onsets.length * 2);
    reportNumberOfBars();
    vae.loadAndTrain(train_data_onsets, train_data_velocities, train_data_timeshifts);
});


// Generate a rhythm pattern
Max.addHandler("generate", (z1, z2, threshold, noise_range = 0.0)=>{
    try {
        generatePattern(z1, z2, threshold, noise_range);
    } catch(error) {
        error_status(error);
    }
});

async function generatePattern(z1, z2, threshold, noise_range){
    if (vae.isReadyToGenerate()){    
      if (isGenerating) return;
  
      isGenerating = true;
      let [onsets, velocities, timeshifts] = vae.generatePattern(z1, z2, noise_range);
      Max.outlet("matrix_clear", 1); // clear all
      for (var i=0; i< NUM_FIXTURE_CLASSES; i++){

          // output for matrix view
          for (var j=0; j < LOOP_DURATION / 2; j++){
              if (onsets[i][j] > threshold){
                Max.outlet("matrix_output", j + 1, i + 1, 1); // index for live.grid starts from 1
              }
          }
      }
      Max.outlet("generated", 1);
      isGenerating = false;
    } else {
      utils.error_status("Model is not trained yet");
  }
}


// Clear training data 
Max.addHandler("clear_train", ()=>{
    train_data_onsets = []; // clear
    train_data_velocities = [];
    train_data_timeshift = [];  

    reportNumberOfBars();
});

Max.addHandler("stop", ()=>{
    vae.stopTraining();
});

Max.addHandler("savemodel", (path)=>{
    // check if already trained or not
    if (vae.isReadyToGenerate()){
        filepath = "file://" + path;
        vae.saveModel(filepath);
        utils.log_status("Model saved.");
    } else {
        utils.error_status("Train a model first!");
    }
});

Max.addHandler("loadmodel", (path)=>{
    filepath = "file://" + path;
    vae.loadModel(filepath);
    utils.log_status("Model loaded!");
});

Max.addHandler("epochs", (e)=>{
    vae.setEpochs(e);
    utils.post("number of epochs: " + e);
});

function reportNumberOfBars(){
    Max.outlet("train_bars", train_data_onsets.length * 2);  // number of bars for training
}

Max.outlet("loaded");
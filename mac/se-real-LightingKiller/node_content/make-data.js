inlets = 1; 
outlets = 1; 

function create2DArray(row, col){
    var x = new Array(row);
    for (var i = 0; i < x.length; i++) {
        x[i] = new Array(col);
        for (var j =0; j < x[i].length; j++){
            x[i][j] = 0;
        }
    }
    return x;
}

// var in01_; //input values of all cell as list(array)
var data = [];
data.push(create2DArray(8, 16));
var data_out = [];

function list()
{
	var in01_ = arguments;

	for( var i = 0; i < 16; i++){
		data[0][in01_[0] - 1][i] = in01_[i + 1]; //入力リストを配列に格納
	}

	data_out[in01_[0] - 1] = String("[" + String(data[0][in01_[0] - 1]) + "]");   

}

var output = function(){
	data_out = String(data_out);
	// post(data_out, "\n");
	outlet(0, data_out);
	// delete data;
	// delete data_out;
}


var clear = function(){
	data = [];
	data.push(create2DArray(8, 16));
	data_out = [];
}

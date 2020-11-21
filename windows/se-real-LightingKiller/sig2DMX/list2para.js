var nums_LED = jsarguments[1];
inlets = 1; 
outlets = nums_LED; 
var in01_; //input values of all cell as list(array)
function list()
{
	in01_ = arguments;
	in_len = in01_.length;
    
	var data = new Array(nums_LED);
	
	for( var i = 0; i < nums_LED; i++){
		data[i] = 0; //入力リストを配列に格納
	}
		
    for( var i = 0; i < in_len; i++){
		data[(in01_[i]-1)] = 1; //入力リストを配列に格納
	}

    for( var t = 0; t < nums_LED; t++){
		// data[t].unshift('brgb');
		outlet( t, data[t] );
	}
    
    delete data;
}
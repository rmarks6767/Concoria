var printString = "";

for (var i = 0; i < argument_count; i++){
	
	if(!is_string(argument[i])){
		
		printString += string(argument[i]);
		
	}else
	{
		
		printString += argument[i];
		
	}
	
}

show_debug_message(printString);

var String = "";

for (var i = 0; i < argument_count; i++){
	
	if(!is_string(argument[i])){
		
		String += string(argument[i]);
		
	}else
	{
		
		String += argument[i];
		
	}
	
}

return String;
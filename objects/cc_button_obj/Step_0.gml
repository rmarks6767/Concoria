/// @description 
if mouse_check_button_pressed(mb_left){

	if (instance_position(mouse_x,mouse_y,cc_button_obj) == self){
		
		pressed = true
		
	}

}
else{
	
	pressed = false
	
}
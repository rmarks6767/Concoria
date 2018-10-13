/// @Check for mouse drags

if mouse_check_button_pressed(mb_left){
	
	if (instance_position(mouse_x,mouse_y,cc_sliderNotch_obj) == self){
		
		pressed = true;
		show_debug_message("pressed")
		
	}

}

if mouse_check_button_released(mb_left){
	
	pressed = false;
	
}


if (pressed == true) {
	
	if (mouse_x > maxx){
			
		x = maxx;
		sliderNum = 255;
		
			
	}
	else if (mouse_x < 0) {
			
		x = minx;
		sliderNum = 0;
			
	}
	else if (mouse_x > minx and mouse_x < maxx){
			
		x = mouse_x;
		sliderNum = maxx - x;
			
	}
	show_debug_message("SliderNum:" + string(sliderNum))
	
}

			


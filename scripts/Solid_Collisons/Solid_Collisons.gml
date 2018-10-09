if speed > 0{
	
	switch(direction){
		
		case 0:  //going right
		
			if instance_place(x+speed,y,solid_obj){
				
				speed = 0;
				
			}
			break;
			
		case 45: //going left and up
		
			if instance_place(x+speed,y-speed,solid_obj){
				
				speed = 0;
				
			}
			break;
			
		case 90: //going up
		
			if instance_place(x,y-speed,solid_obj){
				
				speed = 0;
				
			}
			break;
			
		case 135: //going up and left
		
			if instance_place(x-speed,y-speed,solid_obj){
				
				speed = 0;
				
			}
			break;
		
		case 180: //going left
		 
			if instance_place(x-speed,y,solid_obj){
				
				speed = 0;
				
			}
			break;
			
		case 225: //going left and down
		
			if instance_place(x-speed,y+speed,solid_obj){
				
				speed = 0;
				
			}
			break;
			
		case 270: //going down
		
			if instance_place(x,y+speed,solid_obj){
				
				speed = 0;
				
			}
			break;
			
		case 315: //going down and right
		
			if instance_place(x+speed,y+speed,solid_obj){
				
				speed = 0;
				
			}
			break;
		
	}

}
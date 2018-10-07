if speed > 0{
	
	switch(direction){
		
		case 180:
		
			if instance_place(x-speed,y,solid_obj){
				
				speed = 0;
				
			}
			break;
		
		case 0:
		
			if instance_place(x+speed,y,solid_obj){
				
				speed = 0;
				
			}
			break;
			
		case 90:
		
			if instance_place(x,y-speed,solid_obj){
				
				speed = 0;
				
			}
			break;
		
		case 270:
		
			if instance_place(x,y+speed,solid_obj){
				
				speed = 0;
				
			}
			break;
		
	}

}
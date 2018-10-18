//Purpose: Checking collisions with "solid" objects in all directions. This is used by both the player
//and enemies

//Array of all solid objects
solidArray[0] = solid_obj;
solidArray[1] = player;
solidArray[2] = baseEnemyInheritance;
solidArray[3] = baseHorse;

//Loop through and check for each type of object
for	(var i = 0; i < array_length_1d(solidArray); i++)
{
	//make sure we are moving before we even start running the script uneccessarily
	if speed > 0{
		
		//grab every instance at every direction
		var inst0 = instance_place(x + 1*speed, y,solidArray[i])
		var inst45 = instance_place(x + 1*speed,y - 1*speed,solidArray[i])
		var inst90 = instance_place(x,y-1*speed,solidArray[i])
		var inst135 = instance_place(x-1*speed,y-1*speed,solidArray[i])
		var inst180 = instance_place(x-1*speed,y,solidArray[i])
		var inst225 = instance_place(x-1*speed,y+1*speed,solidArray[i])
		var inst270 = instance_place(x,y+1*speed,solidArray[i])
		var inst315 = instance_place(x+1*speed,y+1*speed,solidArray[i])
		
		//Check each direction starting from zero and going up
		
		//Right
		if ( (direction > 0 and direction <= 22.5) or ( direction > 337.5 or direction <= 0) ){
			
			
			if (inst0 != noone and inst0!= self){show_debug_message("IN COLLISION")
				speed = 0;
				show_debug_message("IN COLLISION")
				
			}
			
		}
		//Top Right
		else if ( direction > 22.5 and direction <= 67.5 ){
			
			if (inst45 and inst45!= self){
				
				speed = 0;
				show_debug_message("IN COLLISION")
				
			}
			
		}
		//Top
		else if ( direction > 67.5 and direction <= 112.5 ){
			
			if (inst90 and inst90!= self){
				
				speed = 0
				show_debug_message("IN COLLISION")
				
			}
			
		}
		//Top Left
		else if ( direction > 112.5 and direction <= 157.5 ){
			
			if (inst135 and inst135!= self){
				
				speed = 0;
				show_debug_message("IN COLLISION")
				
			}
			
		}
		//Left
		else if ( direction > 157.5 and direction <= 202.5 ){
			
			if (inst180 and inst180!= self){
				
				speed = 0;
				show_debug_message("IN COLLISION")
				
				
			}
			
		}
		//South Left
		else if ( direction > 202.5 and direction <= 247.5 ){
			
			if (inst225 and inst225!= self){
				
				speed = 0;
				show_debug_message("IN COLLISION")
				
			}
			
		}
		//South
		else if ( direction > 247.5 and direction <= 292.5 ){
			
			if (inst270 and inst270!= self){
				
				speed = 0;
				show_debug_message("IN COLLISION")
				
			}
			
		}
		//South Right
		else if ( direction > 202.5 and direction <= 337.5 ){
			
			if (inst315 and inst315!= self){
				
				speed = 0;
				show_debug_message("IN COLLISION")
				
			}
			
		}
		
	}
	
	if speed < 0{
		
		//grab every instance at every direction
		var inst0 = instance_place(x + 1*-speed, y,solidArray[i])
		var inst45 = instance_place(x + 1*-speed,y - 1*speed,solidArray[i])
		var inst90 = instance_place(x,y-1*-speed,solidArray[i])
		var inst135 = instance_place(x-1*-speed,y-1*speed,solidArray[i])
		var inst180 = instance_place(x-1*-speed,y,solidArray[i])
		var inst225 = instance_place(x-1*-speed,y+1*speed,solidArray[i])
		var inst270 = instance_place(x,y+1*-speed,solidArray[i])
		var inst315 = instance_place(x+1*-speed,y+1*speed,solidArray[i])
		
		//Check each direction starting from zero and going up
		
		//Right
		if ( (direction > 0 and direction <= 22.5) or ( direction > 337.5 or direction <= 0) ){
			
			
			if (inst180 != noone and inst180!= self){show_debug_message("IN COLLISION")
				speed = 0;
				show_debug_message("IN COLLISION")
				
			}
			
		}
		//Top Right
		else if ( direction > 22.5 and direction <= 67.5 ){
			
			if (inst225 and inst225!= self){
				
				speed = 0;
				show_debug_message("IN COLLISION")
				
			}
			
		}
		//Top
		else if ( direction > 67.5 and direction <= 112.5 ){
			
			if (inst270 and inst270!= self){
				
				speed = 0
				show_debug_message("IN COLLISION")
				
			}
			
		}
		//Top Left
		else if ( direction > 112.5 and direction <= 157.5 ){
			
			if (inst315 and inst315!= self){
				
				speed = 0;
				show_debug_message("IN COLLISION")
				
			}
			
		}
		//Left
		else if ( direction > 157.5 and direction <= 202.5 ){
			
			if (inst0 and inst0!= self){
				
				speed = 0;
				show_debug_message("IN COLLISION")
				
				
			}
			
		}
		//South Left
		else if ( direction > 202.5 and direction <= 247.5 ){
			
			if (inst45 and inst45!= self){
				
				speed = 0;
				show_debug_message("IN COLLISION")
				
			}
			
		}
		//South
		else if ( direction > 247.5 and direction <= 292.5 ){
			
			if (inst90 and inst90!= self){
				
				speed = 0;
				show_debug_message("IN COLLISION")
				
			}
			
		}
		//South Right
		else if ( direction > 202.5 and direction <= 337.5 ){
			
			if (inst135 and inst135!= self){
				
				speed = 0;
				show_debug_message("IN COLLISION")
				
			}
			
		}
		
	}
	
}
//with (italianHouseOutside)
//{
//	var doorx1 = x + 96; 
//	var doory1 = y + 366;
//	var doorx2 = x + 155;
//	var doory2 = y + 410;
	
//	var x1 = x + 18
//	var y1 = y + 210
//	var x2 = x + 206
//	var y2 = y + 365
//}
	
//		if ((player.x > doorx1 and player.x < doorx2) and (player.y > doory1 and player.y < doory2) or (player.x > x1 and player.x < x2) and (player.y > y1 and player.y < y2)) //collision with the door and room
//		{
//			with (italianHouseOutside)
//			{
//				with (instance)
//				{
//					if (image_alpha > 0)
//					{
//						alarm[0] = 1;	
//					}
//				}
//			}
//			return 1;	
//		}
//		else if not((player.x > doorx1 and player.x < doorx2) and (player.y > doory1 and player.y < doory2) or (player.x > x1 and player.x < x2) and (player.y > y1 and player.y < y2))
//		{
//			with (italianHouseOutside)
//			{
//				with (instance)
//				{
//					if (image_alpha < 1)
//					{
//						alarm[1] = 1;	
//					}
//				}
//			}
//			return 0;	
//		}






///////other code stuffs///////////

////Purpose: Checking collisions with "solid" objects in all directions. This is used by both the player
////and enemies

////Array of all solid objects
//solidArray[0] = solid_obj;
//solidArray[1] = player;
//solidArray[2] = baseEnemyInheritance;
//solidArray[3] = italianHouseOutside;

////Loop through and check for each type of object
//for	(var i = 0; i < array_length_1d(solidArray); i++)
//{
//	//make sure we are moving before we even start running the script uneccessarily
//	if speed > 0{
		
		
		
		
		
//		//grab every instance at every direction
//		var inst0 = instance_place(x + 1*speed, y,solidArray[i])
//		var inst45 = instance_place(x + 1*speed,y - 1*speed,solidArray[i])
//		var inst90 = instance_place(x,y-1*speed,solidArray[i])
//		var inst135 = instance_place(x-1*speed,y-1*speed,solidArray[i])
//		var inst180 = instance_place(x-1*speed,y,solidArray[i])
//		var inst225 = instance_place(x-1*speed,y+1*speed,solidArray[i])
//		var inst270 = instance_place(x,y+1*speed,solidArray[i])
//		var inst315 = instance_place(x+1*speed,y+1*speed,solidArray[i])
		
//		with (italianHouseOutside)
//		{
//			var x1 = x + 18
//			var y1 = y + 210
//			var x2 = x + 206
//			var y2 = y + 365
							
//			var doorx1 = x + 96; 
//			var doory1 = y + 366;
//			var doorx2 = x + 155;
//			var doory2 = y + 369;
//		}
		
//		//Check each direction starting from zero and going up
		
//		//Right
//		if ( (direction > 0 and direction <= 22.5) or ( direction > 337.5 or direction <= 0) ){
			
			
//			if (inst0 != noone and inst0 != self){
				
//				if i == 3
//				{
//					var truth = entering(); 
//					if (truth == 1)
//					{
							
//					}
//					else
//					{
//						with (player)
//						{
//							speed = 0;
//						}
//					}
//				}
//				else
//				{
//					speed = 0;
//					show_debug_message("IN COLLISION Not House")
//				}
				
//			}
			
//		}
//		//Top Right
//		else if ( direction > 22.5 and direction <= 67.5 ){
			
//			if (inst45 != noone and inst45 != self){
				
//				if i == 3
//				{
//					var truth = entering(); 
//					if (truth == 1)
//					{
							
//					}
//					else
//					{
//						with (player)
//						{
//							speed = 0;
//						}	
//					}
//				}
//				else
//				{
//					speed = 0;
//					show_debug_message("IN COLLISION Not House")
//				}
				
//			}
			
//		}
//		//Top
//		else if ( direction > 67.5 and direction <= 112.5 ){
			
//			if (inst90 != noone and inst90 != self){
				
//				if i == 3
//				{
//					var truth = entering(); 
//					if (truth ==1)
//					{
							
//					}
//					else
//					{
//						with (player)
//						{
//							speed = 0;
//						}	
//					}
//				}
//				else
//				{
//					speed = 0;
//					show_debug_message("IN COLLISION Not House")
//				}
				
//			}
			
//		}
//		//Top Left
//		else if ( direction > 112.5 and direction <= 157.5 ){
			
//			if (inst135 != noone and inst135 != self){
				
//				if i == 3
//				{
//					var truth = entering(); 
//					if (truth == 1)
//					{
							
//					}
//					else
//					{
//						with (player)
//						{
//							speed = 0;
//						}	
//					}
//				}
//				else
//				{
//					speed = 0;
//					show_debug_message("IN COLLISION Not House")
//				}
				
//			}
			
//		}
//		//Left
//		else if ( direction > 157.5 and direction <= 202.5 ){
			
//			if (inst180 != noone and inst180 != self){
				
//				if i == 3
//				{
//					var truth = entering(); 
//					if (truth == 1)
//					{
							
//					}
//					else
//					{
//						with (player)
//						{
//							speed = 0;
//						}	
//					}
//				}
//				else
//				{
//					speed = 0;
//					show_debug_message("IN COLLISION Not House")
//				}
				
//			}
			
//		}
//		//South Left
//		else if ( direction > 202.5 and direction <= 247.5 ){
			
//			if (inst225 != noone and inst225 != self){
				
//				if i == 3
//				{
//					var truth = entering(); 
//					if (truth == 1)
//					{
							
//					}
//					else
//					{
//						with (player)
//						{
//							speed = 0;
//						}	
//					}
//				}
//				else
//				{
//					speed = 0;
//					show_debug_message("IN COLLISION Not House")
//				}
				
//			}
			
//		}
//		//South
//		else if ( direction > 247.5 and direction <= 292.5 ){
			
//			if (inst270 != noone and inst270 != self){
				
//				if i == 3
//				{
//					var truth = entering(); 
//					if (truth == 1)
//					{
							
//					}
//					else
//					{
//						with (player)
//						{
//							speed = 0;
//						}	
//					}
//				}
//				else
//				{
//					speed = 0;
//					show_debug_message("IN COLLISION Not House")
//				}
				
//			}
			
//		}
//		//South Right
//		else if ( direction > 202.5 and direction <= 337.5 ){
			
//			if (inst315 != noone and inst315 != self){
				
//				if i == 3
//				{
//					var truth = entering(); 
//					if (truth == 1)
//					{
							
//					}
//					else
//					{
//						with (player)
//						{
//							speed = 0;
//						}	
//					}
//				}
//				else
//				{
//					speed = 0;
//					show_debug_message("IN COLLISION Not House")
//				}
				
//			}
			
//		}
	
//	if speed < 0{
		
//		//grab every instance at every direction
//		var inst0 = instance_place(x + 1*-speed, y,solidArray[i])
//		var inst45 = instance_place(x + 1*-speed,y - 1*speed,solidArray[i])
//		var inst90 = instance_place(x,y-1*-speed,solidArray[i])
//		var inst135 = instance_place(x-1*-speed,y-1*speed,solidArray[i])
//		var inst180 = instance_place(x-1*-speed,y,solidArray[i])
//		var inst225 = instance_place(x-1*-speed,y+1*speed,solidArray[i])
//		var inst270 = instance_place(x,y+1*-speed,solidArray[i])
//		var inst315 = instance_place(x+1*-speed,y+1*speed,solidArray[i])
		
//		//Check each direction starting from zero and going up
		
//		//Right
//		if ( (direction > 0 and direction <= 22.5) or ( direction > 337.5 or direction <= 0) ){
			
			
//			if (inst180 != noone and inst180 != self){show_debug_message("IN COLLISION")
//				if i == 3
//				{
//					var truth = entering(); 
//					if (truth == 1)
//					{
							
//					}
//					else
//					{
//						with (player)
//						{
//							speed = 0;
//						}	
//					}
//				}
//				else
//				{
//					speed = 0;
//					show_debug_message("IN COLLISION Not House")
//				}
				
//			}
			
//		}
//		//Top Right
//		else if ( direction > 22.5 and direction <= 67.5 ){
			
//			if (inst225 and inst225!= self){
				
//				if i == 3
//				{
//					var truth = entering(); 
//					if (truth == 1)
//					{
							
//					}
//					else
//					{
//						with (player)
//						{
//							speed = 0;
//						}	
//					}
//				}
//				else
//				{
//					speed = 0;
//					show_debug_message("IN COLLISION Not House")
//				}
				
//			}
			
//		}
//		//Top
//		else if ( direction > 67.5 and direction <= 112.5 ){
			
//			if (inst270 and inst270!= self){
				
//				if i == 3
//				{
//					var truth = entering(); 
//					if (truth == 1)
//					{
							
//					}
//					else
//					{
//						with (player)
//						{
//							speed = 0;
//						}	
//					}
//				}
//				else
//				{
//					speed = 0;
//					show_debug_message("IN COLLISION Not House")
//				}
				
//			}
			
//		}
//		//Top Left
//		else if ( direction > 112.5 and direction <= 157.5 ){
			
//			if (inst315 and inst315!= self){
				
//				if i == 3
//				{
//					var truth = entering(); 
//					if (truth == 1)
//					{
							
//					}
//					else
//					{
//						with (player)
//						{
//							speed = 0;
//						}	
//					}
//				}
//				else
//				{
//					speed = 0;
//					show_debug_message("IN COLLISION Not House")
//				}
				
//			}
			
//		}
//		//Left
//		else if ( direction > 157.5 and direction <= 202.5 ){
			
//			if (inst0 and inst0!= self){
				
//				if i == 3
//				{
//					var truth = entering(); 
//					if (truth == 1)
//					{
							
//					}
//					else
//					{
//						with (player)
//						{
//							speed = 0;
//						}	
//					}
//				}
//				else
//				{
//					speed = 0;
//					show_debug_message("IN COLLISION Not House")
//				}
				
//			}
			
//		}
//		//South Left
//		else if ( direction > 202.5 and direction <= 247.5 ){
			
//			if (inst45 and inst45 != self){
				
//				if i == 3
//				{
//					var truth = entering(); 
//					if (truth == 1)
//					{
							
//					}
//					else
//					{
//						with (player)
//						{
//							speed = 0;
//						}	
//					}
//				}
//				else
//				{
//					speed = 0;
//					show_debug_message("IN COLLISION Not House")
//				}
				
//			}
			
//		}
//		//South
//		else if ( direction > 247.5 and direction <= 292.5 ){
			
//			if (inst90 and inst90!= self){
				
//				if i == 3
//				{
//					var truth = entering(); 
//					if (truth == 1)
//					{
							
//					}
//					else
//					{
//						with (player)
//						{
//							speed = 0;
//						}	
//					}
//				}
//				else
//				{
//					speed = 0;
//					show_debug_message("IN COLLISION Not House")
//				}
				
//			}
			
//		}
//		//South Right
//		else if ( direction > 202.5 and direction <= 337.5 ){
			
//			if (inst135 and inst135!= self){
				
//				if i == 3
//				{
//					var truth = entering(); 
//					if (truth == 1)
//					{
							
//					}
//					else
//					{
//						with (player)
//						{
//							speed = 0;
//						}	
//					}
//				}
//				else
//				{
//					speed = 0;
//					show_debug_message("IN COLLISION Not House")
//				}
				
//			}
			
//		}
//	}
//}
//}



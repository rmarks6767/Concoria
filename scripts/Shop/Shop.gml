//Purpose: Determining behavior for shop npcs

direction = 270;
var closestPlayer = 0;
if (instance_exists(player)){
	closestPlayer = instance_nearest(x,y,player);
}

//If a player hits E, The closest player opens a shop menu(this will need to be fixed later when multiplayer happens)
if (keyboard_check_pressed(ord("E"))){
	
	if (distance_to_object(closestPlayer) <= shopRadius ){
		
		if (shopOpen == false){
				
			shopOpen = true;
				
		}else{
	
			shopOpen = false;
		
		}
	
	}
}

//If the player moves outside of the radius of the shop. Close the menu
if (shopOpen == true){
	
	if (distance_to_object(closestPlayer) > shopRadius){
		
		shopOpen = false;
		
	}
	
}
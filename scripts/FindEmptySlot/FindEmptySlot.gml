//Purpose: Finds first available empty slot in player's inventory and returns the index. Returns -1 if no slot is found.
var ply = argument0
for (var i = 0; i < 5; i ++){
	
	if (ply.Inventory[i,0] == ""){
		
		//Found a slot. Return the index
		return i;
		
	}
	
	
}

//Nothing found. Return -1;
return -1;
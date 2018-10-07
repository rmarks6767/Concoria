//Purpose: Return the slot which is equipped
var ply = argument0;

for (i =0; i < 5; i+=1){

    if ply.Inventory[i,3] == true{
		
            return i
    
    }
}
return -1
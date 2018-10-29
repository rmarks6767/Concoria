//Purpose: Overwrites all info fields of a player's inventory slot. default can be typed into parameters to skip arguments

var ply = argument0;
var slot = argument1;
var name = argument2;
var quantity = argument3;
var type = argument4;

if (name != "default"){
	ply.Inventory[slot,0] = name;
}
if (quantity != "default"){
	ply.Inventory[slot,1] = quantity;
}
if (type != "default"){
	ply.Inventory[slot,2] = type;
}
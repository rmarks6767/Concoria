//Purpose: Clears the slot of a player's inventory
var ply = argument0;
var slot = argument1;

ply.Inventory[slot,0] = "";
ply.Inventory[slot,1] = 0;
ply.Inventory[slot,2] = "none";
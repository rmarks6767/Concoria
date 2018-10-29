//Purpose: Give the player their proper items based on their name

var ply = argument0;
var itemName = argument1;
var emptySlot = FindEmptySlot(ply);
var type = GetItemType(itemName);

if (emptySlot > -1){
	
	ReplacePlayerSlot(ply,emptySlot,itemName,1,type);
	
}
else{
	
	
	CreateFloorItem(itemName,type,1,currentCustomer.x,currentCustomer.y);
	
}
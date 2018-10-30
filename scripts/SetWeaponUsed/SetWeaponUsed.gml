//Purpose: Give enemies correct weapons based on their weaponUsed variable
var weaponUsed = argument0;

if weaponUsed == 0{
	itemHolding[0] =  "Iron Sword"
    itemHolding[1] =  "Sword"
	ranged = false;
}else if weaponUsed == 1{
	itemHolding[0] = "Wooden Sword" 
	itemHolding[1] = "Sword"
	ranged = false;
}else if weaponUsed == 2{
	itemHolding[0] = "Short Bow" 
	itemHolding[1] = "Bow" 
	ranged = true;
}else if weaponUsed == 3{
	itemHolding[0] = "Wooden Staff" 
	itemHolding[1] = "Staff" 
	ranged = true;
}else if weaponUsed == 4{
	itemHolding[0] = ""  //they spawn wesponless
	itemHolding[1] = ""
	ranged = false;
}else{
	itemHolding[0] = "" 
	itemHolding[1] = ""
	ranged = false;
}
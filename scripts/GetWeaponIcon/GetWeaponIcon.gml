//PURPOSE: Return the proper weapon icon to the hud to draw on inventory slots
var itemName = argument0;

switch (itemName){
	
	case "":
		return nodraw;
		break;
	case "Iron Sword":
		return sword_iron_icon;
		break;
	case "Wooden Sword":
		return sword_wood_icon;
		break;
	default:
		return oof;
		break;
}
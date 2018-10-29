//Purpose: Return an item's type
var itemName = argument0

switch(itemName){
	
	case "Iron Sword":
		return "Sword";
		break;
		
	case "Wooden Sword":
		return "Sword";
		break;
	
	case "Wooden Staff":
		return "Staff";
		break;
			
	case "Wooden Bow":
		return "Bow";
		break;
	default:
		return "NULL";
		break;
}

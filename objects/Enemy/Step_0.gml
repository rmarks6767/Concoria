
state = "Stationary";


switch(state)
{
	case "Stationary":
		Stationary(enemy_health);
		
	case "Wandering":
		Wander(enemy_health);
		
	case "Attacking":
		Attacking(enemy_health);
	
	case "Army":
		armyColab(enemy_health);
	
	default:
		show_debug_message("oh fuck, no state for enemy")
		break;
	
}
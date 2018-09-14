
state = 1;


switch(state)
{
	case "Stationary":
		Stationary();
	case "Wandering":
		Wander();
	case "Attacking":
		Attacking();
	case "Army":
		armyColab();
	default:
		break;
	
}
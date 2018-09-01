
state = 1;


switch(state) {
	case "Stationary":
		Stationary();
	case "Wandering":
		Wander();
	case "Attacking":
		Attacking();
	default:
		break;
	
}
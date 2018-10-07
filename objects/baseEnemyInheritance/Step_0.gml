



switch(thestate)
{
	case state.stationary:
		Stationary(objectName);
	case state.wandering:
		Wander(objectName);
	case state.attacking:
		Attacking(objectName);
	case state.dying:
		Dying(objectName);
	case state.fleeing:
		Fleeing(objectName);
	case state.townDwelling:
		TownDwelling(objectName);
	case state.lowHealth:
		LowHealth(objectName);
	case state.exploring:
		Exploring(objectName);
	case state.goingHome:
		GoingHome(objectName);
	case state.blocking:
	
}
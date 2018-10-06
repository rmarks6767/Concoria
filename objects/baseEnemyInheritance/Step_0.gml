



switch(thestate)
{
	case state.stationary:
		Stationary(dropables, enemyHealth, thestate, playerFriendly, playerClose, enemyFriendly);
	case state.wandering:
		Wander();
	case state.attacking:
		Attacking();
	case state.dying:
		Dying();
	case state.fleeing:
		Fleeing();
	case state.townDwelling:
		TownDwelling();
	case state.lowHealth:
		LowHealth();
	case state.exploring:
		Exploring();
	case state.goingHome:
		GoingHome();
	case state.blocking:
	
}
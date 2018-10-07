

sprite_index = GetEnemySprite(objectName,inBattle,direction,speed);

switch(thestate)
{
	case state.stationary:
		Stationary();
	case state.wandering:
		if !alarm[0]{
			Wander();
			alarm[0] = irandom_range(20,50);
		}
	case state.attacking:
		Attacking(objectName);
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
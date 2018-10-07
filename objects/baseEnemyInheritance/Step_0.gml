

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
sprite_index = GetNPCSprite(objectName,inBattle,direction,speed);

switch(horseState)
{
	case horse.wander:
		if !alarm[0] and fleeing != true
		{
			alarm[0] = round(random_range(60, 120));
		}
		break;
	case horse.riding:
		horseRiding();
		break;
	case horse.flee:
	if !alarm[1]
	{
		fleeing = true; 
		horseFlee(direction, speed);
		alarm[1] = round(random_range(90, 180));
	}
		break;	
}

if baseHorse.horseHealth <= 0
{
	instance_destroy(self);
}


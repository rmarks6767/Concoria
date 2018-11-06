SaveInstances(id, (id - 100000));

horseHealth = 50;
inBattle = false;
fleeing = false;

enum horse
{
	wander,
	riding,
	flee
}

horseState = horse.wander;
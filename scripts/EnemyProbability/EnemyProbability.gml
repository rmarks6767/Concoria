//enemy_health = argument0;
enemy_health = 76;
player_health = 19;
smallarmy = 7;
//arrayEnemyHealth[instance_number(Enemy)]  //sets array to the number of enemies in the room
totalHealth = 0;//REMOVE WHEN THE TRUE VALUE IS CALLED
	
if distance_to_object(instance_nearest(x, y, Enemy)) < 500 //checks the distance to the nearest dudes
{
	for (var i = 0; i < (instance_number(Enemy)-1); i++)
	{
		with (instance_find(Enemy, i))
		{
			arrayEnemyHealth[i] = enemy_health
		}
	}
		
	for (i = 0; i < (instance_number(Enemy)-1); i++)
	{
		totalHealth += arrayEnemyHealth[i]
	}
}
	
probability = ((log10(totalHealth/((instance_number(Enemy)-1)*100)+9))*((instance_number(Enemy)-1)/smallarmy)*(abs(enemy_health - player_health))/100);

show_debug_message(probability);

return probability
	
	
	
	
	
	
	
	
	
	
SaveInstances(id, (id - 100000));

houseWidth = x + 226;
houseHeight = y + 370;
house_x = x;
house_y = y + 150;

	if ((player.x > house_x && player.x < houseWidth) && (player.y > house_y && player.y < houseHeight))
	{
		with (instance)
		{
			if (image_alpha > 0)
			{
				alarm[0] = 1;
			}
		}
	}
	else
	{
		with (instance)
		{
			if image_alpha < 1
			{
				alarm[1] = 1;
			}
		}
	}
	//if (player.y < y)
	//{
	//	depth = player.depth - 1;	
	//}
	//else
	//{
	//	depth = player.depth + 1;	
	//}
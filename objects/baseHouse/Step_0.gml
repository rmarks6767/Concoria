houseWidth = x + 241;
houseHeight = y + 500;
house_x = x;
house_y = y + 20;

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


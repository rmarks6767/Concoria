houseWidth = x + 113;
houseHeight = y + 370;
house_x = x;
house_y = y + 153;

	if ((player.x > house_x && player.x < houseWidth) && (player.y > house_y && player.y < houseHeight))
	{
		with (partM)
		{
			if (image_alpha > 0)
			{
				image_alpha = 0; //alarm[2] = 1;
			}
		}
	}
	else
	{
		with (partM)
		{
			if image_alpha < 1
			{
				image_alpha = 1; //alarm[3] = 1;
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
houseWidth = self.x
houseHeight = self.y
house_x = self.x;
house_y = self.y + 150;

	if ((player.x > house_x and player.x < houseWidth) and (player.y > house_y and player.y < houseHeight))
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
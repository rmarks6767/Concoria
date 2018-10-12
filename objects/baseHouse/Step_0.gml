houseWidth = x + 241;
houseHeight = y + 500;
house_x = x;
house_y = y + 20;


//changes the image alpha when the player enters the house
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
	
	
	////checks left wall
	//if (player.x >= (x + 15) && player.x <= (x + 31))
	//{
	//	with (player)
	//	{
	//		x -= 1;
			
	//	}
	//}
	//if (player.y >= (y + 200) && player.y <= (y + 499))
	//{
	//	with (player)
	//	{
	//		y -= 1;
			
	//	}
	//}
	
	////checks right wall
	
	////checks bottom wall #1
	
	////checks bottom wall #2
	
	////checks top wall.
	


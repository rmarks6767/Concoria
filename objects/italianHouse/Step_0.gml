

houseWidth = 61;
houseHeight = 81;
house_x = x;
house_y = y + 20;

if ((player.x > house_x && player.x < houseWidth) && (player.y > house_y && player.y < houseHeight))
{
	with(italianHouseOutside)
	{
		while (image_alpha > 0)
		{
			image_alpha -= 0.01;
		}
	}
}



houseWidth = x + 61;
houseHeight = y + 81;
house_x = x;
house_y = y + 20;

if ((player.x > house_x && player.x < houseWidth) && (player.y > house_y && player.y < houseHeight))
{
	if image_alpha > 0
	{
		alarm[0] = 1;
	}
}
else
{
	if image_alpha < 100
	{
		alarm[1] = 1;
	}
}


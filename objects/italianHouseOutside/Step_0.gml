

houseWidth = x + 61;
houseHeight = y + 81;
house_x = x;
house_y = y + 20;

if ((player.x > house_x && player.x < houseWidth) && (player.y > house_y && player.y < houseHeight))
{
	if (image_alpha > 0)
	{
		show_debug_message(string(image_alpha))
		alarm[0] = 1;
	}
}
else
{
	if image_alpha < 1
	{
		alarm[1] = 1;
	}
}


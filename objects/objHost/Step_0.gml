if ((mouse_x > x && mouse_x < (x + 344)) && (mouse_y > y && mouse_y < (y + 66)))
{
	if (mouse_check_button_released(mb_left))
	{
		room_goto(Host);
	}
	sprite_index = sprHostSelected;
}
else
{
	sprite_index = sprHost;	
}
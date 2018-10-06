if ((mouse_x > x && mouse_x < (x + 344)) && (mouse_y > y && mouse_y < (y + 66)) && room != Join)
{
	if (mouse_check_button_released(mb_left))
	{
		room_goto(Join);
	}
	sprite_index = sprJoinSelected;
}
else
{
	sprite_index = sprJoin;	
}
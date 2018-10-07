if ((mouse_x > x && mouse_x < (x + (195 * 2.5))) && (mouse_y > y && mouse_y < (y + (31 * 2.5))))
{
	show_debug_message("help me i wanna die")
	if (mouse_check_button_released(mb_left) )
	{
		room_goto(World);
	}
	sprite_index = sprStartGameSelected;
	
}
else
{
	sprite_index = sprStartGame;
}
if ((mouse_x > x && mouse_x < (x + 148)) && (mouse_y > y && mouse_y < (y + 35)) )
{
	if (mouse_check_button_released(mb_left))
	{
		
	}
	sprite_index = sprConnectClicked;
}
else
{
	sprite_index = sprConnect;	
}
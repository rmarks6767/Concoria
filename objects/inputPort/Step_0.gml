if ((mouse_x > x && mouse_x < (x + 180)) && (mouse_y > y && mouse_y < (y + 25)))
{
	if (mouse_check_button_released(mb_left))
	{
		global.port = get_string("Enter the port you wish to connect to:", "");
	}
}
else
{
	
}
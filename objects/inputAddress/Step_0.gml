if ((mouse_x > x && mouse_x < (x + 180)) && (mouse_y > y && mouse_y < (y + 25)))
{
	if (mouse_check_button_released(mb_left))
	{
		ipAddress = get_string("Enter the IP address you wish to connect to: (be sure to include dots)", "xxx.xx.xx.xxx");
	}
}
else
{
	
}
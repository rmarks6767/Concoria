var door = instance_place(x+1, y, Door)
var housel = instance_place(x+1, y, HouseL)
var houser = instance_place(x+1, y, HouseR)
var housem = instance_place(x+1, y, HouseM)



if checked == false and (door != noone or housel != noone or houser != noone or housem != noone)
{
	if (door != noone)
	{
		with (door)
		{
			partD = partL
		}
	}
	else if (housel != noone)
	{
		with (housel)
		{
			partL = partL
		}
	}
	else if (houser != noone)
	{
		with (houser)
		{
			partR = partL
		}
	}
	else if (housem != noone)
	{
		with (housem)
		{
			partM = partL
		}
	}
}

houseWidth = x + 113;
houseHeight = y + 370;
house_x = x;
house_y = y + 153;

	if ((player.x > house_x && player.x < houseWidth) && (player.y > house_y && player.y < houseHeight))
	{
		with (partL)
		{
			if (image_alpha > 0)
			{
				image_alpha = 0; //alarm[2] = 1;
			}
		}
	}
	else
	{
		with (partL)
		{
			if image_alpha < 1
			{
				image_alpha = 1; //alarm[3] = 1;
			}
		}
	}
	//if (player.y < y)
	//{
	//	depth = player.depth - 1;	
	//}
	//else
	//{
	//	depth = player.depth + 1;	
	//}
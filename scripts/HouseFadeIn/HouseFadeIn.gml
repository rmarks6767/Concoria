for (var i = 0; i < array_length_2d(global.houseGroup, self.groupid); i++)
{
	with (global.houseGroup[self.groupid, i])
	{
		with(self.part)
		{
			if (image_alpha > 0)
			{
				alarm[0] = 1;	
			}
		}
	}
}

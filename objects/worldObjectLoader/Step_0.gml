


viewx = camera_get_view_x(view_camera[0]) 
viewy = camera_get_view_y(view_camera[0])
viewheight = camera_get_view_height(view_camera[0])
viewwidth = camera_get_view_width(view_camera[0])

viewx1 = viewx;
viewy1 = viewy;
viewx2 = viewx1 + viewwidth;
viewy2 = viewy1 + viewheight;
padding = -100;
//var objectStorage;

numInstances = instance_count;
var fobjx = 0;
var fobjy = 0;

for (i = 0; i < numInstances; i++)
{
	instids[i] = instance_id[i]; 
	if instids[i] != noone
	{
		with(instids[i])
		{
			fobjx = x;
			fobjy = y;
		}
		if ((fobjx < (viewx1 - padding) or fobjx > (viewx2 + padding)) or (fobjy < (viewy1 - padding) or fobjy > (viewy2 + padding)))
		{
			storedids[counterStore] = instids[i];	
			counterStore = counterStore + 1;
		}
		else
		{
		
		}
	}
	
}
var null = 0;
//will store x, y, instance_id, health, state (if applicable)
if(array_length_1d(storedids) > 0)
{
	
	for (i = counterFull; i < array_length_1d(storedids); i++)
	{
			var lobjx = 0;
			var lobjy = 0;
			with (storedids[counterFull])
			{
				lobjx = x;
				lobjy = y;
			}
			objectStorage[i, 0] = lobjx;      //x pos of instance
			objectStorage[i, 1] = lobjy;  //y pos of instance
			objectStorage[i, 2] = storedids[counterFull];    //instance Id
			counterFull = counterFull + 1;
	}
	var wide = (viewx2 - viewx1) + padding*2
	
	var high =(viewy2 - viewy1) + padding*2
	show_debug_message(string(wide) + "::" + string(high))
	instance_deactivate_region(viewx1 - padding, viewy1 - padding, wide,high, false, true)


	for (p = 0; p < array_length_1d(storedids); p++) 
	{
		if array_length_2d(objectStorage, p) > 0
		{
			var objx = objectStorage[p, 0];
			var objy = objectStorage[p, 1];
			var inst = objectStorage[p, 2];	
				if ((objx > viewx1 - padding && objx < viewx2 + padding) && (objy > viewy1 - padding && objy < viewy2 + padding))
				{
					inst = instance_activate_object(inst)
				}
		}
	}
}
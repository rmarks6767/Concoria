
				
var storedids;
storedids[0] = 0;
counter = 0;

viewx = camera_get_view_x(view_camera[0]) 
viewy = camera_get_view_y(view_camera[0])
viewheight = camera_get_view_height(view_camera[0])
viewwidth = camera_get_view_width(view_camera[0])

viewx1 = viewx;
viewy1 = viewy;
viewx2 = viewx + viewwidth;
viewy2 = viewy + viewheight;
var padding = -200;
var objectStorage;

//var type = "";

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
			storedids[counter] = instids[i];	
			counter = counter + 1;
		}
		else //if ((instids[i].x > viewx1 && instids[i].x < viewx2) && (instids[i].y > viewy1 && instids[i].y < viewy2))
		{
			storedids[counter] = "null";
			counter = counter + 1;
		}
	}
	
}
var null = 0;
//will store x, y, instance_id, health, state (if applicable)
for (i = 0; i < numInstances; i++)
{
	if storedids[i] != "null" or i < numInstances 
	{
		if storedids[i] != "null"
		{
			for(h = 0; h < 1; h++)
			{
				var lobjx = 0;
				var lobjy = 0;
				with (storedids[i + null])
				{
					lobjx = x;
					lobjy = y;
				}
				objectStorage[i - null, h] = lobjx;      //x pos of instance
				objectStorage[i - null, h + 1] = lobjy;  //y pos of instance
				objectStorage[i - null, h + 2] = storedids[i];    //instance Id
			}
		}
		else
		{
			null = null + 1;
		}
	}
	else 
	{
		return;
	}
}
show_debug_message("Deactivated Region");
instance_deactivate_region(viewx - padding, viewy - padding, viewheight + padding, viewwidth + padding, false, true)

quit = 0;

for (p = 0; p < numInstances; p++) 
{
	if (storedids[p] == "null")
	{
		quit = quit + 1;	
	}
	else 
	{
		if array_length_2d(objectStorage, p) > 0
		{
			var objx = objectStorage[p, 0];
			var objy = objectStorage[p, 1];
			var inst = objectStorage[p, 2];
			while((numInstances - quit) > 0 and storedids[p] != "null")
			{
				if ((objx > viewx1 - padding && objx < viewx2 + padding) && (objy > viewy1 - padding && objy < viewy2 + padding))
				{
					show_debug_message("Reactivated instance");
					inst = instance_activate_object(inst)
					
					quit = quit + 1;
				}
				
			}
		}
	}
	if (quit == numInstances)
	{
		return 0;	
	}
}











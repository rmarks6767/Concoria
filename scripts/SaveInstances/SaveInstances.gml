
//gets the arguments from the worldObjectLoader
counterStore = argument0     
counterFull = argument1
objectStorage = argument2
storedids = argument3


//gets the views from the player's view
viewx = camera_get_view_x(view_camera[0])   
viewy = camera_get_view_y(view_camera[0])
viewheight = camera_get_view_height(view_camera[0])
viewwidth = camera_get_view_width(view_camera[0])


//sets the views to the corners of where the camera view is (x1,y1) in the top left and (x2,y2) in the lower right
viewx1 = viewx;
viewy1 = viewy;
viewx2 = viewx1 + viewwidth;
viewy2 = viewy1 + viewheight;

//adds padding so the instancces aren't deleting in the players view
padding = 1000;

//gets the number of instances currently active in the room
numInstances = instance_count;

//used for seeing how many instances are currently in the room in any given frame
//show_debug_message(string(numInstances));

//the first time it gets the x and y to use for the instance in the room that is checking to store or not
var fobjx = 0; 
var fobjy = 0;
 
 
//checks to see if the instance should be deactivated or kept in the room based on the view 
for (i = 0; i < numInstances; i++)  
{
	with(instance_id[i])  //instids[i])
	{
		fobjx = x;
		fobjy = y;
	}
	if ((fobjx < (viewx1 - padding) or fobjx > (viewx2 + padding)) or (fobjy < (viewy1 - padding) or fobjy > (viewy2 + padding)))
	{
		storedids[counterStore] = instance_id[i]  //instids[i];	
		counterStore = counterStore + 1;
	}
}
//will store x, y, instance_id, health, state (if applicable)
if(array_length_1d(storedids) > 0)
{
	
	for (i = counterFull; i < array_length_1d(storedids); i++)
	{
			var lobjx = 0;
			var lobjy = 0;
			var distance = 0;
			with (storedids[counterFull])
			{
				lobjx = x;
				lobjy = y;
				distance = round(distance_to_object(player));
			}
			objectStorage[i, 0] = lobjx;      //x pos of instance
			objectStorage[i, 1] = lobjy;  //y pos of instance
			objectStorage[i, 2] = storedids[counterFull];
			objectStorage[i, 3] = distance;
			counterFull++;
	}
	var wide = (viewx2 - viewx1) + padding * 2
	
	var high =(viewy2 - viewy1) + padding * 2
	//show_debug_message(string(wide) + "::" + string(high))
	instance_deactivate_region(viewx1 - padding, viewy1 - padding, wide,high, false, true)

	Low = 0
	High = array_height_2d(objectStorage) - 1;
	Total = array_height_2d(objectStorage);
	/*objectStorage = */MergeSort(objectStorage, Low, High, Total);

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
return argument2;


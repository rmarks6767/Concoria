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
padding = 500;

//gets the number of instances currently active in the room
numInstances = instance_count;

//used for seeing how many instances are currently in the room in any given frame
show_debug_message(string(numInstances));

//the first time it gets the x and y to use for the instance in the room that is checking to store or not
var fobjx = 0; 
var fobjy = 0;
 
 


//runs the function for the number of instances in the entire room (checking every instance)
for (i = 0; i < numInstances; i++)  
{
		//checks the array that stores all of the instances in the room and gets each of their positions in the room
		with(instance_id[i])  
		{
			fobjx = x;
			fobjy = y;
		}
		//checks to see if the instance should be deactivated or kept in the room based on the view 
		if ((fobjx < (viewx1 - padding) or fobjx > (viewx2 + padding)) or (fobjy < (viewy1 - padding) or fobjy > (viewy2 + padding)))
		{
			//stores the instance id in a new array, only the ones that really need to be stored
			storedids[counterStore] = instance_id[i];
			counterStore = counterStore + 1;
		}
}

//will store x, y, and instance_id

//gets the number of how many instances that are outside of the room
if(array_length_1d(storedids) > 0)
{
    //repeats the analysis for all of the instances outside of the room
	
	//also only starts the counter at the length of the array
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
	instance_deactivate_region(viewx1 - padding, viewy1 - padding, wide,high, false, true);

	
	Low = 0
	High =  array_length_2d(objectStorage, counterFull) - 1;
	Total = array_length_2d(objectStorage, counterFull);
	MergeSort(objectStorage, Low, High, Total);

         



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
					
					for (t = 0; t < array_length_2d(objectStorage, p) - 1; t++)
                    {
                        saved[t, 0] = objectStorage[p - 1, 0];
						saved[t, 1]	= objectStorage[p - 1, 1];
                    	saved[t, 2]	= objectStorage[p - 1, 2];	
					}
                    for (o = 0; o < array_length_2d(objectStorage, p) - 1; o++)
                    {
                       objectStorage[p, 0] = saved[o, 0]
					   objectStorage[p, 1] = saved[o, 1]
					   objectStorage[p, 2] = saved[o, 2]
                    }
					//counterFull--;
				}
		}
	}
}
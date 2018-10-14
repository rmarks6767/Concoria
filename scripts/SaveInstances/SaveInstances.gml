//gets the arguments from the worldObjectLoader
counterStore = argument0     
counterFull = argument1
objectStorage = argument2
storedids = argument3

counterStore = 0;
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
			counterStore++;
		}
}

//will store x, y, and instance_id

//gets the number of how many instances that are outside of the room
    //repeats the analysis for all of the instances outside of the room
	
	//also only starts the counter at the length of the array
	for (i = 0; i < counterStore; i++)
	{
			var lobjx = 0;
			var lobjy = 0;
			var distance = 0;
			with (storedids[i])
			{
				lobjx = x;
				lobjy = y;
				distance = floor(distance_to_object(player)); //round(sqrt(sqr(abs(player.x - lobjx)) + sqr(abs(player.y - lobjy))));
			}
			argument2[i, 0] = lobjx;      //x pos of instance
			argument2[i, 1] = lobjy;  //y pos of instance
			argument2[i, 2] = storedids[i];    //instance Id
			argument2[i, 3] = distance
	}
	var wide = (viewx2 - viewx1) + padding * 2
	var high =(viewy2 - viewy1) + padding * 2
	instance_deactivate_region(viewx1 - padding, viewy1 - padding, wide,high, false, true);
	show_debug_message("deactvated")
		Low = 0
		High =  array_height_2d(argument2) - 1;
		Total = array_height_2d(argument2);
		argument2 = MergeSort(argument2, Low, High, Total);

		for (p = array_height_2d(argument2); p >= 0; p--) 
		{
			if array_length_2d(argument2, p) != noone
			{
				var objx = argument2[p, 0];
				var objy = argument2[p, 1];
				var inst = argument2[p, 2];
				//if p == 0 and not((objx > viewx1 - padding && objx < viewx2 + padding) && (objy > viewy1 - padding && objy < viewy2 + padding))
				//{
				//	break;
				//	show_debug_message("BROKE OUT")
				//}
				if ((objx > (viewx1 - padding) and objx < (viewx2 + padding)) and (objy > (viewy1 - padding) and objy < (viewy2 + padding)))
				{
					instance_activate_object(inst)
					show_debug_message(string(inst))
					show_debug_message("SPAWNED")
					argument2[p,0] = noone; 
					argument2[p,1] = noone; 
					argument2[p,2] = noone; 
					argument2[p,3] = noone;
					counterStore--;
				}
			}
		}
		show_debug_message("Counter")
		show_debug_message(string(counterStore))
return argument2;
//gets the arguments from the worldObjectLoader
counterStore = argument0     
objectStorage = argument1
storedids = argument2
previousStore = argument3

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
var numInstances = instance_count;
var newvals = 0;

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


//gets the number of how many instances that are outside of the room
//repeats the analysis for all of the instances outside of the room
	
//also only starts the counter at the length of the array
if previousStore != counterStore
{
	for (i = newvals + counterStore; i > counterStore; i--)
	{
			var lobjx = 0;
			var lobjy = 0;
			var distance = 0;
			with (storedids[i])
			{
				lobjx = x;
				lobjy = y;
				distance = round(distance_to_object(player)); //round(sqrt(sqr(abs(player.x - lobjx)) + sqr(abs(player.y - lobjy))));
			}
			argument1[i, 0] = lobjx;      //x pos of instance
			argument1[i, 1] = lobjy;  //y pos of instance
			argument1[i, 2] = storedids[i];    //instance Id
			argument1[i, 3] = distance
	}
}

previousStore = counterStore

var wid = (viewx2 - viewx1) + padding * 2
var higt= (viewy2 - viewy1) + padding * 2
instance_deactivate_region(viewx1 - padding, viewy1 - padding, wid, higt, false, true);
show_debug_message("deactvated")
Low = 0
High =  array_height_2d(argument1) - 1;
Total = array_height_2d(argument1);
argument1 = MergeSort(argument1, Low, High, Total);

for (p = array_height_2d(argument1) - 1; p >= 0; p--) 
{
	var objx = argument1[p, 0];
	var objy = argument1[p, 1];
	var inst = argument1[p, 2];
	if p == 0 and not((objx > viewx1 - padding && objx < viewx2 + padding) && (objy > viewy1 - padding && objy < viewy2 + padding))
	{
		break;
		show_debug_message("BROKE OUT")
	}
	if ((objx > (viewx1 - padding) and objx < (viewx2 + padding)) and (objy > (viewy1 - padding) and objy < (viewy2 + padding)))
	{
		instance_activate_object(inst)
		show_debug_message(string(inst))
		show_debug_message("SPAWNED")
		//storedids[h] = 0;
		//counterStore--;
		//show_debug_message("Counter")
		//show_debug_message(string(counterStore))
		//show_debug_message("^^^^^^^^^")
		argument1[p, 0] = 0
		argument1[p, 1] = 0	
		argument1[p, 2] = 0
		argument1[p, 2] = 0
		
	}
}
show_debug_message("Counter")
show_debug_message(string(counterStore))
return argument1;
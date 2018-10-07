viewx1 = argument0;
viewy1 = argument1;
viewx2 = argument2;
viewy2 = argument3;
counter = 0;
var padding = 500;
var objectStorage;

var type = "";

numInstances = instance_count - 2 //need to change this to add a "number of players" and a "worldObjectLoader" variable
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
		if ((fobjx < (viewx1 - padding) or fobjx > (viewx2 + padding)) and (fobjy < (viewy1 - padding) or fobjy > (viewy2 + padding)))
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

//will store x, y, instance_id, health, state (if applicable)
for (i = 0; i < numInstances; i++)
{
	if storedids[i] != "null" or i < numInstances 
	{
		if storedids[i] != "null"
		{
			for(h = 0; h < 2; h++)
			{
				var lobjx = 0;
				var lobjy = 0;
				with (storedids[i])
				{
					lobjx = x;
					lobjy = y;
				}
				objectStorage[i, h] = lobjx;      //x pos of instance
				objectStorage[i, h + 1] = lobjy;  //y pos of instance
				objectStorage[i, h + 2] = storedids[i];    //instance Id
				with (storedids[i]) //if the type is static it will end here and store this
				{
					if (type == "variable")
					{
						objectStorage[i, h + 3] = Health;
						objectStorage[i, h + 4] = thestate;
						//objectStorage[i, h + 5] = ;	
					}
					else
					{
						
					}
				}
			}
		}
		else
		{
			
		}
	}
	else 
	{
		return;
	}
}

instance_deactivate_region(viewx - padding, viewy - padding, viewheight + padding, viewwidth + padding, false, true)

quit = 0;

for (p = 0; p < numInstances; p++) 
{
	if (storedids[p] == "null")
	{
		quit = quit + 1;	
	}
	if (quit == numInstances)
	{
		return 0;	
	}
}
for (j = 0; j < numInstances; j++)
{
	var objx = objectStorage[j, 1]
	var objy = objectStorage[j, 2]
	if ((objx > viewx1 - padding && objx < viewx2 + padding) && (objxy > viewy1 - padding && objy < viewy2 + padding))
	{
		inst = instance_create_depth(objectStorage[j, 1], objectStorage[j, 2], -1, objectStorage[j, 3]) //should change the depth in the future to match the object depth
		
		with (inst)
		{
			if (type == "static")
			{
				//do nothing since its static
			}
			else if (type == "variable")
			{
				Healh = objectStorage[j, 4];
				thestate = objectStorage[j, 5];
				objectStorage[j, 4] = "null"
				objectStorage[j, 5] = "null"
			}
		}
		objectStorage[j, 1] = "null"
		objectStorage[j, 2] = "null"
		objectStorage[j, 3] = "null"
		
		
	}
}
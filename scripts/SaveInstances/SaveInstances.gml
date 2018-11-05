
var instance = argument0
var instanceStore = argument1

viewx = camera_get_view_x(view_camera[0])   
viewy = camera_get_view_y(view_camera[0])
viewheight = camera_get_view_height(view_camera[0])
viewwidth = camera_get_view_width(view_camera[0])


viewx1 = viewx;
viewy1 = viewy;
viewx2 = viewx1 + viewwidth;
viewy2 = viewy1 + viewheight;

padding = 500;

var fobjx = instance.x; 
var fobjy = instance.y;
if ((fobjx < (viewx1 - padding) or fobjx > (viewx2 + padding)) or (fobjy < (viewy1 - padding) or fobjy > (viewy2 + padding)))
{
	worldObjectLoader.storedids[instanceStore] = instance 	
}
if(array_length_1d(worldObjectLoader.storedids) > 0)
{
		var lobjx = 0;
		var lobjy = 0;
		var distance = 0;
		with(instance)
		{
			lobjx = x;
			lobjy = y;
			distance = round(distance_to_object(player));
		}
		worldObjectLoader.objectStorage[instanceStore, 0] = lobjx;      //x pos of instance
		worldObjectLoader.objectStorage[instanceStore, 1] = lobjy;  //y pos of instance
		worldObjectLoader.objectStorage[instanceStore, 2] = instance;
		worldObjectLoader.objectStorage[instanceStore, 3] = distance;

	Low = 0
	High = array_height_2d(worldObjectLoader.objectStorage) - 1;
	Total = array_height_2d(worldObjectLoader.objectStorage);
	MergeSort(worldObjectLoader.objectStorage, Low, High, Total);
}
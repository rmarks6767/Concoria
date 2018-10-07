//sets the inner square to check

viewx = camera_get_view_x(view_camera[0]) 
viewy = camera_get_view_y(view_camera[0])
viewheight = camera_get_view_height(view_camera[0])
viewwidth = camera_get_view_width(view_camera[0])

viewx1 = viewx;
viewy1 = viewy;
viewx2 = viewx + viewwidth;
viewy2 = viewy + viewwidth;


SaveInstances(viewx1, viewy1, viewx2, viewy2);



//if (mouse_check_button_released(mb_left))
//{
//	inst = instance_find(objItalians, 1);
//	with(inst)
//	{
//		storedx = inst.x
//		storedy = inst.y
//		stored = instance_copy(true);
//	}
//	instance_destroy(inst);
//	instance_create_depth(storedx, storedy, 1, stored);
//}









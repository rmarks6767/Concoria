/// @description Insert description here
// You can write your code in this editor
viewx = camera_get_view_x(view_camera[0]);
viewy = camera_get_view_y(view_camera[0]);
vieww =	camera_get_view_width(view_camera[0]);
viewh = camera_get_view_height(view_camera[0]);

if x > viewx + vieww or x < viewx or y > viewy + viewh or y < viewy{
	
	instance_destroy(self)
	
	
	
}
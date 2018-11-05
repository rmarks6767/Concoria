viewx = camera_get_view_x(view_camera[0])   
viewy = camera_get_view_y(view_camera[0])
viewheight = camera_get_view_height(view_camera[0])
viewwidth = camera_get_view_width(view_camera[0])

padding = 500;

viewx1 = viewx;
viewy1 = viewy;
viewx2 = viewx1 + viewwidth;
viewy2 = viewy1 + viewheight;

var wide = (viewx2 - viewx1) + padding * 2
var high = (viewy2 - viewy1) + padding * 2
instance_deactivate_region(viewx1 - padding, viewy1 - padding, wide,high, false, true)

for (var p = 1; p < array_length_1d(self.storedids)+1; p++) 
	{
		if array_length_2d(self.objectStorage, p) > 0
		{
			var objx = self.objectStorage[p, 0];
			var objy = self.objectStorage[p, 1];
			var inst = self.objectStorage[p, 2];	
				if ((objx > viewx1 - padding and objx < viewx2 + padding) and (objy > viewy1 - padding and objy < viewy2 + padding))
				{
					inst = instance_activate_object(inst)
				}
		}
	}
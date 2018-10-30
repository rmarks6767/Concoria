depth = 1;

groupid = 0;

num = 0;
part = instance_create_depth(x,y, -3, DoorOutside);

//var bottom = instance_create_depth(x, y + 367, -3, solid_obj);
var middle = instance_create_depth(x, y + 153, -3, solid_obj);

with (middle)
{
	image_xscale = 3.5312
	image_yscale = 0.5312
}

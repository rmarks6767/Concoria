depth = 1;

num = 0;
groupid = 0;

part = instance_create_depth(x, y, -3, HouseRO);

var side = instance_create_depth(x + 95, y + 74, -3, solid_obj);
var bottom = instance_create_depth(x, y + 367, -3, solid_obj);
var middle = instance_create_depth(x, y + 153, -3, solid_obj);

with (side)
{
	image_xscale = 0.5625
	image_yscale = 9.1562
}
with (bottom)
{
	image_xscale = 3.531	
	image_yscale = 0.0938
}
with (middle)
{
	image_xscale = 3.5312
	image_yscale = 0.5312
}

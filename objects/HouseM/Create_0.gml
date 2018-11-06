

depth = 1;

num = 0;
groupid = 0;

part = instance_create_depth(x,y, -3, HouseMO);

var bottom = instance_create_depth(x, y + 367, -3, solid_obj);
var middle = instance_create_depth(x, y + 153, -3, solid_obj);

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
SaveInstances(id, (id - 100000));
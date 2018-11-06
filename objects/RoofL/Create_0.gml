

var diag = instance_create_depth(x - 5, y + 69, -3, solid_obj);
var side = instance_create_depth(x - 5, y + 69, -3, solid_obj);

with (diag)
{
	image_angle = 32.6423
	image_xscale = 4
	image_yscale = 0.1562
}
with (side)
{
	image_xscale = 0.1875
	image_yscale = 1.7812
}
SaveInstances(id, (id - 100000));
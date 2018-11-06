SaveInstances(id, (id - 100000));
depth = 3;
var diag = instance_create_depth(x + 113, y+ 67, -3, solid_obj);
var side = instance_create_depth(x + 113, y + 67, -3, solid_obj);

with (diag)
{
	image_angle = 90 + (90 - 32.6423)
	image_xscale = 4
	image_yscale = 0.1562
}
with (side)
{
	image_xscale = 0.1875
	image_yscale = 1.7812
}

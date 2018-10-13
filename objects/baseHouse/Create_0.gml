instance = instance_create_depth(x, y, -3, italianHouse);


var top = instance_create_depth(x, y + 70, -3, solid_obj);
var topinside = instance_create_depth(x, y + 150, -3, solid_obj);
var bottom1 = instance_create_depth(x, y + 353, -3, solid_obj);
var bottom2 = instance_create_depth(x + 141, y + 353, -3, solid_obj);
var right = instance_create_depth(x + 207, y + 70, -3, solid_obj);
var left = instance_create_depth(x, y + 70, -3, solid_obj);

with (top)
{
	image_xscale = 7.0625
	image_yscale = 0.5937
}
with (topinside)
{
	image_xscale = 7.0625
	image_yscale = 0.5937
}
with (bottom1)
{
	image_xscale = 3.4687
	image_yscale = 0.4062
}
with (bottom2)
{
	image_xscale = 2.6562
	image_yscale = 0.4062
}
with (right)
{
	image_xscale = 0.5937
	image_yscale = 9.375
}
with (left)
{
	image_xscale = 0.5625
	image_yscale = 9.375
}
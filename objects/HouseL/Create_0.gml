SaveInstances(id, (id - 100000));

instancecall = instance_id; 
amountToDraw = 0;
instanceNumber = 0; 
checked = false;

entered = false;
num = 0;
instancenumber = 0;
storedy = 0;
doorinst = 0;
x1 = x;
x2 = 0
y1 = 0
y2 = 0

depth = 1;

part = instance_create_depth(x, y, -3, HouseLO);

groupid = abs(real(id - 100000));

print(groupid);

var side = instance_create_depth(x, y + 74, -3, solid_obj);
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

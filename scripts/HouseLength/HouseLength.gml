instancecall = argument0; 
instanceNumber = argument1;
groupNumber = argument2;
doorinst = argument3;
x1 = argument4;
x2 = argument5;
y1 = argument6;
y2 = argument7;

global.houseGroup[groupNumber, instanceNumber] = argument0;
argument1++;



//gets the part directly next the the left object
with (argument0)
{
	var doormeet = instance_place(x + 1, y, Door);
	var middlemeet =instance_place(x + 1, y, HouseM);
	var rightmeet = instance_place(x + 1, y, HouseR);
}

if (doormeet != noone){
	
	argument3 = doormeet; 
	HouseLength(doormeet, argument1, argument2, argument3, argument4, argument5, argument6, argument7);
	
	
}else if(middlemeet !=noone){
	
	HouseLength(middlemeet, argument1, argument2, argument3, argument4, argument5, argument6, argument7);
	
}else if(rightmeet != noone){
	argument6 = rightmeet.y + 100; 
	argument7 = rightmeet.y + 375;
	argument5 = rightmeet.x + 113;
	HouseLength(rightmeet, argument1, argument2, argument3, argument4, argument5, argument6, argument7);

}else {
	return;
}
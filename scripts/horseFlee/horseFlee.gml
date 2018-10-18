var direct = argument0;
var sped = argument1;

switch(direct){
	
	case 0://left
		direction = 180;
		speed = sped + 5;
		break;
	
	case 90://right
		direction = 270;
		speed = sped + 5;
		break;
	
	case 180://up
		direction = 0;
		speed = sped + 5;
		break;
	
	case 270://down
		direction = 90;
		speed = sped + 5;
		break;
}

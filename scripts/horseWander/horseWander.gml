


var goto = irandom_range(0,7);

var sped = irandom_range(1,4);

switch(goto){
	
	case 0://left
		direction = 180;
		speed = sped;
		break;
	
	case 1://right
		direction = 0;
		speed = sped;
		break;
	
	case 2://up
		direction = 90;
		speed = sped;
		break;
	
	case 3://down
		direction = 270;
		speed = sped;
		break;
	
	case 4:
	case 5:
	case 6:
	case 7:
		speed = 0;
		break;
}

var toDo = irandom_range(0,7);

switch(toDo){
	
	case 0://left
		direction = 180;
		speed = 1;
		break;
	
	case 1://right
		direction = 0;
		speed = 1;
		break;
	
	case 2://up
		direction = 90;
		speed = 1;
		break;
	
	case 3://down
		direction = 270;
		speed = 1;
		break;
	
	case 4:
	case 5:
	case 6:
	case 7:
		speed = 0;
		break;
}

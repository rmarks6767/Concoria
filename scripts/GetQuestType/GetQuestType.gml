var type = argument0;

switch(type){
	
	case QUEST.BOSS:
		type = "BOSS";
		break;
		
	case QUEST.DUNGEON:
		type = "DUNGEON";
		break;
		
	case QUEST.ESCORT:
		type = "ESCORT";
		break;
	
	case QUEST.FETCH:
		type = "FETCH";
		break;
		
	case QUEST.GOTO:
		type = "GOTO";
		break;
		
	case QUEST.INTERACT:
		type = "INTERACT";
		break;
		
	case QUEST.KILL:
		type = "KILL";
		break;
		
	case QUEST.RIDDLE:
		type = "RIDDLE";
		break;

}

return type;
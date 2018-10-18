var name = argument0; //Stirng Name of the enemy
var attacking = argument1; //Boolean of whether enemy is attacking or not
var npcDirection = argument2; //int Which way the enemy is facing
var npcSpeed = argument3; //int of speed to check if it is greater than zero
var ourSprite = 0;

italiansprite[0] =	italian_idle_l     //pattern is left, right, forward, backward
italiansprite[1] =	italian_idle_r
italiansprite[2] =	italian_idle_f
italiansprite[3] =	italian_idle_b
italiansprite[4] =	italian_move_l
italiansprite[5] =	italian_move_r
italiansprite[6] =	italian_move_f
italiansprite[7] =	italian_move_b
italiansprite[8] =	italian_idle_attack_l
italiansprite[9] =	italian_idle_attack_r
italiansprite[10] = italian_idle_attack_f
italiansprite[11] = italian_idle_attack_b
italiansprite[12] = italian_move_attack_l
italiansprite[13] = italian_move_attack_r
italiansprite[14] = italian_move_attack_f
italiansprite[15] = italian_move_attack_b

horsesprite[0] = brownHorse_idle_l
horsesprite[1] = brownHorse_idle_r
horsesprite[2] = brownHorse_idle_f
horsesprite[3] = brownHorse_idle_b
horsesprite[4] = brownHorse_move_l
horsesprite[5] = brownHorse_move_r
horsesprite[6] = brownHorse_move_f
horsesprite[7] = brownHorse_move_b




switch(name){
	
	case "italian":
		ourSprite = italiansprite;
		break;
	
	case "Brown Horse":
		ourSprite = horsesprite;
		break;
	
}

if attacking == false{
	
	if npcSpeed == 0{
		
		//Left
		if npcDirection >= 135 and npcDirection < 225{
		    return ourSprite[0]
            
		//RIGHT
		}else if npcDirection >= 315{

		    return ourSprite[1]
			
		}else if npcDirection >= 0 and npcDirection < 45{

		    return ourSprite[1]

		//DOWN
		}else if npcDirection >= 225 and npcDirection < 315{

		    return ourSprite[2]
		
		//UP
		}else if npcDirection >= 45 and npcDirection < 135{

		    return ourSprite[3]
		
		}
	}	
	else{
		
		//Left
		if npcDirection >= 135 and npcDirection < 225{
		    return ourSprite[4]
            
		//RIGHT
		}else if npcDirection >= 315{

		    return ourSprite[5]
			
		}else if npcDirection >= 0 and npcDirection < 45{

		    return ourSprite[5]

		//DOWN
		}else if npcDirection >= 225 and npcDirection < 315{

		    return ourSprite[6]
		
		//UP
		}else if npcDirection >= 45 and npcDirection < 135{

		    return ourSprite[7]
		
		}
		
	}
	
}
else{
	
		if npcSpeed == 0{
		
			//Left
			if npcDirection >= 135 and npcDirection < 225{
				
				return ourSprite[8]
            
			//RIGHT
			}else if npcDirection >= 315{

				return ourSprite[9]
			
			}else if npcDirection >= 0 and npcDirection < 45{

				return ourSprite[9]

			//DOWN
			}else if npcDirection >= 225 and npcDirection < 315{

				return ourSprite[10]
		
			//UP
			}else if npcDirection >= 45 and npcDirection < 135{

				return ourSprite[11]
		
			}	
		
		
		}
		else{
		
			//Left
			if npcDirection >= 135 and npcDirection < 225{
				
				return ourSprite[12]
            
			//RIGHT
			}else if npcDirection >= 315{

				return ourSprite[13]
			
			}else if npcDirection >= 0 and npcDirection < 45{

				return ourSprite[13]

			//DOWN
			}else if npcDirection >= 225 and npcDirection < 315{

				return ourSprite[14]
		
			//UP
			}else if npcDirection >= 45 and npcDirection < 135{

				return ourSprite[15]
		
			}
		
		
		}
	
	
	
}
var extra =0;

if ranged == true{
	
	extra = 100;
}else if (itemHolding[1] = ""){
	
	extra = -15;
}
else{
	extra = 0;	
}


if playerFriendly == false{
	var ply = instance_nearest(x,y,player);;
	if ply != undefined{
	
		var plyDistance = distance_to_point(ply.x,ply.y)
		if plyDistance < 150 + extra and plyDistance >= 25 + extra{//OUTTER MOST CIRCLE(MOVE TOWARDS PLAYER PLS)
		
			direction  = point_direction(x, y, ply.x, ply.y);
			if ranged == true{
			
				speed = 2;
			}else{
				
				speed = 3;
			}
		}
		else if plyDistance < 25 + extra and plyDistance >= 20+ extra{//MIDDLE CIRCLE(ENEMY CAN CHILL HERE ATTACKING)
		
			speed = 0;
			if attacking != true{
			
				attacking = true;
			
			}
		
		
		}
		else if plyDistance < 20 + extra{	
		
			direction = point_direction(x,y,ply.x,ply.y);
			speed = -4
		
		}
		else if plyDistance >= 150{
		
			thestate = state.wandering;
			
		}
	
	
	}
}
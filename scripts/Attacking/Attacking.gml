if playerFriendly == false{
	var ply = instance_nearest(x,y,player);;
	if ply != undefined{
	
		var plyDistance = distance_to_point(ply.x,ply.y)
		if plyDistance < 150 and plyDistance >= 25{//OUTTER MOST CIRCLE(MOVE TOWARDS PLAYER PLS)
		
			move_towards_point(ply.x,ply.y,3);
		
		}
		else if plyDistance < 25 and plyDistance >= 20{//MIDDLE CIRCLE(ENEMY CAN CHILL HERE ATTACKING)
		
			speed = 0
			if attacking != true{
			
				attacking = true;
			
			}
		
		
		}
		else if plyDistance < 20{	
		
			direction = point_direction(x,y,ply.x,ply.y);
			speed = -4
		
		}
		else if plyDistance >= 150{
		
			thestate = state.wandering;
			
		}
	
	
	}
}
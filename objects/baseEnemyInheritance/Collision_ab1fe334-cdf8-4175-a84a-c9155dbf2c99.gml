/// @description Collision with arm

//if this isn't our arm
if other.owner != self{
	
		if other.owner.objectName == "player"{
			
			if (other.owner.attacking and other.itemholdingType =="Sword"){	
				if (currentCustomer == noone){
					if (!alarm[1]){
						Health -= (other.owner.Str+1) * 8;
						playerFriendly = false;
						alarm[1] = 5;
						alarm[2] = 2000;
						if (collision_circle(x,y, 10, self, false, true)){
									
							with(collision_circle(x,y, 30, self, false, true)) {
										
								playerFriendly = false;
								alarm[2] = 2000;
							}
						}
					}
				}
			}
			
		}
	
}
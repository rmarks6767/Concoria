/// @description Insert description here
if other.owner != self{
	
	instance_destroy(other);
	if (currentCustomer == noone){
		if (!alarm[1]){
		
			Health -= (other.owner.Str+1) * 8;
			alarm[1] = 5;
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
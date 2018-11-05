if other.owner != self and other.owner.objectName != "italian"{
	
	instance_destroy(other);
	if (currentCustomer == noone){
		if (!alarm[1]){
		
			Health -= (other.owner.Str+1) * 8;
			var attacking = other.owner
			with (attacking) {
				
			
			}
			alarm[1] = 5;
		}
	}

}
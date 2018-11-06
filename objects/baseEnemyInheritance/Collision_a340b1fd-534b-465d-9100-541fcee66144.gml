if other.owner != self and other.owner.objectName != "italian"{
	
	instance_destroy(other);
	if (currentCustomer == noone){
		if (!alarm[1]){
		
			if Health - (other.owner.Str+1) * 8 <= 0{
						
				var attacking = other.owner;
				getExpToAdd(attacking);	
				instance_destroy(self.arm);
				instance_destroy(self);
			}else{
				Health -= (other.owner.Str+1) * 8;
			}
			alarm[1] = 5;
		}
	}

}
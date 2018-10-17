/// @description Insert description here
if other.owner != self{
	
	instance_destroy(other);
	if (!alarm[1]){
		
		Health -= (other.owner.Str+1) * 8;
		alarm[1] = 5;
		
	}

}
/// @description Insert Collision with arm

//if this isn't our arm
if other.owner != self{
	
		if other.owner.objectName == "player"{
			
			Health -= (other.owner.Str+1) * 8;
			
		}
	
}
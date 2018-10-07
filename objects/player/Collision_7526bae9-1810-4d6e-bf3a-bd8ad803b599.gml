/// @description Collision with arm

//if this isn't our arm
if other.owner != self{
			
			if (other.owner.attacking){
				Health -= 1;
			}
			
}
/// @description Collision with arm

//if this isn't our arm
if instance_exists(other.owner){
	
	if other.owner != self{
				if (other.owner.attacking and other.itemholdingType !="Bow"){
					Health -= 1;
				}
			
	}
	
}
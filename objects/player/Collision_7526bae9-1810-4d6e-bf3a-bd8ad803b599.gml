/// @description Collision with arm

//if this isn't our arm
if instance_exists(other.owner){
	
	if other.owner != self{
				if (other.owner.attacking and other.itemholdingType !="Bow"){
					if (!alarm[0]){
						Health -= 1;
						alarm[0] = 5;
					}
				}
			
	}
	
}
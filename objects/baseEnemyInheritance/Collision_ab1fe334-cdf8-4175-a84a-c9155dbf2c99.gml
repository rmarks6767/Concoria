/// @description Collision with arm

//if this isn't our arm
if other.owner != self{
	
		if other.owner.objectName == "player"{
			
			if (other.owner.attacking and other.itemholdingType !="Bow"){
				Health -= (other.owner.Str+1) * 8;
			}
			
		}
	
}
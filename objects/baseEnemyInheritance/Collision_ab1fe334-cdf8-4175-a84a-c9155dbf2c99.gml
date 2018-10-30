/// @description Collision with arm

//if this isn't our arm
if other.owner != self{
	
		if other.owner.objectName == "player"{
			
			if (other.owner.attacking and other.itemholdingType =="Sword"){	
				if (currentCustomer == noone){
					if (!alarm[1]){
							Health -= (other.owner.Str+1) * 8;
							alarm[1] = 5;
					}
				}
			}
			
		}
	
}
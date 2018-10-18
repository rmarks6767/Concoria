if instance_exists(other.owner){
	
	if other.owner != self{
				if (other.owner.attacking and other.itemholdingType !="Bow"){
					horseHealth -= 1;
					horseState = horse.flee;
				}
			
	}
	
}
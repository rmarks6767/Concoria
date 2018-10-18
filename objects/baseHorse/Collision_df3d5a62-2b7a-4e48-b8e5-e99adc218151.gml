if other.owner != self{
	
	instance_destroy(other);
	horseHealth -= 5;
	horseState = horse.flee;
}
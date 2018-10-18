if other.owner != self{
	
	instance_destroy(other);
	horseHealth -= 10;
	horseState = horse.flee;
}
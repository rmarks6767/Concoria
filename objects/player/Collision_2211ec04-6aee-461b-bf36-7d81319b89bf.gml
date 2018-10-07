/// @description Collisions with arrows

if other.owner != self{
	
	instance_destroy(other);
	Health -= 5;

}
/// @description Create a player and handoff their vars
show_debug_message("Handing off player vars")
player0 = instance_create_layer(29500,37000,"InstanceS",player);
with(player0){
	
	shirtColor =	other.shirtColor;
	skinColor =		other.skinColor;
	pantsColor =	other.pantsColor;
	hairColor =		other.hairColor;
	hairType =		other.hairType;
	
}
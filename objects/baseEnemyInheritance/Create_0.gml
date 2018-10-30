//sets the possible variables that the enemy can read
Health = 100;
playerFriendly = true;
playerClose = false;
enemyFriendly = true;
attacking = false;
inBattle = false;
isShop = false; // used for making a shop npc
shopRadius = 20; // used for determinig how close the player has to be to activate an 
currentCustomer = noone;
ranged = true;  // used for adding distance for the ranged weapons
Str = 0;
shirtColor = make_color_rgb(255,255,255);
skinColor = make_color_rgb(255,255,255);
pantsColor = make_color_rgb(255,255,255);
hairColor = make_color_rgb(255,255,255);
hairType = 0;

shopInventory[0,0] = "";
shopInventory[0,1] = 0;

//Puts the proper item in inventory based on weaponUsed var
SetWeaponUsed(irandom_range(0,4));

face_direction = direction;
subImage = 0;
drawMode = DRAW.UNEQUIPPED_STAND_FRONT;
lastDrawMode = drawMode;


//creates the states the enemy can be in
enum state
{
	stationary, 
	goingHome,
	attack,
	dying,
	fleeing,
	townDwelling,
	lowHealth, 
	exploring,
	wandering, 
	blocking,
	shop
}


drawMode = DRAW.UNEQUIPPED_STAND_FRONT;
imageIndex = 0;
//initializes the enemy in the stationary state
thestate = state.stationary;

arm = instance_create_layer(x,y,"Instances",arm_obj);
with (arm){
	owner = other;
	
}

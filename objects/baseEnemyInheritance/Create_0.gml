//sets the possible variables that the enemy can read
Health = 100;
playerFriendly = true;
playerClose = false;
enemyFriendly = true;
attacking = false;
inBattle = false;
ranged = true;  // used for adding distance for the ranged weapons
Str = 0;
shirtColor = make_color_rgb(255,255,255);
skinColor = make_color_rgb(255,255,255);
pantsColor = make_color_rgb(255,255,255);
hairColor = make_color_rgb(255,255,255);
hairType = 0;

var weaponUsed = round(random_range(0,4));

if weaponUsed == 0{
	itemHolding[0] =  "Iron Sword"
    itemHolding[1] =  "Sword"
	ranged = false;
}else if weaponUsed == 1{
	itemHolding[0] = "Wooden Sword" 
	itemHolding[1] = "Sword"
	ranged = false;
}else if weaponUsed == 2{
	itemHolding[0] = "Short Bow" 
	itemHolding[1] = "Bow" 
	ranged = true;
}else if weaponUsed == 3{
	itemHolding[0] = "Wooden Staff" 
	itemHolding[1] = "Staff" 
	ranged = true;
}else if weaponUsed == 4{
	itemHolding[0] = ""  //they spawn wesponless
	itemHolding[1] = ""
	ranged = false;
}else{
	itemHolding[0] = "" 
	itemHolding[1] = ""
	ranged = false;
}
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
	blocking
}


drawMode = DRAW.UNEQUIPPED_STAND_FRONT;
imageIndex = 0;
//initializes the enemy in the stationary state
thestate = state.stationary;

arm = instance_create_layer(x,y,"Instances",arm_obj);
with (arm){
	owner = other;
	
}

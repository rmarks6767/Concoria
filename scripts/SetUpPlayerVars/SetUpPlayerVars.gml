Health = 100
Maxhealth = 100
Lvl = 1
Exp = 0
Armor = 100
Maxarmor = 100
Energy = 100
Maxenergy = 100
Gold = 0
Agil = 0
Dex = 0
Str = 0
Vit = 0

attacking = false
Inventory_Open = false
imageIndex = 0;


//Inventory
// Slot0: Name
// Slot1: Quantity
// Slot2: Type
// Slot3: Equipped

Inventory[0,0] = "Iron Sword"
Inventory[0,1] = 1
Inventory[0,2] = "Sword"
Inventory[0,3] = true
Inventory[1,0] = "Wooden Sword"
Inventory[1,1] = 1
Inventory[1,2] = "Sword"
Inventory[1,3] = false
Inventory[2,0] = "Short Bow"
Inventory[2,1] = 1
Inventory[2,2] = "Bow"
Inventory[2,3] = false
Inventory[3,0] = "Wooden Staff"
Inventory[3,1] = 1
Inventory[3,2] = "Staff"
Inventory[3,3] = false
Inventory[4,0] = ""
Inventory[4,1] = 0
Inventory[4,2] = "none"
Inventory[4,3] = false


//Colors and type for drawing CC components
shirtColor = make_color_rgb(255,255,255);
skinColor = make_color_rgb(255,255,255);
pantsColor = make_color_rgb(255,255,255);
hairColor = make_color_rgb(255,255,255);
hairType =0;
enum DRAW{
	
	STAND_FRONT,
	STAND_LEFT,
	STAND_RIGHT,
	STAND_BACK,
	WALK_FRONT,
	WALK_LEFT,
	WALK_RIGHT,
	WALK_BACK,
	ATTACK_STAND_FRONT,
	ATTACK_STAND_LEFT,
	ATTACK_STAND_RIGHT,
	ATTACK_STAND_BACK,
	ATTACK_WALK_FRONT,
	ATTACK_WALK_LEFT,
	ATTACK_WALK_RIGHT,
	ATTACK_WALK_BACK,
	
}
drawMode = DRAW.STAND_FRONT


arm = instance_create_layer(x,y,"Instances",arm_obj);
with(arm){
	
	owner = other;
	
	
}
hud = instance_create_layer(x,y,"Instances",hud_obj);
with (hud){
	
	owner = other;
	
}
view = view_camera[0];
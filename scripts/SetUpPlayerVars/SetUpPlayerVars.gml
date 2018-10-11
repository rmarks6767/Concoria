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
Inventory[1,1] = 0
Inventory[1,2] = "Sword"
Inventory[1,3] = false
Inventory[2,0] = "Short Bow"
Inventory[2,1] = 0
Inventory[2,2] = "Bow"
Inventory[2,3] = false
Inventory[3,0] = "Wooden Staff"
Inventory[3,1] = 0
Inventory[3,2] = "Staff"
Inventory[3,3] = false
Inventory[4,0] = ""
Inventory[4,1] = 0
Inventory[4,2] = "none"
Inventory[4,3] = false


arm = instance_create_layer(x,y,"Instances",arm_obj);
with(arm){
	
	owner = other;
	
	
}
hud = instance_create_layer(x,y,"Instances",hud_obj);
with (hud){
	
	owner = other;
	
}
view = view_camera[0];
SaveInstances(id, (id - 100000));

//sets the possible variables that the enemy can read
Health = 100;
playerFriendly = true;
playerClose = false;
enemyFriendly = true;
attacking = false;
inBattle = false;
isShop = false; // used for making a shop npc
interactRadius = 20; // used for determinig how close the player has to be to activate an 
currentCustomer = noone;
currentQuester = noone;
ranged = true;  // used for adding distance for the ranged weapons
Str = 0;
shirtColor = make_color_rgb(255,255,255);
skinColor = make_color_rgb(255,255,255);
pantsColor = make_color_rgb(255,255,255);
hairColor = make_color_rgb(255,255,255);
hairType = 0;


/*Quest Format
Slot 0: Name of Quest
Slot 1: Quest Rewards
Slot 2: D(Array);
Slot 3: Reward(Array);
Slot 3,0: Reward Type
Slot 3,1: Reward Amount

*/
quests[0] = noone;

var reward = CreateArray("5 Gold",REWARD.GOLD,5);

var dialogue0 = CreateArray("Do you like pie",2,"Yes",1,"No",2);
var dialogue1 = CreateArray("Cool. Me too!",0);
var dialogue2 = CreateArray("Eww. You're gross",0);

var dialogues = CreateArray(dialogue0,dialogue1,dialogue2);

var content = CreateArray(QUEST.INTERACT,"self");

var locked = CreateArray(-1);

var quest = CreateQuest("Enjoyment of Pie",content,reward,dialogues,locked,false,true);

quests[0] = quest;

//PrintQuest(quest)

var reward = CreateArray("10 EXP",REWARD.EXP,100);

var dialogue0 = CreateArray("I want to die",2,"Pls dont",1,"Do it faggot",2);
var dialogue1 = CreateArray("Alright I won't",0);
var dialogue2 = CreateArray("Alright. Lemme get the rope",0);

var dialogues = CreateArray(dialogue0,dialogue1,dialogue2);

var content = CreateArray(QUEST.INTERACT,"self");

var locked = CreateArray(0);

var quest = CreateQuest("Go commit sudoku",content,reward,dialogues,locked,false,true);

quests[1] = quest;





depth = 1;

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

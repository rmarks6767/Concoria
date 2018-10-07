

//sets the possible variables that the enemy can read
enemyHealth = 100;
playerFriendly = true;
playerClose = false;
enemyFriendly = true;
attacking = false;
inBattle = false;




//pasta people inventory
dropables[0, 0] = "ItalianPeople"; //enemy type
dropables[0, 1] = "";            //food dropable
dropables[0, 2] = "";            //weapon dropable
dropables[0, 3] = "";            //clothes dropable
dropables[0, 4] = "";

dropables[1, 0] = "IndianPeople";
dropables[1, 1] = "";
dropables[1, 2] = "";
dropables[1, 3] = "";
dropables[1, 4] = "";

dropables[2, 0] = "MonkPeople";
dropables[3, 1] = "";
dropables[2, 2] = "";
dropables[2, 3] = "";
dropables[2, 4] = "";

dropables[3, 0] = "VikingPeople"
dropables[3, 1] = "";
dropables[3, 2] = "";
dropables[3, 3] = "";
dropables[3, 4] = "";

dropables[4, 0] = "SpainardPeople";
dropables[4, 1] = "";
dropables[4, 2] = "";
dropables[4, 3] = "";
dropables[4, 4] = "";

dropables[5, 0] = "EgyptianPeople";
dropables[5, 1] = "";
dropables[5, 2] = "";
dropables[5, 3] = "";
dropables[5, 4] = "";

dropables[6, 0] = "EskimoPeople";
dropables[6, 1] = "";
dropables[6, 2] = "";
dropables[6, 3] = "";
dropables[6, 4] = "";

dropables[7, 0] = "GypsyPeople";
dropables[7, 1] = "";
dropables[7, 2] = "";
dropables[7, 3] = "";
dropables[7, 4] = "";

dropables[8, 0] = "PanAmericanPeople";
dropables[8, 1] = "";
dropables[8, 2] = "";
dropables[8, 3] = "";
dropables[8, 4] = "";

dropables[9, 0] = "PanAfricans";
dropables[9, 1] = "";
dropables[9, 2] = "";
dropables[9, 3] = "";
dropables[9, 4] = "";

dropables[10, 0] = "MongolPeople";
dropables[10, 1] = "";
dropables[10, 2] = "";
dropables[10, 3] = "";
dropables[10, 4] = "";

dropables[11, 0] = "JihadPeople";
dropables[11, 1] = "";
dropables[11, 2] = "";
dropables[11, 3] = "";
dropables[11, 4] = "";


//creates the states the enemy can be in
enum state
{
	stationary, 
	goingHome,
	attacking,
	dying,
	fleeing,
	townDwelling,
	lowHealth, 
	exploring,
	wandering, 
	blocking
}
//initializes the enemy in the stationary state
thestate = state.stationary;
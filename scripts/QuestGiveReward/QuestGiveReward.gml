//Purpose: Give a player their proper reward for a quest
ply = argument0;
rewardType = argument1;
rewardAmount = argument2;

switch(rewardType){
	
	case REWARD.EXP:
	
		ply.Exp += rewardAmount;
		break;
	
	case REWARD.GOLD:
	
		ply.Gold += rewardAmount;
		break;
	
	case REWARD.ITEM:
	
		//YIKES GOTTA WRITE A FUNCTION FOR THIS
		break;
	
	case REWARD.LVL:
	
		ply.Lvl += rewardAmount;
		break;
	
}
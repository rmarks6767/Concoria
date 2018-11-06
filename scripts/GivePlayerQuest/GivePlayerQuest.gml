///Purpose: Give a player a quest. Basically this means that they store the quest

//player
var ply = argument0;

//quest
var qst = argument1;

//grab the next available slot in the quest array
var slot = PlayerFindNextQuestSpot(ply)

ply.quests[slot] = qst;
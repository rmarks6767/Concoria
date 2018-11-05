quests[0] = CreateQuest(
	
/*Name*/			"Kill An Italian",
/*Content*/			list(QUEST.KILL,objItalians,1),
/*Reward*/			list("5 Gold",REWARD.GOLD,5),
/*Dialogues*/		list(list("I need you to kill an italian for me 5 gold",2,"Okay",2,"No way",1),list("Screw Off",0),list("Well Get to it",0)),
/*Locked*/			list(-1),
/*Finish dialoge*/	list(list("Good work! Here's your reward")),
/*Completed*/		false,
/*Repeatable*/		false,
);
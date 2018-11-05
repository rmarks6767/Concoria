///Purpose: Drawing NPCS Quest

//Screen values
var screenx1 = camera_get_view_x(view_camera[0])
var screeny1 = camera_get_view_y(view_camera[0])
var screenw = camera_get_view_width(view_camera[0])
var screenh = camera_get_view_height(view_camera[0])

//Second coord
var screenx2 = screenx1 + screenw
var screeny2 = screeny1 + screenh
var screenwMid = screenx1 + (screenw/2);

//Padding
var vertPad = 30;
var horPad = 100;

//Coords of actual menu
var menux1 = screenx1+horPad
var menuy1 = screeny1+vertPad
var menux2 = screenx2-horPad
var menuy2 = screeny2-vertPad

//Storer of quest data
var qstData = noone;

//See if our questGiver has a quest for us and grab the appropriate quest
if (questGiver.quests[0] != noone){
	qstData = FindFirstQuest(questGiver.quests);
}

//Make sure we got a valid. Else, don't display anything
if (qstData != noone){
	
	//Draw Background
	draw_set_alpha(0.9);
	draw_rectangle_color(menux1,menuy1,menux2,menuy2,c_black,c_black,c_black,c_black,false);
	draw_set_alpha(1.0);
	draw_set_font(header1_font);
	var spacing = 80;
	
	//Draw heading
	draw_set_font(header1_font)
	draw_text_color( screenwMid - (string_width("NPC")/2),menuy1+20,"NPC",c_white,c_white,c_white,c_white,255);
	
	//Get the actual quest from the quest data
	var qst = qstData[0];
	
	//Where we will store the dialogues
	var dialogues;
	var currentDialogue;
	
	//This var is used to determine whether or not the player has our quest
	var playerHasQuest = PlayerHasQuest(owner,qst);
	
	//Check if the player already has this quest to determine whether or not we should display a normal dialogue or the finish dialogue
	if (playerHasQuest){
	
		//Get the "quest completed" dialogues from the quest
		dialogues = qst[QUEST_FIELD.COMPLETE_DIALOGUE];
		
	}
	else{
		//Get the normal dialouges from the quest
		dialogues = qst[QUEST_FIELD.DIALOGUE];
	}
	
	
	//dialogueNum stores what current dialogue we're on. Thus, currentDialogue stores what is the current display dialogue
	currentDialogue = dialogues[dialogueNum];
	
	//Draw current dialogue
	draw_set_font(header2_font)
	draw_text_color( screenwMid - (string_width(currentDialogue[0])/2),menuy1+60,currentDialogue[0],c_white,c_white,c_white,c_white,255);
	
	//Start drawing the responses
	var lengthOfDialogue = array_length_1d(dialogues[dialogueNum]);
	
	//Check if responses exist
	if ((lengthOfDialogue/2)-1 > 0){
		for (var i = 0; i < (lengthOfDialogue/2)-1;i++){
		
			var responseArray = GetQuestResponse(currentDialogue,i);
			var response = responseArray[0];
			var responseGoto = responseArray[1];
		
			var responsex1 = (screenwMid - (string_width(response)/2));
			var responsey1 = (menuy1 + 120) + spacing*i
		
		
			//Draw Response
			draw_set_font(header2_font)
			draw_text_color( responsex1,responsey1,response,c_white,c_white,c_white,c_white,255);
			
			//Check if response if pressed
			if(mouse_check_button_pressed(mb_left)){
			
				if (point_distance(mouse_x,mouse_y,responsex1,responsey1) <= 20){
				
					//Jump to appropriate dialogue
					dialogueNum = responseGoto;
				
				}
			
			}
		
		}
	}
	
	//This happens if we reach the end of a dialog tree
	else{
		var response = "Click here to close"
		var responsex1 = (screenwMid - (string_width(response)/2));
		var responsey1 = (menuy1 + 120) + spacing
		
		
		//Draw Response
		draw_set_font(header2_font)
		draw_text_color( responsex1,responsey1,response,c_white,c_white,c_white,c_white,255);
		
		if(mouse_check_button_pressed(mb_left)){
			
			
			
			
			//Check if option is clicked
			if (point_distance(mouse_x,mouse_y,responsex1,responsey1) <= 20){
				
				//Check if option is the last option(Which would give the player a quest)
				//if (dialogueNum+1 == array_length_1d(dialogues)){
				CompleteQuest(questGiver,qstData[1]);
				var rewards = qst[QUEST_FIELD.REWARDS];
				QuestGiveReward(owner,rewards[REWARDS_FIELD.TYPE],rewards[REWARDS_FIELD.QUANTITY]);
				drawMode = -1;
				questGiver.currentQuester = noone;
				questGiver = noone;
				dialogueNum = 0;
				
			}
			
		}
		
	}
	
}
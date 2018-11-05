//Purpose: Drawing NPCS Quest

	
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

draw_set_alpha(0.9);
draw_rectangle_color(menux1,menuy1,menux2,menuy2,c_black,c_black,c_black,c_black,false);
draw_set_alpha(1.0);
draw_set_font(header1_font);
var spacing = 80;
//Draw heading
draw_set_font(header1_font)
draw_text_color( screenwMid - (string_width("NPC")/2),menuy1+20,"NPC",c_white,c_white,c_white,c_white,255);

var qst = FindFirstQuest(questGiver.quests)
if (qst != noone){
	
	var dialogues = qst[QUEST_FIELD.DIALOGUE];
	
	//dialogueNum stores what current dialogue we're on
	var currentDialogue = dialogues[dialogueNum];
	
	//Draw current dialogue
	draw_set_font(header2_font)
	draw_text_color( screenwMid - (string_width(currentDialogue[0])/2),menuy1+60,currentDialogue[0],c_white,c_white,c_white,c_white,255);
	
	//Start drawing the responses
	var lengthOfDialogue = array_length_1d(dialogues[dialogueNum]);
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
		
			if(mouse_check_button_pressed(mb_left)){
			
				if (point_distance(mouse_x,mouse_y,responsex1,responsey1) <= 20){
				
					 dialogueNum = responseGoto;
				
				}
			
			}
		
		}
	}
	else{
		var response = "Click here to close"
		var responsex1 = (screenwMid - (string_width(response)/2));
		var responsey1 = (menuy1 + 120) + spacing
		
		
		//Draw Response
		draw_set_font(header2_font)
		draw_text_color( responsex1,responsey1,response,c_white,c_white,c_white,c_white,255);
		
		if(mouse_check_button_pressed(mb_left)){
			
			if (point_distance(mouse_x,mouse_y,responsex1,responsey1) <= 20){
				
					
					
					with(questGiver){
						
						var currentQuest = FindFirstQuest(quests);
						if (!currentQuest[QUEST_FIELD.REPEATABLE]){
							
							currentQuest[QUEST_FIELD.COMPLETED] = true;
							
						}
					}
					
					drawMode = -1;
					questGiver.currentQuester = noone;
					questGiver = noone;
					dialogueNum = 0;
				
			}
			
		}
		
	}
	
}
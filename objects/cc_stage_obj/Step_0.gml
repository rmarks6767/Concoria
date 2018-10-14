/// @description Set var up here

//Grab the hair RGB vars
hairR = hairSliderR.notch.sliderNum
hairG =	hairSliderG.notch.sliderNum
hairB =	hairSliderB.notch.sliderNum

//Grab the skin RGB vars
skinR =	skinSliderR.notch.sliderNum
skinG =	skinSliderG.notch.sliderNum
skinB =	skinSliderB.notch.sliderNum

//Grab the shirt RGB vars
shirtR = shirtSliderR.notch.sliderNum
shirtG = shirtSliderG.notch.sliderNum
shirtB = shirtSliderB.notch.sliderNum

//Grab the  RGB vars
pantsR = pantsSliderR.notch.sliderNum
pantsG = pantsSliderG.notch.sliderNum
pantsB = pantsSliderB.notch.sliderNum

//check for hair button clicks
if (hairButtonL.pressed){
	
	if (hairNum == 0){
		
		hairNum = array_length_1d(hair) - 1;
		
	}else{
		
		hairNum -= 1;
		
	}
	
}
if (hairButtonR.pressed){
	
	if (hairNum == array_length_1d(hair) - 1){
		
		hairNum = 0;
		
	}else{
		
		hairNum += 1;
		
	}
	
}

//IF play button is pressed:Create IROL, give it our colors and numbers, and change rooms
if (cc_play_obj.pressed){
	
	var IROL = instance_create_depth(0,0,5,interRoomObjectLoader_obj);
	with (IROL){
		
		shirtColor = make_color_rgb(other.shirtR,other.shirtG,other.shirtB);
		skinColor = make_color_rgb(other.skinR,other.skinG,other.skinB);
		pantsColor = make_color_rgb(other.pantsR,other.pantsG,other.pantsB);
		hairColor = make_color_rgb(other.hairR,other.hairG,other.hairB);
		hairType = other.hairNum;
		
	}
	
	room_goto(World)
	
}
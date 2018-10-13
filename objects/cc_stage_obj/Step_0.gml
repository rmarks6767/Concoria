/// @description Set var up here
hairR = hairSliderR.notch.sliderNum
hairG =	hairSliderG.notch.sliderNum
hairB =	hairSliderB.notch.sliderNum

skinR =	skinSliderR.notch.sliderNum
skinG =	skinSliderG.notch.sliderNum
skinB =	skinSliderB.notch.sliderNum

shirtR = shirtSliderR.notch.sliderNum
shirtG = shirtSliderG.notch.sliderNum
shirtB = shirtSliderB.notch.sliderNum

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
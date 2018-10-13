/// @description Set up color storing and spawning shit

//0:R
//1:G
//2:B

skinColor[0] = 0;
skinColor[1] = 0;
skinColor[2] = 0;

shirtColor[0] = 0;
shirtColor[1] = 0;
shirtColor[2] = 0;

pantsColor[0] = 0;
pantsColor[1] = 0;
pantsColor[2] = 0;




hairButtonL = instance_create_layer(x - 288, y -336,"Instances",cc_button_obj)
hairButtonR = instance_create_layer(x + 160, y -336,"Instances",cc_button_obj)
with (hairButtonR){
	
	sprite_index = sprButtonRight
	
}
var spacing = 20;
var startSpace = 320
hairSliderR = instance_create_layer(x - 144, y - startSpace,"Instances",cc_slider_obj)
hairSliderG = instance_create_layer(x - 144, y - startSpace + spacing,"Instances",cc_slider_obj)
hairSliderB = instance_create_layer(x - 144, y - startSpace + (spacing*2),"Instances",cc_slider_obj)
hairSliderC = instance_create_layer(x - 144, y - startSpace + (spacing*3),"Instances",cc_slider_obj)

var spacing = 20;
var startSpace = 170
skinSliderR = instance_create_layer(x + 200, y - startSpace,"Instances",cc_slider_obj)
skinSliderG = instance_create_layer(x + 200, y - startSpace + spacing,"Instances",cc_slider_obj)
skinSliderB = instance_create_layer(x + 200, y - startSpace + (spacing*2),"Instances",cc_slider_obj)
skinSliderC = instance_create_layer(x + 200, y - startSpace + (spacing*3),"Instances",cc_slider_obj)

var spacing = 20;
var startSpace = 30
shirtSliderR = instance_create_layer(x + 200, y - startSpace,"Instances",cc_slider_obj)
shirtSliderG = instance_create_layer(x + 200, y - startSpace + spacing,"Instances",cc_slider_obj)
shirtSliderB = instance_create_layer(x + 200, y - startSpace + (spacing*2),"Instances",cc_slider_obj)
shirtSliderC = instance_create_layer(x + 200, y - startSpace + (spacing*3),"Instances",cc_slider_obj)

var spacing = 20;
var startSpace = -120
pantsSliderR = instance_create_layer(x + 200, y - startSpace,"Instances",cc_slider_obj)
pantsSliderG = instance_create_layer(x + 200, y - startSpace + spacing,"Instances",cc_slider_obj)
pantsSliderB = instance_create_layer(x + 200, y - startSpace + (spacing*2),"Instances",cc_slider_obj)
pantsSliderC = instance_create_layer(x + 200, y - startSpace + (spacing*3),"Instances",cc_slider_obj)
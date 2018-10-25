/// @description Setting Up colors and sprites to draw

//Color of shirt
var shirtColor = make_color_rgb(shirtR,shirtG,shirtB)
//Color of skin
var skinColor = make_color_rgb(skinR,skinG,skinB)
//Color of pants
var pantsColor = make_color_rgb(pantsR,pantsG,pantsB)
//Color of hair
var hairColor = make_color_rgb(hairR,hairG,hairB)

//Stage
draw_sprite_ext(sprCharStage,0,x,y,3,3,0,c_white,255);



//Shirt
draw_sprite_ext(shirt0_f,0,x,y,6,6,0,shirtColor,255);

//Pants
draw_sprite_ext(pants_idle_f,0,x,y,6,6,0,pantsColor,255);

//Skin
draw_sprite_ext(skin0_idle_f,0,x,y,6,6,0,skinColor,255);

//Hair
draw_sprite_ext(hair[hairNum],0,x,y,6,6,0,hairColor,255);


draw_set_font(header1_font)
draw_text_color(x-30,y-400,"Hair",c_white,c_white,c_white,c_white,1)
	draw_text_color(x+130,y-335,"R",c_red,c_red,c_red,c_red,1)
	draw_text_color(x+130,y-310,"G",c_green,c_green,c_green,c_green,1)
	draw_text_color(x+130,y-285,"B",c_blue,c_blue,c_blue,c_blue,1)

draw_text_color(x+210,y-200,"Skin",c_white,c_white,c_white,c_white,1)
	draw_text_color(x+475,y-185,"R",c_red,c_red,c_red,c_red,1)
	draw_text_color(x+475,y-160,"G",c_green,c_green,c_green,c_green,1)
	draw_text_color(x+475,y-135,"B",c_blue,c_blue,c_blue,c_blue,1)
	
draw_text_color(x+210,y-60,"Shirt",c_white,c_white,c_white,c_white,1)
	draw_text_color(x+475,y-45,"R",c_red,c_red,c_red,c_red,1)
	draw_text_color(x+475,y-20,"G",c_green,c_green,c_green,c_green,1)
	draw_text_color(x+475,y+5,"B",c_blue,c_blue,c_blue,c_blue,1)
	
draw_text_color(x+210,y+90,"Pants",c_white,c_white,c_white,c_white,1)
	draw_text_color(x+475,y+105,"R",c_red,c_red,c_red,c_red,1)
	draw_text_color(x+475,y+130,"G",c_green,c_green,c_green,c_green,1)
	draw_text_color(x+475,y+155,"B",c_blue,c_blue,c_blue,c_blue,1)
	
//Purpose: Draw Player's RPG Stats on screen

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
var spacing = 70;
draw_text_color( screenwMid - (string_width("Stats")/2),menuy1+20,"Stats",c_white,c_white,c_white,c_white,255);

var stats;

stats[0,0] = owner.Health
stats[0,1] = "Health"
stats[1,0] = owner.Maxhealth;
stats[1,1] = "Max Health";
stats[2,0] = owner.Lvl;
stats[2,1] = "Level";
stats[3,0] = Concatenate(owner.Exp, "/100");
stats[3,1] = "Exp";
stats[4,0] = owner.Armor;
stats[4,1] = "Armor";
stats[4,0] = owner.Maxarmor;
stats[4,1] = "Max Armor";
stats[4,0] = owner.Gold;
stats[4,1] = "Gold";
stats[5,0] = owner.Maxenergy;
stats[5,1] = "Max Energy";
stats[6,0] = owner.Agil;
stats[6,1] = "Agility";
stats[7,0] = owner.Dex;
stats[7,1] = "Dexterity";
stats[8,0] = owner.Str;
stats[8,1] = "Strength";
stats[9,0] = owner.Vit;
stats[9,1] = "Vitality";


for (var i = 0 ; i < array_height_2d(stats) ; i++){
	
	var statx1 = (menux1+40) + (floor(i/5)*240);
	var staty1 = (menuy1+50) + (((floor(i%5))*60));
	var statx2 = statx1 + 120;
	var staty2 = (staty1 + 20);
	DrawStat(statx1,staty1,statx2,staty2,c_white,stats[i,0],stats[i,1]);
	
}
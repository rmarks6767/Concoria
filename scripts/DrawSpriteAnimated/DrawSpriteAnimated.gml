//Purpose: Draw animated sprites with a specific color at a specific location
sprite = argument0
spriteSpeed = argument1
spritex = argument2
spritey = argument3
spriteColor = argument4
subImageToDraw = 0;
if spriteSpeed >= 0{
	
	
	subImageToDraw = self.imageIndex;
	
}
else{
	var spriteNum = sprite_get_number(sprite)
	subImageToDraw = (spriteNum - 1) - (self.imageIndex % sprite_get_number(sprite));
	
}


draw_sprite_ext(sprite,floor(subImageToDraw),spritex,spritey,1,1,0,spriteColor,255)

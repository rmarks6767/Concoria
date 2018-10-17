//Purpose: Draw animated sprites with a specific color at a specific location
sprite = argument0
spriteSpeed = argument1
spritex = argument2
spritey = argument3
spriteColor = argument4

self.imageIndex += spriteSpeed;
draw_sprite_ext(sprite,floor(self.imageIndex),spritex,spritey,1,1,0,spriteColor,255)
show_debug_message(string(self.imageIndex))

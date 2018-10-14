/// @description sprite drawing and indexing
switch(drawMode){
	
	//STAND
	case DRAW.STAND_FRONT:
		
		draw_sprite_ext(shirt0_f,0,x,y,1,1,0,shirtColor,255)
		draw_sprite_ext(pants_idle_f,0,x,y,1,1,0,pantsColor,255)
		break;
		
	case DRAW.STAND_LEFT:
	
		draw_sprite_ext(shirt0_l,0,x,y,1,1,0,shirtColor,255)
		draw_sprite_ext(pants_idle_l,0,x,y,1,1,0,pantsColor,255)
		break;
	
	case DRAW.STAND_RIGHT:
	
		draw_sprite_ext(shirt0_r,0,x,y,1,1,0,shirtColor,255)
		draw_sprite_ext(pants_idle_r,0,x,y,1,1,0,pantsColor,255)
		break;
	
	case DRAW.STAND_BACK:
	
		draw_sprite_ext(shirt0_b,0,x,y,1,1,0,shirtColor,255)
		draw_sprite_ext(pants_idle_b,0,x,y,1,1,0,pantsColor,255)
		break;
	
	//WALK
	case DRAW.WALK_FRONT:
	
		draw_sprite_ext(shirt0_f,0,x,y,1,1,0,shirtColor,255)
		draw_sprite_ext(pants_move_f,0,x,y,1,1,0,pantsColor,255)
		break;
	
	case DRAW.WALK_LEFT:
	
		draw_sprite_ext(shirt0_l,0,x,y,1,1,0,shirtColor,255)
		draw_sprite_ext(pants_move_l,0,x,y,1,1,0,pantsColor,255)
		break;

	case DRAW.WALK_RIGHT:
	
		draw_sprite_ext(shirt0_r,0,x,y,1,1,0,shirtColor,255)
		draw_sprite_ext(pants_move_r,0,x,y,1,1,0,pantsColor,255)
		break;
	
	case DRAW.WALK_BACK:
	
		draw_sprite_ext(shirt0_b,0,x,y,1,1,0,shirtColor,255)
		draw_sprite_ext(pants_move_b,0,x,y,1,1,0,pantsColor,255)
		break;
		
	
	//ATTACK STAND
	case DRAW.ATTACK_STAND_FRONT:
	
		draw_sprite_ext(shirt0_f,0,x,y,1,1,0,shirtColor,255)
		draw_sprite_ext(pants_idle_f,0,x,y,1,1,0,pantsColor,255)
		break;
		
	
	case DRAW.ATTACK_STAND_LEFT:
	
		draw_sprite_ext(shirt0_l,0,x,y,1,1,0,shirtColor,255)
		draw_sprite_ext(pants_idle_l,0,x,y,1,1,0,pantsColor,255)
		break;
	
	case DRAW.ATTACK_STAND_RIGHT:
	
		draw_sprite_ext(shirt0_r,0,x,y,1,1,0,shirtColor,255)
		draw_sprite_ext(pants_idle_r,0,x,y,1,1,0,pantsColor,255)
		break;
	
	case DRAW.ATTACK_STAND_BACK:
	
		draw_sprite_ext(shirt0_b,0,x,y,1,1,0,shirtColor,255)
		draw_sprite_ext(pants_idle_b,0,x,y,1,1,0,pantsColor,255)
		break;
	
	
	//ATTACK WALK
	case DRAW.ATTACK_WALK_FRONT:
	
		draw_sprite_ext(shirt0_f,0,x,y,1,1,0,shirtColor,255)
		draw_sprite_ext(pants_move_f,0,x,y,1,1,0,pantsColor,255)
		break;
	
	case DRAW.ATTACK_WALK_LEFT:
	
		draw_sprite_ext(shirt0_l,0,x,y,1,1,0,shirtColor,255)
		draw_sprite_ext(pants_move_l,0,x,y,1,1,0,pantsColor,255)
		break;
	
	case DRAW.ATTACK_WALK_RIGHT:
	
		draw_sprite_ext(shirt0_r,0,x,y,1,1,0,shirtColor,255)
		draw_sprite_ext(pants_move_r,0,x,y,1,1,0,pantsColor,255)
		break;
	
	case DRAW.ATTACK_WALK_BACK:
	
		draw_sprite_ext(shirt0_b,0,x,y,1,1,0,shirtColor,255)
		draw_sprite_ext(pants_move_b,0,x,y,1,1,0,pantsColor,255)
		break;
}

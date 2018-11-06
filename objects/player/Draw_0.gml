/// @description sprite drawing and indexing
switch(drawMode){
	//UNEQUIPPED
	//STAND
	case DRAW.UNEQUIPPED_STAND_FRONT:
		
		
		draw_sprite_ext(shirt0_f,0,x,y,1,1,0,shirtColor,255)
		draw_sprite_ext(pants_idle_f,0,x,y,1,1,0,pantsColor,255)
		draw_sprite_ext(skin0_idle_f,0,x,y,1,1,0,skinColor,255)
		draw_sprite_ext(GetHairSprite(NumDirectionToString(face_direction),hairType),0,x,y,1,1,0,hairColor,255)
		break;
		
	case DRAW.UNEQUIPPED_STAND_LEFT:
	
		draw_sprite_ext(shirt0_l,0,x,y,1,1,0,shirtColor,255)
		draw_sprite_ext(pants_idle_l,0,x,y,1,1,0,pantsColor,255)
		draw_sprite_ext(skin0_idle_l,0,x,y,1,1,0,skinColor,255)
		draw_sprite_ext(GetHairSprite(NumDirectionToString(face_direction),hairType),0,x,y,1,1,0,hairColor,255)
		break;
	
	case DRAW.UNEQUIPPED_STAND_RIGHT:
	
		draw_sprite_ext(shirt0_r,0,x,y,1,1,0,shirtColor,255)
		draw_sprite_ext(pants_idle_r,0,x,y,1,1,0,pantsColor,255)
		draw_sprite_ext(skin0_idle_r,0,x,y,1,1,0,skinColor,255)
		draw_sprite_ext(GetHairSprite(NumDirectionToString(face_direction),hairType),0,x,y,1,1,0,hairColor,255)
		break;
	
	case DRAW.UNEQUIPPED_STAND_BACK:
	
		draw_sprite_ext(shirt0_b,0,x,y,1,1,0,shirtColor,255)
		draw_sprite_ext(pants_idle_b,0,x,y,1,1,0,pantsColor,255)
		draw_sprite_ext(skin0_idle_b,0,x,y,1,1,0,skinColor,255)
		draw_sprite_ext(GetHairSprite(NumDirectionToString(face_direction),hairType),0,x,y,1,1,0,hairColor,255)
		break;
	//UNEQUIPPED
	//WALK
	case DRAW.UNEQUIPPED_WALK_FRONT:
	
		draw_sprite_ext(shirt0_f,0,x,y,1,1,0,shirtColor,255)
		DrawSpriteAnimated(pants_move_f,image_speed,x,y,pantsColor)
		DrawSpriteAnimated(skin0_move_f,image_speed,x,y,skinColor)
		draw_sprite_ext(GetHairSprite(NumDirectionToString(face_direction),hairType),0,x,y,1,1,0,hairColor,255)
		break;
	
	case DRAW.UNEQUIPPED_WALK_LEFT:
	
		draw_sprite_ext(shirt0_l,0,x,y,1,1,0,shirtColor,255)
		DrawSpriteAnimated(pants_move_l,image_speed,x,y,pantsColor)
		DrawSpriteAnimated(skin0_move_l,image_speed,x,y,skinColor)
		draw_sprite_ext(GetHairSprite(NumDirectionToString(face_direction),hairType),0,x,y,1,1,0,hairColor,255)
		break;

	case DRAW.UNEQUIPPED_WALK_RIGHT:
	
		draw_sprite_ext(shirt0_r,0,x,y,1,1,0,shirtColor,255)
		DrawSpriteAnimated(pants_move_r,image_speed,x,y,pantsColor)
		DrawSpriteAnimated(skin0_move_r,image_speed,x,y,skinColor)
		draw_sprite_ext(GetHairSprite(NumDirectionToString(face_direction),hairType),0,x,y,1,1,0,hairColor,255)
		break;
	
	case DRAW.UNEQUIPPED_WALK_BACK:
	
		draw_sprite_ext(shirt0_b,0,x,y,1,1,0,shirtColor,255)
		DrawSpriteAnimated(pants_move_b,image_speed,x,y,pantsColor)
		DrawSpriteAnimated(skin0_move_b,image_speed,x,y,skinColor)
		draw_sprite_ext(GetHairSprite(NumDirectionToString(face_direction),hairType),0,x,y,1,1,0,hairColor,255)
		break;
		
	
	//ATTACK STAND
	case DRAW.UNEQUIPPED_ATTACK_STAND_FRONT:
	
		draw_sprite_ext(shirt0_f,0,x,y,1,1,0,shirtColor,255)
		draw_sprite_ext(pants_idle_f,0,x,y,1,1,0,pantsColor,255)
		draw_sprite_ext(skin0_idle_attack_f,0,x,y,1,1,0,skinColor,255)
		draw_sprite_ext(GetWeaponSprite(Inventory[equipped,0],NumDirectionToString(face_direction),attacking),arm.image_index,x,y,1,1,0,skinColor,255)
		draw_sprite_ext(GetHairSprite(NumDirectionToString(face_direction),hairType),0,x,y,1,1,0,hairColor,255)
		break;
		
	
	case DRAW.UNEQUIPPED_ATTACK_STAND_LEFT:
	
		draw_sprite_ext(GetWeaponSprite(Inventory[equipped,0],NumDirectionToString(face_direction),attacking),arm.image_index,x,y,1,1,0,skinColor,255)
		draw_sprite_ext(shirt0_l,0,x,y,1,1,0,shirtColor,255)
		draw_sprite_ext(pants_idle_l,0,x,y,1,1,0,pantsColor,255)
		draw_sprite_ext(skin0_idle_attack_l,0,x,y,1,1,0,skinColor,255)
		draw_sprite_ext(GetHairSprite(NumDirectionToString(face_direction),hairType),0,x,y,1,1,0,hairColor,255)
		break;
	
	case DRAW.UNEQUIPPED_ATTACK_STAND_RIGHT:
	
		draw_sprite_ext(shirt0_r,0,x,y,1,1,0,shirtColor,255)
		draw_sprite_ext(pants_idle_r,0,x,y,1,1,0,pantsColor,255)
		draw_sprite_ext(skin0_idle_attack_r,0,x,y,1,1,0,skinColor,255)
		draw_sprite_ext(GetWeaponSprite(Inventory[equipped,0],NumDirectionToString(face_direction),attacking),arm.image_index,x,y,1,1,0,skinColor,255)
		draw_sprite_ext(GetHairSprite(NumDirectionToString(face_direction),hairType),0,x,y,1,1,0,hairColor,255)
		break;
	
	case DRAW.UNEQUIPPED_ATTACK_STAND_BACK:
	
		draw_sprite_ext(shirt0_b,0,x,y,1,1,0,shirtColor,255)
		draw_sprite_ext(pants_idle_b,0,x,y,1,1,0,pantsColor,255)
		draw_sprite_ext(skin0_idle_attack_b,0,x,y,1,1,0,skinColor,255)
		draw_sprite_ext(GetWeaponSprite(Inventory[equipped,0],NumDirectionToString(face_direction),attacking),arm.image_index,x,y,1,1,0,skinColor,255)
		draw_sprite_ext(GetHairSprite(NumDirectionToString(face_direction),hairType),0,x,y,1,1,0,hairColor,255)
		break;
	
	
	//ATTACK WALK
	case DRAW.UNEQUIPPED_ATTACK_WALK_FRONT:
	
		draw_sprite_ext(shirt0_f,0,x,y,1,1,0,shirtColor,255)
		DrawSpriteAnimated(pants_move_f,image_speed,x,y,pantsColor)
		DrawSpriteAnimated(skin0_move_attack_f,image_speed,x,y,skinColor)
		draw_sprite_ext(GetWeaponSprite(Inventory[equipped,0],NumDirectionToString(face_direction),attacking),arm.image_index,x,y,1,1,0,skinColor,255)
		draw_sprite_ext(GetHairSprite(NumDirectionToString(face_direction),hairType),0,x,y,1,1,0,hairColor,255)
		break;
	
	case DRAW.UNEQUIPPED_ATTACK_WALK_LEFT:
	
		draw_sprite_ext(GetWeaponSprite(Inventory[equipped,0],NumDirectionToString(face_direction),attacking),arm.image_index,x,y,1,1,0,skinColor,255)
		draw_sprite_ext(shirt0_l,0,x,y,1,1,0,shirtColor,255)
		DrawSpriteAnimated(pants_move_l,image_speed,x,y,pantsColor)
		DrawSpriteAnimated(skin0_move_attack_l,image_speed,x,y,skinColor)
		draw_sprite_ext(GetHairSprite(NumDirectionToString(face_direction),hairType),0,x,y,1,1,0,hairColor,255)
		break;
	
	case DRAW.UNEQUIPPED_ATTACK_WALK_RIGHT:
	
		draw_sprite_ext(shirt0_r,0,x,y,1,1,0,shirtColor,255)
		DrawSpriteAnimated(pants_move_r,image_speed,x,y,pantsColor)
		DrawSpriteAnimated(skin0_move_attack_r,image_speed,x,y,skinColor)
		draw_sprite_ext(GetWeaponSprite(Inventory[equipped,0],NumDirectionToString(face_direction),attacking),arm.image_index,x,y,1,1,0,skinColor,255)
		draw_sprite_ext(GetHairSprite(NumDirectionToString(face_direction),hairType),0,x,y,1,1,0,hairColor,255)
		break;
	
	case DRAW.UNEQUIPPED_ATTACK_WALK_BACK:
	
		draw_sprite_ext(shirt0_b,0,x,y,1,1,0,shirtColor,255)
		DrawSpriteAnimated(pants_move_b,image_speed,x,y,pantsColor)
		DrawSpriteAnimated(skin0_move_attack_b,image_speed,x,y,skinColor)
		draw_sprite_ext(GetWeaponSprite(Inventory[equipped,0],NumDirectionToString(face_direction),attacking),arm.image_index,x,y,1,1,0,skinColor,255)
		draw_sprite_ext(GetHairSprite(NumDirectionToString(face_direction),hairType),0,x,y,1,1,0,hairColor,255)
		break;
		
	//EQUIPPED
	//STAND
	case DRAW.EQUIPPED_STAND_FRONT:
		
		
		draw_sprite_ext(shirt0_f,0,x,y,1,1,0,shirtColor,255)
		draw_sprite_ext(pants_idle_f,0,x,y,1,1,0,pantsColor,255)
		draw_sprite_ext(skin0_idle_attack_f,0,x,y,1,1,0,skinColor,255)
		draw_sprite_ext(template_arm_f,0,x,y,1,1,0,skinColor, 255)
		draw_sprite_ext(GetWeaponSprite(Inventory[equipped,0],NumDirectionToString(face_direction),attacking),0,x,y,1,1,0,c_white,255)
		draw_sprite_ext(GetHairSprite(NumDirectionToString(face_direction),hairType),0,x,y,1,1,0,hairColor,255)
		break;
		
	case DRAW.EQUIPPED_STAND_LEFT:
	
		draw_sprite_ext(template_arm_l,0,x,y,1,1,0,skinColor,255)
		draw_sprite_ext(GetWeaponSprite(Inventory[equipped,0],NumDirectionToString(face_direction),attacking),0,x,y,1,1,0,c_white,255)
		draw_sprite_ext(shirt0_l,0,x,y,1,1,0,shirtColor,255)
		draw_sprite_ext(pants_idle_l,0,x,y,1,1,0,pantsColor,255)
		draw_sprite_ext(skin0_idle_attack_l,0,x,y,1,1,0,skinColor,255)
		draw_sprite_ext(GetHairSprite(NumDirectionToString(face_direction),hairType),0,x,y,1,1,0,hairColor,255)
		break;
	
	case DRAW.EQUIPPED_STAND_RIGHT:
	
		draw_sprite_ext(shirt0_r,0,x,y,1,1,0,shirtColor,255)
		draw_sprite_ext(pants_idle_r,0,x,y,1,1,0,pantsColor,255)
		draw_sprite_ext(skin0_idle_attack_r,0,x,y,1,1,0,skinColor,255)
		if Inventory[equipped, 2] == "Bow"{
		
			draw_sprite_ext(template_arm_r,0,x,y,1,1,0,skinColor,255)
			draw_sprite_ext(GetWeaponSprite(Inventory[equipped,0],NumDirectionToString(face_direction),attacking),0,x,y,1,1,0,c_white,255)
		}
		else{
			draw_sprite_ext(GetWeaponSprite(Inventory[equipped,0],NumDirectionToString(face_direction),attacking),0,x,y,1,1,0,c_white,255)
			draw_sprite_ext(template_arm_r,0,x,y,1,1,0,skinColor,255)
		}
		draw_sprite_ext(GetHairSprite(NumDirectionToString(face_direction),hairType),0,x,y,1,1,0,hairColor,255)
		break;
	
	case DRAW.EQUIPPED_STAND_BACK:
	
		if Inventory[equipped, 2] == "Bow"{
		
			draw_sprite_ext(template_arm_b,0,x,y,1,1,0,skinColor,255)
			draw_sprite_ext(GetWeaponSprite(Inventory[equipped,0],NumDirectionToString(face_direction),attacking),0,x,y,1,1,0,c_white,255)
		}
		else{
			draw_sprite_ext(GetWeaponSprite(Inventory[equipped,0],NumDirectionToString(face_direction),attacking),0,x,y,1,1,0,c_white,255)
			draw_sprite_ext(template_arm_b,0,x,y,1,1,0,skinColor,255)
		}
		draw_sprite_ext(shirt0_b,0,x,y,1,1,0,shirtColor,255)
		draw_sprite_ext(pants_idle_b,0,x,y,1,1,0,pantsColor,255)
		draw_sprite_ext(skin0_idle_attack_b,0,x,y,1,1,0,skinColor,255)
		draw_sprite_ext(GetHairSprite(NumDirectionToString(face_direction),hairType),0,x,y,1,1,0,hairColor,255)
		break;
	
	//WALK
	case DRAW.EQUIPPED_WALK_FRONT:
	
		draw_sprite_ext(shirt0_f,0,x,y,1,1,0,shirtColor,255)
		DrawSpriteAnimated(pants_move_f,image_speed,x,y,pantsColor)
		DrawSpriteAnimated(skin0_move_attack_f,image_speed,x,y,skinColor)
		if Inventory[equipped, 2] == "Bow"{
		
			draw_sprite_ext(template_arm_f,0,x,y,1,1,0,skinColor,255)
			draw_sprite_ext(GetWeaponSprite(Inventory[equipped,0],NumDirectionToString(face_direction),attacking),0,x,y,1,1,0,c_white,255)
		}
		else{
			draw_sprite_ext(GetWeaponSprite(Inventory[equipped,0],NumDirectionToString(face_direction),attacking),0,x,y,1,1,0,c_white,255)
			draw_sprite_ext(template_arm_f,0,x,y,1,1,0,skinColor,255)
		}
		draw_sprite_ext(GetHairSprite(NumDirectionToString(face_direction),hairType),0,x,y,1,1,0,hairColor,255)
		break;
	
	case DRAW.EQUIPPED_WALK_LEFT:
	
		if Inventory[equipped, 2] == "Bow"{
		
			draw_sprite_ext(template_arm_l,0,x,y,1,1,0,skinColor,255)
			draw_sprite_ext(GetWeaponSprite(Inventory[equipped,0],NumDirectionToString(face_direction),attacking),0,x,y,1,1,0,c_white,255)
		}
		else{
			draw_sprite_ext(GetWeaponSprite(Inventory[equipped,0],NumDirectionToString(face_direction),attacking),0,x,y,1,1,0,c_white,255)
			draw_sprite_ext(template_arm_l,0,x,y,1,1,0,skinColor,255)
		}
		draw_sprite_ext(shirt0_l,0,x,y,1,1,0,shirtColor,255)
		DrawSpriteAnimated(pants_move_l,image_speed,x,y,pantsColor)
		DrawSpriteAnimated(skin0_move_attack_l,image_speed,x,y,skinColor)
		draw_sprite_ext(GetHairSprite(NumDirectionToString(face_direction),hairType),0,x,y,1,1,0,hairColor,255)
		break;

	case DRAW.EQUIPPED_WALK_RIGHT:
	
		draw_sprite_ext(shirt0_r,0,x,y,1,1,0,shirtColor,255)
		DrawSpriteAnimated(pants_move_r,image_speed,x,y,pantsColor)
		DrawSpriteAnimated(skin0_move_attack_r,image_speed,x,y,skinColor)
		if Inventory[equipped, 2] == "Bow"{
		
			draw_sprite_ext(template_arm_r,0,x,y,1,1,0,skinColor,255)
			draw_sprite_ext(GetWeaponSprite(Inventory[equipped,0],NumDirectionToString(face_direction),attacking),0,x,y,1,1,0,c_white,255)
		}
		else{
			draw_sprite_ext(GetWeaponSprite(Inventory[equipped,0],NumDirectionToString(face_direction),attacking),0,x,y,1,1,0,c_white,255)
			draw_sprite_ext(template_arm_r,0,x,y,1,1,0,skinColor,255)
		}
		draw_sprite_ext(GetHairSprite(NumDirectionToString(face_direction),hairType),0,x,y,1,1,0,hairColor,255)
		break;
	
	case DRAW.EQUIPPED_WALK_BACK:
	
		if Inventory[equipped, 2] == "Bow"{
		
			draw_sprite_ext(template_arm_b,0,x,y,1,1,0,skinColor,255)
			draw_sprite_ext(GetWeaponSprite(Inventory[equipped,0],NumDirectionToString(face_direction),attacking),0,x,y,1,1,0,c_white,255)
		}
		else{
			draw_sprite_ext(GetWeaponSprite(Inventory[equipped,0],NumDirectionToString(face_direction),attacking),0,x,y,1,1,0,c_white,255)
			draw_sprite_ext(template_arm_b,0,x,y,1,1,0,skinColor,255)
		}
		draw_sprite_ext(shirt0_b,0,x,y,1,1,0,shirtColor,255)
		DrawSpriteAnimated(pants_move_b,image_speed,x,y,pantsColor)
		DrawSpriteAnimated(skin0_move_attack_b,image_speed,x,y,skinColor)
		draw_sprite_ext(GetHairSprite(NumDirectionToString(face_direction),hairType),0,x,y,1,1,0,hairColor,255)
		break;
		
	
	//ATTACK STAND
	case DRAW.EQUIPPED_ATTACK_STAND_FRONT:
	
		if Inventory[equipped, 2] == "Bow"{
			
			draw_sprite_ext(template_arm_f,0,x,y,1,1,0,skinColor,255)
			draw_sprite_ext(GetWeaponSprite(Inventory[equipped,0],NumDirectionToString(face_direction),attacking),arm.image_index,x,y,1,1,0,c_white,255)
			draw_sprite_ext(skin0_head_f,0,x,y,1,1,0,shirtColor,255)
			draw_sprite_ext(shirt0_f,0,x,y,1,1,0,shirtColor,255)
			draw_sprite_ext(bow_short_pull_arm_f,arm.image_index,x,y,1,1,0,skinColor,255)
			draw_sprite_ext(pants_idle_f,0,x,y,1,1,0,pantsColor,255)
			
		}
		else{

			draw_sprite_ext(pants_idle_f,0,x,y,1,1,0,pantsColor,255)
			draw_sprite_ext(shirt0_f,0,x,y,1,1,0,shirtColor,255)
			draw_sprite_ext(template_arm_swing_f,arm.image_index,x,y,1,1,0,skinColor,255)
			draw_sprite_ext(skin0_idle_attack_f,0,x,y,1,1,0,skinColor,255)
			draw_sprite_ext(GetWeaponSprite(Inventory[equipped,0],NumDirectionToString(face_direction),attacking),arm.image_index,x,y,1,1,0,c_white,255)
		}
		
		draw_sprite_ext(GetHairSprite(NumDirectionToString(face_direction),hairType),0,x,y,1,1,0,hairColor,255)
		break;
		
	
	case DRAW.EQUIPPED_ATTACK_STAND_LEFT:
		
		if Inventory[equipped, 2] == "Bow"{
			draw_sprite_ext(template_arm_l,0,x,y,1,1,0,skinColor,255)
			draw_sprite_ext(skin0_idle_l,0,x,y,1,1,0,skinColor,255)
			draw_sprite_ext(shirt0_l,0,x,y,1,1,0,shirtColor,255)
			draw_sprite_ext(GetWeaponSprite(Inventory[equipped,0],NumDirectionToString(face_direction),attacking),arm.image_index,x,y,1,1,0,c_white,255)
			draw_sprite_ext(bow_short_pull_arm_l,arm.image_index,x,y,1,1,0,skinColor,255)
			
			
		}
		else{
			
			draw_sprite_ext(GetWeaponSprite(Inventory[equipped,0],NumDirectionToString(face_direction),attacking),arm.image_index,x,y,1,1,0,c_white,255)
			draw_sprite_ext(template_arm_swing_l,arm.image_index,x,y,1,1,0,skinColor,255)
			draw_sprite_ext(shirt0_l,0,x,y,1,1,0,shirtColor,255)
			draw_sprite_ext(skin0_idle_attack_l,0,x,y,1,1,0,skinColor,255)
		}
		
		draw_sprite_ext(pants_idle_l,0,x,y,1,1,0,pantsColor,255)
		draw_sprite_ext(GetHairSprite(NumDirectionToString(face_direction),hairType),0,x,y,1,1,0,hairColor,255)
		break;
	
	case DRAW.EQUIPPED_ATTACK_STAND_RIGHT:
	
		if Inventory[equipped, 2] == "Bow"{
			
			draw_sprite_ext(bow_short_pull_arm_r,arm.image_index,x,y,1,1,0,skinColor,255)
			draw_sprite_ext(GetWeaponSprite(Inventory[equipped,0],NumDirectionToString(face_direction),attacking),arm.image_index,x,y,1,1,0,c_white,255)
			draw_sprite_ext(skin0_idle_r,0,x,y,1,1,0,skinColor,255)
			draw_sprite_ext(shirt0_r,0,x,y,1,1,0,shirtColor,255)
			draw_sprite_ext(template_arm_r,0,x,y,1,1,0,skinColor,255)
		}
		else{

			draw_sprite_ext(shirt0_r,0,x,y,1,1,0,shirtColor,255)
			draw_sprite_ext(skin0_idle_attack_r,0,x,y,1,1,0,skinColor,255)
			draw_sprite_ext(GetWeaponSprite(Inventory[equipped,0],NumDirectionToString(face_direction),attacking),arm.image_index,x,y,1,1,0,c_white,255)
			draw_sprite_ext(template_arm_swing_r,arm.image_index,x,y,1,1,0,skinColor,255)
		}
		
		draw_sprite_ext(pants_idle_r,0,x,y,1,1,0,pantsColor,255)
		draw_sprite_ext(GetHairSprite(NumDirectionToString(face_direction),hairType),0,x,y,1,1,0,hairColor,255)
		break;
	
	case DRAW.EQUIPPED_ATTACK_STAND_BACK:
		
		if Inventory[equipped, 2] == "Bow"{
			
			draw_sprite_ext(bow_short_pull_arm_b,arm.image_index,x,y,1,1,0,skinColor,255)
			draw_sprite_ext(GetWeaponSprite(Inventory[equipped,0],NumDirectionToString(face_direction),attacking),arm.image_index,x,y,1,1,0,c_white,255)
			draw_sprite_ext(skin0_head_b,0,x,y,1,1,0,skinColor,255)
			draw_sprite_ext(shirt0_b,0,x,y,1,1,0,shirtColor,255)
			draw_sprite_ext(template_arm_b,arm.image_index,x,y,1,1,0,skinColor,255)
		}
		else{
			
			draw_sprite_ext(template_arm_swing_b,arm.image_index,x,y,1,1,0,skinColor,255)
			draw_sprite_ext(GetWeaponSprite(Inventory[equipped,0],NumDirectionToString(face_direction),attacking),arm.image_index,x,y,1,1,0,c_white,255)
			draw_sprite_ext(skin0_idle_attack_b,0,x,y,1,1,0,skinColor,255)
			draw_sprite_ext(shirt0_b,0,x,y,1,1,0,shirtColor,255)
		}
		
		draw_sprite_ext(pants_idle_b,0,x,y,1,1,0,pantsColor,255)
		draw_sprite_ext(GetHairSprite(NumDirectionToString(face_direction),hairType),0,x,y,1,1,0,hairColor,255)
		break;
	
	
	//ATTACK WALK
	case DRAW.EQUIPPED_ATTACK_WALK_FRONT:
	
		if Inventory[equipped, 2] == "Bow"{
			
			draw_sprite_ext(template_arm_f,0,x,y,1,1,0,skinColor,255)
			draw_sprite_ext(GetWeaponSprite(Inventory[equipped,0],NumDirectionToString(face_direction),attacking),arm.image_index,x,y,1,1,0,c_white,255)
			draw_sprite_ext(skin0_head_f,0,x,y,1,1,0,shirtColor,255)
			draw_sprite_ext(shirt0_f,0,x,y,1,1,0,shirtColor,255)
			draw_sprite_ext(bow_short_pull_arm_f,arm.image_index,x,y,1,1,0,skinColor,255)
			DrawSpriteAnimated(pants_move_f,image_speed,x,y,pantsColor)
			
		}
		else{

			draw_sprite_ext(pants_idle_f,0,x,y,1,1,0,pantsColor,255)
			draw_sprite_ext(shirt0_f,0,x,y,1,1,0,shirtColor,255)
			draw_sprite_ext(template_arm_swing_f,arm.image_index,x,y,1,1,0,skinColor,255)
			draw_sprite_ext(skin0_idle_attack_f,0,x,y,1,1,0,skinColor,255)
			draw_sprite_ext(GetWeaponSprite(Inventory[equipped,0],NumDirectionToString(face_direction),attacking),arm.image_index,x,y,1,1,0,c_white,255)
		}
		
		draw_sprite_ext(GetHairSprite(NumDirectionToString(face_direction),hairType),0,x,y,1,1,0,hairColor,255)
		break;
	
	case DRAW.EQUIPPED_ATTACK_WALK_LEFT:

		if Inventory[equipped, 2] == "Bow"{
			draw_sprite_ext(template_arm_l,0,x,y,1,1,0,skinColor,255)
			draw_sprite_ext(skin0_idle_l,0,x,y,1,1,0,skinColor,255)
			draw_sprite_ext(shirt0_l,0,x,y,1,1,0,shirtColor,255)
			draw_sprite_ext(GetWeaponSprite(Inventory[equipped,0],NumDirectionToString(face_direction),attacking),arm.image_index,x,y,1,1,0,c_white,255)
			draw_sprite_ext(bow_short_pull_arm_l,arm.image_index,x,y,1,1,0,skinColor,255)
			
			
		}
		else{
			
			draw_sprite_ext(GetWeaponSprite(Inventory[equipped,0],NumDirectionToString(face_direction),attacking),arm.image_index,x,y,1,1,0,c_white,255)
			draw_sprite_ext(template_arm_swing_l,arm.image_index,x,y,1,1,0,skinColor,255)
			draw_sprite_ext(shirt0_l,0,x,y,1,1,0,shirtColor,255)
			draw_sprite_ext(skin0_idle_attack_l,0,x,y,1,1,0,skinColor,255)
		}
		
		DrawSpriteAnimated(pants_move_l,image_speed,x,y,pantsColor)
		draw_sprite_ext(GetHairSprite(NumDirectionToString(face_direction),hairType),0,x,y,1,1,0,hairColor,255)
		break;
	
	case DRAW.EQUIPPED_ATTACK_WALK_RIGHT:
	
		if Inventory[equipped, 2] == "Bow"{
			
			draw_sprite_ext(bow_short_pull_arm_r,arm.image_index,x,y,1,1,0,skinColor,255)
			draw_sprite_ext(GetWeaponSprite(Inventory[equipped,0],NumDirectionToString(face_direction),attacking),arm.image_index,x,y,1,1,0,c_white,255)
			draw_sprite_ext(skin0_idle_r,0,x,y,1,1,0,skinColor,255)
			draw_sprite_ext(shirt0_r,0,x,y,1,1,0,shirtColor,255)
			draw_sprite_ext(template_arm_r,0,x,y,1,1,0,skinColor,255)
		}
		else{

			draw_sprite_ext(shirt0_r,0,x,y,1,1,0,shirtColor,255)
			draw_sprite_ext(skin0_idle_attack_r,0,x,y,1,1,0,skinColor,255)
			draw_sprite_ext(GetWeaponSprite(Inventory[equipped,0],NumDirectionToString(face_direction),attacking),arm.image_index,x,y,1,1,0,c_white,255)
			draw_sprite_ext(template_arm_swing_r,arm.image_index,x,y,1,1,0,skinColor,255)
		}
		
		DrawSpriteAnimated(pants_move_r,image_speed,x,y,pantsColor)
		draw_sprite_ext(GetHairSprite(NumDirectionToString(face_direction),hairType),0,x,y,1,1,0,hairColor,255)
		break;
	
	case DRAW.EQUIPPED_ATTACK_WALK_BACK:
	
		if Inventory[equipped, 2] == "Bow"{
			
			draw_sprite_ext(bow_short_pull_arm_b,arm.image_index,x,y,1,1,0,skinColor,255)
			draw_sprite_ext(GetWeaponSprite(Inventory[equipped,0],NumDirectionToString(face_direction),attacking),arm.image_index,x,y,1,1,0,c_white,255)
			draw_sprite_ext(skin0_head_b,0,x,y,1,1,0,skinColor,255)
			draw_sprite_ext(shirt0_b,0,x,y,1,1,0,shirtColor,255)
			draw_sprite_ext(template_arm_b,arm.image_index,x,y,1,1,0,skinColor,255)
		}
		else{
			
			draw_sprite_ext(template_arm_b,arm.image_index,x,y,1,1,0,skinColor,255)
			draw_sprite_ext(GetWeaponSprite(Inventory[equipped,0],NumDirectionToString(face_direction),attacking),arm.image_index,x,y,1,1,0,c_white,255)
			draw_sprite_ext(skin0_head_b,0,x,y,1,1,0,skinColor,255)
			draw_sprite_ext(shirt0_b,0,x,y,1,1,0,shirtColor,255)
		}
		
		DrawSpriteAnimated(pants_move_r,image_speed,x,y,pantsColor)
		draw_sprite_ext(GetHairSprite(NumDirectionToString(face_direction),hairType),0,x,y,1,1,0,hairColor,255)
		break;
}

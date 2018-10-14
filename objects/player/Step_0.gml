//Store mouse direction relative to player
face_direction = point_direction(x, y, mouse_x, mouse_y)
//Control Movement
PlayerControl()
CheckCollisions()
with(arm){
	ArmControl()
}
show_debug_message("Draw Mode:" + string(drawMode))
show_debug_message(string(DRAW.ATTACK_WALK_FRONT))

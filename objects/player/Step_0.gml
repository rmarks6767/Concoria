//Store mouse direction relative to player
face_direction = point_direction(x, y, mouse_x, mouse_y)
//Control Movement
PlayerControl()
CheckCollisions()
with(arm){
	ArmControl()
}
Animate()
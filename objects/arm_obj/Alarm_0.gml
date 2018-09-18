//Add one tick to arm angle
armFrame += 1;
show_debug_message("alarm 0 has been run" + string(armFrame))
if armFrame == 7 {

	player.attacking = false;
	armFrame = 0;
	image_angle = 0;

}
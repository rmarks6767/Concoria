//This function returns the direction the mouse is relative to player as a string
//"left","right","up", or "down".



//LEFT
if player.face_direction >= 135 and player.face_direction < 225{
    return "left"
            
//RIGHT
}else if player.face_direction >= 315{

    return "right"
}else if player.face_direction >= 0 and player.face_direction < 45{

    return "right"

//UP
}else if player.face_direction >= 45 and player.face_direction < 135{

    return "up"

//DOWN
}else if player.face_direction >= 225 and player.face_direction < 315{

    return "down"
}else{

    show_debug_message(string(player.face_direction))
    return "uhhh"
}
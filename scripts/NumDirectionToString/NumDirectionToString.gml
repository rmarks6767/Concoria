//Take a number direction and return a direction string (LEFT RIGHT UP DOWN)
numDirection = argument0
//LEFT
if numDirection >= 135 and numDirection < 225{
    return "left"
            
//RIGHT
}else if numDirection >= 315{

    return "right"
}else if numDirection >= 0 and numDirection < 45{

    return "right"

//UP
}else if numDirection >= 45 and numDirection < 135{

    return "up"

//DOWN
}else if numDirection >= 225 and numDirection < 315{

    return "down"
}else{

    show_debug_message(string(numDirection))
    return "uhhh"
}
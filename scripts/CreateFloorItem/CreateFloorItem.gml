//Purpose: Create a ground object with the correct variables and sprite
var name = argument0
var type = argument1
var quantity = argument2
var itemx = argument3
var itemy = argument4

var object = instance_create_layer(itemx,itemy,"Instances",floorobject_obj);
object.name = name;
object.type = type;
object.quantity += quantity;
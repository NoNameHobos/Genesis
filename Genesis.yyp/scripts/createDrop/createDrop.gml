///createDrop(x, y, type)
var xx = argument0;
var yy = argument1;
var type = argument2;

var drop = instance_create_layer(xx,yy,"Game", item_drop);
drop.image_index = type;
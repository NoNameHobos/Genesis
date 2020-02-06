///createDrop(x, y, type)
var xx = argument0;
var yy = argument1;
var type = argument2;

var drop = instance_create_layer(xx,yy,"Game", player_drop);
switch(type) {
	case "HEALTH":
		drop.image_index = 0;
		break;
	case "MANA":
		drop.image_index = 1;
		break;
	case "EXP":
		drop.image_index = 2;
		drop.image_xscale = 0.25 + random(0.9);
		drop.image_yscale = image_xscale
		break;
	default:
		break;
		
}
/// @description Insert description here
// You can write your code in this editor
var playerInRadius = distance_to_point(obj_player.x, obj_player.y) < (sprite_width-4)/2
if(playerInRadius) {
	image_alpha = 0.5;
} else image_alpha = 1;
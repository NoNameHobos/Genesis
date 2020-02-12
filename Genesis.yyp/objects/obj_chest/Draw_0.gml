/// @description Insert description here
// You can write your code in this editor
draw_self();
if(quality == CHEST.HIGH) {
	var frameCount = sprite_get_number(chest_sparkle);
	if(frame >= frameCount) frame = 0;
	var alphaDist = clamp((sprite_width * 4 - distance_to_object(obj_player))/100,0, 1);
	draw_sprite_ext(chest_sparkle, frame, x, y, image_xscale, image_yscale, image_angle, image_blend, alphaDist);
}

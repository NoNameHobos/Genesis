/// @description Insert description here
// You can write your code in this editor
overSlot = mouseIntersects(
	camera_get_view_x(view_camera[0]) + init_x,  //X
	camera_get_view_y(view_camera[0]) + init_y, //Y
	sprite_get_width(spr_slot),            //WIDTH
	sprite_get_height(spr_slot)            //HEIGHT
);

x = camera_get_view_x(view_camera[0]) + init_x;
y = camera_get_view_y(view_camera[0]) + init_y;
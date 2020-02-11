/// @description Insert description here
// You can write your code in this editor
var xOff = camera_get_view_x(view_camera[0]);
var yOff = camera_get_view_y(view_camera[0]);

if(item == undefined) {
	draw_set_color(c_yellow);
	draw_set_alpha(1);
	draw_circle(mouse_x-xOff, mouse_y-yOff, 16, 1);
} else {
	draw_set_alpha(1);
	draw_sprite(items, item, mouse_x-xOff, mouse_y-yOff);
	draw_set_color(c_white);
	draw_text(mouse_x-xOff+16, mouse_y-yOff, quantity);
}
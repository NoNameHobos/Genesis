/// @description Insert description here
// You can write your code in this editor
if(item == undefined) {
	draw_set_color(c_yellow);
	draw_set_alpha(1);
	draw_circle(mouse_x, mouse_y, 16, 1);
} else {
	draw_set_alpha(1);
	draw_sprite(spr_drops, item, mouse_x, mouse_y);
	draw_set_color(c_white);
	draw_text(mouse_x+16, mouse_y, quantity);
}
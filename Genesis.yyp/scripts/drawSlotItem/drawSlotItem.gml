///drawSlotItem(slot)
var slot = argument[0]
if(argument_count == 2) {
	var margin = argument[1];
} else var margin = 8;
var xscale = (sprite_get_width(slot.slotSprite) - margin) / sprite_get_width(items);
var yscale = (sprite_get_height(slot.slotSprite)- margin) / sprite_get_height(items);
draw_sprite_ext(items, slot.item, slot.init_x, slot.init_y, xscale, yscale, image_angle, c_white, 1);
draw_set_color(c_white);
draw_set_halign(fa_right);
draw_text(slot.init_x + sprite_get_width(slot.slotSprite)/2, slot.init_y, slot.quantity);
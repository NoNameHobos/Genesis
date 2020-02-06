//initInv(x, y, width, height)
/*
	Create an inventory array and return the array
	e.g 16 x 16
*/


var xx = argument[0];
var yy = argument[1];
var width = argument[2];
var height = argument[3];

var marginX = 4;
var marginY = 4;

var inventory = instance_create_layer(0,0,"UI",inv_manager);
inventory.linkedObject = self.id;

var inv;

for(var i = 0; i < width; i++) {
	for(var j = 0; j < height; j++) {
		var slotX = xx + i * (sprite_get_width(spr_slot) + marginX) + sprite_get_width(spr_slot)/2;
		var slotY = yy + j * (sprite_get_height(spr_slot) + marginY) + sprite_get_height(spr_slot)/2;
		inv[i, j] = instance_create_layer(slotX, slotY, "UI",Slot);
		inv[i, j].isVisible = false;
		inv[i, j].linkedInventory = inventory;
		inv[i, j].item = undefined;
		inv[i, j].quantity = 0;
	}
}

inventory.inv = inv;

return inventory;
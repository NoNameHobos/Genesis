/// @description Insert description here
// You can write your code in this editor
if(mouse_check_button_pressed(mb_left)) {
	var slot = slotOnMouse();
	
	if(slot != undefined) {
		if(slot.overSlot) {
		
			if(item == undefined) {
				item = slot.item;
				quantity = slot.quantity;
				slot.item = undefined;
				slot.quantity = 0;
			} else {
				addToInv(obj_player.inventory.inv, item, quantity, slot);
				item = undefined;
				quantity = 0;
			}
		}
	}
}
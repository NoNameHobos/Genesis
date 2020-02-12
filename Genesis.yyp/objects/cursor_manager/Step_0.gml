/// @description Insert description here
// You can write your code in this editor
if(mouse_check_button_pressed(mb_left)) {
	var slot = slotOnMouse();
	
	if(slot != undefined) {
		if(slot.overSlot) {
			if(slot.item != item) {
				var oldItem = slot.item;
				var oldQuant = slot.quantity;
				slot.item = item;
				slot.quantity = quantity;
				item = oldItem;
				quantity = oldQuant;
			} else {
				slot.quantity += quantity;
				item = undefined;
				quantity = 0;
			}
		}
	}
}
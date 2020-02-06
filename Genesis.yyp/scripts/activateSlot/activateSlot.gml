var slot = argument0;
switch(slot.item) {
	case 0:
		if(obj_player.hp < obj_player.hp_max) {
			itemRestore(20, "HEALTH");
			if(slot.quantity > 1) {
				slot.quantity -= 1;
			} else {
				slot.item = undefined;
				slot.quantity = 0;
			}
		}
	break;
	
	case 1:
		if(obj_player.stam < obj_player.stam_max) {
			itemRestore(20, "STAM");
			if(slot.quantity > 1) {
				slot.quantity -= 1;
			} else {
				slot.item = undefined;
				slot.quantity = 0;
			}
		}
	break;
}
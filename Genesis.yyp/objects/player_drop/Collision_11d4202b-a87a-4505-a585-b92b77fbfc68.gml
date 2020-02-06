/// @description Insert description here
// You can write your code in this editor
if(image_index == 2) obj_player.xp += 3 * (1 + image_xscale);
else {
	#region add to inventory/hotbar
	//Check if item exists in hotbar
	if(isInInv(obj_player.hotbar.inv, image_index, 1)) {
		var slot = getSameSlot(obj_player.hotbar.inv, image_index);
		addToInv(obj_player.hotbar.inv, image_index, 1, slot);
	}
	//Check if item exists in inventory
	else if(isInInv(obj_player.inventory.inv, image_index)) {
		var slot = getSameSlot(obj_player.inventory.inv, image_index);
		addToInv(obj_player.inventory.inv, image_index, 1, slot);
	}
	//Check if hotbar has free space
	else if(getNextFreeSlot(obj_player.hotbar.inv) != undefined) {
		addToInv(obj_player.hotbar.inv, image_index, 1);
	} else if(getNextFreeSlot(obj_player.inventory.inv) != undefined) {
		addToInv(obj_player.inventory.inv, image_index, 1);
	}
	#endregion
}
instance_destroy();
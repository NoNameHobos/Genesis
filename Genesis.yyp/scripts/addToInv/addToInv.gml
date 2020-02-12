///addToInv(inv, item, quantity, slot)
var inv = argument[0];
var item = argument[1];
if(argument_count < 4) {
	if(argument_count == 3) {
		var quantity = argument[2];
		if(isInInv(inv, item)) {
			var slot = getSameSlot(inv, item);
		} else
		var slot = getNextFreeSlot(inv);
	}
	if(argument_count == 2) {
		var quantity = 1;
		if(isInInv(inv, item)) {
			var slot = getSameSlot(inv, item);
		} else
		var slot = getNextFreeSlot(inv);
	}
} else {
	var quantity = argument[2];
	var slot = argument[3];
}

//Add item to inv
if(slot.item == item) {
	slot.quantity += quantity;
	return 0;
}
else if(slot.item == undefined) {
	slot.quantity = quantity;
	slot.item = item;
	return 0;
} else if(slot.item != item) {
	oldItem = slot.item;
	oldQuantity = slot.quantity;
	return 0;
}
else return -1;
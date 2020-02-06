///getNextFreeSlot(invArray)
var invArray = argument[0];
for(var i = 0; i < array_height_2d(invArray); i++) {
	for(var j = 0; j < array_length_2d(invArray, i); j++) {
		var slot = invArray[i, j];
		
		if(slot.item == undefined || slot.quantity == 0) {
			return slot;
		}
	}
}

return undefined;
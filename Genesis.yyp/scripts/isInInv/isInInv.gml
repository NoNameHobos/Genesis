///isInInv(invArray, item)
var invArray = argument[0];
var item = argument[1];

for(var i = 0; i < array_height_2d(invArray); i++) {
	for (var j = 0; j < array_length_2d(invArray, i); j++) {
		slot = invArray[i, j];
		if(slot.item == item) return true;
	}
}
return false;
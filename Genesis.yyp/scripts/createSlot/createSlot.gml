///createSlot(slotX, slotY, linkedInventory, type)
var sX = argument[0];
var sY = argument[1];
var linkedInv = argument[2];
if(argument_count > 3) {
	var t = argument[3];
} else var t = SLOT_TYPE.INVENTORY;

//Create slot
var s = instance_create_layer(sX, sY, "UI",Slot);
//Visibility
s.isVisible = false;
//Inventory that controls slot, must be of type Inventory
s.linkedInventory = linkedInv;
//Item
s.item = undefined;
//Item Quantity
s.quantity = 0;
//Assign slot type
s.type = t;
switch(t) {
	case SLOT_TYPE.INVENTORY:
		s.slotSprite = spr_slot;
	break;
}
//Return Slot
return s;
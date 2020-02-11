enum EQUIP {
	HEAD,
	CHEST,
	BOOTS,
	LEFT,  //Left Hand
	RIGHT, //Right Hand
	BACK //Back Equipment Slot (Quiver, Shield etc.)
}
i_state = INV_STATE.show;
var view_x = camera_get_view_x(view_camera[0]);
var view_y = camera_get_view_y(view_camera[0]);
var view_width = camera_get_view_width(view_camera[0]);
var view_height = camera_get_view_height(view_camera[0]);

var xx = view_x + view_width/3 * 2;   //Equip X
var yy = view_y + view_height/3 * 2;  //Equip Y

var slotWidth = sprite_get_width(spr_slot) + 4;
var slotHeight = sprite_get_height(spr_slot) + 4;

slots[EQUIP.HEAD] = createSlot(xx + 1 * slotWidth, yy, self, SLOT_TYPE.EQUIPMENT);
slots[EQUIP.HEAD].slotSprite = helm_equip;
slots[EQUIP.CHEST] = createSlot(xx + 1 * slotWidth, yy + 1 * slotHeight, self, SLOT_TYPE.EQUIPMENT);
slots[EQUIP.CHEST].slotSprite = chest_equip;
slots[EQUIP.BOOTS] = createSlot(xx + 1 * slotWidth, yy + 2 * slotHeight, self, SLOT_TYPE.EQUIPMENT);
slots[EQUIP.BOOTS].slotSprite = boots_equip;
slots[EQUIP.LEFT] = createSlot(xx, yy + 1 * slotHeight, self, SLOT_TYPE.EQUIPMENT);
slots[EQUIP.RIGHT] = createSlot(xx + 2 * slotWidth, yy + 1 * slotHeight, self, SLOT_TYPE.EQUIPMENT);
slots[EQUIP.BACK] = createSlot(xx + 2 * slotWidth, yy, self, SLOT_TYPE.EQUIPMENT);
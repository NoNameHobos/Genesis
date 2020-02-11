/// @description Insert description here
// You can write your code in this editor

for(var i = 0; i < array_length_1d(slots); i++) {
	if(i_state == INV_STATE.show) {
		slots[i].isVisible = true;
	} else if(i_state == INV_STATE.hidden) slots[i].isVisible = false;
}
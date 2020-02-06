/// @description Inventory Management
// You can write your code in this editor


#region update slot draw
	for(var i = 0; i < array_height_2d(inv); i++) {
		for(var j = 0; j < array_length_2d(inv, i); j++) {
			if(i_state == invState.show) {
				inv[i, j].isVisible = true;
			} else if(i_state == invState.hidden) inv[i, j].isVisible = false;
		}
	}
#endregion
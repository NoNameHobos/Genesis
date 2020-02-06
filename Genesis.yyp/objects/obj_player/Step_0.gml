/// @description Update Player
// You can write your code in this editor

#region Level Up
	if(xp >= xp_max) levelUp();
#endregion
#region movement

	var forward = keyboard_check(ord("W"));
	var backward = keyboard_check(ord("S"));
	var input = sign(forward - backward);
	var angle = point_direction(x, y, mouse_x, mouse_y);
	var fric = 0.65;

	if(distance_to_point(mouse_x, mouse_y) > sprite_width/2) fricMoveDir(input, angle, MOVE_SPEED, fric);
	image_angle = angle;
#endregion
#region State Machine
	switch(pState) {
		case PLAYER.IDLE:
		#region IDLE
			if(mouse_check_button_pressed(mb_left)) {
				pState = PLAYER.ATTACK;
			}
			break;
		#endregion
		case PLAYER.ATTACK:
			#region ATTACK
				frame += 5/room_speed;
			#endregion
			break;
	}
#endregion
#region Inventory key check
	if(keyboard_check_pressed(vk_tab)) {
		if(inventory.i_state == invState.hidden)
			inventory.i_state = invState.show;
		else inventory.i_state = invState.hidden;
	}
	for(var i = 0; i < array_length_1d(hotbarKey); i++) {
		if(keyboard_check_pressed(hotbarKey[i])) {
			///use the item in the slot
			activateSlot(hotbar.inv[i, 0]);
		}
	}
#endregion
#region Item Collection

	if(instance_exists(player_drop)) {
	
		var obj = instance_nearest(x, y, player_drop);
		if(distance_to_object(obj) < 64) {
			with(obj) {
				var angle = point_direction(x, y, obj_player.x, obj_player.y);
				fricMoveDir(1, angle, 3, 0.2);
			}
		}
	}

#endregion
#region Alarm Checks coz Im a noob lol
	if(alarm[0] == -1) image_blend = c_white;
#endregion
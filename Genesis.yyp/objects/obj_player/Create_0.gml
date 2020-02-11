/// @description Initialize The Player
/*
	Initialize A Basic Player with levels
	And Experience
*/

event_inherited();
#region Object Vars
	MOVE_SPEED = 6;
	pState = PLAYER.IDLE;
	attackAngle = undefined;
	frame = 0;
#endregion
#region INIT HOTKEYS
	hotbarKey[0] = 49;
	hotbarKey[1] = 50;
	hotbarKey[2] = 51;
	hotbarKey[3] = 52;
#endregion
#region Init Player Stats
	hp = 100;
	hp_max = 100;
	stam = 70;
	stam_max = 80;
	level = 1;
	xp = 0;
	xp_max = getExpMax(level);
	var INV_WIDTH = 4;
	var INV_HEIGHT= 6;
#endregion

#region create inventory
	var HOTBAR_SIZE = 4;
	inventory = initInv(35, 105, INV_WIDTH, INV_HEIGHT);
	hotbar = initInv(view_wport[0]/2-sprite_get_width(spr_slot)*HOTBAR_SIZE/2,
					 view_hport[0]-sprite_get_height(spr_slot),
					 HOTBAR_SIZE, 1
	);
	equip = instance_create_layer(0, 0, "UI", equipController);
	with(hotbar) {
		i_state = INV_STATE.show;
	}
#endregion
/// @description Insert description here
// You can write your code in this editor
//Draw health and xp
if(instance_exists(obj_player)) {
	#region setup x, y, width, height for stat bars
	var xx = 0;
	var yy = 0;
	
	var healthX = xx;
	var healthY = yy;
	var healthBarWidth = 300;
	var healthBarHeight = 15;
	
	var stamX = healthX;
	var stamY = healthY + healthBarHeight;
	var stamBarWidth = 250;
	var stamBarHeight = 10;
	
	var xpWidth = sprite_get_width(spr_slot)*4 - 20;
	var xpHeight = 10;
	var xpX1 = view_wport[0]/2-xpWidth/2;
	var xpY1 = view_hport[0]-sprite_get_height(spr_slot)-xpHeight;
	#endregion
	//Check if should show health/stam text
	#region health/stam/xp/Level
	var healthPercent = obj_player.hp/obj_player.hp_max;
	var stamPercent = obj_player.stam/obj_player.stam_max;
	var xpPercent = obj_player.xp/obj_player.xp_max;
	
	var statHeight = healthBarHeight + stamBarHeight;
	
	var showStats = mouseIntersects(camera_get_view_x(view_camera[0]) + healthBarWidth/2, camera_get_view_y(view_camera[0])+healthBarHeight/2, healthBarWidth, statHeight);
	//Draw Health Bar
	draw_set_color(c_black);
	draw_rectangle(healthX,healthY, 
	healthX + healthBarWidth,     //X2
	healthY + healthBarHeight,0); //Y2
	draw_set_color(c_red);
	draw_rectangle(healthX + 1, healthY + 1, 
	healthX + 1 + (healthBarWidth - 2) * healthPercent, //X2
	healthY - 1 + healthBarHeight,0);                   //Y2
	
	//Draw Stam Bar Below Health Bar
	draw_set_color(c_black);
	draw_rectangle(stamX, stamY, 
	stamX + stamBarWidth,                        //X2
	stamY + stamBarHeight, 0);                   //Y2
	draw_set_color(c_green);
	draw_rectangle(stamX + 1, stamY + 1, 
	stamX + 1 + (stamBarWidth - 2) * stamPercent, //X2
	stamY - 1 + stamBarHeight, 0);                //Y2
	
	//Draw XP Bar
	
	draw_set_color(c_black);
	draw_rectangle(xpX1, xpY1, xpX1 + xpWidth, xpY1 + xpHeight, 0);
	draw_set_color(c_purple);
	if(obj_player.xp > 0)
		draw_rectangle(xpX1 + 1, xpY1 + 1, xpX1 + 1 + (xpWidth) * xpPercent, xpY1 + xpHeight - 1, 0);
	
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_text(view_wport[0]/2,view_hport[0]-sprite_get_height(spr_slot) - xpHeight - 5, string(round(obj_player.xp)) + "/" + string(round(obj_player.xp_max)));
	draw_text(305, -3, obj_player.level);
	
	
	//Draw Text stats
	if(showStats) {
		draw_set_halign(fa_center);
		draw_text(healthX + healthBarWidth/2, healthY - 3, string(round(obj_player.hp)) + "/" + string(round(obj_player.hp_max)));
		draw_text(stamX + stamBarWidth/2, stamY -3, string(round(obj_player.stam)) + "/" + string(round(obj_player.stam_max)));
	}
	#endregion
	#region Inventory Render
	var invWidth = array_height_2d(obj_player.inventory.inv);
	var invHeight = array_length_2d(obj_player.inventory.inv, 0);
	var marginX = 4;
	var marginY = 4;

	if(obj_player.inventory.i_state == INV_STATE.show) {
		with(obj_player.inventory) {
			var invX1 = inv[0, 0].init_x - sprite_get_width(spr_slot)/2 - marginX;
			var invY1 = inv[0, 0].init_y - sprite_get_height(spr_slot)/2 - marginY;
			var invX2 = inv[invWidth - 1, invHeight - 1].init_x + sprite_get_width(spr_slot)/2 + marginX;
			var invY2 = inv[invWidth - 1, invHeight - 1].init_y + sprite_get_height(spr_slot)/2 + marginY;
			
			draw_set_color(c_dkgray);
			draw_set_alpha(0.6);
			draw_sprite(inv_tag, 0, invX1, invY1);
			
			draw_roundrect(invX1, invY1, invX2, invY2, 0);
			draw_rectangle(invX1, invY1, invX2, invY1 + 3, 0);
			draw_set_alpha(1);
			draw_set_color(c_white);
			draw_set_halign(fa_left);
			draw_text(inv[0, 0].init_x, 
					  inv[0, 0].init_y - sprite_get_height(spr_slot), "INV");
		}
	}
	#endregion
}

with(Slot) {
	if(isVisible) {
		if(linkedInventory == obj_player.inventory)
			draw_set_alpha(0.6);
		else if(linkedInventory == obj_player.hotbar)
			draw_set_alpha(1);
			
		draw_sprite(slotSprite, overSlot, init_x, init_y);
		
		if(item != undefined && quantity > 0) {
			drawSlotItem(self);
		}
		draw_set_alpha(1);
	}
}
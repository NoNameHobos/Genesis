/// @description Insert description here
// You can write your code in this editor
draw_self();

#region STATE CODE
if(state == ENEMY.ATTACK) {
	var frameCount = sprite_get_number(basic_attack);
	if(frame < frameCount - 1) {
		if(attackAngle == undefined)
			attackAngle = point_direction(x, y, obj_player.x, obj_player.y);
		draw_sprite_ext(basic_attack,round(frame),x,y,image_xscale,image_yscale,attackAngle,c_white,1);
		frame += 2/room_speed;
		if(frame == 0.5) {
			if(isHittable(obj_player, 24, attackAngle, 35)) {
				obj_player.hp -= 1*(1+image_xscale);
				obj_player.image_blend = c_dkgray;
				obj_player.alarm[0] = 15;
			}
		}
	} else {
		state = ENEMY.ALERT;
		frame = 0;
		attackAngle = undefined;
	}	
}
#endregion

if(hp < hp_max || mouseIntersects(x, y, sprite_width/2 * image_xscale,sprite_height/2 * image_yscale)) {
	draw_set_color(c_black);
	draw_rectangle(x-25,y-15,x+25,y-10, 1);
	draw_set_color(c_red);
	draw_rectangle(x - 24, y - 14, x - 24 + 50*(hp/hp_max), y - 11, 0);
}
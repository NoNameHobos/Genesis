/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,imageAngle,image_blend,image_alpha); //draw the player
switch(pState) {
	case PLAYER.ATTACK:
		//draw_sprite(basic_attack, 0, x, y);
		frameCount = sprite_get_number(basic_attack);
		if(frame < frameCount-1) {
			if(attackAngle == undefined)
				attackAngle = angle;
			draw_sprite_ext(basic_attack,round(frame),x,y,1,1,angle,c_white,1);
			if(frame == 0.5) {
				var nearbyEnemy = isInRange(obj_player.x, obj_player.y, enemy_parent, 48);
				if(isHittable(nearbyEnemy, 24, attackAngle, 45)) {
					nearbyEnemy.hp -= 10;
					with(nearbyEnemy) {
						image_blend = c_red;
						alarm[0] = 5;
					}
				}
			}
		} else {
			pState = PLAYER.IDLE;
			frame = 0;
			attackAngle = undefined;
		}
		break;
}
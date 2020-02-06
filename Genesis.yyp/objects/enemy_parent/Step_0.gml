/// @description Tick
// You can write your code in this editor
#region Death
if(hp <= 0) {
	//Choose amount of drops based on hp_max floor(hp_max/40)
	var drops = 3 + round(random(floor(hp_max/40)));
	for(var i = 0; i < drops; i++) {
		//2 exp balls : 1 item
		var varX = choose(-1, 1) * random(120 * image_xscale);
		var varY = choose(-1, 1) * random(120 * image_yscale);
		var xp = createDrop(x + varX, y + varY, "EXP");
		var varX = choose(-1, 1) * random(120 * image_xscale);
		var varY = choose(-1, 1) * random(120 * image_yscale);
		var xp = createDrop(x + varX, y + varY, "EXP");
	}
	instance_destroy();
} //Die
#endregion

#region STATE MACHINE
switch(state) {
	case ENEMY.IDLE:
		if(!playerIsNear(64)) {
			if(current_time % 2500 < 30) {
				state = choose(ENEMY.IDLE, ENEMY.WANDER);
			}
		} else state = ENEMY.ALERT;
		break;
	case ENEMY.WANDER:
		if(!playerIsNear(64)) {
			if(targetX == undefined && targetY == undefined) {
				targetX = x + choose(-1, 1) * (sprite_width + random(80));
				targetY = y + choose(-1, 1) * (sprite_width + random(80));
			} else {
				if(moveToPoint(targetX, targetY, 1) == -1) {
					targetX = undefined;
					targetY = undefined;
					state = ENEMY.IDLE;
				}
			}
		} else state = ENEMY.ALERT;
		break;
	case ENEMY.ALERT:
			if(instance_exists(obj_player)) {
				if(distance_to_object(obj_player) < 400) {
					if(moveToPoint(obj_player.x, obj_player.y, range) == -1) {
						state = ENEMY.ATTACK;
					}
				} else state = ENEMY.IDLE;
			} else state = ENEMY.IDLE;
		break;
	case ENEMY.ATTACK:
		break;
}
#endregion

#region alarm code coz im lazy
if(alarm[0] == -1) {
	image_blend = c_white;
}
#endregion
///levelUp()
var xRem = obj_player.xp - obj_player.xp_max;
obj_player.level += 1;
obj_player.xp = 0;
obj_player.xp_max = getExpMax();
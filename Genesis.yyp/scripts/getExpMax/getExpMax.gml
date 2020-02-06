///getExpMax(level)
if(argument_count == 0)
	var level = obj_player.level;
else var level = argument[0];
return power(level, 2.5) + 99 * level;
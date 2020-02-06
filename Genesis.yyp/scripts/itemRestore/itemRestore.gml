///itemRestore(amount, stat)
var amount = argument[0];
var stat = argument[1];

switch(stat) {
	case "HEALTH":
		if(obj_player.hp + amount <= obj_player.hp_max)
			obj_player.hp += amount;
		else obj_player.hp += obj_player.hp_max - obj_player.hp;
		return 0;
	case "STAM":
		if(obj_player.stam + amount <= obj_player.stam_max)
			obj_player.stam += amount;
		else obj_player.stam += obj_player.stam_max - obj_player.stam;
		return 0;
	default: return -1;
}
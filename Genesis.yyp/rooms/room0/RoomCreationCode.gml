enums();
randomize();
for(var i = 0; i < 150; i++) {
	index = round(random(2));
	switch(index) {
		case 0:
			type = "HEALTH";
			break;
		case 1:
			type = "MANA";
			break;
		case 2:
			type = "EXP";
			break;
		default:
			show_debug_message("Poopdie scoop, the random thing broke");
			break;
	}
	createDrop(random(room_width),random(room_height),type);
}
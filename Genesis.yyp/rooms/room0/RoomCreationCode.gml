enums();
randomize();
for(var i = 0; i < 150; i++) {
	index = round(random(sprite_get_number(items)-1));
	createDrop(random(room_width),random(room_height),index);
}
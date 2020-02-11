///slotOnMouse()

var nearestSlot = instance_nearest(mouse_x, mouse_y, Slot);
if(nearestSlot != undefined) {
	if(mouseIntersects(
		camera_get_view_x(view_camera[0]) + nearestSlot.init_x, 
		camera_get_view_y(view_camera[0]) + nearestSlot.init_y, 
		sprite_get_width(nearestSlot.slotSprite), 
		sprite_get_height(nearestSlot.slotSprite))) 
	{
		return nearestSlot
	} else return undefined;
} else return undefined;
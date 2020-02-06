///moveToPoint(x, y, radius)
var xx = argument0;
var yy = argument1;
var radius = argument2;
var angle = point_direction(x,y, xx, yy);
if(distance_to_point(xx, yy) > radius) {
	fricMoveDir(1, angle, MOVE_SPEED, 0.5);
	return 0;
} else return -1;
///isHittable(obj, range, angle, angleRange)
var obj = argument0;
var r = argument1;
var a = argument2;
var aR = argument3;

if(distance_to_object(obj) < r) {
	var isFacing = abs(a - point_direction(x, y, obj.x, obj.y)) < aR;
	return isFacing;
} else return false;
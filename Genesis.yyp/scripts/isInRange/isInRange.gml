///isInRange(curX, curY, object, range)
var curX = argument0;
var curY = argument1;
var o = argument2;
var r = argument3;
with(o) {
	if(distance_to_point(curX, curY) < r) {
		return self;
	}
}
return -1;
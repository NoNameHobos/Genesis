///mouseIntersects(x, y, width, height)
var xx = argument0;
var yy = argument1;
var w = argument2;
var h = argument3;

var isInRangeW = abs(mouse_x - (xx)) < w/2;
var isInRangeH = abs(mouse_y - (yy)) < h/2;
return isInRangeW && isInRangeH;
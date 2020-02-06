///@func fricMoveDir(input, angle, MOVE_SPEED, fric = 0.1)
input = argument[0];
angle = argument[1];
MOVE_SPEED = argument[2];
if(argument_count > 3)
	fric = argument[3];
else fric = 0.1;

if(input != 0) {
	xacc = input*lengthdir_x(MOVE_SPEED*.1,angle);
	yacc = input*lengthdir_y(MOVE_SPEED*.1,angle);
} else {
	if(abs(xacc) > 0.1)
		xacc *= 1 - fric;
	else xacc = 0;
	if(abs(yacc) > 0.1)
		yacc *= 1 - fric;
	else yacc = 0;
}

if(xspeed != 0) {
	if(sign(xspeed) != sign(xacc)) {
		xspeed *= 1 - fric;
	}
}
if (yspeed != 0) {
	if(sign(yspeed) != sign(yacc)) {
		yspeed *= 1 - fric;	
	}
}

if(xacc == 0)
	xspeed = clamp(xspeed*(1 - fric), -MOVE_SPEED * abs(cos(pi/180*angle)), MOVE_SPEED * abs(cos(pi/180*angle)));
else
	xspeed = clamp(xspeed + xacc, -MOVE_SPEED * abs(cos(pi/180*angle)), MOVE_SPEED * abs(cos(pi/180*angle)));
if(yacc == 0)
	yspeed = clamp(yspeed * (1 - fric), -MOVE_SPEED * abs(sin(pi/180*angle)), MOVE_SPEED * abs(sin(pi/180*angle)));
else
	yspeed = clamp(yspeed + yacc, -MOVE_SPEED * abs(sin(pi/180*angle)), MOVE_SPEED * abs(sin(pi/180*angle)));


/*if (place_meeting(x, y + yspeed, Solid)) {
	while (!place_meeting(x, y + sign(yspeed), Solid)) {
		y += sign(yspeed);
	}
	yspeed = 0;
}

if (place_meeting(x + xspeed, y, Solid)) {
	while(!place_meeting(x + sign(xspeed), y, Solid)) {
		x += sign(xspeed);
	}
	xspeed = 0;
}*/

x += xspeed;
y += yspeed;
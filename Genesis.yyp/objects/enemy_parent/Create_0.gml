/// @description Initialize basic variables
// You can write your code in this
event_inherited();
state = ENEMY.IDLE;

targetX = undefined;
targetY = undefined;

MOVE_SPEED = 1;
range = 32;

attackAngle = undefined;


image_xscale = 1.5/round(random(3));
image_yscale = image_xscale;


hp = 80*image_xscale;
hp_max = hp;
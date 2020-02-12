/// @description Insert description here
// You can write your code in this editor
image_speed = 0;
var qualCheck = round(random(100));
if(qualCheck < 30) quality = CHEST.HIGH;
else quality = CHEST.LOW;
frame = 0;

image_angle = random(360);
image_xscale = 1 + choose(-random(0.15), random(0.15));
image_yscale = image_xscale;
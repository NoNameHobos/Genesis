///playerIsNear(range)
if(argument_count == 0) var range = 256;
else var range = argument[0];

return (distance_to_object(obj_player) < range);
instance_destroy(other);

effect_create_above(ef_explosion, x, y,1,c_white);

direction = random(360);

var _roll = irandom(15);
show_debug_message(_roll);

if (_roll == 0) {
	var chance = choose(0,1);
	var powers = [obj_power, obj_bomb];
	instance_create_layer(x, y, "Floater", powers[chance]);
}//end if

if (sprite_index == spr_rock_big) {
	sprite_index = spr_rock_small;
	var _newRock = instance_copy(true);
	_newRock.speed = speed;
} else if (instance_number(obj_rock) < 12) {
	sprite_index = spr_rock_big;
	x = -100;
} else {
	instance_destroy();	
}//end if

obj_game.points += 50;
obj_game.checkPoint += 50;
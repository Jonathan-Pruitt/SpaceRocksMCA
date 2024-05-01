direction = point_direction(x,y,500,500);
speed = 2;
timer = 80;
image_xscale = 4;
image_yscale = 4;
image_index = 0; //setting to 0 won't keep at 0;
image_speed	= 0;

function Flash() {
	if (image_index != sprite_get_number(spr_power) - 1) {
		image_index += 1;	
	} else {
		timer += 80;
		image_index = 0;
	}//end if
}//end function
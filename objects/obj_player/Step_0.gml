if (keyboard_check(vk_up) || keyboard_check(ord("W"))) {
	motion_add(image_angle, 0.1);
}
if (keyboard_check(vk_left) || keyboard_check(ord("A"))) {
	image_angle += 5;
}
if (keyboard_check(vk_right) || keyboard_check(ord("D"))) {
	image_angle -= 5;
}

if (keyboard_check_pressed(vk_space) || mouse_check_button_pressed(mb_left)) {
	instance_create_layer(x, y, "Instances", obj_bullet);

	if (powerTimer > 0) {
		var bullet2 = instance_create_layer(x,y,"Instances", obj_bullet);
		var bullet3 = instance_create_layer(x,y,"Instances", obj_bullet);
		bullet2.direction = obj_player.image_angle + 10;
		bullet3.direction = obj_player.image_angle - 10;		
	}//end if
	
	#region JONATHAN'S DUMB STUFF
	var pew = instance_create_layer(x, y, "Floater", obj_pew);
	#endregion
	
}

if (powerTimer > 0) {
	powerTimer--;
}//end if

move_wrap(true, true, 0);
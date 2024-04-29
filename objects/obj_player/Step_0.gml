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
	
	#region JONATHAN'S DUMB STUFF
	var pew = instance_create_layer(x, y, "Floater", obj_pew);
	#endregion
	
}

move_wrap(true, true, 0);
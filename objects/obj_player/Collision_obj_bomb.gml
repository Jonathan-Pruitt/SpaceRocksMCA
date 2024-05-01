instance_destroy(other);

for (var i = 0; i < 360; i += 15) {
	bullet = instance_create_layer(x, y, "Instances", obj_bullet);
	bullet.direction = i;
}//end for
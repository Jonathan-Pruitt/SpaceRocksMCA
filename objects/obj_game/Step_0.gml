if (checkPoint > 1000) {
	checkPoint -= 1000;
	level++;
	
	rTarget = random(75);
	gTarget = random(75);
	bTarget = random(75);	
		
	color = layer_background_get_blend(bg);
	targetColor = make_color_rgb(rTarget,bTarget,bTarget);
	
	with (obj_rock) {
		speed *= 1.5;
	}//end with
}//end for

if (color != targetColor) {
	var r = color_get_red(color);
	var g = color_get_green(color);
	var b = color_get_blue(color);	
	
	if (r < rTarget) {r++;}
	if (r > rTarget) {r--;}
	if (g < gTarget) {g++;}
	if (g > gTarget) {g--;}
	if (b < bTarget) {b++;}
	if (b > bTarget) {b--;}
	var c = make_color_rgb(r,g,b)
	layer_background_blend(bg, c);
	color = layer_background_get_blend(bg);
}//end if
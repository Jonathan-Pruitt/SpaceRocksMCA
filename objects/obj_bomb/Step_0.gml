if (timer > 0) {
	timer--;	
} else {	
	Flash();	
}//end if

if (x < 0 || x > 1000 || y < 0 || y > 1000) {
	instance_destroy()	;
}//end if
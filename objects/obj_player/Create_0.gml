 powerTimer = 0;
 iframes = 60;
 
 function Invincibility() {
	 if (iframes % 10 < 5) {
		image_blend = (c_black);
	 } else {
		 image_blend = (c_white);
	 }
	 iframes--;
	 if (iframes == 0) {
		 image_blend = (c_white);
	 }
 }//end function
deathCry = obj_animal_handler.deathSounds[choose(0,1,2,3,4,5)];
scale = random_range(6, 10);
initImage = 0;
image_xscale = scale;
image_yscale = scale;
dx = random_range(-3, 3);
dy = sign(y) * random_range(0, 3) * -1;

rotateSpeed = random_range(-2, 2);

function CheckDeath() {
	if ((x > 1110 || x < -110) || (y > 1110 || y < -110)) {
		instance_destroy();
	}
}//end function

function PlayAudio(sound) {
	sfx = audio_play_sound(sound, 1, false);
	audio_sound_pitch(sfx, random_range(0.8, 1.2));
	audio_sound_gain(sfx, random_range(0.2,0.6),0);
}//end function
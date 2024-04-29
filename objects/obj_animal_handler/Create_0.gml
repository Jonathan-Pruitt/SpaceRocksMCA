//timer = 1000;
deathSounds = [snd_death1,snd_death2,snd_death3,snd_death4,snd_death5,snd_death6];
audio_play_sound(snd_bg,5,true);
randomize();
timer = 120;

function CreateAnimal(timer) {
	timer--;
	if (timer < 0) {
		//timer = irandom_range(400, 600);
		timer = irandom_range(60, 120);
		//initX = choose(irandom_range(-100, -50), irandom_range(1050, 1100));
		//initY = choose(irandom_range(-100, -50), irandom_range(1050, 1100));
		initX = irandom_range(30, 970);
		initY = choose(irandom_range(-100, -50), irandom_range(1050, 1100));
		var animal = instance_create_layer(initX, initY, "Floater", obj_animal);
		animal.image_index = choose(0,1,2);
		animal.initImage = animal.image_index;
	}//end if
	return timer;
}//end function
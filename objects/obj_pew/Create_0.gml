duration = 20;
image_xscale = 3.5;
image_yscale = 3.5;
speed = 4;

image_angle = choose(25, -25);
direction = obj_player.image_angle;

s_pew = audio_play_sound(snd_pew, 1, false);
audio_sound_pitch(s_pew, random_range(1.1, 1.3));
audio_sound_gain(s_pew, random_range(.3,.5),0);
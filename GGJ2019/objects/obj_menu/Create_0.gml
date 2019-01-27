/// @description Insert description here
// You can write your code in this editor

if (!audio_is_playing(snd_bg))
{
	audio_play_sound(snd_bg, 10, 1);
}

randomize();
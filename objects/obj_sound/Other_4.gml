/// @description Insert description here
// You can write your code in this editor
if ( room==room0 ) {
	if (audio_is_playing(snd_game))
	{
		audio_stop_sound(snd_game);
	}
	audio_play_sound(snd_game, 01, true);
}
else if ( room == room_menu ) {
	if (audio_is_playing(snd_game))
	{
		audio_stop_sound(snd_game);
	}
	audio_play_sound(snd_game, 01, true);

}
else if ( room == room_final ) {
	if (audio_is_playing(snd_game))
	{
		audio_stop_sound(snd_game);
	}
	audio_play_sound(snd_game, 01, true);
}
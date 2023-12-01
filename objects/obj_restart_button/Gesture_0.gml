global.afterPause=1
audio_group_set_gain(BGM,obj_BGM.pauseVolume,0)
audio_play_sound(sd_button,0,false)
room_goto(mgame_room)
show_debug_message("restarting")
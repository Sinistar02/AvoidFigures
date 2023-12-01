global.afterPause=0
audio_group_set_gain(BGM,obj_BGM.pauseVolume,0)
audio_play_sound(sd_button,0,false)
show_debug_message("continue")
room_goto(mgame_room)
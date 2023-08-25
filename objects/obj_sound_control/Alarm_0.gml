if(volume==0)
	volume=2
else
	volume--;
	
ini_open("option.ini")
image_index = 2*volume
if(x==672){
	ini_write_real("option","music",volume)
	audio_group_set_gain(BGM,volume*0.5,0)
	audio_play_sound(sd_button,0,false)
} else if(x==720){
	ini_write_real("option","sound",volume)
	audio_group_set_gain(SFX,0.2*volume,0)
	audio_play_sound(sd_button,0,false)
}
ini_close()
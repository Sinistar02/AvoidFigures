ini_open("option.ini")
if(x==672){
	volume=ini_read_real("option","music",2)
	image_index = 2*volume
	audio_group_set_gain(BGM,volume*0.5,0)
} else if(x==720){
	volume=ini_read_real("option","sound",2)
	image_index = 2*volume
	audio_group_set_gain(SFX,0.2*volume,0)
}
ini_close()
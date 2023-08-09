ini_open("option.txt")
volume=ini_read_real("option","sound",2)
image_index = 2*volume
ini_close()
audio_group_set_gain(BGM,volume*0.5,0)
audio_group_set_gain(SFX,0.2*volume,0)
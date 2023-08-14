ini_open("option.ini")
if(global.language==1){
	global.language=2
	ini_write_real("option","language",2)
} else {
	global.language=1
	ini_write_real("option","language",1)
}
ini_close()
image_index=0
audio_play_sound(sd_button,0,false)
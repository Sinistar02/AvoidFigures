if(window_get_fullscreen()==false){
	ini_open("option.ini")
	ini_write_real("option","fullscreen",1)
	window_set_fullscreen(true)
	ini_close()
} else {
	ini_open("option.ini")
	ini_write_real("option","fullscreen",0)
	window_set_fullscreen(false)
	window_set_size(global.windowSize[0],global.windowSize[1])
	ini_close()
}
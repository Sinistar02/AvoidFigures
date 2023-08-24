if(window_get_fullscreen()==false){
	if(global.windowSize[0]==1532){
		global.windowSize=[766,512]
		ini_open("option.ini")
		ini_write_real("option","size",0)
		ini_close()
	} else {
		global.windowSize=[1532,1024]
		ini_open("option.ini")
		ini_write_real("option","size",1)
		ini_close()
	}
	window_set_size(global.windowSize[0],global.windowSize[1])
}
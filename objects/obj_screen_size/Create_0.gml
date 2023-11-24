function ResizeScreen(size) {
	if(size==0){
		global.windowSize=[2640,1080]
	} else if (size==1){
		global.windowSize=[2340,1080]
	} else if (size==2){
		global.windowSize=[3088,1440]
	}
	window_set_size(global.windowSize[1],global.windowSize[0])
}
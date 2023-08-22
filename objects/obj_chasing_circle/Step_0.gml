if(blendColor==true){
	if(speedMultiplier==0){
		image_blend=make_color_rgb(0,120,0)
	} else if(speedMultiplier==0.5){
		image_blend=make_color_rgb(0,237,0)
	} else {
		image_blend=c_white
	}
}
speed=originalSpeed*speedMultiplier
if(image_index==0)
	graze(1)
else {
	graze(2)
}
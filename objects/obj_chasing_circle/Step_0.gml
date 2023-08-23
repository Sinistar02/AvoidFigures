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
	graze(2)
else {
	graze(4)
}

if(phase==1 and x>527){
	alarm[2]=1
	phase=2
}

hit();
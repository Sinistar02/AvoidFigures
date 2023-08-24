if(global.debug==true) {
	image_index=1
	if(room==game_over or room==game_30s_survived){
		image_xscale=4
		image_yscale=4
		alarm[1]=1
	} else {
		spin=0
		alarm[0]=1
	}
} else if(upgrade==false){
	image_index=0
	spin=random_range(-2,2)
	if(spin==0)
		spin=1
	alarm[0]=1
} else if(upgrade==true){
	switch(irandom(6)){
		case 0:
		image_blend=make_color_rgb(255,0,0)
		break;
		case 1:
		image_blend=make_color_rgb(255,50,0)
		break;
		case 2:
		image_blend=make_color_rgb(255,255,0)
		break;
		case 3:
		image_blend=make_color_rgb(0,255,0)
		break;
		case 4:
		image_blend=make_color_rgb(0,200,255)
		break;
		case 5:
		image_blend=make_color_rgb(0,0,255)
		break;
		case 6:
		image_blend=make_color_rgb(100,0,255)
		break;
	}
	image_index=2
	spin=random_range(-2,2)
	if(spin==0)
		spin=1
	alarm[0]=1
}
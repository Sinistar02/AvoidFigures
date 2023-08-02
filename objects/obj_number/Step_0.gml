function digitMap(n,r) {
	var i;
	for(i=1;i<n;i*=10)
		r/=10
	return r % 10;
}

function getTime(m){
	var time=obj_timer.timer/60;
	if(m=="minute")
		return time / 60
	else if(m=="second")
		return time % 60
}
if(room==game_room){
	if(y==112){
		switch(x){
			case 688:
				image_index=digitMap(1,global.score)
				break;
			case 656:
				image_index=digitMap(10,global.score)
				break;
			case 624:
				image_index=digitMap(100,global.score)
				break;
			case 592:
				image_index=digitMap(1000,global.score)
				break;
			case 560:
				image_index=digitMap(10000,global.score)
				break;
		}
	} else if(y==336){
		if(obj_timer.timer <= 600){
			image_blend=c_red
		} else {
			image_blend=c_white
		}
		switch(x){
			case 560:
				image_index=digitMap(10,getTime("minute"))
				break;
			case 592:
				image_index=digitMap(1,getTime("minute"))
				break;
			case 656:
				image_index=digitMap(10,getTime("second"))
				break;
			case 688:
				image_index=digitMap(1,getTime("second"))
				break;
		}
	}
} else if(room==game_over){
	switch(x){
		case 704:
			image_index=digitMap(1,global.score)
			break;
		case 672:
			image_index=digitMap(10,global.score)
			break;
		case 640:
			image_index=digitMap(100,global.score)
			break;
		case 608:
			image_index=digitMap(1000,global.score)
			break;
		case 576:
			image_index=digitMap(10000,global.score)
			break;
		case 544:
			image_index=digitMap(100000,global.score)
			break;
	}
}
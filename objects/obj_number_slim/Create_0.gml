function digitMap(n,r) {
	var i;
	for(i=1;i<n;i*=10)
		r/=10
	return r % 10;
}

function getTime(m){
	var time=global.survivedTime/60;
	if(m=="minute")
		return time / 60
	else if(m=="second")
		return time % 60
	else if(m=="msecond")
		return time*100 - floor(time)*100
}

//게임오버 시 최종 생존기록 표시
if(room==game_over or room==game_30s_survived){
	switch(x){
		case 656:
			image_index=digitMap(10,getTime("minute"))
			break;
		case 672:
			image_index=digitMap(1,getTime("minute"))
			break;
		case 704:
			image_index=digitMap(10,getTime("second"))
			break;
		case 720:
			image_index=digitMap(1,getTime("second"))
			break;
	}
}

timerMode=false
if(room==game_room){
	if(global.gamemode!="normal" and global.gamemode!="hard")
		instance_destroy(self)
	depth=30
	image_alpha=0.2
	timerMode=true
}
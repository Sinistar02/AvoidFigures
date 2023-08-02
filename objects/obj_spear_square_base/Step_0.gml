event_inherited()
//위치 추적
if(tracePlayer==true){
	//플레이어 가까이에 오면, 플레이어의 x축에 붙는다
	if(abs(x-obj_player.x)<=2)
		x=obj_player.x
	//플레이어와 떨어지면, 천천히 따라온다
	else {
		var traceSpeed=sign(obj_player.x-x)*speedMultiplier
		if(difficulty<=2)
			traceSpeed*=3
		else
			traceSpeed*=5
		x+=traceSpeed
		if(x<80 or x>464)
			x-=traceSpeed
	}
}
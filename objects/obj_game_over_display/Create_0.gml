display=[["게임 오버","총 점","생존 시간","생존 성공"],["GAME OVER","TOTAL SCORE","SURVIVED FOR","SURVIVED"]]
phase=0;
depth=1
alarm[0]=60;
gesture_drag_time(0.16)

function getTime(m,t,fr=1){
	t/=60;
	if(m=="minute")
		return floor(t / 60)
	else if(m=="second") {
		if(fr==0 or fr==1 and t<=10)
			return t % 60
		else
			return floor(t % 60)
	}
}

function ExtendDigit(n,d){
	var digits = string(power(10,d) + n);
	return string_delete(digits,1,1);
}
/// @description 입장
if(x>80){
	tracePlayer=true
	alarm[0]=210-30*difficulty//최대 3.5초
} else {
	x+=5*speedMultiplier
	alarm[3]=1
}
///@description 수직이동
if(irandom(3)==1){
	audio_play_sound(sd_square_teleport,2,false)
	if(irandom(1)==0)
		y+=32*irandom_range(1,2)
	else
		y-=32*irandom_range(1,2)
	
	if(y<192)
		y=192
	else if(y>672)
		y=672
}

if(speedMultiplier==1)
	alarm[0]=30
else if(speedMultiplier==0.5)
	alarm[0]=60
else
	alarm[0]=180
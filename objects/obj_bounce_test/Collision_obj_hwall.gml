audio_play_sound(sd_bounce,1,false)
if(x<48)
	x=49
else if(x>497)
	x=496
if(direction<=180) {
	reflectAngle=180-direction
} else {
	reflectAngle=540-direction
}
	
direction=reflectAngle
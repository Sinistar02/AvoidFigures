audio_play_sound(sd_bounce,1,false)
var yspd = -sin(degtorad(direction))*speed
while(!place_meeting(x,y+yspd,obj_hwall)){
	if(y<418){
		y++;
	} else {
		y--;
	}
}
direction=360-direction;
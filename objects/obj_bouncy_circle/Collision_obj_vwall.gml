audio_play_sound(sd_bounce,1,false)
var xspd = cos(degtorad(direction))*speed
while(!place_meeting(x+xspd,y,obj_vwall)){
	if(x<room_width/2){
		x++;
	} else {
		x--;
	}
}
if(direction<=180) {
	direction=180-direction;
} else {
	direction=540-direction;
}
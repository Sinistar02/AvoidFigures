event_inherited()
speed=originalSpeed*speedMultiplier*bcSpeedMultiplier
if(image_index==0)
	graze(1)
else {
	graze(2)
	instance_create_depth(x,y,4,obj_trace_circle)
}

var xspd = cos(degtorad(direction))*speed
if(place_meeting(x+xspd,y,obj_hwall)){
	audio_play_sound(sd_bounce,1,false)
	while(!place_meeting(x+xspd,y,obj_hwall)){
		if(x<room_width/2)
			x++;
		else
			x--;
	}
	if(direction<=180) {
		direction=180-direction;
	} else {
		direction=540-direction;
	}
}

var yspd = -sin(degtorad(direction))*speed
if(place_meeting(x,y+yspd,obj_vwall)){
	audio_play_sound(sd_bounce,1,false)
	while(!place_meeting(x,y+yspd,obj_vwall)){
		if(y<418)
			y++;
		else
			y--;
	}
	direction=360-direction;
}
speedMultiplier=1
blendColor=true
function hit(){
	if(place_meeting(x,y,obj_player) and obj_player.invincibility==0 and !place_meeting(x,y,obj_shield)){
		audio_play_sound(sd_hit,10,false)
		with(obj_player){
			hp--;
			invincibility=125
			surviveFrame=0
			if(hp>0)
				stunFrame=30
		}
	}
}
function graze(n){
	if(place_meeting(x,y,obj_graze) and obj_graze.grazing==true){
		obj_graze.graze+=n/(1+instance_exists(obj_shield));
		if(!audio_is_playing(sd_graze))
			audio_play_sound(sd_graze,0,false)
	}
}

function pause(lv){
	if(lv==0){
		speedMultiplier=0
	} else if(lv==1) {
		if(speedMultiplier==0)
			speedMultiplier=0.5
	} else {
		if(speedMultiplier<=0.5)
			speedMultiplier=1
	}
}
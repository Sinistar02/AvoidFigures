event_inherited();
depth=3
originalSpeed=0;
phase=0
cycle=2
alarm[1]=1

function hit2(){
	if(place_meeting(x,y,obj_player) and obj_player.invincibility==0 and !place_meeting(x,y,obj_shield)){
		audio_play_sound(sd_hit,10,false)
		with(obj_player){
			hp--;
			invincibility=125
			surviveFrame=0
			nomiss=false
			if(hp>0)
				stunFrame=30
		}
		alarm_set(0,-1)
		alarm_set(1,-1)
		image_index=0
		originalSpeed=0
		alarm[2]=1
	}
}
/// @description 발사 및 퇴장
if(animIter==31){
	audio_play_sound(sd_cannon,2,false)
	instance_create_depth(x,y,3,obj_cannonball_circle,{bdir:dir})
}
if(animIter>=0){
	x-=dir*2
	animIter--;
	image_alpha-=0.035
	alarm[1]=1
} else {
	instance_destroy(self)
}
/// @description 플레이어 축소
if(animIter<10){
	obj_player.image_xscale-=0.05
	obj_player.image_yscale-=0.05
	animIter++;
	alarm[1]=1
} else {
	animIter=0
	alarm[2]=600//10초간 유지
}
/// @description 플레이어 확대
if(animIter<10){
	obj_player.image_xscale+=0.05
	obj_player.image_yscale+=0.05
	animIter++;
	alarm[2]=1
} else {
	instance_destroy(self)
}
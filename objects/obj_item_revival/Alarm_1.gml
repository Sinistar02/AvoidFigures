/// @description 이동 애니메이션
if(animIter<=9){
	x+=animX
	y+=animY
	image_xscale+=0.1
	image_yscale+=0.1
	animIter++;
	alarm[1]=1
} else if(room==mgame_practice)
	instance_destroy(self)
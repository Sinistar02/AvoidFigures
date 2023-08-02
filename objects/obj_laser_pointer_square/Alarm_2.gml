/// @description 퇴장
if(animIter>=0){
	x+=4
	animIter--;
	image_alpha-=0.07
	alarm[2]=1
} else {
	instance_destroy(self)
}
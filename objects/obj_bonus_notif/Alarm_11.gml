///@description 숨기기
if(animIter<10){
	image_yscale-=0.1
	alarm[11]=1
	animIter++;
} else {
	instance_destroy(self)
}
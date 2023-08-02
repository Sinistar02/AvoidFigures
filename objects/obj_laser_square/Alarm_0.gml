/// @description 레이저 발사
if(animIter<10){
	image_yscale*=1.1
	image_alpha-=0.1
	animIter++
	alarm[0]=1
} else {
	instance_destroy(self)
}
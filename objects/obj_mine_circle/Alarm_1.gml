/// @description 폭발
if(warningFlash>=0){
	image_alpha-=0.1
	alarm[1]=1
	warningFlash--
} else {
	instance_destroy(self)
}
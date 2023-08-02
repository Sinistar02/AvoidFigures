/// @description 소멸
if(animIter<25){
	image_alpha-=0.04
	alarm[1]=1
} else {
	instance_destroy(self)
}
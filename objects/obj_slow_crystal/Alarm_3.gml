/// @description 소멸 애니메이션
if(image_alpha>0){
	image_alpha-=0.1
	image_xscale+=0.3
	image_yscale-=0.07
	alarm[3]=1
} else {
	instance_destroy(self)
}
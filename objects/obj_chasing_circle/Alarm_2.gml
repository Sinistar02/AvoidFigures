/// @description 소멸
if(image_xscale>0){
	image_xscale-=0.05
	image_yscale-=0.05
	alarm[2]=1
} else {
	instance_destroy(self)
}
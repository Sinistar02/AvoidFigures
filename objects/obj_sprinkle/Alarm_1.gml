if(image_alpha>0){
	image_alpha-=0.02
	image_angle+=10
	alarm[1]=1
} else {
	instance_destroy(self)
}
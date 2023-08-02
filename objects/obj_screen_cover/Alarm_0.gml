if(image_alpha>0) {
	image_alpha-=0.2
	alarm[0]=3
} else {
	instance_destroy(self)
}
/// @description (hp가 0일 때)퇴장
if(image_alpha>0){
	y-=1
	image_alpha-=0.05
	alarm[4]=1
} else {
	instance_destroy(self)
}
///@desc 숨기기
if(animIter<9){
	animIter++;
	image_alpha-=0.05
	alarm[0]=1
} else
	instance_destroy(self)
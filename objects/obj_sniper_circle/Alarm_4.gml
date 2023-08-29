/// @description (hp가 0일 때)퇴장
if(y>-32){
	y-=1
	alarm[4]=1
} else {
	instance_destroy(self)
}
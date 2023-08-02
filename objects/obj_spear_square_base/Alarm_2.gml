/// @description 퇴장
if(x>=-32){
	x-=5*speedMultiplier
	alarm[2]=1
} else {
	instance_destroy(self)
}
/// @description 후퇴
if(y<716){
	y+=4*speedMultiplier
	alarm[1]=1
} else {
	instance_destroy(obj_spear_square_body)
	obj_spear_square_base.alarm[2]=1
	instance_destroy(self)
}
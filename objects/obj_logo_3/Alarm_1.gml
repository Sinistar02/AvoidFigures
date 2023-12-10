/// @description 이동
if(x<480){
	x+=5
	alarm[1]=1
} else {
	obj_logo_1.image_alpha=1
	instance_create_depth(336,304,0,obj_logo_4)
	completeLogo=20
}
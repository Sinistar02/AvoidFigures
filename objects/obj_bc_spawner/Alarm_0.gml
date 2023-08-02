/// @description 탱탱볼 소환
if(amount>0){
	instance_create_depth(x,y,3,obj_bouncy_circle)
	amount--;
	alarm[0]=20
} else {
	alarm[1]=40
}
/// @description 확대
if(image_xscale<1){
	image_xscale+=0.2
	image_yscale+=0.2
	alarm[0]=2
} else {
	alarm[1]=20
	instance_create_depth(0,0,4,obj_logo_2)
}
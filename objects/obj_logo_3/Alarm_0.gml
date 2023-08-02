/// @description 확대
if(image_xscale<1){
	image_xscale+=0.1
	image_yscale+=0.1
	alarm[0]=2
} else {
	alarm[1]=20
}
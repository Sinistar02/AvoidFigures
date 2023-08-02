/// @description 입장
if(animIter<16){
	x+=dir*4
	animIter++;
	image_alpha+=0.07
	alarm[0]=1
} else {
	animIter=31
	image_alpha=1
	alarm[1]=45
}
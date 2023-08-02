/// @description 3~4초마다 1/7확률로 러시 모드
if(irandom(6)==3){
	blendColor=false
	image_blend=c_white
	image_index=1
	originalSpeed=5
} else {
	blendColor=true
	image_index=0
	originalSpeed=3
}
alarm[1]=irandom_range(180,240)
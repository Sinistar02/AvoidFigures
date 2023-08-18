image_alpha+=animSign*0.03
animIter-=animSign
if(animIter<=0){
	animSign=-1
} else if(animIter>=6){
	animSign=1
}
alarm[1]=6
depth=1
animIter=0
image_xscale=0.1
image_yscale=0.1
introAnimation=30
alarm[0]=35
x=irandom_range(96,446)
y=irandom_range(257,637)
//스폰킬 방지
while(193<=x and x<=351 and 352<=y and y<=542){
	x=irandom_range(96,446)
	y=irandom_range(257,637)
}
event_inherited()
x+=8*bdir*speedMultiplier
image_angle+=3
graze(5)
if(x>=528)
	instance_destroy(self)

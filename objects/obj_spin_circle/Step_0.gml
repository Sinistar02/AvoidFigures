event_inherited()
image_angle+=3*speedMultiplier
x+=2*speedMultiplier
y+=diagonal*speedMultiplier
if(x>width or y<upperHeight or y>lowerHeight)
	instance_destroy(self)
graze(2)
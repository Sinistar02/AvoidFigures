event_inherited()
speed=originalSpeed*speedMultiplier*bcSpeedMultiplier
if(image_index==0)
	graze(1)
else {
	graze(2)
	instance_create_depth(x,y,4,obj_trace_circle)
}
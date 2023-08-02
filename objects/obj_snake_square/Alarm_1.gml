///@description 평행이동
x-=32
instance_create_depth(x+16,y+16,6,obj_trace_square)
if(speedMultiplier==1)
	alarm[1]=15
else if(speedMultiplier==0.5)
	alarm[1]=30
else
	alarm[1]=180
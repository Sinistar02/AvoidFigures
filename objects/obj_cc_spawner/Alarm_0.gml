instance_create_depth(irandom_range(48,496),78,2,obj_chasing_circle,{difficulty:difficulty})
if(global.gamemode=="30s normal" or global.gamemode=="30s hard")
	alarm[0]=900//15초
else {
	alarm[0]=irandom_range(1500-180*difficulty,2100-240*difficulty)//25~35초 -> 22~31, 19~27초
}
instance_create_depth(-32,488,4,obj_spear_square_base,{difficulty:difficulty})
if(global.gamemode=="30s normal" or global.gamemode=="30s hard"){
	alarm[0]=900
} else {
	if(difficulty==0)
		alarm[0]=irandom_range(1080,1260)//18~21초
	else
		alarm[0]=irandom_range(960,1140)//16~19초
}
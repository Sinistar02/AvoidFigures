instance_create_depth(272,152,3,obj_sniper_circle)
if(global.gamemode=="practice")
	alarm[0]=1200//20초
else if(global.gamemode=="normal" or global.gamemode=="hard")
	alarm[0]=1800//30초
else if(global.gamemode=="30s normal")
	alarm[0]=900//15초
else
	alarm[0]=600//10초
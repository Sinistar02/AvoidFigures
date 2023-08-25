var spawnX=random_range(64,479)
var spawnY=random_range(64,447)
instance_create_depth(spawnX,spawnY,-1,obj_slow_crystal)
if(global.gamemode=="30s normal" or global.gamemode=="30s hard")
	alarm[0]=irandom_range(480,780)//8~13초
else
	alarm[0]=irandom_range(2100-difficulty*300,2700-difficulty*300)//35~45s,난도 상승시 5초 감소
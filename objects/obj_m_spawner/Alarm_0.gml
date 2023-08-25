var i;
for(i=0;i<irandom_range(3+difficulty,5+difficulty);i++){
	instance_create_depth(irandom_range(64,480),irandom_range(64,448),7,obj_mine_circle)
}
if(global.gamemode=="30s hard")
	alarm[0]=600
else
	alarm[0]=irandom_range(600,780)//10~13초
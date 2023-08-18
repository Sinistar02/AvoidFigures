if(room==practice_room) {
	//튕기는공,스네이크네모,회전구,지뢰,창,대포,레이저
	global.enemySelectList=[true,false,false,false,false,false,false,false]
	maxPage=1
	currentPage=0
	description=["",""]//적 이름, 설명
} else {
	//선택한 적 소환
	if(global.enemySelectList[0]==true)
		instance_create_depth(272,256,0,obj_bc_spawner,{amount:3})
	if(global.enemySelectList[1]==true)
		instance_create_depth(480,224,5,obj_snake_square)
	if(global.enemySelectList[2]==true)
		instance_create_depth(0,0,5,obj_spin_spawner,{difficulty:2})
	if(global.enemySelectList[3]==true)
		instance_create_depth(0,0,0,obj_m_spawner,{difficulty:2})
	if(global.enemySelectList[4]==true)
		instance_create_depth(0,0,0,obj_ss_spawner,{difficulty:1})
	if(global.enemySelectList[5]==true){
		instance_create_depth(0,0,0,obj_lc_spawner,{difficulty:2})
		instance_create_depth(0,0,0,obj_rc_spawner,{difficulty:2})
	}
	if(global.enemySelectList[6]==true)
		instance_create_depth(0,0,0,obj_laser_spawner,{difficulty:0})
	if(global.enemySelectList[7]==true)
		instance_create_depth(0,0,0,obj_slcr_spawner,{difficulty:1})
	exitDesc=""
	alarm[0]=1
}
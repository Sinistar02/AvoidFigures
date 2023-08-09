if(global.gamemode=="normal"){
	timeline_index=tl_enemy_spawn
	hp=3
} else if(global.gamemode=="hard"){
	timeline_index=tl_enemy_spawn_hard
	hp=3
} else if(global.gamemode=="30s normal"){
	timeline_index=tl_enemy_spawn_30s_normal
	hp=1
} else if(global.gamemode=="30s hard"){
	timeline_index=tl_enemy_spawn_30s_hard
	hp=1
} else if(global.gamemode=="practice"){
	hp=99999
}
timeline_running=true

depth=7
gameover=false
invincibility=0
frame=0
surviveFrame=0
stunFrame=0
scoreBonus=0
motionImage=0
blinkFrame=irandom_range(110,180)
blinked=false//blinked가 true이면 눈을 감음
restart=0
global.score=0

//게임오버 되었을 시 취할 행동
function gameoverMotion() {
	hp=0
	obj_graze.graze=0
	motionImage=6
	wspd=0
	hspd=0
	if(gameover==false){
		alarm[0]=50
		gameover=true
	}
}
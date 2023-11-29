//난이도별 타임라인 작동, 체력 결정
if(global.gamemode=="normal"){
	timeline_index=tl_enemy_spawn
	hp=3
	//hp=9999
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
nomiss=true//한 번도 맞지 않았는지의 여부
wdir=0
hdir=0
wspd=0
hspd=0
global.score=0
//이펙트
if(global.debug==true)
	alarm[3]=1
else
	alarm[2]=2
alarm[5]=1

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

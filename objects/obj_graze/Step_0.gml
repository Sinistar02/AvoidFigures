x=obj_player.x
y=obj_player.y

if(keyboard_check(vk_shift) and obj_player.hp>0){//저속 모드
	activateGraze()
} else {//고속 모드
	if(grazePlusTimer>0){
		activateGraze()
		grazePlusTimer--;
	} else {
		grazing=false
		image_xscale=3.6
		image_yscale=3.6
		image_alpha=0
		if(makeSound==false)
			makeSound=true
	}
}
if(obj_player.frame mod 3==0 and graze>0)
	graze--;
if(graze<0)
	graze=0;

//그레이즈 보너스
if(graze>=grazeBonus){
	if(global.gamemode=="normal"){
		obj_timer.timer+=900//15초 증가
		instance_create_depth(x,y,0,obj_bonus_notif,{mode:0,bonusColor:"green"})
	} else if(global.gamemode=="hard"){
		obj_timer.timer+=600//10초 증가
		instance_create_depth(x,y,0,obj_bonus_notif,{mode:0,bonusColor:"green"})
	} else if(global.gamemode=="30s normal"){
		instance_create_depth(x,y,0,obj_bonus_notif,{mode:2,bonusColor:"green"})
	}
	audio_play_sound(sd_graze_bonus,9,false)
	graze=0
	global.score+=50
	obj_player.scoreBonus+=50
}
wdir = sign(keyboard_check(ord("D"))-keyboard_check(ord("A")))//수평방향(WASD)
hdir = sign(keyboard_check(ord("S"))-keyboard_check(ord("W")))//수직방향(WASD)
if(wdir==0)
	wdir = sign(keyboard_check(vk_right)-keyboard_check(vk_left))//수평방향(방향키)
if(hdir==0)
	hdir = sign(keyboard_check(vk_down)-keyboard_check(vk_up))//수직방향(방향키)
wspd = 6/(1+keyboard_check(vk_shift)) //저속 3<->고속 6
hspd = wspd
if(wdir!=0 and hdir!=0){//대각이동 속력 조정
	wspd*=0.75
	hspd*=0.75
}

//모션
if(wdir==1 or hdir==1)
	motionImage=1
else if(wdir==-1 or hdir==-1)
	motionImage=2
else
	motionImage=0

//눈 깜빡임
if(blinked==true){
	motionImage+=3
	if(blinkFrame==0){
		blinkFrame=irandom_range(110,180)
		blinked=false
	}
} else if(blinkFrame==0){
	blinkFrame=20
	blinked=true
}
if(blinkFrame>0){
	blinkFrame--;
}

//무적 시각 효과
if(invincibility>0){
	invincibility--;
	if(invincibility mod 4 > 2)
		image_alpha=0.4
	else
		image_alpha=0.8
} else {
	image_alpha=1
}

//감속 효과(스턴)
if(stunFrame>0){
	motionImage=6
	wspd=1
	hspd=1
	stunFrame--;
}

//벽 판정
if(place_meeting(x+wspd*wdir,y,obj_hwall))
	wspd=0
if(place_meeting(x,y+hspd*hdir,obj_vwall))
	hspd=0

//게임오버
if(hp<=0){
	if(instance_exists(obj_item_revival)){
		if(obj_item_revival.canRevive!=true)
			gameoverMotion()
	} else
		gameoverMotion()
} else {
	//기본점수
	frame++;
	if(frame mod 26==0){
		global.score++
		scoreBonus++;
	}
	//100초 노미스 보너스(+1분,+500점)
	surviveFrame++;
	if(surviveFrame==6000){
		instance_create_depth(x,y,0,obj_bonus_notif,{mode:0,bonusColor:"orange"})
		obj_timer.timer+=3600
		global.score+=500
		scoreBonus+=500
		surviveFrame=0
	}
	//1000점마다 hp 1 상승
	if(scoreBonus>=1000 and global.gamemode!="30s normal"){
		instance_create_depth(x,y,0,obj_bonus_notif,{mode:1,bonusColor:"orange"})
		audio_play_sound(sd_lifeup,1,false)
		hp++;
		scoreBonus-=1000
	}
}

x+=wdir*wspd
y+=hdir*hspd
image_index=motionImage


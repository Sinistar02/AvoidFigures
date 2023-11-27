image_xscale=3.6
image_yscale=3.6
image_alpha=0
depth=30
graze=0
grazing=false
grazePlusTimer=0
grazeCombo=0
makeSound=true
if(global.gamemode=="normal" or global.gamemode=="practice"){
	grazeBonus=84
	alarm[0]=4200 //84(초기)->180(70초 후)->248(180초 후)
} else if(global.gamemode=="hard"){
	grazeBonus=200
} else if(global.gamemode=="30s normal" or global.gamemode=="30s hard"){
	grazeBonus=60
}

function activateGraze() {
	grazing=true
	if(makeSound==true){
		audio_play_sound(sd_graze_circle,1,false)
		makeSound=false
	}
	if(image_xscale<4.6){
		image_xscale+=0.2
		image_yscale+=0.2
	}
	image_alpha=0.4
}
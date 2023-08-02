image_xscale=3.6
image_yscale=3.6
image_alpha=0
depth=8
graze=0
grazing=false
grazePlusTimer=0
makeSound=true
if(global.gamemode=="normal"){
	grazeBonus=84
	alarm[0]=6600 //84(초기)->180(110초 후)->248(200초 후)
} else if(global.gamemode=="hard"){
	grazeBonus=248
} else if(global.gamemode=="30s normal"){
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
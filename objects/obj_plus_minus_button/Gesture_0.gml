with(obj_options_display){
	if(other.buttonID==0 and bgm>0){
		bgm--
		changeVolume(bgm,BGM)
	} else if(other.buttonID==1 and bgm<2) {
		bgm++
		changeVolume(bgm,BGM)
	} else if(other.buttonID==2 and sfx>0){
		sfx--
		changeVolume(sfx,SFX)
	} else if(other.buttonID==3 and sfx<2) {
		sfx++
		changeVolume(sfx,SFX)
	} else if(other.buttonID==4 and global.language>1){
		global.language--
		other.changeLanguage()
		//size--
		//changeScreenSize(size)
	} else if(other.buttonID==5 and global.language<2) {
		//size<3
		global.language++
		other.changeLanguage()
		//size++
		//changeScreenSize(size)
	} /*else if(other.buttonID==6 and global.language>1) {
		global.language--
		other.changeLanguage()
	} else if(other.buttonID==7 and global.language<2) {
		global.language++
		other.changeLanguage()
	} */
}
audio_play_sound(sd_button,0,false)
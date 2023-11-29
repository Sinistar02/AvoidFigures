/// @description 선택
if(array_length(global.enemySelectList)>assignedEnemyID){
	audio_play_sound(sd_button,0,false)
	if(global.enemySelectList[assignedEnemyID]==true){
		global.enemySelectList[assignedEnemyID]=false
		image_index=1
	} else {
		global.enemySelectList[assignedEnemyID]=true
		image_index=0
	}
} else {
	image_index=1
}
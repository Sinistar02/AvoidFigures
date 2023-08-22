assignedEnemyID=assignedID+obj_practice_manager.currentPage*4
if(array_length(global.enemySelectList)-1>assignedEnemyID){
	if(global.enemySelectList[assignedEnemyID]==true){
		image_index=0
	} else {
		image_index=1
	}
} else {
	image_index=1
}
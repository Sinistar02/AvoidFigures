selectedEnemyID=assignedID+obj_practice_manager.currentPage*4
if(array_length(global.enemySelectList)>selectedEnemyID) {
	if(global.enemySelectList[selectedEnemyID]==true)
		image_alpha=1
	else
		image_alpha=0.4
	image_index=selectedEnemyID+1
} else {
	image_index=0
}
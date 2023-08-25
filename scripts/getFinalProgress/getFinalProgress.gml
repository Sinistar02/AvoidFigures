// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function getFinalProgress(){
	var finalProgress=0;
	var progressList=obj_achievement_manager.progress;
	for(i=20;i<26;i++){
		finalProgress+=progressList[i]
	}
	return finalProgress;
}
progressList=obj_achievement_manager.progress
progressPercent=0
for(i=0;i<20;i++){
	progressPercent+=progressList[i]
}
progressPercent/=20;
if(progressPercent>=1){
	obj_achievement_manager.UnlockFinalAchi();
	progressPercent=1;
}
color=c_lime
//최종 업적 특전 1
finalProgress=getFinalProgress();
if(finalProgress>2){
	rainbow=0
	alarm[0]=1
}
//최종 업적 특전 3
theVkey=""
if(finalProgress==6)
	alarm[1]=1
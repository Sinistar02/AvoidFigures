/// @description 업적 특전 자격 확인
progressList=obj_achievement_manager.progress
progress=0
finalProgress=0
for(var i=0;i<20;i++){
	progress+=progressList[i]
}
for(var i=20;i<25;i++){
	finalProgress+=progressList[i]
}
if(finalProgress==5)
	alarm[4]=1
else if(progress==20)
	alarm[3]=1

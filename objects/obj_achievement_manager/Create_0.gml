maxPage=1
currentPage=0
color=c_lime
achievements=[]
achiTitle=[]
progress=[]
//파일 열기
if(global.language==1){
	achievementFile = file_text_open_read("assets/achievement/achievements kor.txt")
	achiTitleFile = file_text_open_read("assets/achievement/achievements title kor.txt")
} else if(global.language==2){
	achievementFile = file_text_open_read("assets/achievement/achievements eng.txt")
	achiTitleFile = file_text_open_read("assets/achievement/achievements title eng.txt")
}
progressFile = file_text_open_read("new achievement status.txt")
//업적 설명과 진행도 불러오기
readline=0
while(file_text_eof(achievementFile)==false){
	achievements[readline] = file_text_read_string(achievementFile)
	file_text_readln(achievementFile)
	achiTitle[readline] = file_text_read_string(achiTitleFile)
	file_text_readln(achiTitleFile)
	progress[readline] = file_text_read_real(progressFile)
	file_text_readln(progressFile)
	readline++;
}
file_text_close(achiTitleFile)
file_text_close(achievementFile)
file_text_close(progressFile)
//업적 달성
function GetAchievement(n){
	obj_achievement_notif.alarm[0]=1
	progress[n]=1
	progressFile = file_text_open_write("new achievement status.txt")
	for(i=0;i<readline;i++){
		file_text_write_real(progressFile,progress[i])
		file_text_writeln(progressFile)
	}
	file_text_close(progressFile)
}
//업적 페이지 3 해금
function UnlockFinalAchi() {
	maxPage=2
}
audio_group_load(BGM)
audio_group_load(SFX)
audio_group_set_gain(BGM,1,0)
audio_group_set_gain(SFX,0.6,0)
global.score=0
global.debug=false
global.gamemode="undefined"
global.practiceTimer=0
global.savefile=["norm records.txt","hard records.txt","30n records.txt","30h records.txt"]
randomize()
date_set_timezone(timezone_local)
//첫 실행 시 필요한 파일 생성
for(var i=0;i<4;i++){
	if(!file_exists(global.savefile[i])){
		createFile = file_text_open_write(global.savefile[i])
		file_text_close(createFile)
	}
}
//진행도 기록
if(!file_exists("achievement status.txt")){
	createFile = file_text_open_write("achievement status.txt")
	for(var i=0;i<30;i++){
		file_text_write_real(createFile,0)
		file_text_writeln(createFile)
	}
	file_text_close(createFile)
}
//플레이 횟수 기록
if(!file_exists("play count.txt")){
	createFile = file_text_open_write("play count.txt")
	file_text_write_real(createFile,0)
	file_text_close(createFile)
}
createFile = file_text_open_read("play count.txt")
global.playCount = file_text_read_real(createFile)
file_text_close(createFile)
//죽은 횟수 기록
if(!file_exists("death count.txt")){
	createFile = file_text_open_write("death count.txt")
	file_text_write_real(createFile,0)
	file_text_close(createFile)
}
createFile = file_text_open_read("death count.txt")
global.deathCount = file_text_read_real(createFile)
file_text_close(createFile)
//option.ini 생성
ini_open("option.ini")
if(!ini_section_exists("option")){
	ini_write_real("option","sound",2)
	ini_write_real("option","fullscreen",0)
	ini_write_real("option","language",1)
}
if(!ini_key_exists("option","language"))
	ini_write_real("option","language",1)
global.language=ini_read_real("option","language",1) //1:한국어, 2:English
//option.ini 설정 불러오기
if(ini_read_real("option","fullscreen",0)==1){
	window_set_fullscreen(true)
	alarm[0]=12
} else {
	window_set_fullscreen(false)
	window_set_size(global.windowSize[0],global.windowSize[1])
	alarm[0]=3
}
if(ini_read_real("option","size",1)==1)
	global.windowSize=[1532,1024]
else
	global.windowSize=[766,512]
ini_close()
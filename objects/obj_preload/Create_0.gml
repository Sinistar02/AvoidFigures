audio_group_load(BGM)
audio_group_load(SFX)
audio_group_set_gain(BGM,0.6,0)
audio_group_set_gain(SFX,0.6,0)
global.score=0
global.debug=false
global.gamemode="undefined"
global.practiceTimer=0
global.savefile=["norm records.txt","hard records.txt","30n records.txt","30h records.txt"]
global.afterPause=0
randomize()
gesture_double_tap_time(0.35)
gesture_double_tap_distance(0.5)
date_set_timezone(timezone_local)
//첫 실행 시 필요한 파일 생성
for(var i=0;i<4;i++){
	if(!file_exists(global.savefile[i])){
		createFile = file_text_open_write(global.savefile[i])
		file_text_close(createFile)
	}
}
//진행도 기록
if(!file_exists("new achievement status.txt")){
	createFile = file_text_open_write("new achievement status.txt")
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
//option.ini 생성 및 설정 불러오기
ini_open("option.ini")
//초기화
if(!ini_section_exists("option")){
	ini_write_real("option","sound",2)
	ini_write_real("option","music",2)
	ini_write_real("option","screenSize",0)
	ini_write_real("option","language",1)
}
if(ini_key_exists("option","fullscreen")) {
	ini_key_delete("option","fullscreen")
	ini_write_real("option","screenSize",0)
}

if(!ini_key_exists("option","language"))
	ini_write_real("option","language",1)
global.language=ini_read_real("option","language",1) //1:한국어, 2:English

alarm[0]=3
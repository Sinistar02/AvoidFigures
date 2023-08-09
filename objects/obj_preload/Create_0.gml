audio_group_load(BGM)
audio_group_load(SFX)
audio_group_set_gain(BGM,1,0)
audio_group_set_gain(SFX,0.4,0)
global.score=0
global.debug=false
global.gamemode="undefined"
global.savefile=["norm records.txt","hard records.txt","30n records.txt","30h records.txt"]
randomize()
alarm[0]=3
date_set_timezone(timezone_local)
//첫 실행 시 필요한 파일 생성
for(var i=0;i<4;i++){
	if(!file_exists(global.savefile[i])){
		createFile = file_text_open_write(global.savefile[i])
		file_text_close(createFile)
	}
}
ini_open("option.ini")
if(!ini_section_exists("option")){
	ini_write_real("option","sound",2)
	ini_write_real("option","fullscreen",0)
}
ini_close()
audio_group_load(BGM)
audio_group_load(SFX)
audio_group_set_gain(BGM,1,0)
audio_group_set_gain(SFX,0.4,0)
global.score=0
global.debug=false
global.gamemode="undefined"
global.savefile=["norm records.txt","hard records.txt","30n records.txt"]
randomize()
alarm[0]=3
date_set_timezone(timezone_local)
for(var i=0;i<3;i++){
	if(!file_exists(global.savefile[i])){
		createFile = file_text_open_write(global.savefile[i])
		file_text_close(createFile)
	}
}
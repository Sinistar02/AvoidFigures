///@desc 설명문
if(selectedEnemyID<8)
	audio_play_sound(sd_button_hover,0,false)
//미리 만들어둔 설명문 로드
if(global.language==1)
	descFile=file_text_open_read("enemy description kor.txt")
else if(global.language==2)
	descFile=file_text_open_read("enemy description eng.txt")
//알맞은 설명을 찾아서 표시
for(var i=0;i<selectedEnemyID*2;i++)
	file_text_readln(descFile)
var enemyName=file_text_read_string(descFile)
file_text_readln(descFile)
var enemyDesc=file_text_read_string(descFile)
obj_practice_manager.description=[enemyName,enemyDesc]
file_text_close(descFile)
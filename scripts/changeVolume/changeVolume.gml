// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function changeVolume(n,s){
	ini_open("option.ini")
	if(s==BGM)
		ini_write_real("option","music",n)
	else
		ini_write_real("option","sound",n)
	ini_close()
	audio_group_set_gain(s,n*0.3,0)
}
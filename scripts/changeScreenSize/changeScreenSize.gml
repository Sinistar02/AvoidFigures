// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function changeScreenSize(n){
	ini_open("option.ini")
	ini_write_real("option","screenSize",n)
	ini_close()
	if(n==0)
		window_set_size(1080,2340)
	else if(n==1)
		window_set_size(1080,2400)
	else if(n==2)
		window_set_size(1080,2640)
	else if(n==3)
		window_set_size(1440,3088)
}
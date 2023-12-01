if(x==256){
	if(y==192)
		buttonID=0
	else if(y==352)
		buttonID=2
	else if(y==528)
		buttonID=4
	else if(y==720)
		buttonID=6
} else if(x==448) {
	if(y==192)
		buttonID=1
	else if(y==352)
		buttonID=3
	else if(y==528)
		buttonID=5
	else if(y==720)
		buttonID=7
}

function changeLanguage() {
	ini_open("option.ini")
	ini_write_real("option","language",global.language)
	ini_close()
}
page=0
currentPage=0
mode=0
loading=true
alarm[0]=1

function getTime(m,i){
	var time=loadedSaveFile[i][6]/60;
	if(m=="minute")
		return floor(time / 60)
	else if(m=="second")
		return time % 60
}
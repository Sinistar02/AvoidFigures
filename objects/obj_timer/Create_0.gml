if(global.gamemode=="normal")
	//timer=3600//60초
	timer=9999
else if(global.gamemode=="practice")
	timer=-1//무한
else
	timer=1800//30초
global.survivedTime=0
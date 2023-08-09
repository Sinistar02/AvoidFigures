if(global.gamemode=="normal")
	saveFile = file_text_open_append(global.savefile[0])
else if(global.gamemode=="hard")
	saveFile = file_text_open_append(global.savefile[1])
else if(global.gamemode=="30s normal")
	saveFile = file_text_open_append(global.savefile[2])
else if(global.gamemode=="30s hard")
	saveFile = file_text_open_append(global.savefile[3])
saveNotif = "저장중..."
notifColor = c_white
if(saveFile!=-1){
	alarm[0]=1
} else {
	alarm[1]=1
}
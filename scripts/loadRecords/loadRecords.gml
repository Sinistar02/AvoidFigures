// 텍스트 파일로 저장되어있는 기록 불러오기
// loadedSaveFile이라는 2차원 배열로 불러온다.
function loadRecords(gm){
	var saveFile=file_text_open_read(global.savefile[gm]);
	var loadedSaveFile=[];
	var i=0;
	//텍스트 파일 정보 불러오기
	while(file_text_eof(saveFile)==false){
		var recordLine=[];
		for(var j=0;j<7;j++){
			recordLine[j]=file_text_read_real(saveFile);
			file_text_readln(saveFile);
		}
		recordLine[7]=file_text_read_string(saveFile);
		file_text_readln(saveFile);
		loadedSaveFile[i]=recordLine;
		i++;
	}
	//한 페이지 당 17줄
	obj_show_record.page=floor(i/18)
	//기록이 17의 배수가 아니라면 나머지 빈 공간을 0으로 채운다
	if(i==0){
		loadedSaveFile[i]=[0,0,0,0,0,0,0,"EMPTY"];
		i++;
	}
	while(i mod 17 > 0){
		loadedSaveFile[i]=[0,0,0,0,0,0,0,"EMPTY"];
		i++;
	}
	file_text_close(saveFile);
	return loadedSaveFile;
}
with(obj_achievement_manager){
	//업적 트래킹
	if(global.gamemode=="normal"){
		if(global.score>=500 and progress[0]==0)
			GetAchievement(0);
		else if(global.survivedTime>=10800 and progress[5]==0)
			GetAchievement(5);
		else if(global.score>=1000 and progress[10]==0)
			GetAchievement(10);
		else if(global.score>=2000 and progress[11]==0)
			GetAchievement(11);
		else if(global.survivedTime>=21600 and progress[17]==0)
			GetAchievement(17);
		else if(global.score>=9000 and progress[20]==0)
			GetAchievement(20);
		else if(global.survivedTime>=43200 and progress[22]==0)
			GetAchievement(22);
		else if(global.survivedTime>=14400 and obj_player.nomiss==true and progress[23]==0)
			GetAchievement(23);
	} else if(global.gamemode=="hard"){
		if(global.score>=500 and progress[1]==0)
			GetAchievement(1);
		else if(global.survivedTime>=7200 and progress[6]==0)
			GetAchievement(6);
		else if(global.score>=1000 and progress[12]==0)
			GetAchievement(12);
		else if(global.score>=1700 and progress[13]==0)
			GetAchievement(13);
		else if(global.survivedTime>=14400 and progress[18]==0)
			GetAchievement(18);
		else if(global.score>=5000 and progress[21]==0)
			GetAchievement(21);
		else if(global.survivedTime>=28800 and progress[22]==0)
			GetAchievement(22);
	} else if(global.gamemode=="30s normal"){
		if(global.survivedTime>=1800 and progress[2]==0)
			GetAchievement(2);
		else if(global.score>=500 and progress[7]==0)
			GetAchievement(7);
		else if(global.score>=1000 and progress[15]==0)
			GetAchievement(15);
		else if(global.score>=2000 and progress[24]==0)
			GetAchievement(24);
	} else if(global.gamemode=="30s hard"){
		if(global.survivedTime>=1800 and progress[3]==0)
			GetAchievement(3);
		else if(global.score>=700 and progress[8]==0)
			GetAchievement(8);
		else if(global.score>=1500 and progress[16]==0)
			GetAchievement(16);
		else if(global.score>=2700 and progress[25]==0)
			GetAchievement(25);
	}
	if(global.playCount>=50 and progress[4]==0){
		GetAchievement(4);
		var file = file_text_open_write("play count.txt")
		file_text_write_real(file,global.playCount)
		file_text_close(file)
	}
	if(global.practiceTimer>=18000 and progress[9]==0){
		GetAchievement(9);
	}
	if(global.deathCount>=300 and progress[19]==0){
		GetAchievement(19);
		var file = file_text_open_write("death count.txt")
		file_text_write_real(file,global.deathCount)
		file_text_close(file)
	}
}
animIter=0
animY=0
alarm[0]=40

if(global.gamemode="30s normal"){//30초 모드에서
	if(global.score>=3000)//3000점 이상 획득
		textToShow=3
	else if(global.score>=2000)//2000점 이상 획득
		textToShow=2
	else if(global.score>=1000)//1000점 이상 획득
		textToShow=1
	else if(global.survivedTime>=1800)//30초 생존
		textToShow=0
	else if(global.survivedTime<=180)//3초 이하 생존
		textToShow=4
	else
		textToShow=irandom_range(5,7)
} else if(global.gamemode="30s hard"){
	if(global.score>=3500)//3500점 이상 획득
		textToShow=3
	else if(global.score>=2500)//2500점 이상 획득
		textToShow=2
	else if(global.survivedTime>=1800)//30초 생존
		textToShow=0
	else if(global.score>=1500)//1500점 이상 획득
		textToShow=1
	else if(global.survivedTime<=180)//3초 이하 생존
		textToShow=4
	else
		textToShow=irandom_range(5,7)
} else {
	if(global.score>=10000)//10000점 이상 획득
		textToShow=1
	else if(global.survivedTime>=10800)//3분 이상 생존
		textToShow=0
	else if(global.survivedTime<=420)//7초 이하 생존
		textToShow=2
	else
		textToShow=irandom_range(3,5)
}

//대사 모음집
if(global.language==1) {
	if(global.gamemode=="normal"){
		balloonColor=c_white
		text=["그래도 참 질기게도 살아남았네",
		"장막은 신이고 나는 무적이다...90% 정도?",
		"이겜 난이도 수준",
		"이걸 이렇게 터지네",
		"다음엔 더 잘 피할 수 있겠지?",
		"까비"]
	} else if(global.gamemode=="hard"){
		balloonColor=c_red
		text=["???어떻게 살아남음???",
		"도형이 많으면 점수 벌기 좋지",
		"그래... 역시 건드리면 안 됐어",
		"역시 하드 모드는 하드 모드야",
		"나름대로 잘 피했다고 생각해",
		"5초만에 안 터진 게 어디야"]
	} else if(global.gamemode=="30s normal"){
		balloonColor=c_lime
		text=["나는 피격 따윈 당하지 않는다!!",
		"위험했지만 1000점 찍었죠?",
		"2000점의 신화는 실존한다...!!",
		"30초도 3000점 찍기엔 충분히 길지",
		"목숨이 하나라니 이게 무슨 소리야...",
		"다음엔 점수를 더 많이 벌어보자",
		"30초... 생존 가능해?",
		"재도전 오직 재도전뿐이다"]
	} else if(global.gamemode=="30s hard"){
		balloonColor=c_red
		text=["살아남았다...!!!",
		"이렇게나 도형이 많은데 1500점은 기본이지",
		"2500점? 나쁘지 않아",
		"내가 누구? \"장막 포인트 애호가\"",
		"이게...이게 사람이 할 난이도임??",
		"점수고 뭐고 살기 바쁘다",
		"dkslwkat-",//아니잠ㅅ-
		"아무리 터진다 해도 나는 포기하지 않을 거야"]
	}
} else if(global.language==2) {
	if(global.gamemode=="normal"){
		balloonColor=c_white
		text=["Lived for really long time, huh",
		"PRAISE THE GREEN CIRCLE!!...about 90%?",
		"so hard plz nerf",
		"That figure hit me so hard",
		"Maybe next time",
		"I was almost there :("]
	} else if(global.gamemode=="hard"){
		balloonColor=c_red
		text=["???HOW DID I LIVE???",
		"More figures, more score",
		"I was foolish...",
		"Hard mode really is hard, isn't it?",
		"I think I avoided well enough",
		"At least I survived more than 5 seconds"]
	} else if(global.gamemode=="30s normal"){
		balloonColor=c_lime
		text=["I AM THE KING OF AVOIDING FIGURES!!",
		"Dangerous but I reached the top",
		"I made the legend!!",
		"30 seconds are enough for 3000pts",
		"What?? Only one life???",
		"Focus on getting points next time",
		"Can I survive 30 seconds in here?",
		"Keep calm and try again"]
	} else if(global.gamemode=="30s hard"){
		balloonColor=c_red
		text=["I AM THE GOD OF AVOIDING FIGURES!!!",
		"Too many figures not to get 1500 points",
		"2500? Not bad",
		"Point bonus my beloved",
		"Is...is this humanly possible??",
		"Those figures won't let me rest >:(",//!!
		"ㅜㅐㅈ먓-",//아니잠ㅅ-(nowait-)
		"I won't give up no matter how hard it is"]
	}
}
setDraw(fa_middle,fa_center,galmooriBig)
draw_text_transformed(270,90,title[global.language-1],2,2,0)

//두 번 눌러 나가기
setDraw(fa_middle,fa_center,galmoori)
draw_text(270,989,exitGuide)

//게임 팁
setDraw(fa_top,fa_center,galmoori)
if(global.language==1)
	draw_text_transformed(270,250,"나가기 전에...",1.5,1.5,0)
else if(global.language==2)
	draw_text_transformed(270,250,"Before you leave...",1.5,1.5,0)
draw_text_ext(270,340,tips[global.language-1][tipToShow],25,460)
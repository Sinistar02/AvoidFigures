//제목
if(global.language==1) {
	setDraw(fa_middle,fa_center,galmooriBig)
	draw_text_transformed(303,90,"설 정",2,2,0)
	draw_text(118,221,"배 경 음 악")
	draw_text(118,381,"효 과 음")
	//draw_text(118,561,"화 면 크 기")
	draw_text(118,561,"언  어")
	//draw_text(118,751,"언  어")
} else if(global.language==2) {
	setDraw(fa_middle,fa_center,galmooriBig)
	draw_text_transformed(303,90,"OPTIONS",2,2,0)
	draw_text(118,221,"B  G  M")
	draw_text(118,381,"S  F  X")
	//draw_text(118,561,"Screen Size")
	draw_text(118,561,"Language")
	//draw_text(118,751,"Language")
}
setDraw(fa_middle,fa_center,galmoori)
//수치
draw_text_transformed(382,221,bgm*50,1.5,1.5,0)
draw_text_transformed(382,381,sfx*50,1.5,1.5,0)

/*
var scsize = "1080x2340"
if(size==1)
	scsize = "1080x2400"
else if(size==2)
	scsize = "1080x2640"
else if(size==3)
	scsize = "1440x3088"
draw_text(382,561,scsize)
*/

var lang=""
if(global.language==1)
	lang="한국어"
else if(global.language==2)
	lang="English"
draw_text_transformed(382,561,lang,1.5,1.5,0)
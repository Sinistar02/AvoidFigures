volume = audio_group_get_gain(BGM);
if(global.gamemode=="30s normal" or global.gamemode=="30s hard")
	instance_destroy(self);


//일시정지 코드
// 에뚜(ssss4610)님의 코드를 보고 구현하였습니다.
// 코드 공유해주셔서 감사합니다. 잘 쓰겠습니다. m(_ _)m
pauseSurf=-1;

function pause(r){
	room_persistent=true;
	global.roomBuffer = room;
	if(buffer_exists(global.screenBuffer))
		buffer_delete(global.screenBuffer)
	global.screenBuffer = buffer_create(1532*1024*4,buffer_grow,1)
	var surf = surface_create(1532,1024)
	surface_copy(surf,0,0,application_surface)
	buffer_get_surface(global.screenBuffer,surf,0)
	surface_free(surf)
	room_goto(r)
}

function drawPauseScreen() {	//일시정지용 룸의 컨트롤 오브젝트 draw 이벤트에서 호출
	var _cam_width	= 1532;	//카메라 너비
	var _cam_height = 1024;	//카메라 높이
	if (!surface_exists(pauseSurf)) { //서피스가 없을 때
		pauseSurf = surface_create(_cam_width, _cam_height);		//서피스 생성
		buffer_set_surface(global.screenBuffer, pauseSurf, 0);	//버퍼에 저장된 값을 서피스에 붙여넣기
	}
	draw_surface(pauseSurf, 0, 0);	//서피스 그리기, 뒤에 0, 0은 좌표로, 게임이 가변 해상도라면 알아서 조정하기
}
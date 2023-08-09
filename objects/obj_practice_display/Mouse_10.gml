///@desc 설명문
if(selectedEnemyID<7)
	audio_play_sound(sd_button_hover,0,false)
switch(selectedEnemyID){
	case 0:
	obj_practice_manager.description=["튕기는 공",
	"벽에 닿으면 튕기는 도형. 가장 기본적인 장애물이다.\n장막 포인트를 얻기 가장 쉽지만, 때때로 발동되는 러시 모드에 당할 수 있다."]
	break;
	case 1:
	obj_practice_manager.description=["스네이크 네모",
	"무작위로 위아래로 움직이면서, 한편으론 항상 일정한 속도로 왼쪽으로 움직이는 도형.\n이것과 가까이 있는 것은 결코 좋은 선택이 아니다. 또한 컴퓨터의 무작위성을 너무 맹신하지도 말 것."]
	break;
	case 2:
	obj_practice_manager.description=["회전 공","특정 점을 중심으로 회전하면서 오른쪽으로 나아가는 도형.\n경로는 고정적이지만 보고 피하기 어려워 알고도 맞을 수 있다. 일정 시간이 지나면 위아래로 움직이기도 한다."]
	break;
	case 3:
	obj_practice_manager.description=["지뢰","한 번에 여러 개가 바닥에 깔린 뒤, 일정 시간 후에 폭발하는 도형.\n피하기는 어렵지 않으나 폭발이 완전히 사라지기 전까진 피해를 볼 수 있으니 조심해야 한다. 장막 포인트를 많이 올려준다."]
	break;
	case 4:
	obj_practice_manager.description=["창","밑에서 빠른 속도로 긴 창을 찌르는 도형.\n창이 나오는 동안 보고 피하는 것은 불가능에 가깝다. 방심할 때 허를 찔리기 쉬운 도형이니 조심하자. 시간이 어느 정도 지나면 작동 시간이 빨라진다."]
	break;
	case 5:
	obj_practice_manager.description=["대포","양 옆에서 빠른 대포알을 쏘는 도형.\n이것들이 쏘는 대포알은 장막 포인트를 많이 올려준다. 날아가는 동안 방향을 바꾸거나 하지는 않으므로 대포의 위치를 보고 잘 피하면 된다."]
	break;
	case 6:
	obj_practice_manager.description=["레이저","오른쪽에서 왼쪽 끝까지 나가는 레이저를 발사하는 도형.\n피하는 방법은 대포와 비슷하다. 지뢰와는 달리 잔상은 위험하지 않다."]
	break;
	default:
	obj_practice_manager.description=["",""]
	break;
}
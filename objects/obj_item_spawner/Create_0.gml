itemSpawn=irandom_range(2400,3000)//40~50초마다 아이템 무조건 생성
itemSpawnWhenFatal=1
if(global.gamemode=="30s normal")
	instance_destroy(self)

//아이템 결정 알고리즘.(보다시피 더럽다)
function selectItem(m) {
	itemSelector=irandom(19)
	//mode 0: 일반 아이템 확률
	if(m==0) {
		if(itemSelector==0){// 1/20 확률로 부활 아이템
			if(!instance_exists(obj_item_revival))
				instance_create_depth(272,256,0,obj_item_revival)
			else
				instance_create_depth(272,256,0,obj_item_shield)
		} else if(itemSelector<=3){// 3/20 확률로 체력 상승 아이템
			instance_create_depth(272,256,0,obj_item_lifeup)
		} else if(itemSelector<=9){// 6/20 확률로 그레이즈+ 아이템
			instance_create_depth(272,256,0,obj_item_graze_plus)
		} else if(itemSelector<=13){// 4/20 확률로 축소 아이템
			instance_create_depth(272,256,0,obj_item_small)
		} else if(itemSelector<=15){// 2/20 확률로 일시정지 아이템
			instance_create_depth(272,256,0,obj_item_pause)
		} else {// 4/20 확률로 실드 아이템
			instance_create_depth(272,256,0,obj_item_shield)
		}
	//mode 1: 빈사 아이템 확률
	} else if(m==1){
		if(itemSelector<=2){// 3/20 확률로 부활 아이템
			if(!instance_exists(obj_item_revival))
				instance_create_depth(272,256,0,obj_item_revival)
			else
				instance_create_depth(272,256,0,obj_item_lifeup)
		} else if(itemSelector<=9){// 7/20 확률로 체력 상승 아이템
			instance_create_depth(272,256,0,obj_item_lifeup)
		} else if(itemSelector<=12){// 3/20 확률로 일시정지 아이템
			instance_create_depth(272,256,0,obj_item_lifeup)
		} else {// 7/20 확률로 실드 아이템
			instance_create_depth(272,256,0,obj_item_shield)
		}
	}
}
//빈사상태일 경우 1/6(하드일 경우 1/3)확률로 아이템 생성
if(obj_player.hp==1 and itemSpawnWhenFatal==1){
	itemSpawnWhenFatal=0
	var item = 5
	if(global.gamemode=="hard")
		item = 2
	if(irandom(item)==1){
		selectItem(1);
		if(itemSpawn>1200)
			itemSpawn=1200//20초
	}
}
if(obj_player.hp>1)
	itemSpawnWhenFatal=1

//아이템 생성
if(itemSpawn<=0){
	//빈사상태일 경우 아이템 생성 간격이 짧아짐
	if(obj_player.hp==1) {
		selectItem(1);
		itemSpawn=1200//20초
	} else {
		selectItem(0);
		itemSpawn=irandom_range(2100,2400)//35~40초
	}
} else {
	itemSpawn--;
}
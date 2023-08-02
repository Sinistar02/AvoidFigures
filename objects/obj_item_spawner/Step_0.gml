//빈사상태일 경우 1/6확률로 아이템 생성
if(obj_player.hp==1 and itemSpawnWhenFatal==1){
	itemSpawnWhenFatal=0
	if(irandom(5)==3){
		selectItem(1);
		itemSpawn=1500//25초
	}
}
if(obj_player.hp>1)
	itemSpawnWhenFatal=1

//아이템 생성
if(itemSpawn==0){
	selectItem(0);
	//빈사상태일 경우 아이템 생성 간격이 짧아짐
	if(obj_player.hp==1)
		itemSpawn=1500//25초
	else
		itemSpawn=irandom_range(2100,2700)//35~45초
} else {
	itemSpawn--;
}
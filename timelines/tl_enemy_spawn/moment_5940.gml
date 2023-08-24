///@description 99초 후: 스네이크 네모 생성, 회전 구 난도상승, 저격 공 생성
instance_create_depth(480,224,5,obj_snake_square)
instance_create_depth(0,0,0,obj_snci_spawner)
obj_spin_spawner.difficulty++;
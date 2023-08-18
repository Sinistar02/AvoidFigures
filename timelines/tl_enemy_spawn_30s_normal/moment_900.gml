///@description 15초 후: 2차 적 생성
instance_create_depth(480,224,5,obj_snake_square)
instance_create_depth(272,256,0,obj_bc_spawner,{amount:3})
instance_create_depth(0,0,0,obj_rc_spawner,{difficulty:1})
instance_create_depth(0,0,0,obj_laser_spawner,{difficulty:0})
instance_create_depth(0,0,0,obj_ss_spawner,{difficulty:0})
instance_create_depth(480,240,5,obj_spin_spawner,{difficulty:0})
instance_create_depth(0,0,0,obj_slcr_spawner,{difficulty:2})
obj_spin_spawner.difficulty+=3;
obj_m_spawner.difficulty+=2
obj_lc_spawner.difficulty++;
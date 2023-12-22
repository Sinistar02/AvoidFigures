/// @description 이펙트(최종업적 특전 2)
if(global.noSprinkle==false) {
	instance_create_depth(irandom_range(x-20,x+20),irandom_range(y-20,y+20),10,obj_sprinkle,{upgrade:true})
	instance_create_depth(irandom_range(x-20,x+20),irandom_range(y-20,y+20),10,obj_sprinkle,{upgrade:true})
	alarm[4]=3
}
/// @description 이펙트(일반업적 특전)
if(global.noSprinkle==false) {
	instance_create_depth(irandom_range(x-20,x+20),irandom_range(y-20,y+20),10,obj_sprinkle,{upgrade:false})
	instance_create_depth(irandom_range(x-20,x+20),irandom_range(y-20,y+20),10,obj_sprinkle,{upgrade:false})
	alarm[3]=3
}
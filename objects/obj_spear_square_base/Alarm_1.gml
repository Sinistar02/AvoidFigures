/// @description 발사
var inst = instance_create_depth(x,y,1,obj_spear_square_head)
with(inst){
	speedMultiplier = other.speedMultiplier
}
inst = instance_create_depth(x,y+8,1,obj_spear_square_body)
with(inst){
	speedMultiplier = other.speedMultiplier
}
//x=obj_player.x
//y=obj_player.y
if(point_distance(x,y,obj_player.x,obj_player.y)<=4){
	x=obj_player.x
	y=obj_player.y
} else {
	speed=3
	direction=point_direction(x,y,obj_player.x,obj_player.y)
}
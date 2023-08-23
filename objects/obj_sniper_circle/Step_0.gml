event_inherited();

if(phaze==0) {
	finalSpeed=speedMultiplier
	graze(0.5);
} else if(phaze==1) {
	finalSpeed=0
	graze(0.5);
} else if(phaze==2) {
	speed=10*speedMultiplier
	graze(10);
}

if(x>515 or x<-16 or y>528)
	instance_destroy(self)
	
if(obj_player.hp==0){
	alarm_set(0,-1)
	alarm_set(1,-1)
	alarm_set(2,-1)
	alarm_set(3,-1)
	alarm_set(10,-1)
	alarm_set(11,-1)
	instance_destroy(obj_aim)
	instance_destroy(obj_aimline)
}
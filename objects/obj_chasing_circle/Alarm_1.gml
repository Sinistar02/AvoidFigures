/// @description 이동
image_index=1
originalSpeed=4
audio_play_sound(sd_chase_start,2,false)
direction=point_direction(x,y,obj_player.x,obj_player.y)
alarm[0]=40-difficulty*5
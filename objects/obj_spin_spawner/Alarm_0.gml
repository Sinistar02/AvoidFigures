instance_create_depth(16,irandom_range(112,384),5,obj_spin_circle,{difficulty:difficulty})
if(difficulty==0)
	alarm[0]=irandom_range(720,900)//12~15초마다 생성
else if(difficulty==1)
	alarm[0]=irandom_range(420,540)//7~9초마다 생성
else if(difficulty>=2)
	alarm[0]=irandom_range(180,500)//3~5초마다 생성
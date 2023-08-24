rainbow++;
switch(rainbow mod 7){
	case 0:
	var colorcode=[255,50,50]
	break;
	case 1:
	var colorcode=[255,130,50]
	break;
	case 2:
	var colorcode=[255,255,50]
	break;
	case 3:
	var colorcode=[50,255,50]
	break;
	case 4:
	var colorcode=[50,50,255]
	break;
	case 5:
	var colorcode=[50,60,255]
	break;
	case 6:
	var colorcode=[200,50,255]
	break;
}
color=make_color_rgb(colorcode[0],colorcode[1],colorcode[2])
alarm[0]=3
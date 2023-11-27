function ExtendDigit(n,d){
	var digits = string(power(10,d) + n);
	return string_delete(digits,1,1);
}

function getTime(m,t,fr=1){
	t/=60;
	if(m=="minute")
		return floor(t / 60)
	else if(m=="second") {
		if(fr==0 or fr==1 and t<=10)
			return t % 60
		else
			return floor(t % 60)
	}
}

function digitMap(n,r) {
	var i;
	for(i=1;i<n;i*=10)
		r/=10
	return r % 10;
}

timerColor=c_white;
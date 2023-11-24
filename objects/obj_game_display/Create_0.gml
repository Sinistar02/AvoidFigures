function ExtendDigit(n,d){
	var digits = string(power(10,d) + n);
	return string_delete(digits,1,1);
}

function getTime(m,t){
	t/=60;
	if(m=="minute")
		return t / 60
	else if(m=="second")
		return t % 60
}

function digitMap(n,r) {
	var i;
	for(i=1;i<n;i*=10)
		r/=10
	return r % 10;
}
//변수 r의 자릿수를 구분하는 함수.
function digitMap(n,r) {
	var i;
	for(i=1;i<n;i*=10)
		r/=10
	return r % 10;
}
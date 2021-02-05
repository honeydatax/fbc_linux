#include once "server.bi"
const sizes=80000
dim shared z as zstring * sizes 
dim shared s as string
dim shared sub1 as sub
dim shared n as integer
dim shared a as integer=0 
sub onlisten()
	s=>z
	a=a+1
	print a;" times"
	s="HTTP/1.0 200 OK" + chr(13) +chr(10)+"Content-type: text/html"+ chr(13) +chr(10)+ chr(13) +chr(10)
	for n=0 to 20
		s=s + trim(str(int(rnd()*9)))
	next
	s=s + chr(13) +chr(10)
	z=>s
end sub 
	randomize timer()
	sub1=procptr(onlisten)
	color 7,1
	cls
	server z,sizes,sub1
	

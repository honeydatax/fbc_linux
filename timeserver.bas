#include once "server.bi"
const sizes=80000
dim shared z as zstring * sizes 
dim shared s as string
dim shared sub1 as sub
sub onlisten()
	s=>z
	print time()
	print s
	s="HTTP/1.0 200 OK" + chr(13) +chr(10)+"Content-type: text/html"+ chr(13) +chr(10)+ chr(13) +chr(10)
	s=date() +" "+ time()+ chr(13) +chr(10)
	z=>s
end sub 
	sub1=procptr(onlisten)
	color 7,1
	cls
	server z,sizes,sub1
	

#include once "server.bi"
const sizes=80000
dim shared z as zstring * sizes 
dim shared s as string
dim shared sub1 as sub
dim shared n as integer
dim shared a as integer=0 
dim shared ss as string
sub onlisten()
	on error goto escapes
	ss=>z
	n=instr(ss,"GET ")
	if n<>1 then 
		ss=""
	end if
	n=instr(ss,"HTTP/1.")
	if n<0 then 
		ss=""
	end if
	n=instr(ss,"/")
	if n>0 then 
		ss=mid(ss,n+1)
	else
		ss=""
	end if
	n=instr(ss," ")
	if n>0 then 
		ss=mid(ss,1,n-1)
	else
		ss=""
	end if
	n=instr(ss,"..")
	if n>0 then 
		ss=	""
	end if
	n=instr(ss,"?")
	while n>1
	n=instr(ss,"?")
	if n>0 then 
		ss=mid(ss,1,n-1)+" "+mid(ss,n+1)
	end if
	n=instr(ss,"?")
	wend
	s="HTTP/1.0 200 OK" + chr(13) +chr(10)+"Content-type: text/html"+ chr(13) +chr(10)+ chr(13) +chr(10)
	
	if ss="" then ss="main"
	ss="ruby ./"+ss
	print ss
	open pipe ss for input as #1
	while not eof(1)
		Line input #1,ss
		s=s+ss+chr(13)+chr(10)
	wend
	close 
	s=s + chr(13) +chr(10)
	z=>s
escapes:
close 
end sub 
	randomize timer()
	sub1=procptr(onlisten)
	color 7,1
	cls
	server z,sizes,sub1
	

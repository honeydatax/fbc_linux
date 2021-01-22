#include once "net.bi"
const size=800000
dim s as zstring * size
dim ss as zstring * 1000
	s=>"GET / HTTP/1.1"+chr(13)+chr(10)+chr(13)+chr(10)
	ss=>"http://127.0.0.1"
	nets (ss,8080,size-1,s)
	print s

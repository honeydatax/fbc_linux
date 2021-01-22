#include once "curl.bi"
const size=800000
dim s as zstring * size
dim ss as zstring * 1000

	ss=>"http://127.0.0.1"
	curls (ss,8080,size-1,s)
	print s

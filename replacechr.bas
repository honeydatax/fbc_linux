#include once "replacechr.bi"
dim s as zstring * 2048
dim ss as string
dim repl as byte=asc("/")
dim separator as byte=asc("\")
	s=> "c:\windows\dos\command"
	ss=>s
	print ss
	replace s,separator,repl 
	ss=>s
	print ss


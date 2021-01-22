#include once "listarg.bi"
dim i as integer
dim arglists as arglist
	arglists.separator=asc("\")
	arglists.s="c:\windows\dos\shell"
	print arglists.s
	startarglist arglists
	print arglists.size
	for i=0 to arglists.size-1
		print *arglists.args(i)
	next 
	'report arglists

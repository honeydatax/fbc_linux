#include once "replaceall.bi"
dim replaceLists as replaceList  
	replaceLists.s=>"c:\-windows\-dos\-command"
	print replaceLists.s
	replaceLists.ss=>""
	replaceLists.separator=>"\-"
	replaceLists.replacer=>"<--->"
	startarglist replaceLists
	print replaceLists.ss


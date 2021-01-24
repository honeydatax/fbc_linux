#inclib "replaceall"
type replaceList
	size as integer
	separator as zstring * 2048
	replacer as zstring * 2048	
	s as zstring * 2048
	ss  as zstring * 2048
	args (0 to 2048) as zstring ptr
end type 

extern "C"
	declare sub startarglist alias "startarglist"(byref arglists as replaceList) 
end extern


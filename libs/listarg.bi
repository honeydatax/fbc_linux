#inclib "arglist"
type arglist
	size as long
	separator as byte
	s as zstring * 2052
	args(0 to 2047)as zstring ptr
end type 
extern "C"
	declare sub startarglist alias "startarglist"(byref arglists as arglist) 
	declare sub report alias "report"(byref arglists as arglist)
end extern


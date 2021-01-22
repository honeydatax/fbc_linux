#inclib "curl"

extern "C"
	declare sub curls cdecl alias "curls"(address as zstring ptr,port as integer,buff as integer,s as zstring ptr)
end extern


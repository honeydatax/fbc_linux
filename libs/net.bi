#inclib "net"

extern "C"
	declare sub nets cdecl alias "nets"(address as zstring ptr,port as integer,buff as integer,s as zstring ptr)
end extern


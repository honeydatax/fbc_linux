#inclib "server"

extern "C"
	declare sub server alias "servers"(byref z as zstring,size as integer,funct as sub ptr)
end extern


#inclib "replacechr"
extern "C"
	declare sub replace alias "replace"(byref s as zstring,separator as byte,repl as byte) 
end extern


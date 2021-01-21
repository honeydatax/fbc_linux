#ifndef __coniolib__
#define __coniolib__
#inclib "coniolib"



extern "C"
	declare sub setbcolor cdecl alias "setbcolor"(c as integer)
	declare sub setcolor cdecl alias "setcolor"(c as integer)
	declare sub clears cdecl alias "clear"()
	declare sub setx cdecl alias "setx"(x as integer)
	declare sub sety cdecl alias "sety"(y as integer)
	declare sub gotoxy cdecl alias "gotoxy"(y as integer,y as integer)
	declare sub clss cdecl alias "cls"()
end extern
#endif

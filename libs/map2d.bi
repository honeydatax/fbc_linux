#inclib "map2d"

extern "C"
	declare sub setarray cdecl alias "setarray"(byref map1 as integer ptr,x as integer,y as integer,xx as integer,value as integer)
	declare function getarray cdecl alias "getarray"(byref map1 as integer ptr,x as integer,y as integer,xx as integer)as integer
	declare sub startmap cdecl alias "startmap"(byref map1 as integer ptr,xx as integer,yy as integer)
	declare sub reportmap cdecl alias "reportmap"(byref map1 as integer ptr,xx as integer,yy as integer)
end extern


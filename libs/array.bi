#inclib "array"

type arrayInt
	size as integer
	arrayint(0 to 1024) as integer
end type

extern "C"
	declare sub arraystart alias "arraystart"(byref array1 as arrayInt) 
	declare sub arrayreport alias "arrayreport"(byref array1 as arrayInt) 
	declare sub addint alias "addint"(byref array1 as arrayInt,value as integer) 
	declare sub arrayreverse alias "arrayreverse"(byref array1 as arrayInt,byref array1 as arrayInt) 
end extern


#inclib "stack"

type stacksss
	size as integer
	stacks(0 to 1024) as integer
end type 

extern "C"
	declare sub startstack alias "startstack"(byref stack as stacksss) 
	declare sub push alias "push"(byref stack as stacksss,value as integer) 
	declare function pop alias "pop"(byref stack as stacksss)as integer
	declare sub reportStack alias "reportStack"(byref stack as stacksss) 
end extern


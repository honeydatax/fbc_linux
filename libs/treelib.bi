#ifndef __treelib__
#define __treelib__
#inclib "treelib"
const maxrecords = 2048
const maxtxtsize = 33

type stackss
	size as integer
	stacks(0 to maxrecords-1) as integer 
end type
type node
	caption as zstring * maxtxtsize
	text as zstring * maxtxtsize
	back as integer
	nexts as integer
	parent as integer
	sun as integer
	deletes as integer
end type

type trees
	size as integer
	roots as integer
	nodes(0 to maxrecords) as node
end type



extern "C"
	declare sub startstack cdecl alias "startstack"(byref stack as stackss)
 	declare sub reporttree cdecl alias "reporttree"(byref tree1 as trees,node0 as integer)
	declare sub reportStack cdecl alias "reportStack"(byref stack as stackss)
	declare function push cdecl alias "push"(byref stack as stackss,value as integer)as integer
 	declare function pop cdecl alias "pop"(byref stack as stackss)as integer
	declare function newnode cdecl alias "newnode"(byref tree1 as trees,byref caption as zstring ,byref text as zstring )as integer
 	declare function starttree cdecl alias "starttree"(byref tree1 as trees)as integer
 	declare sub setfather cdecl alias "setfather"(byref tree1 as trees,node0 as integer,nodeme as integer)
 	declare sub debugtree cdecl alias "debugtree"(byref tree1 as trees,node0 as integer,nodeinto as integer)
 	declare sub settreeRoot cdecl alias "settreeRoot"(byref tree1 as trees,node0 as integer)
 	declare sub deletetreenode cdecl alias "deletetreenode"(byref tree1 as trees,node0 as integer)
	declare sub cleartree cdecl alias "cleartree"(byref tree1 as trees)
	declare sub loadtree cdecl alias "loadtree"(byref tree1 as trees,name as zstring,sizes as long)
 	declare sub savetree cdecl alias "savetree"(byref tree1 as trees,name as zstring,sizes as long)
 	declare sub reportnode  cdecl alias "reportnode"(byref tree1 as trees,node0 as integer)
 	declare sub settreenodecaption cdecl alias "settreenodecaption"(byref tree1 as trees,node0 as integer,caption as zstring)
 	declare sub settreenodetext cdecl alias "settreenodetext"(byref tree1 as trees,node0 as integer,txt as zstring ptr)
end extern
#endif

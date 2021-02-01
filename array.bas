#include once "array.bi"
dim i as integer=0
dim array1 as arrayInt
dim array2 as arrayInt
	arraystart array1
	arraystart array2
	for i=0 to 16
		addint array1,i
	next
	print
	arrayreport array1
	print
	arrayreverse array2,array1
	arrayreport array2






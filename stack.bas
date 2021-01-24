#include once "stack.bi"
dim i as integer = 0
dim stack as stacksss 

	startstack stack
	for i=0  to 16
		push stack,i
	next 
 	reportStack stack	
	print
	for i=0  to 16
		print pop(stack);
	next 
	print

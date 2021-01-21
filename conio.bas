#include once "coniolib.bi"
dim x as integer=1
dim y as integer=1
dim bc as integer=0
dim c as integer=1

	clss
	clears
	for y=1 to 21
		x=x+1
		gotoxy x,y 
		setbcolor bc
		setcolor c
		print "hello world.!"
		bc=bc+1
		c=bc+1
		if bc > 15 then bc=0
	next

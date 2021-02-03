#include once "dx.bi"
 dim fbfd as integer
 dim r as integer=0
 dim g as integer=0
 dim b as integer=255
 dim label1 as label 
 dim argv as zstring * 100
		randomize timer()
		argv=>"Hello world..."
		cls
		fbfd = startX(argv)
		if fbfd=-1 then goto exits
		label1.c.x=0
		label1.c.y=0
		label1.c.h=20
		label1.c.w=100
		label1.r=255
		label1.g=255
		label1.b=255
		label1.caption=>"Hello world..."
		boxs 0,0,639,479,0,0,255
		for r=0 to 420 step 22
			label1.c.x=r/12
			label1.c.y=r
			drawlabel(label1)
		next
		while inkey<>chr(27)
		wend
		endX fbfd
exits:		

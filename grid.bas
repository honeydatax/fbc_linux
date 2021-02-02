#include once "dx.bi"
 dim fbfd as integer
 dim a as integer
 dim r as byte=0
 dim g as byte=0
 dim b as byte=255
 dim c as control
 dim argv as zstring * 100
		argv=>" "
		cls
		fbfd = startX(argv)
		c.x=0
		c.y=0
		c.w=639
		c.h=479
		grids c,30,0,0,255
		
		while inkey<>chr(27)

			
		wend
		endX fbfd
		

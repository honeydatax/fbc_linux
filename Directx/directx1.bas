#include once "dx.bi"
 dim fbfd as integer
 dim r as byte=0
 dim g as byte=0
 dim b as byte=255
 dim argv as zstring * 100
		argv=>" "
		cls
		fbfd = startX(argv)
		boxs 0,0,639,479,0,0,255
		g=255
		b=255
		ball 320,240,50,255,255,255
		while inkey<>chr(27)

			
		wend
		endX fbfd
		

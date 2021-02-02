#include once "dx.bi"
 dim fbfd as integer
 dim a as integer
 dim r as byte=0
 dim g as byte=0
 dim b as byte=255
 dim argv as zstring * 100
		argv=>" "
		cls
		fbfd = startX(argv)
		boxs 0,0,639,479,0,0,255
		for a= 0 to 639 step 20 
			if a < 479 then hline 0,a,639 ,255,255,255
			vline a,0,479 ,255,255,255
		next
		while inkey<>chr(27)

			
		wend
		endX fbfd
		

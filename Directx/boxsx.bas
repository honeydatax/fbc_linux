#include once "dx.bi"
 dim fbfd as integer
 dim r as integer=0
 dim g as integer=0
 dim b as integer=255
 dim argv as zstring * 100
		argv=>" "
		cls
		fbfd = startX(argv)
		if fbfd=-1 then goto exits
		boxs 0,0,639,479,0,0,255
		for r=0 to 479 step 20
			boxs r,r,r+20,r+20,255,255,255
		next
		while inkey<>chr(27)
		wend
		endX fbfd
exits:		

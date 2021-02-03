#include once "dx.bi"
 dim fbfd as integer
 dim r as integer=0
 dim g as integer=0
 dim b as integer=255
 dim img as any ptr
 dim argv as zstring * 100
		argv=>" "
		cls
		fbfd = startX(argv)
		if fbfd=-1 then goto exits
		img=creatImage(639,479)
		iboxs 0,0,639,479,img,0,0,255
		icircle 640/2,480/2,480/9,img,255,255,255
		ifffill 640/2,480/2,img,255,255,255
		putimage 0,0,img
		while inkey<>chr(27)
		wend
		endX fbfd
exits:		

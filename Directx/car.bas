#include once "dx.bi"
 dim fbfd as integer
 dim img2 as any ptr
 dim aa as integer=20
 dim bb as integer=20
 dim a as integer
 dim x as integer
 dim y as integer=40
 dim xx as integer=640
 dim yy as integer=480
 dim r as byte=0
 dim g as byte=0
 dim b as byte=255
 dim c as control
 dim argv as zstring * 100
		argv=>" "
		x=xx/2
		cls
		fbfd = startX(argv)
		 if fbfd = -1 goto exits
		img2=creatImage(xx,yy)
		while inkey<>chr(27)
			ioutSide y,img2
			iline x,y,x,yy,img2,255,255,255
			iline x,y,x-xx/3,yy,img2,255,255,255
			iline x,y,x+xx/3,yy,img2,255,255,255
			putImage 0,0,img2
			sleep 1	
			x=x+aa
			if x>xx/2+xx/3 then aa=-bb
			if x<xx/2-xx/3 then aa=bb

		wend
		endX fbfd
exits:

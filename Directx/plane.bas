#include once "dx.bi"
 dim fbfd as integer
 dim aa as integer=20
 dim bb as integer=20
 dim a as integer
 dim x as integer
 dim y as integer=20
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
		while inkey<>chr(27)
			outSide y
			sleep 1	
			y=y+1
			if y>yy-50 then goto exitss

		wend
exitss:		
		endX fbfd
exits:

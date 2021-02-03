#include once "dx.bi"
 dim fbfd as integer
 dim r as integer=0
 dim g as integer=0
 dim b as integer=255
 dim img as any ptr
 dim argv as zstring * 100
		randomize timer()
		argv=>"Hello world..."
		cls
		fbfd = startX(argv)
		if fbfd=-1 then goto exits
		img=creatimage(33,33)
		boxs 0,0,639,479,0,0,255
		iboxs 0,0,32,32,img,0,0,255
		for r=0 to 11 
			Ipixel int(rnd()*31),int(rnd()*31),img,255,255,255
		next
		while inkey<>chr(27)
			TputImage int(rnd()*600),int(rnd()*420),img,0,0,0
		wend
		endX fbfd
exits:		

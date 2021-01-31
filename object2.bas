type objc
	x as integer
	y as integer
	w as integer
	h as integer
	c as integer
	b as integer
	s as string
end type
sub draw_obj(objc1 as objc)
	line (objc1.x,objc1.y)-(objc1.x+objc1.w,objc1.y+objc1.h),objc1.b,bf
	line (objc1.x,objc1.y)-(objc1.x+objc1.w,objc1.y+objc1.h),objc1.c,b
end sub

sub clears(c as integer)
	color c,c
	screen 12
	line (0,0)-(639,479),c,bf
end sub

dim obj1 as objc
	randomize 1
	clears 1
		obj1.s="my tag"
	while inkey<>chr(27)	
		obj1.y=int(rnd()*480)
		obj1.c=int(rnd()*15)
		obj1.b=int(rnd()*15)
		obj1.x=int(rnd()*640)
		obj1.w=int(rnd()*680)
		obj1.h=int(rnd()*480)
		draw_obj(obj1)
		sleep 200
	wend



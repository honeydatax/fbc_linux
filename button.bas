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
	locate objc1.y\16+1,objc1.x\8+1
	color objc1.c,objc1.b
	print objc1.s
	line (objc1.x,objc1.y)-(objc1.x+objc1.w,objc1.y+objc1.h),objc1.c,b
end sub

function inside(objc1 as objc)as integer
	dim mousex as integer
	dim mousey as integer
	dim mousebutton as integer
	dim present as integer
	inside=0
	present=getmouse(mousex,mousey,,mousebutton)
	if mousex>objc1.x and mousey>objc1.y and mousex<objc1.x+objc1.w and mousey<objc1.y+objc1.h and mousebutton=1 then inside=1
	locate 1,1
	color 7,1
	print mousex;" ";mousey;" ";mousebutton;"       "
end function

sub clears(c as integer)
	color c,c
	screen 12
	line (0,0)-(639,479),c,bf
end sub

dim obj1 as objc
	clears 1
		obj1.s="click me"
		obj1.y=3*16
		obj1.c=5
		obj1.b=7
		obj1.x=10*8
		obj1.w=200
		obj1.h=100
		draw_obj(obj1)
	while inside (obj1)<>1
		
	wend



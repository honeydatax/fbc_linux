type objc
	x as integer
	y as integer
	c as integer
	b as integer
	s as string
end type
sub draw_obj(objc1 as objc)
	color objc1.c,objc1.b
	locate objc1.x,objc1.y
	print objc1.s
end sub

sub clears(c as integer)
	color c,c
	screen 12
	line (0,0)-(639,479),c,bf
end sub

dim obj1 as objc
	randomize 1
	clears 1
		obj1.s="hello world..."
	while inkey<>chr(27)	
		obj1.y=int(rnd()*22)
		obj1.c=int(rnd()*15)
		obj1.b=int(rnd()*15)
		obj1.x=int(rnd()*80)
		draw_obj(obj1)
		sleep 200
	wend



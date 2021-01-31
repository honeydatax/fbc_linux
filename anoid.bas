type objc
	x as integer
	y as integer
	w as integer
	h as integer
	c as integer
	b as integer
	s as string
end type
dim shared ttt as integer
dim shared tt as integer
dim shared obj1 as objc
dim shared stack1(0 to 16) as integer
dim shared stack2(0 to 16) as integer
dim shared stack3(0 to 16) as integer
dim shared count (0 to 3) as integer
dim shared froms as integer
dim shared intos as integer
sub draw_obj(objc1 as objc)
	line (objc1.x,objc1.y)-(objc1.x+objc1.w,objc1.y+objc1.h),objc1.b,bf
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
end function
sub reset_couter()
	dim i as integer
	count(0)=14
	count(1)=0
	count(2)=0	
	for i=0 to 12
		stack1(i)=0
		stack2(i)=0
		stack3(i)=0
	next
	for i=0 to 12
		stack1(i)=i+1
	next
end sub 
function check_stack()as integer
	dim i as integer
	check_stack=1
	for i=0 to 12
		if stack1(i)<>13-i then check_stack=0
	next
end function
sub print_stack()
	dim i as integer
	for i=0 to 12
		print stack1(12-i)
	next	
end sub
sub draw_stack()
	dim objs1 as objc
	dim i as integer
	for i=0 to 12
		objs1.h=16
		objs1.y=40+(12-i)*16
		objs1.c=7
		if stack1(i)=0 then
			objs1.x=0
			objs1.w=14 * 8 
			objs1.b=1 
			objs1.c=9 
		else
			objs1.b=stack1(i)+2
			objs1.x=((13-(stack1(i)))*4)+10-(stack1(i)/2)
			objs1.w=stack1(i)*8
		end if
		draw_obj(objs1)		
		objs1.h=16
		objs1.y=40+(12-i)*16
		objs1.c=7
		if stack2(i)=0 then
			objs1.x=14 * 8
			objs1.w=14 * 8 
			objs1.b=1 
			objs1.c=9 
		else
			objs1.b=stack2(i)+2
			objs1.x=14 * 8+((13-(stack2(i)))*4)+10-(stack2(i)/2)
			objs1.w=stack2(i)*8
		end if

		draw_obj(objs1)		
		objs1.h=16
		objs1.y=40+(12-i)*16
		objs1.c=7
		if stack3(i)=0 then
			objs1.x=28 * 8
			objs1.w=14 * 8 
			objs1.b=1 
			objs1.c=9 
		else
			objs1.b=stack3(i)+2
			objs1.x=28 * 8+((13-(stack3(i)))*4)+10-(stack3(i)/2)
			objs1.w=stack3(i)*8
		end if
		draw_obj(objs1)		

	next
end sub
function stackpops(stacks() as integer,byref poss as integer)as integer
	stackpops=0
	if poss > 0 then 	
		poss=poss-1
		stackpops=stacks(poss)
		stacks(poss)=0
	end if
end function
sub stackpushs(stacks() as integer,byref poss as integer,values as integer)
	if values <> 0  then 	
		stacks(poss)=values
		poss=poss+1
	end if
end sub
sub jk()
dim mousexs as integer
dim mouseys as integer
dim mousebuttons as integer
dim presents as integer
			presents=getmouse(mousexs,mouseys,,mousebuttons)
			while  mousebuttons<>0
				presents=getmouse(mousexs,mouseys,,mousebuttons)
			wend
end sub


sub clears(c as integer)
	reset_couter
	color c,c
	screen 12
	line (0,0)-(639,479),1,bf

end sub

	clears 1
	draw_stack
	while check_stack()<>1 and inkey<>chr(27)
			obj1.h=16*13
			obj1.y=40
			obj1.x=10
			obj1.w=13 * 8 
			tt=inside(obj1)
		if tt=1 then 
			ttt=stackpops(stack1(),count(0))
			stackpushs(stack2(),count(1),ttt)
			draw_stack
			jk
			goto escapes
		end if	
			obj1.x=14 * 8
			tt=inside(obj1)
		if tt=1 then 
			ttt=stackpops(stack2(),count(1))
			stackpushs(stack3(),count(2),ttt)
			draw_stack
			jk
			goto escapes
		end if	
			obj1.x=28 * 8
			tt=inside(obj1)
		if tt=1 then 
			ttt=stackpops(stack3(),count(2))
			stackpushs(stack1(),count(0),ttt)
			draw_stack
			jk
			goto escapes
		end if	
		escapes:
			
	wend
	while inkey=chr(27)
	wend
	locate 1,1
	color 7,1
	print "you win "
	while inkey<>chr(27)
	wend



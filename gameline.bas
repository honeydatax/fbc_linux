dim shared boards(0 to 10) as integer
dim shared gammer(0 to 10) as integer
dim shared gameOver as integer
dim shared nextx as integer
dim shared ok as integer
dim shared ok1 as integer
dim shared debugok as integer
function gethexs(i as integer,nibles as integer)as integer
	gethexs=0
	on error goto escape3
	if nibles=0 then
		gethexs=i and 15
	end if
	if nibles=1 then
		gethexs=(i \ 16) and 15
	end if
	if nibles=2 then
		gethexs=(i \ 256) and 15
	end if
	escape3:
end function  
sub reset_data()
	on error goto escape2
	boards(0)=asc("0")
	boards(1)=asc("1")
	boards(2)=asc("2")
	boards(3)=asc("3")
	boards(4)=asc("X")
	boards(5)=asc("5")
	boards(6)=asc("6")
	boards(7)=asc("7")
	boards(8)=asc("8")

	gammer(0)=0*256+1*16+2
	gammer(1)=3*256+4*16+5
	gammer(2)=6*256+7*16+8
	gammer(3)=0*256+4*16+8
	gammer(4)=6*256+4*16+2
	gammer(5)=0*256+3*16+6
	gammer(6)=1*256+4*16+7
	gammer(7)=2*256+5*16+8
	gameOver=0
	randomize timer()
	escape2:
end sub 
sub print_data()
	dim i as integer
	dim n as integer
	print
	for n=0 to 7
		for i=2 to 0 step -1
			print gethexs(gammer(n),i);
		next 
		print
	next
end sub
sub print_board()
	dim i as integer
	dim n as integer
	on error goto escape1
	color 7,1
	cls
	locate 1,1
	print
	for n=0 to 2
		print "  ";
		for i=0 to 2
			print chr(boards(n*3+i));
			if i=0 then print "|";
			if i=1 then print "|";
		next
		print
		if n <> 2 then print "  -|-|-"
	next
	escape1:
end sub
function scans_board(i as integer) as integer
	dim n as integer
	dim nn as integer
	dim mmm as integer
	scans_board=0
	on error goto escapess
	for n=0 to 7
	if n>7 then goto escapess
		if boards(gethexs(gammer(n),0))=i and boards(gethexs(gammer(n),1))=i and boards(gethexs(gammer(n),2))=i then
			debugok=n
			scans_board=1
			n=50
			goto escapess
		end if
	next
	escapess:
end function
	on error goto escape
	reset_data

	while gameOver<>1 and inkey<>chr(27)
		print_board
		print 
		print " type you next number pos"
		ok=0
		nextx=0
		while ok<>1
			ok=0
			input nextx
			if nextx>-1 and nextx <9 then ok=1
			if boards(nextx)=asc("X") or boards(nextx)=asc("Y") then ok=0
		wend
		boards(nextx)=asc("Y")
		ok=scans_board(asc("Y"))
		if ok=1 then ok1=1		
		if boards(0)<>asc("0") and boards(1)<>asc("1") and boards(2)<>asc("2") and boards(3)<>asc("3") and boards(5)<>asc("5") and boards(6)<>asc("6") and  boards(7)<>asc("7") and boards(8)<>asc("8") then ok=1  
		gameOver=ok
		if ok=1 then print_board
		if ok1=1 then print "you win" 
		if ok=1 then goto escape
		ok=0
		nextx=0
		while ok<>1
			ok=0
			nextx=int(rnd()*8)
			if nextx>-1 and nextx <9 then ok=1
			if boards(nextx)=asc("X") or boards(nextx)=asc("Y") then ok=0
		wend
		boards(nextx)=asc("X")
		ok=scans_board(asc("X"))
		if ok=1 then ok1=1
		if boards(0)<>asc("0") and boards(1)<>asc("1") and boards(2)<>asc("2") and boards(3)<>asc("3") and boards(5)<>asc("5") and boards(6)<>asc("6") and  boards(7)<>asc("7") and boards(8)<>asc("8") then ok=1  
		gameOver=ok
		if ok=1 then print_board
		if ok1=1 then print "computer win" 
	escape:
	wend

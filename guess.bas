dim a as integer
dim n as integer
dim y as integer
dim times as integer
	color 7,1
	cls
	randomize 1
	times=10
	print "guess number 0 to 100"
	n=int(rnd()*100)
	for a = 0 to times
		input y
		if y < n then print "you number is less"
		if y > n then print "you number is big"
		if y = n then 
			print "you guess the number"
			a=times+2
		end if 
		if a=times then print "you lost number is ";n
	next	
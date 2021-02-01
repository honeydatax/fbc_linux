dim i as integer
print "Content-Type: text/html"
randomize timer()
print chr(13)+chr(10)
	for i=0 to 20
		print trim(str(int(rnd()*9)));
	next
	print
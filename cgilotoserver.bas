dim i as integer
print "Content-Type: text/html"
randomize timer()
print chr(13)+chr(10)
	for i=0 to 10
		print int(rnd()*49+1)
	next
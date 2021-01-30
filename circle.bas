dim x as integer
dim y as integer
dim w as integer
dim h as integer
dim c as integer
dim cc as integer
dim ccc as integer
	color 1,15
	screen 12
	x=0
	y=0
	w=640
	h=480
	c=1
	cc=15
	line (x,y)-(x+w,y+h),c,bf
	color 15
	for ccc=0 to 480 step 16
		for c=0 to 639 step 16
			circle (c,ccc),16
		next
	next
sleep 10000

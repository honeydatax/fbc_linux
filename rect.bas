dim x as integer
dim y as integer
dim w as integer
dim h as integer
dim c as integer
	color 1,15
	screen 12
	x=0
	y=0
	w=640
	h=480
	c=15
	for c=1 to 15
		color 1
		line (x,y)-(x+w,y+h),c,bf
		x=x+15
		y=y+15
		w=w-30	
		h=h-30
	next
sleep 10000

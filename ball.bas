dim x as integer
dim y as integer
dim xx as integer
dim yy as integer

	x=8
	y=8
	xx=8
	yy=8
	screen 12
	line(0,0)-(639,479),1,bf
	while inkey<>chr(27)
		color 7
		x=x+xx
		y=y+yy
		if x > 630 then xx=-8
		if y > 470 then yy=-8
		if x < 8  then xx=8
		if y < 8  then yy=8
		if x > 630  then x=630
		if y > 470  then y=470
		if x < 8  then x=8
		if y < 8  then y=8
		circle (x,y),8
	sleep 100
		color 1
		circle (x,y),8
	wend
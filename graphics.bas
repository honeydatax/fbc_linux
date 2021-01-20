dim n as integer
color 1,1
screen 12
color 1,1
line (0,0)-(640,480),,bf
for n=0 to 10
	color n+1
	line (n*10,n*10)-(n*10+200,n*10+100),,bf
next 
color 7
print "hello world"
sleep 10000
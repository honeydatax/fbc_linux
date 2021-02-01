dim shared pass as string
dim shared pass2 as string
dim shared pass3 as string
dim n as integer
dim nn as integer
sub getpass()
	randomize timer()
	color 7,1
	cls
	locate 1,1
	print " you must enter the defence network using pin password 0000"
	pass=trim(str(int(rnd()*8888+1000)))
end sub

getpass 
	for n= 0 to 128000 
		input pass2
		if len(pass2)=4 then
			if pass=pass2 then
				n=128000
				print "you enter the defence system army"
			else
				for nn = 1 to 4
					if mid(pass,nn,1)=mid(pass2,nn,1) then
						print mid(pass,nn,1);
					else
						print "*";
					end if
				next
				print
			end if
		end if
	next
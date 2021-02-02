#inclib "dx"

const FONTDATAMAX = 2048
const PI = 3.1415927

type control
	x as integer
	y as integer
	w as integer
	h as integer
end type

type label
	c as control 
	caption as zstring * 100
	r as integer
	g as integer
	b as integer
end type

type button
	c as control 
	caption as zstring * 100
	r as integer
	g as integer
	b as integer
	onClick as sub ptr
end type

type menus
	c as control 
	caption as zstring * 100
	r as integer
	g as integer
	b as integer
    onClick as sub ptr
end type


type textBar
	c as control 
	caption as zstring * 100
	color as integer
	bcolor as integer
end type 

extern "C++"
		declare sub ball  alias "ball"(xx as integer,yy as integer ,rr as integer,r as integer,g as integer,b as integer)
		declare function startX alias "startX"(c as zstring ptr ) as integer
		declare sub endX alias "endX"(fbfd as integer)
		declare sub rectangle alias "rectangle"(x as integer,y as integer,x2 as integer,y2 as integer,r as integer,g as integer,b as integer)
		declare sub boxs  alias "boxs"(x as integer,y as integer,x2 as integer,y2 as integer,r as integer,g as integer,b as integer)
		declare sub hline  alias "hline"(x as integer,y as integer,x2 as integer,r as integer,g as integer,b as integer)
		declare sub vline  alias "vline"(x as integer,y as integer,x2 as integer,r as integer,g as integer,b as integer)
		'declare sub TputImage  alias "TputImage"(x as integer,y as integer,byref img as any ptr,tr as integer ,tg as integer,tb as integer)
		'declare sub Ipixel16  alias "Ipixel16"(x as integer,y as integer,byref img as any ptr,color as integer)
		'declare sub IputImage  alias "IputImage"(x as integer,y as integer,img as any ptr,img2 as any ptr)
		'declare sub IcopyImage  alias "IcopyImage"(x as integer,y as integer,img as any ptr,img2 as any ptr)
		'declare sub ifffill  alias "ifffill"(x as integer,y as integer,img as any ptr,rc as integer,gc as integer,bc as integer)
		'declare function igpixel  alias "igpixel"(x as integer,y as integer,img as any ptr)as integer
		'declare sub icircle  alias "icircle"(xx as integer,yy as integer ,rr as integer,img as any ptr,rcc as integer,gcc as integer,bcc as integer)
		'declare sub ioutSide  alias "ioutSide"(y as integer,img as any ptr)
		'declare sub iball  alias "iball"(xx as integer,yy as integer,rr as integer,img as any ptr,rc as integer,gc as integer,bcc as integer)
		'declare sub ivline  alias "ivline"(x as integer,y as integer,y2 as integer,img as any ptr,r as integer,g as integer,b as integer)
		'declare sub ilineR  alias "ilineR"(x as integer,y as integer,x2 as integer,y2 as integer,img as any ptr,r as integer,g as integer,bc as integer)
		'declare sub ilineL  alias "ilineL"(x as integer,y as integer,x2 as integer,y2 as integer,img as any ptr,r as integer,g as integer,bc as integer)
		'declare sub iline  alias "iline"(x as integer,y as integer,x2 as integer,y2 as integer,img as any ptr,r as integer,g as integer,b as integer)
		'declare sub outSide  alias "outSide"(y as integer)
		'declare sub centerControl   alias "centerControl"(byref c as control,tw as integer,th as integer)
		'declare sub drawLabel  alias "drawLabel"(l as label)
		'declare function textW  alias "textW"(byref caption zstring ptr)
		'declare sub poligan  alias "poligan"(byref p as integer ptr,size as integer,r as integer,g as integer,b as integer)
		'declare sub fillPolygan  alias "fillPolygan"(x as integer,y as integer,r as integer,division as integer,rr as integer,gg as integer,bb as integer)
		'declare sub poly  alias "poly"(xx as integer,yy as integer ,rr as integer,divisions as integer,p as integer ptr)
		'declare sub fffill  alias "fffill"(x as integer,y as integer,r as integer,g as integer,b as integer)
		'declare sub ppixel16  alias "ppixel16"(x as integer,y as integer,color as integer)
		'declare function RGBC  alias "RGBC"(r as integer,g as integer,b as integer) as integer
		'declare sub ppixel16  alias "ppixel16"(x as integer,y as integer,color as integer)
		'declare sub iboxs  alias "iboxs"(x as integer,y as integer,x2 as integer,y2 as integer,img as any ptr,r as integer,g as integer,b as integer)
		'declare sub ihline  alias "ihline"(x as integer,y as integer,x2 as integer,img as any ptr,r as integer,g as integer,b as integer)
		'declare sub putImage  alias "putImage"(x as integer,y as integer,img as any ptr)
		'declare sub Ipixel  alias "Ipixel"(x as integer,y as integer,img as any ptr,r as integer,g as integer,b as integer)
		'declare function creatImage  alias "creatImage"(int w,int h) as any ptr
		'declare sub ccircle  alias "circle"(xx as integer,yy as integer,rr as integer,rcc as integer,gcc as integer,bcc as integer)
		'declare sub grid   alias "grid"(c as control ,steep as integer,r as integer,g as integer,b as integer)
		'declare sub ppixel  alias "ppixel"(x as integer,y as integer,r as integer,g as integer,b as integer)
		'declare sub gputc  alias "gputc"(x as integer,y as integer,r as integer,g as integer,b as integer,c as integer)
		'declare sub gputs  alias "gputs"(x as integer,y as integer,r as integer,g as integer,b as integer,c as zstring ptr)
		'declare sub lineR  alias "lineR"(x as integer,y as integer,x2 as integer,y2 as integer,r as integer,g as integer,b as integer)
		'declare sub lineL  alias "lineL"(x as integer,y as integer,x2 as integer,y2 as integer,r as integer,g as integer,b as integer)

		'declare sub llline  alias "line"(x as integer,y as integer,x2 as integer,y2 as integer,r as integer,g as integer,b as integer)
		'declare sub grid  alias "grid"(c as control,steep as integer,r as integer,g as integer,b as integer)
		'declare function gpixel  alias "gpixel"(x as integer,y as integer) as integer
		'declare sub copyImage  alias "copyImage"(x as integer,y as integer,img as any ptr)
		'declare function Igpixel  alias "Igpixel"(x as integer,y as integer,img as any ptr,r as any ptr,g as any ptr,b as any ptr) as integer




	''declare function ands  alias "ands"(a as integer,b as integer)as integer
end extern


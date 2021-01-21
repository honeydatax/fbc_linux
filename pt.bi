const preto=0
const azul=1
const branco=7

public sub graphicos(cors as integer)
	color cors,cors
	screen 12
	color cors,cors
	line (0,0)-(640,480),,bf
end sub

public sub cor (cors as integer,corss as integer)
	color cors,corss
end sub

public sub imprimir(texto as string)
	print texto
end sub

public sub caixa(x as integer,y as integer,w as integer,h as integer)
	line (x,y)-(x+w,y+h),,bf
end sub

public sub linha(x as integer,y as integer,x1 as integer,y1 as integer)
	line (x,y)-(x1,y1)
end sub

public sub espera(x as integer)
	sleep x * 1000
end sub
"Funciones Requisito"
Binario:a
|b|
b:=a printStringBase: 2.
^b.
"----"
|obj result|
obj:= Practica8 new.
result:=obj Binario:13.
Transcript show: result.
"////////////"
Palindromo: pal 
|x|
x:=pal asString.
^ x reverse = x
"----"
|obj result|
obj:= Practica8 new.
result:=obj Palindromo: 1011.
Transcript show: result.
"///////////"
"Funcion primo del ejercicio 2a"

"------------------------------------------------------------------------------------------->"
"Funcion Principal"
sheldon_c
|a temp temp2 flag ver cont|
a:=1.
temp:=0.
temp2:=0.
flag:=0.
cont:=0.
[ cont<10 ] whileTrue:[
	((self primo:a)==1) ifTrue:[
		temp:=self Binario: a.
		ver:=self Palindromo: temp asString.
			(ver) ifTrue:[
			Transcript show: a;cr.
			cont:=cont+1.
			].
	].
	a:=a+1.
]
		
|obj result|
obj:= Practica8 new.
result:=obj sheldon_c.

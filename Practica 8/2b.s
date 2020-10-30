"Funciones Requisito:"
mult_dig:x
|temp counter in pos a c|
in := x asString.
pos := ''.                      
counter := 1.
temp := 1.
c:=0.
a:=''. 
[counter <= in size] whileTrue:
     [pos:=(in at:counter)asString.
	temp:=temp*(pos asInteger).
   counter := counter + 1.
].
Transcript show: temp.
"----"
|obj result|
obj:= Practica8 new.
result:=obj mult_dig:73.
"//////////"
"La funcion primo de la pregunta 2a"
"La funcion primos_count de la pregunta 2a"

"------------------------------------------------------------------------------------->"
"Función Principal:"
sheldon_b: x
|a temp temp2 flag|
a:=29.
temp:=0.
temp2:=0.
flag:=0.
[ a<=x ] whileTrue: [ 
	((self primo:a)==1)ifTrue:[
			temp:=self primos_count: a.
			temp2:=self mult_dig: a.
			((temp==temp2) & (temp~=21)) ifTrue: [ 
				Transcript show: 'Si existe'. "No considero el 73,si cumple."
				flag:=1. 
				a:=x.].
			].
	a:=a+1.
].
(flag=0) ifTrue: [ Transcript show: 'No existe' ].

|obj result|
obj:= Practica8 new.
result:=obj sheldon_b: 100.

"Funciones Requeridas:"
primo:x 
|i j a|
i:=2.
a:=1.
j:=2.
[ i<x ] whileTrue:[
	((x%i)==0) ifTrue: [ 
		i:=x.
		a:=0.
		 ]
	ifFalse:[i:=i+1.].
].
^a.
----
|obj result|
obj:= Practica8 new.
result:=obj primo:4.
"////////////////////"
primos_count:b 
|i j a temp|
temp:=0.
i:=1.
a:=0.
j:=1.
[ i<=b ] whileTrue:[
	[ j<=i ] whileTrue:[
		((i%j)==0 & (j>1) & (j<i)) ifTrue: [ 
			a:=1.
			j:=i.
		 	]
		ifFalse:[
					a:=0.
		].
	j:=j+1.
	].
	(a==0) ifTrue: [ temp:=temp+1. ].
	j:=1.
	i:=i+1.
].
(a>0) ifTrue:[temp:=0].
temp:=temp-1.
^temp.
"----"
|obj result|
obj:= Practica8 new.
result:=obj primos_count:5.
Transcript show: result.
"////////////////////"
voltear:x
|temp counter in pos|
in := x asString.
pos := ''.                      
counter := 1.
temp := ''.
[counter <= in size] whileTrue:
     [temp := (in at: counter) asString , temp.
      counter := counter +1].
pos := temp.
^pos asInteger.
"----"
|obj result|
obj:= Practica8 new.
result:=obj voltear:124.
Transcript show: result.

"------------------------------------------------------------------------------------->"
"Funcion Principal:"

sheldon: x
|a temp temp2 flag|
a:=29.
temp:=0.
temp2:=0.
flag:=0.
[ a<=x ] whileTrue: [ 
	((self primo:a)==1)ifTrue:[
			temp:=self primos_count: a.
			"Transcript show: temp;cr."
			temp2:=self voltear: a.
			temp2:=self primos_count: temp2.
			"temp2:=reverse(a).
			temp2:=self primos_count: temp2."
		].
			((temp == (self voltear:temp2)) & ((temp~=21) & (temp~=12))) ifTrue: [ "Profe, aqui no considero el 37 porque obviamente si cumpliria, por eso ..." 
			"...no considero su posicion en la lista de primos que seria 12"
				Transcript show: 'Si existen' ; cr.
				Transcript show: temp; cr.
				Transcript show: temp2; cr.
				a:=x.
				flag:=0.
				]
			ifFalse:[
				flag:=1.
				].
	a:=a+1.
].
(flag==1) ifTrue: [ Transcript show: 'No existen' ].

|obj result|
obj:= Practica8 new.
result:=obj sheldon:100.

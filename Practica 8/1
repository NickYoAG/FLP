x1:x_1 y1:y_1 rad1:r_1 x2:x_2 y2:y_2 rad2:r_2
|a|
a:=0.
((x_1-r_1) <= (x_2+r_2)) ifTrue:[
		a:=1.
	].
((x_1+r_1) >= (x_2-r_2)) ifTrue:[
		a:=1.
	].
((y_1-r_1) <= (y_2+r_2)) ifTrue:[
		a:=1.
	].
((y_1+r_1) >= (y_2-r_2)) ifTrue:[
		a:=1.
	].
(a==1) ifTrue:[
	Transcript show: 'Si interceptan'.
	]
	ifFalse:[
		Transcript show: 'No interceptan'.
	].

|obj result|
obj:= Practica8 new.
result:=obj x1: 2 y1: 3 rad1: 2 x2: 5 y2: 3 rad2: 2 

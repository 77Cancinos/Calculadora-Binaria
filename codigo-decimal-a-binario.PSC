Algoritmo decimal_a_binario
	definir n,x,binario como real
	Escribir "Escribe un numero"
	Leer n
	Escribir "El numero ",n," convertido a binario es: "
	x<-1
	binario<-0
	Mientras n >= 1 Hacer
		Si n mod 2 == 1 Entonces
			binario<-binario + x
		FinSi
		n<-trunc(n/2)
		x<-x*10
	FinMientras
	Escribir binario
FinAlgoritmo
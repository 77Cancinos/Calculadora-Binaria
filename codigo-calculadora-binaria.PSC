Algoritmo Operaciones_Binarias
    Escribir "Introduce el primer número binario:"
    Leer num1
    Escribir "Introduce el segundo número binario:"
    Leer num2
    
    // Comprobar que los números introducidos son binarios
    Si (Not esBinario(num1) o Not esBinario(num2)) Entonces
        Escribir "Los números introducidos no son binarios."
    Sino
        // Convertir los números binarios a enteros
        entero1 = binario_a_entero(num1)
        entero2 = binario_a_entero(num2)
        
        // Realizar las operaciones y obtener el resultado en binario
        resultado_suma = entero_a_binario(entero1 + entero2)
        resultado_resta = entero_a_binario(entero1 - entero2)
        resultado_multiplicacion = entero_a_binario(entero1 * entero2)
        resultado_division = entero_a_binario(entero1 / entero2)
        
        // Mostrar los resultados en binario
        Escribir "La suma de los números binarios es:", resultado_suma
        Escribir "La resta de los números binarios es:", resultado_resta
        Escribir "La multiplicación de los números binarios es:", resultado_multiplicacion
        Escribir "La división de los números binarios es:", resultado_division
    FinSi
FinAlgoritmo

// Función para comprobar si un número es binario
Funcion esBinario(numero: Cadena): Logico
    Para cada digito en numero Hacer
        Si (digito <> "0" y digito <> "1") Entonces
            devolver Falso
        FinSi
    FinPara
    devolver Verdadero
FinFuncion

// Función para convertir un número binario a entero
Funcion binario_a_entero(numero_binario: Cadena): Entero
    longitud = Longitud(numero_binario)
    entero = 0
    Para i = 1 hasta longitud Hacer
        entero = entero + Entero(SubCadena(numero_binario, i, 1)) * 2^(longitud - i)
    FinPara
    devolver entero
FinFuncion

// Función para convertir un número entero a binario
Funcion entero_a_binario(numero_entero: Entero): Cadena
    si (numero_entero = 0) entonces
        devolver "0"
    finSi
    binario = ""
    mientras (numero_entero > 0) hacer
        resto = numero_entero % 2
        binario = Concatenar(resto, binario)
        numero_entero = numero_entero / 2
    finMientras
    devolver binario
FinFuncion
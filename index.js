const convertir = () => {
    // Obtenemos el número decimal ingresado por el usuario
    let decimal = document.getElementById("decimal").value;

    // Declaramos variables para el número binario y el cociente
    let binario = "";
    let cociente = decimal;
    
    //Validación de valores invalidos 0 o números negativos
    if (cociente <= 0) {
        alert('Valor incorrecto');
        limpiarInputs();
        return;
    }

    // Convertimos el número decimal a binario
    while (cociente > 0) {
        let resto = cociente % 2;
        cociente = Math.floor(cociente / 2);
        binario = resto + binario;
    }

    // Mostramos el número binario resultante
    document.getElementById("binario").value = binario;
}


const obtenerValores = () => {
    let num1 = parseInt(document.getElementById("binario_A").value, 2);
    let num2 = parseInt(document.getElementById("binario_B").value, 2);

    //Validación para que no se coloque el - antes de los valores
    if (num1 < 0 || num2 < 0) {
        alert("Valor incorrecto, menor a 0");
        return null;
    }

    return [num1, num2];
};


const sumar = () => {
    let valores = obtenerValores();
    if (!valores) return;

    let resultado = valores[0] + valores[1];
    document.getElementById("resultado_operacion").value = resultado.toString(2);
};

const restar = () => {
    let valores = obtenerValores();
    if (!valores) return;

    let resultado = valores[0] - valores[1];
    document.getElementById("resultado_operacion").value = resultado.toString(2);
};

const multiplicar = () => {
    let valores = obtenerValores();
    if (!valores) return;

    let resultado = valores[0] * valores[1];
    document.getElementById("resultado_operacion").value = resultado.toString(2);
};

const dividir = () => {
    let valores = obtenerValores();
    if (!valores) return;

    let resultado = valores[0] / valores[1];
    document.getElementById("resultado_operacion").value = resultado.toString(2);
};


const limpiarInputs = () => {
    //Limpiar inputs
    // document.getElementById('decimal').value = "";
    // document.getElementById("binario").value = "";

    document.getElementById('binario_A').value = "";
    document.getElementById('binario_B').value = "";
    document.getElementById('resultado_operacion').value = "";

}
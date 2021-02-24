/*Imprimir Codigo de Gestion */ 
const getCodigoGestion = () => {
    document.getElementById ('tributo').value = "2";
    document.getElementById('cuenta').value = "1";
    document.getElementById('codigoGestion').value = "6";

}

/*Deudores por Importe */
const getDeudoresImporte = () => {
    document.getElementById ('desde').value = "1,000";
    document.getElementById ('hasta').value = "3,500";
    document.getElementById ('fecha').value = "13/04/1994";
    

    let 
        zonaFiscal = ''
    let valor1 = "Perez"
    let valor2 = "Cabin9"

    zonaFiscal = `
    <option value="1">${valor1}</option>
    <option value="2">${valor2}</option>
    `
}
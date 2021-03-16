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
    

    {let 
        zonaFiscal = ''
    let valor1 = "Perez"
    let valor2 = "Cabin9"

    zonaFiscal = `
    <option value="1">${valor1}</option>
    <option value="2">${valor2}</option>
    `
    document.getElementById('zonaFiscal').innerHTML = zonaFiscal; }

}


/*Deudores por Periodo */
const getDeudaPeriodo = () => {
    {let 
        seccion = ''
    let valor1 = "1"
    let valor2 = "2"
    seccion = `
    <option value="1">${valor1}</option>
    <option value="2">${valor2}</option>

    `
    
    document.getElementById('seccion').innerHTML= seccion;}

    document.getElementById ('cantidadRegistros').value = "1";
    document.getElementById ('activos').value = "06";
    document.getElementById ('baja').value = "2";
    document.getElementById ('comercioBaja').value = "10";


}


/*Deudores DREI */



/*Consulta de Comercio por documento*/
const getConsultaDni = () => {
{let 
tipoDocumento= ''
let valor1 = "DNI";
let valor2 = "DNA";

tipoDocumento = `
<option value="1">${valor1}</option>
<option value = "2">${valor2}</option>
`

document.getElementById ('tipoDocumento').innerHTML = tipoDocumento;}

document.getElementById ('numero').value = "36780292";

}


/*Liquidacion deuda desinfeccion Mensual*/ 
const getDeuda = () => {
document.getElementById('habilitacionDesde').value = 'marzo';
document.getElementById('habilitacionHasta').value = 'abril';
document.getElementById('año').value = '2019';
document.getElementById('periodo').value = '3';
document.getElementById('vencimiento').value = '';

}
/*Liquidacion deuda habilitacion anual*/ 

const getDeudas = () => {
    document.getElementById('habilitacionDesde').value = 'mayo';
    document.getElementById('habilitacionHasta').value = 'agosto';
    document.getElementById('año').value = '2019';
    document.getElementById('periodo').value = '5';
    document.getElementById('vencimiento').value = '';
    
    }
    
    /*Impresion De boleta de Habilitacion anual */
    const getImpresionDeudas = () => {
        document.getElementById('habilitacionDesde').value = 'enero';
        document.getElementById('habilitacionHasta').value = 'marzo';
        document.getElementById('añoImprimir').value = '2020';
        
        }

        /*Impresion De boleta de Desinfeccion mensual  */
    const getImpresionDeuda = () => {
        document.getElementById('habilitacionDesde').value = 'febrero';
        document.getElementById('habilitacionHasta').value = 'marzo';
        document.getElementById('añoImprimir').value = '2020';
        document.getElementById('periodo').value = '2';
        
        }
    const getImpresionDeudores = () => {
        document.getElementById('añoImprimir').value = '2018';
        document.getElementById('periodo').value = '03';
    }
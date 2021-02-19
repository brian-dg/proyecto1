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
    
    const getImpresionDeuda = () => {
        document.getElementById('habilitacionDesde').value = 'enero';
        document.getElementById('habilitacionHasta').value = 'marzo';
        document.getElementById('añoImprimir').value = '2020';
        
        }
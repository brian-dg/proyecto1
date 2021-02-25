
/*Listado de comercio por rubro */
const getListaRubro = () =>{ 
    { let 
        rubro= ''
    let valor1='A';
    let valor2='B';
    
    rubro = `
    <option value="1">${valor1}</option>
    <option value="2">${valor2}</option>
    `
    document.getElementById('rubro').innerHTML=rubro;}
    
    {
        let 
            zona = ''
        let valor1 = "todas";
        let valor2 = "interior";
    
        zona = `
        <option value="1">${valor1}</option>
        <option value="2">${valor2}</option>
    
        `
    document.getElementById('zona').innerHTML=zona;}
    
    }

    /* Listado de Comercio*/
    const getListadoComercios = () =>{
document.getElementById('InscripcionDesde').value="2016";

document.getElementById('InscripcionHasta').value="2017";

}
    
    /*Consulta DDJJ */
    const getConsultaDjj = () => {
    document.getElementById('comercio').value="primero";
    }
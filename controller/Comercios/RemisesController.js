const getLlenoDatos = () => {
document.getElementById('inscripcion').value = "2";
document.getElementById('licencia').value = "1";
document.getElementById('fechaHabilitacion').value = "";
document.getElementById('numeroDocumento').value = "46740698";  
document.getElementById('titular').value = "juan";
document.getElementById('domicilio').value = "av. San martin";
document.getElementById('dominio').value = "BMK328";
document.getElementById('vehiculo').value = "Renault";
document.getElementById('modeloAño').value = "2012";

{let
    empresa = ''; 
    let valor1 = "2";
    let valor2 = "3";
    
    empresa =  `<option value="1">${valor1}</option>
                <option value="2">${valor2}</option>`;
    
    
    document.getElementById('empresa').innerHTML = empresa; }


{let
template = ''; 
let valor1 = "DNI";
let valor2 = "DNU";

template = `<option value="1">${valor1}</option>
            <option value="2">${valor2}</option>`;


document.getElementById('tipoDocumento').innerHTML = template; }
};

const getLlenarDatos = () => {

    document.getElementById('licencia').value = "1";
    document.getElementById('fechaHabilitacion').value = "";
    document.getElementById('numeroDocumento').value = "40780698";  
    document.getElementById('titular').value = "juan";
    document.getElementById('domicilio').value = "av. San martin";
    document.getElementById('dominio').value = "BMK328";
    document.getElementById('vehiculo').value = "Renault";
    document.getElementById('modeloAño').value = "2012";
    document.getElementById('empresa').value = "1";

    {let
        empresa = ''; 
        let valor1 = "2";
        let valor2 = "3";
        
        empresa = `<option value="1">${valor1}</option>
                    <option value="2">${valor2}</option>`;
        
        
        document.getElementById('empresa').innerHTML = empresa; }
    {let
    template = ''; 
    let valor1 = "DNI";
    let valor2 = "DNU";
    
    template = `<option value="1">${valor1}</option>
                <option value="2">${valor2}</option>`;
    
    
    document.getElementById('tipoDocumento').innerHTML = template; }
    };
    

    const getLlenaDatos = () => {
    
    {let inscripcion = ''; 
    let valor1 = "2";
    let valor2 = "4";

    
    
    inscripcion = `<option value="1">${valor1}</option>
                <option value="2">${valor2}</option>`
        document.getElementById('inscripcion').innerHTML = inscripcion;}

        
    {let caja = ''; 
        let valor1 = "1";
        let valor2 = "2";
    caja = `<option value="1">${valor1}</option>
                    <option value="2">${valor2}</option>`
        document.getElementById('caja').innerHTML = caja;}

        document.getElementById('inscripcion').value = "2";
        document.getElementById('periodo').value = "02";
        document.getElementById('año').value = "2020";  
        document.getElementById('fecha').value = "";
        document.getElementById('importe').value = "100";
        
    }
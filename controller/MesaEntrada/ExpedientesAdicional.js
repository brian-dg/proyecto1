// CONTROLLERS PARA DOCUMENTACION ADICIONAL 

// search all registers adicional file
const getExpedientesAdicional = () => { 
    if(location.search.length > 0) {
        params = location.search;
    } 

    // Alternativa a URLSearchParams 
    var queryParams = window.location.search.substr(1).split('&').reduce(function (qs, query) {
        const chunks = query.split('=');
        const key = chunks[0];
        let value = decodeURIComponent(chunks[1] || '');
        let valueLower = value.trim().toLowerCase();
        if (valueLower === 'true' || value === 'false') {
          value = Boolean(value); 
        } else if (!isNaN(Number(value))) {
          value = Number(value); 
        } 
        return (qs[key] = value, qs);
      }, {});  
      
    // accedo a cada uno de los parametros recibidos 
    // EN DESUSO. PARA USAR URLSEARCHPARASM SE NECISTA VERSIONES DE CHROME MAYOR A 49
  /*  const urlParams = new URLSearchParams(params);
    const anioParametro = urlParams.get('anio');
    const numeroParametro = urlParams.get('numeroexpediente'); */


    const template =    `<a href="./ExpedienteAdicionalCreate?numeroexpediente=${queryParams.numeroexpediente}&anio=${queryParams.anio}">
                        <button class="mt-1 btn btn-primary" id="newREgister" type="button">Agregar Documentación</button>
                        </a>`;
    let obj = new XMLHttpRequest();
    obj.open('GET', `${baseUrl}/MesaEntrada/ExpedientesAdicionalServices${params}`, true);
    obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
    obj.onreadystatechange = function () { 
        if(obj.status==200 && obj.responseText != 'error') { 
            let txtHtml = '';
           
            parser = new DOMParser();
            xmlDoc = parser.parseFromString(this.responseText,"text/xml");   
            if(xmlDoc.getElementsByTagName('expedientes').length > 0) { 
                for(i=0;i<xmlDoc.getElementsByTagName('expedientes').length;i++){ 
                    numeroexpediente = xmlDoc.getElementsByTagName('numeroexpediente')[i].childNodes[0].nodeValue;
                    anio = xmlDoc.getElementsByTagName('anio')[i].innerHTML;
                    fecha = xmlDoc.getElementsByTagName('fecha')[i].innerHTML;
                    canthojas = xmlDoc.getElementsByTagName('canthojas')[i].innerHTML;
                    observacion = xmlDoc.getElementsByTagName('observacion')[i].innerHTML;
                    id = xmlDoc.getElementsByTagName('id')[i].innerHTML;
                    ref= xmlDoc.getElementsByTagName('expedientes')[i].getAttribute('ref');             
                    // dev view
                    txtHtml += `<tr>
                            <td class="text-left">${id}</td>
                            <td class="text-left">${numeroexpediente}/${anio}</td>
                            <td class="text-left">${fecha}</td>
                            <td class="text-left">${canthojas}</td>
                            <td class="text-left">${observacion}</td> 
                            <td class="text-center"> 
                                <a href="./ExpedienteAdicionalEdit.html?numeroexpediente=${numeroexpediente}&anio=${anio}&idExpediente=${id}">
                                    <button type="button"  class="btn btn-success btn-sm">Editar</button>
                                </a>
                                </td>
                                <td class="text-center">
                                    <button type="button" class="btn btn-danger btn-sm" onclick="ExpedienteAdicionalDelete(${numeroexpediente}, ${anio}, ${id})">Eliminar</button>
                                </td>
                            </tr>`
                    
                } 
                
                
            }
            document.getElementById('table-result').innerHTML = txtHtml;
                document.getElementById('btnNew').innerHTML = template;
            return xmlDoc;
        }
        else {
            console.error('error de conexion-> estatus: ' + obj.status + ', ready estatus: ' + obj.readyState);
            alertify.error('Ocurrió un Error');
        }
    }
    obj.send();
    return false;
};

// delete register
const ExpedienteAdicionalDelete = (numeroExpediente, anio, renglon) => {  
    let params = '';
     let response = confirm('Seguro que quiere eliminar el registro del expediente ' + numeroExpediente + "/" + anio + ', Id: ' + renglon + '?');
     if(response == true ){
         params = `numeroExpediente=${numeroExpediente} 
                   &anio=${anio}
                   &renglon=${renglon}`; 
         let obj = new XMLHttpRequest();
         obj.open('POST', `${baseUrl}/MesaEntrada/ExpedienteAdicionalDeleteServices`, true);
         obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
         obj.onreadystatechange = function () {
            if(obj.status==200 && obj.responseText != 'error') { 
                 window.location="expedientes";
                 return xmlDoc;
             }
             else {
                 console.error('error de conexion-> estatus: ' + obj.status + ', ready estatus: ' + obj.readyState);
                 alertify.error('Ocurrió un Error');
             }
         }
         obj.send(params);
         return false;
     }
  };
 

// search one person
const getExpedienteAdicional = () => { 
    let params = '';
    if(location.search.length > 0) {
        params = location.search;
    }  
    let obj = new XMLHttpRequest();
    obj.open('GET', `${baseUrl}/MesaEntrada/ExpedienteAdicionalServices${params}`, true);
    obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
    obj.onreadystatechange = function () {
        if(obj.status==200 && obj.responseText != 'error') { 
            parser = new DOMParser();
            xmlDoc = parser.parseFromString(this.responseText,"text/xml"); 
            if(xmlDoc.getElementsByTagName('expediente').length > 0) {
                for(i=0;i<xmlDoc.getElementsByTagName('expediente').length;i++){
                    numeroexpediente = xmlDoc.getElementsByTagName('numeroexpediente')[i].childNodes[0].nodeValue;
                    anio = xmlDoc.getElementsByTagName('anio')[i].childNodes[0].nodeValue;
                    individuo = xmlDoc.getElementsByTagName('individuo')[i].innerHTML;
                    canthojas = xmlDoc.getElementsByTagName('canthojas')[i].innerHTML;
                    tipdoc = xmlDoc.getElementsByTagName('tipdoc')[i].innerHTML;
                    nrodoc = xmlDoc.getElementsByTagName('nrodoc')[i].innerHTML;
                    observacion = xmlDoc.getElementsByTagName('observacion')[i].innerHTML;
                    id = xmlDoc.getElementsByTagName('id')[i].innerHTML;
                    ref= xmlDoc.getElementsByTagName('expediente')[i].getAttribute('ref');
                    
                    document.getElementById('numeroExpediente').value = numeroexpediente;
                    document.getElementById('añoExpediente').value = anio;
                    document.getElementById('idExpediente').value = id;
                    document.getElementById('cantidadHojas').value = canthojas;
                    document.getElementById('tipoDocumento').value = tipdoc;
                    document.getElementById('numeroDocumento').value = nrodoc;
                    document.getElementById('nombreIndividuo').value = individuo;
                    document.getElementById('observaciones').value = observacion;
                } 
            } 
            return xmlDoc;
            
        }
        else {
            console.error('error de conexion-> estatus: ' + obj.status + ', ready estatus: ' + obj.readyState);
            alertify.error('Ocurrió un Error');
        }
    }
    obj.send();
    return false;
};

// create Adicional form 
if(document.getElementById('createAdicional')) {  
    document.getElementById('createAdicional').addEventListener('click', (e) => { 
    e.preventDefault();

    const numeroExpediente = document.getElementById('numeroExpediente'). value;
    const añoExpediente = document.getElementById('añoExpediente').value;
    const cantidadHojas = document.getElementById('cantidadHojas').value; 
    const observaciones = document.getElementById('observaciones').value;
    const idExpediente = document.getElementById('idExpediente').value;

    let response = confirm('Seguro que quiere agregar documentación adicional al expediente' + numeroExpediente + "/" + anio + '?');
    if(response == true ){

    var params = `numeroExpediente=${numeroExpediente}
                &anioExpediente=${añoExpediente}
                &idExpediente=${idExpediente}
                &cantidadHojas=${cantidadHojas}
                &observaciones=${observaciones}
                `; 
    let obj = new XMLHttpRequest();
    let counter = 0;
    obj.open('POST', `${baseUrl}/MesaEntrada/ExpedienteAdicionalCreateServices`, true);
    obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
    obj.onreadystatechange = function () {
        if(obj.status==200 && obj.responseText != 'error') { 
            counter += 1;
            let txtHtml = '';
            parser = new DOMParser();
            xmlDoc = parser.parseFromString(this.responseText,"text/xml");   
            
            if(numeroExpediente.length == 0 || parseInt(numeroExpediente) == 0) { 
                document.getElementById('requiredNumeroExpediente').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
                return false;
            } 
            else {
                document.getElementById('requiredNumeroExpediente').innerHTML = `<p class="text-danger"><small></smal></p>`
            }
            if(añoExpediente.length == 0 || parseInt(añoExpediente) == 0) { 
                document.getElementById('requiredAñoExpediente').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
                return false;
            } 
            else {
                document.getElementById('requiredAñoExpediente').innerHTML = `<p class="text-danger"><small></smal></p>`
            }
            if(idExpediente.length == 0 || parseInt(idExpediente) == 0) { 
                document.getElementById('requiredIdExpediente').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
                return false;
            } 
            else {
                document.getElementById('requiredIdExpediente').innerHTML = `<p class="text-danger"><small></smal></p>`
            }
            if(añoExpediente.length == 0 || parseInt(añoExpediente) == 0) { 
                document.getElementById('requiredAñoExpediente').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
                return false;
            } 
            else {
                document.getElementById('requiredAñoExpediente').innerHTML = `<p class="text-danger"><small></smal></p>`
            }
            if(cantidadHojas.length == 0 || parseInt(cantidadHojas) == 0) {
                document.getElementById('requiredCantidadHojas').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
                return false;
            } 
            else {
                document.getElementById('requiredCantidadHojas').innerHTML = `<p class="text-danger"><small></smal></p>`  
            } 

            if(observaciones.length == 0) {
                document.getElementById('requiredObservaciones').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
                return false;
            } 
            else {
                document.getElementById('requiredObservaciones').innerHTML = `<p class="text-danger"><small></smal></p>`  
            }
            
            window.location= 'expedientes';
            return xmlDoc;
        }
        else {
            console.error('error de conexion-> estatus: ' + obj.status + ', ready estatus: ' + obj.readyState);
            alertify.error('Ocurrió un Error');
        }
    }
    obj.send(params);
    return false;
}
});
}; 

// Update Adicional form 
if(document.getElementById('updateAdicional')) {  
    document.getElementById('updateAdicional').addEventListener('click', (e) => { 
    e.preventDefault();

    const numeroExpediente = document.getElementById('numeroExpediente'). value;
    const añoExpediente = document.getElementById('añoExpediente').value;
    const cantidadHojas = document.getElementById('cantidadHojas').value; 
    const observaciones = document.getElementById('observaciones').value;
    const idExpediente = document.getElementById('idExpediente').value;
    var params = `numeroExpediente=${numeroExpediente}
                &anioExpediente=${añoExpediente}
                &idExpediente=${idExpediente}
                &cantidadHojas=${cantidadHojas}
                &observaciones=${observaciones}
                `;  console.log(params)
    let obj = new XMLHttpRequest();
    let counter = 0;
    obj.open('POST', `${baseUrl}/MesaEntrada/ExpedienteAdicionalUpdateServices`, true);
    obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
    obj.onreadystatechange = function () {
        if(obj.status==200 && obj.responseText != 'error') { 
            counter += 1;
            let txtHtml = '';
            parser = new DOMParser();
            xmlDoc = parser.parseFromString(this.responseText,"text/xml");   
            
            if(numeroExpediente.length == 0 || parseInt(numeroExpediente) == 0) { 
                document.getElementById('requiredNumeroExpediente').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
                return false;
            } 
            else {
                document.getElementById('requiredNumeroExpediente').innerHTML = `<p class="text-danger"><small></smal></p>`
            }
            if(añoExpediente.length == 0 || parseInt(añoExpediente) == 0) { 
                document.getElementById('requiredAñoExpediente').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
                return false;
            } 
            else {
                document.getElementById('requiredAñoExpediente').innerHTML = `<p class="text-danger"><small></smal></p>`
            }
            if(idExpediente.length == 0 || parseInt(idExpediente) == 0) { 
                document.getElementById('requiredIdExpediente').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
                return false;
            } 
            else {
                document.getElementById('requiredIdExpediente').innerHTML = `<p class="text-danger"><small></smal></p>`
            }
            if(añoExpediente.length == 0 || parseInt(añoExpediente) == 0) { 
                document.getElementById('requiredAñoExpediente').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
                return false;
            } 
            else {
                document.getElementById('requiredAñoExpediente').innerHTML = `<p class="text-danger"><small></smal></p>`
            }
            if(cantidadHojas.length == 0 || parseInt(cantidadHojas) == 0) {
                document.getElementById('requiredCantidadHojas').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
                return false;
            } 
            else {
                document.getElementById('requiredCantidadHojas').innerHTML = `<p class="text-danger"><small></smal></p>`  
            } 

            if(observaciones.length == 0) {
                document.getElementById('requiredObservaciones').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
                return false;
            } 
            else {
                document.getElementById('requiredObservaciones').innerHTML = `<p class="text-danger"><small></smal></p>`  
            }
            window.location= 'expedientes';
            return xmlDoc;
        }
        else {
            console.error('error de conexion-> estatus: ' + obj.status + ', ready estatus: ' + obj.readyState);
            alertify.error('Ocurrió un Error');
        }
    }
    obj.send(params);
    return false;

});
}; 

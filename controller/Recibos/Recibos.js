// search all registers
const getRecibos = () => {  
    let fechaDesde = document.getElementById('fechaDesde').value; 
    let fechaHasta = document.getElementById('fechaHasta').value; 
    let templateTotal = '';
    let templateLoading = ''; 
    // Validaciones
    if(fechaDesde.length == 0) { 
        document.getElementById('requiredFechaDesde').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
        return false;
    } 
    else {
        document.getElementById('requiredFechaDesde').innerHTML = `<p class="text-danger"><small></smal></p>`
    }
    if(fechaHasta.length == 0) { 
        document.getElementById('requiredFechaHasta').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
        return false;
    } 
    else {
        document.getElementById('requiredFechaHasta').innerHTML = `<p class="text-danger"><small></smal></p>`
    }
    var params = `fechaDesde=${fechaDesde}
                  &fechaHasta=${fechaHasta}`;
    
   
    fechaDesde = fechaDesde.split('-').reverse().join('/');
    fechaHasta = fechaHasta.split('-').reverse().join('/');
    var aFecha1 = fechaDesde.split('/'); 
    var aFecha2 = fechaHasta.split('/'); 
    var fFecha1 = Date.UTC(aFecha1[2],aFecha1[1],aFecha1[0]); 
    var fFecha2 = Date.UTC(aFecha2[2],aFecha2[1],aFecha2[0]); 
    var dif = fFecha2 - fFecha1;
    var dias = Math.floor(dif / (1000 * 60 * 60 * 24));

    if(dias > 5){
         templateTotal =  `<p class=" text-left text-danger">El rango de búsqueda no puede ser mayor a 5 días</p>`;
        document.getElementById('importeTotal').innerHTML = templateTotal;
        return false;
    }
    else{
        templateTotal = '';
        document.getElementById('importeTotal').innerHTML = templateTotal;
    }
    // Loading 
    templateLoading = `<div class="loading"><img src="/miciudad/assets/images/loader.gif" alt="loading" /><br/>Un momento, por favor...</div>`
    document.getElementById('loading').innerHTML = templateLoading;
    let obj = new XMLHttpRequest();
    obj.open('POST', `${baseUrlLegacy}/Recibos/RecibosServices`, true);
    obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
    obj.onreadystatechange = function () { 
        templateLoading = '';
        if(obj.status==200 && obj.responseText != 'error') { 
            let txtHtml = '';
            let importeTotal = 0;
            parser = new DOMParser();
            xmlDoc = parser.parseFromString(this.responseText,"text/xml");    
            if(xmlDoc.getElementsByTagName('recibos').length > 0) { 
                for(i=0;i<xmlDoc.getElementsByTagName('recibos').length;i++){ console.log(xmlDoc)
                    nrodoc = xmlDoc.getElementsByTagName('nrodoc')[i].childNodes[0].nodeValue;
                    individuo = xmlDoc.getElementsByTagName('individuo')[i].innerHTML;
                    adicional = xmlDoc.getElementsByTagName('adicional')[i].innerHTML;
                    fechapago = xmlDoc.getElementsByTagName('fechapago')[i].innerHTML;
                    importepago = xmlDoc.getElementsByTagName('importepago')[i].innerHTML;
                    nrorecibo = xmlDoc.getElementsByTagName('nrorecibo')[i].innerHTML;
                    ref= xmlDoc.getElementsByTagName('recibos')[i].getAttribute('ref');             
                    // dev view 
                    if(importepago !== 'Impago'){
                    importeTotal += parseFloat(importepago);}
                    txtHtml += `<tr>
                            <td class="text-left">${nrodoc}</td>
                            <td class="text-left">${individuo}</td> 
                            <td class="text-center">${adicional}</td> 
                            <td class="text-center">${fechapago}</td> 
                            <td class="text-right">${importepago}</td> 
                            <td class="text-right">${nrorecibo}</td> 
                            </tr>`
                } 
            } 
            templateTotal = `<p class=" text-left text-primary">Importe Total: $ ${importeTotal}</p>`;
            document.getElementById('loading').innerHTML = templateLoading;
            document.getElementById('table-result').innerHTML = txtHtml;
            document.getElementById('importeTotal').innerHTML = templateTotal;
            return xmlDoc;
        }
        else {
            console.error('error de conexion-> estatus: ' + obj.status + ', ready estatus: ' + obj.readyState);
            alertify.error('Ocurrió un Error');
        }
    }
    obj.send(params);
    return false;
};


// search one person
const getRecibo = () => { 
    let params = '';
    if(location.search.length > 0) {
        params = location.search;
    } 

    console.log(params)
    let obj = new XMLHttpRequest();
    obj.open('GET', `${baseUrl}/Recibos/ReciboServices${params}`, true);
    obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
    obj.onreadystatechange = function () {
        if(obj.status==200 && obj.responseText != 'error') { 
            let txtHtml = '';
            parser = new DOMParser(); 
            xmlDoc = parser.parseFromString(this.responseText,"text/xml"); 
            if(xmlDoc.getElementsByTagName('recibos').length > 0) { 
                for(i=0;i<xmlDoc.getElementsByTagName('recibos').length;i++){  
                    documento = xmlDoc.getElementsByTagName('documento')[i].childNodes[0].nodeValue;
                    individuo = xmlDoc.getElementsByTagName('individuo')[i].innerHTML;
                    adicional = xmlDoc.getElementsByTagName('adicional')[i].innerHTML;
                    ref= xmlDoc.getElementsByTagName('recibos')[i].getAttribute('ref');
                    
                    document.getElementById('numeroDocumento').value = documento;
                    document.getElementById('nombreIndividuo').value = individuo;
                    document.getElementById('datoAdicional').value = adicional;
                   
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


// create form 
if(document.getElementById('create')) {  
    document.getElementById('create').addEventListener('click', (e) => { 
    e.preventDefault();
    let numeroDocumento = document.getElementById('numeroDocumento').value;
    let nombreIndividuo = document.getElementById('nombreIndividuo').value;
    let codigoComprobante = document.getElementById('codigoComprobante').value;
    let importe = document.getElementById('importe').value; 
    let datoAdicional = document.getElementById('datoAdicional').value;

    // Validaciones 
    if(numeroDocumento.length == 0 || parseInt(numeroDocumento) == 0) { 
        document.getElementById('requiredNumeroDocumento').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
        return false;
    } 
    else {
        document.getElementById('requiredNumeroDocumento').innerHTML = `<p class="text-danger"><small></smal></p>`
    }
    if(nombreIndividuo.length == 0) { 
        document.getElementById('requiredNombreIndividuo').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
        return false;
    } 
    else {
        document.getElementById('requiredNombreIndividuo').innerHTML = `<p class="text-danger"><small></smal></p>`
    }
    if(codigoComprobante.length == 0 || parseInt(codigoComprobante) == 0) { 
        document.getElementById('requiredCodigoComprobante').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
        return false;
    } 
    else {
        document.getElementById('requiredCodigoComprobante').innerHTML = `<p class="text-danger"><small></smal></p>`
    }
    if(importe.length == 0 || parseInt(importe) == 0) { 
        document.getElementById('requiredImporte').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
        return false;
    } 
    else {
        document.getElementById('requiredImporte').innerHTML = `<p class="text-danger"><small></smal></p>`
    }
    var params = `numeroDocumento=${numeroDocumento}
                &codigoComprobante=${codigoComprobante}
                &datoAdicional=${datoAdicional}
                &importe=${importe}`;
    
    let obj = new XMLHttpRequest();
    let counter = 0;
    obj.open('POST', `${baseUrlLegacy}/Recibos/ReciboCreateServices`, true);
    obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
    obj.onreadystatechange = function () {
        if(obj.status==200 && obj.responseText != 'error') {
            counter += 1;
            let txtHtml = '';
            parser = new DOMParser();
            xmlDoc = parser.parseFromString(this.responseText,"text/xml");   console.log(obj.responseText)
            
            if(xmlDoc.getElementsByTagName('message').length > 0){ 
                for(i=0;i<xmlDoc.getElementsByTagName('message').length;i++){
                    nromessage = xmlDoc.getElementsByTagName('nromessage')[i].childNodes[0].nodeValue;
                    descmessage = xmlDoc.getElementsByTagName('descripcion')[i].innerHTML;
                    ref= xmlDoc.getElementsByTagName('message')[i].getAttribute('ref');
                    txtHtml += `<h5 class="text-danger">${descmessage}</h5>`;
                } 
                document.getElementById('informe').innerHTML = txtHtml;
                return false;
            }
            else {
                if(counter > 1){ 
                    window.location="expedientes";
                }
            }
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


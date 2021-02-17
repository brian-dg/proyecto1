// search all registers
const getExpedientes = () => { 
    // Loading 
    let templateLoading = ''; 
    templateLoading = `<div class="loading"><img src="/miciudad/assets/images/loader.gif" alt="loading" /><br/>Un momento, por favor...</div>`
    document.getElementById('loading').innerHTML = templateLoading; 
    let obj = new XMLHttpRequest();
    obj.open('GET', `${baseUrl}/MesaEntrada/ExpedientesServices`, true);
    obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
    obj.onreadystatechange = function () { 
        templateLoading = '';
        if(obj.status==200 && obj.responseText != 'error') { 
            let txtHtml = '';
            parser = new DOMParser();
            xmlDoc = parser.parseFromString(this.responseText,"text/xml");   
            if(xmlDoc.getElementsByTagName('expedientes').length > 0) { 
                for(i=0;i<xmlDoc.getElementsByTagName('expedientes').length;i++){ 
                    numeroexpediente = xmlDoc.getElementsByTagName('numeroexpediente')[i].childNodes[0].nodeValue;
                    anio = xmlDoc.getElementsByTagName('anio')[i].innerHTML;
                    fecha = xmlDoc.getElementsByTagName('fecha')[i].innerHTML;
                    individuo = xmlDoc.getElementsByTagName('individuo')[i].innerHTML;
                    motivo = xmlDoc.getElementsByTagName('motivo')[i].innerHTML;
                    estado = xmlDoc.getElementsByTagName('estado')[i].innerHTML;
                    ref= xmlDoc.getElementsByTagName('expedientes')[i].getAttribute('ref');             
                    // dev view
                    txtHtml += `<tr>
                            <td class="text-left">${numeroexpediente}/${anio}</td>
                            <td class="text-left">${fecha}</td>
                            <td class="text-left">${individuo}</td> 
                            <td class="text-left">${motivo}</td>
                            <td>
                            <div class="btn-group">
                            <button type="button" class="btn btn-danger">Acciones</button>
                            <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown">
                            <span class="caret"></span>
                            <span class="sr-only">Toggle Dropdown</span>
                            </button>
                            <ul class="dropdown-menu" role="menu">
                            <li><a style="text-decoration:none" class="text-warning ml-2" href="./ExpedienteEdit.html?numeroexpediente=${numeroexpediente}&anio=${anio}">Editar</a></li>
                            <li><a style="text-decoration:none" class="text-success ml-2" href="./ExpedienteAdicional.html?numeroexpediente=${numeroexpediente}&anio=${anio}">Documentación Adicional</a></li>
                            <li><a style="text-decoration:none" class="text-success ml-2" href="./ExpedienteRecibo.html?numeroexpediente=${numeroexpediente}&anio=${anio}">Emitir Recibo</a></li>
                            <li style="cursor: pointer"><a class="text-danger ml-2" onclick="ExpedienteDelete(${numeroexpediente}, ${anio})">Eliminar</a></li>
                            </ul>
                            </div>
                            </td>
                            </tr>`
                } 
            }
            document.getElementById('loading').innerHTML = templateLoading;
            document.getElementById('table-result').innerHTML = txtHtml;
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

// search all registers paginations
const getExpedientesPagination = (anio, page) => {  
    let params = '';
    params = `anio=${anio} 
              &page=${page}`;
    // Loading 
    let templateLoading = ''; 
    templateLoading = `<div class="loading"><img src="/miciudad/assets/images/loader.gif" alt="loading" /><br/>Un momento, por favor...</div>`
    document.getElementById('loading').innerHTML = templateLoading; 
    let obj = new XMLHttpRequest();
    obj.open('POST', `${baseUrl}/MesaEntrada/ExpedientesPaginationServices`, true);
    obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
    obj.onreadystatechange = function () { 
        templateLoading = '';
        if(obj.status==200 && obj.responseText != 'error') { 
            let txtHtml = '';
            let nextPage = 0;
            let prevPage = 0;
            let lastPage = 0;
            parser = new DOMParser();
            xmlDoc = parser.parseFromString(this.responseText,"text/xml");   
            if(xmlDoc.getElementsByTagName('expedientes').length > 0) {  
                for(i=0;i<xmlDoc.getElementsByTagName('expedientes').length;i++){ 
                    numeroexpediente = xmlDoc.getElementsByTagName('numeroexpediente')[i].childNodes[0].nodeValue;
                    anio = xmlDoc.getElementsByTagName('anio')[i].innerHTML;
                    fecha = xmlDoc.getElementsByTagName('fecha')[i].innerHTML;
                    individuo = xmlDoc.getElementsByTagName('individuo')[i].innerHTML;
                    motivo = xmlDoc.getElementsByTagName('motivo')[i].innerHTML;
                    estado = xmlDoc.getElementsByTagName('estado')[i].innerHTML;
                    pagina = xmlDoc.getElementsByTagName('pagina')[i].innerHTML;
                    ref= xmlDoc.getElementsByTagName('expedientes')[i].getAttribute('ref');             
                    // dev view
                    nextPage = parseInt(pagina) + 1; 
                    prevPage = parseInt(pagina) - 1;
                    if(total % 100 > 0) {
                        lastPage = parseInt(total / 100) + 1;
                    } 
                    else{
                        lastPage = parseInt(total / 100);
                    }
                    txtHtml += `<tr>
                            <td class="text-left">${numeroexpediente}/${anio}</td>
                            <td class="text-left">${fecha}</td>
                            <td class="text-left">${individuo}</td> 
                            <td class="text-left">${motivo}</td>
                            <td>
                            <div class="btn-group">
                            <button type="button" class="btn btn-danger">Acciones</button>
                            <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown">
                            <span class="caret"></span>
                            <span class="sr-only">Toggle Dropdown</span>
                            </button>
                            <ul class="dropdown-menu" role="menu">
                            <li><a style="text-decoration:none" class="text-warning ml-2" href="./ExpedienteEdit.html?numeroexpediente=${numeroexpediente}&anio=${anio}">Editar</a></li>
                            <li><a style="text-decoration:none" class="text-success ml-2" href="./ExpedienteAdicional.html?numeroexpediente=${numeroexpediente}&anio=${anio}">Documentación Adicional</a></li>
                            <li><a style="text-decoration:none" class="text-success ml-2" href="./ExpedienteRecibo.html?numeroexpediente=${numeroexpediente}&anio=${anio}">Emitir Recibo</a></li>
                            <li style="cursor: pointer"><a class="text-danger ml-2" onclick="ExpedienteDelete(${numeroexpediente}, ${anio})">Eliminar</a></li>
                            </ul>
                            </div>
                            </td>
                            </tr>`
                } 
                if(total > 100) {   
                    // pagination
                    template = `<nav aria-label="Page navigation example" class="text-right">
                                <ul class="pagination justify-content-end m-3">
                                <li class="page-item"><a class="page-link text-primary" onclick="getExpedientesPagination(${anio}, ${1})">Inicio</a></li>
                                <li class="page-item"><a class="page-link text-primary" onclick="getExpedientesPagination(${anio}, ${prevPage})"><<</a></li>` ;
                    for(i=1;i< total / 100;i++){
                        template += `<li class="page-item"><a class="page-link text-primary" onclick="getExpedientesPagination(${anio}, ${i})">${i}</a></li>`
                    }; 
                    template += `<li class="page-item ' + wdisabled + '"><a class="page-link text-primary" onclick="getExpedientesPagination(${anio}, ${nextPage})">>></a></li>
                                <li class="page-item"><a class="page-link text-primary" onclick="getExpedientesPagination(${anio}, ${lastPage})">Fin</a></li>
                                </ul>
                                </nav>
                                <p class="text-left col-md-12 text-primary ml-3"><small> Página: ${pagina} de ${lastPage}</small></p>
                                `; 
                    }
                    else{
                        template = '';
                    };
            }
            document.getElementById('loading').innerHTML = templateLoading;
            document.getElementById('pagination').innerHTML = template;
            document.getElementById('table-result').innerHTML = txtHtml;
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
// delete register
const ExpedienteDelete = (numeroExpediente, anio) => {  
   let params = '';
    let response = confirm('Seguro que quiere eliminar el registro' + numeroExpediente + "/" + anio + '?');
    if(response == true ){
        params = `numeroExpediente=${numeroExpediente} 
                  &anio=${anio}`;
        let obj = new XMLHttpRequest();
        obj.open('POST', `${baseUrl}/MesaEntrada/ExpedienteDeleteServices`, true);
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

// serch for number and year 
const getExpedientesSearch = () => {  
    let numeroExpediente = document.getElementById('numero').value; 
    let anio = document.getElementById('anio').value; 
    
    var params = `numeroExpediente=${numeroExpediente}
                &anio=${anio}`;
    // Loading 
    let templateLoading = ''; 
    templateLoading = `<div class="loading"><img src="/miciudad/assets/images/loader.gif" alt="loading" /><br/>Un momento, por favor...</div>`
    document.getElementById('loading').innerHTML = templateLoading;
        let obj = new XMLHttpRequest();
        obj.open('POST', `${baseUrl}/MesaEntrada/ExpedientesServices`, true);
        obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
        obj.onreadystatechange = function () {
            templateLoading = '';
            if(obj.status==200 && obj.responseText != 'error') { 
                let txtHtml = '';
                let template = '';
                let lastPage = 0;
                parser = new DOMParser();
                xmlDoc = parser.parseFromString(this.responseText,"text/xml"); 
                if(xmlDoc.getElementsByTagName('expedientes').length > 0) { 
                    for(i=0;i<xmlDoc.getElementsByTagName('expedientes').length;i++){
                        numeroexpediente = xmlDoc.getElementsByTagName('numeroexpediente')[i].childNodes[0].nodeValue;
                        anio = xmlDoc.getElementsByTagName('anio')[i].innerHTML;
                        fecha = xmlDoc.getElementsByTagName('fecha')[i].innerHTML;
                        individuo = xmlDoc.getElementsByTagName('individuo')[i].innerHTML;
                        motivo = xmlDoc.getElementsByTagName('motivo')[i].innerHTML;
                        estado = xmlDoc.getElementsByTagName('estado')[i].innerHTML;
                        total = xmlDoc.getElementsByTagName('total')[i].innerHTML;
                        pagina = xmlDoc.getElementsByTagName('pagina')[i].innerHTML;
                        ref= xmlDoc.getElementsByTagName('expedientes')[i].getAttribute('ref');     
                        if(total % 100 > 0) {
                            lastPage = parseInt(total / 100) + 1;
                        } 
                        else{
                            lastPage = parseInt(total / 100);
                        }
                        // dev view
                        txtHtml += `<tr>
                                <td class="text-left">${numeroexpediente}/${anio}</td>
                                <td class="text-left">${fecha}</td>
                                <td class="text-left">${individuo}</td> 
                                <td class="text-left">${motivo}</td>
                                <td>
                                <div class="btn-group">
                                <button type="button" class="btn btn-danger">Acciones</button>
                                <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown">
                                <span class="caret"></span>
                                <span class="sr-only">Toggle Dropdown</span>
                                </button>
                                <ul class="dropdown-menu" role="menu">
                                <li><a style="text-decoration:none" class="text-warning ml-2" href="./ExpedienteEdit.html?numeroexpediente=${numeroexpediente}&anio=${anio}">Editar</a></li>
                                <li><a style="text-decoration:none" class="text-success ml-2" href="./ExpedienteAdicional.html?numeroexpediente=${numeroexpediente}&anio=${anio}">Documentación Adicional</a></li>
                                <li><a style="text-decoration:none" class="text-success ml-2" href="./ExpedienteRecibo.html?numeroexpediente=${numeroexpediente}&anio=${anio}">Emitir Recibo</a></li>
                                <li style="cursor: pointer"><a class="text-danger ml-2" onclick="ExpedienteDelete(${numeroexpediente}, ${anio})">Eliminar</a></li>
                                </ul>
                                </div>
                                </td>
                                </tr>`
                    } 
                    if(total > 100) {   
                        // pagination
                        template = `<nav aria-label="Page navigation example" class="text-right">
                                    <ul class="pagination justify-content-end m-3">`;
                        for(i=1;i< total / 100;i++){
                            template += `<li class="page-item text-primary"><a class="page-link" onclick="getExpedientesPagination(${anio}, ${i})">${i}</a></li>`
                        }; 
                        template += `<li class="page-item ' + wdisabled + '"><a class="page-link text-primary" onclick="getExpedientesPagination(${anio}, ${2})">>></a></li>
                                    <li class="page-item"><a class="page-link text-primary" onclick="getExpedientesPagination(${anio}, ${lastPage})">Fin</a></li>
                                    </ul>
                                   </nav>
                                   <p class="text-left col-md-12 text-primary ml-3"><small> Página: ${pagina} de ${lastPage}</small></p>
                                   `; 
                    }
                    else{
                        template = '';
                    };
                }
                document.getElementById('loading').innerHTML = templateLoading;
                document.getElementById('pagination').innerHTML = template;
                document.getElementById('table-result').innerHTML = txtHtml;
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
  const getExpediente = () => { 
    let params = '';
    if(location.search.length > 0) {
        params = location.search;
    }
    let obj = new XMLHttpRequest();
    obj.open('GET', `${baseUrl}/MesaEntrada/ExpedienteServices${params}`, true);
    obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
    obj.onreadystatechange = function () {
        if(obj.status==200 && obj.responseText != 'error') { 
            let txtHtml = '';
            let internoChecked = false;
            parser = new DOMParser();
            xmlDoc = parser.parseFromString(this.responseText,"text/xml"); 
            if(xmlDoc.getElementsByTagName('expediente').length > 0) {
                for(i=0;i<xmlDoc.getElementsByTagName('expediente').length;i++){
                    numeroexpediente = xmlDoc.getElementsByTagName('numeroexpediente')[i].childNodes[0].nodeValue;
                    anio = xmlDoc.getElementsByTagName('anio')[i].childNodes[0].nodeValue;
                    individuo = xmlDoc.getElementsByTagName('individuo')[i].innerHTML;
                    motivo = xmlDoc.getElementsByTagName('motivo')[i].innerHTML;
                    canthojas = xmlDoc.getElementsByTagName('canthojas')[i].innerHTML;
                    codsector = xmlDoc.getElementsByTagName('codsector')[i].innerHTML;
                    sector = xmlDoc.getElementsByTagName('sector')[i].innerHTML;
                    codestado = xmlDoc.getElementsByTagName('codestado')[i].innerHTML;
                    estado = xmlDoc.getElementsByTagName('estado')[i].innerHTML;
                    tipdoc = xmlDoc.getElementsByTagName('tipdoc')[i].innerHTML;
                    nrodoc = xmlDoc.getElementsByTagName('nrodoc')[i].innerHTML;
                    observacion = xmlDoc.getElementsByTagName('observacion')[i].innerHTML;
                    interno = xmlDoc.getElementsByTagName('interno')[i].innerHTML;
                    ref= xmlDoc.getElementsByTagName('expediente')[i].getAttribute('ref');

                    if(interno == 'yes') {
                        internoChecked = true;
                    }
                    
                    document.getElementById('numeroExpediente').value = numeroexpediente;
                    document.getElementById('añoExpediente').value = anio;
                    document.getElementById('motivo').value = motivo;
                    document.getElementById('cantidadHojas').value = canthojas;
                    document.getElementById('codigoSector').value = codsector;
                    document.getElementById('nombreSector').value = sector;
                    document.getElementById('codigoEstado').value = codestado;
                    document.getElementById('nombreEstado').value = estado;
                    document.getElementById('tipoDocumento').value = tipdoc;
                    document.getElementById('numeroDocumento').value = nrodoc;
                    document.getElementById('nombreIndividuo').value = individuo;
                    document.getElementById('observaciones').value = observacion;
                    document.getElementById('interno').checked = internoChecked;
                    
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

// update form 
if(document.getElementById('update')) {
    document.getElementById('update').addEventListener('click', (e) => {   
    e.preventDefault();
    const numeroExpediente = document.getElementById('numeroExpediente').value;
    const añoExpediente = document.getElementById('añoExpediente').value;
    const motivo = document.getElementById('motivo').value;
    const cantidadHojas = document.getElementById('cantidadHojas').value;
    const observaciones = document.getElementById('observaciones').value;
    const interno = document.getElementById('interno').checked;
    // Validaciones
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
    if(motivo.length == 0) {
        document.getElementById('requiredMotivo').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
        return false;
    } 
    else {
        document.getElementById('requiredMotivo').innerHTML = `<p class="text-danger"><small></smal></p>`  
    } 
    if(cantidadHojas.length == 0 || parseInt(cantidadHojas) == 0) {
        document.getElementById('requiredCantidadHojas').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
        return false;
    } 
    else {
        document.getElementById('requiredCantidadHojas').innerHTML = `<p class="text-danger"><small></smal></p>`  
    } 

    var params = `numeroExpediente=${numeroExpediente}
                  &anioExpediente=${añoExpediente}
                  &motivo=${motivo}
                  &cantidadHojas=${cantidadHojas}
                  &observaciones=${observaciones}
                  &interno=${interno}
                 `; 
    let obj = new XMLHttpRequest();
    obj.open('POST', `${baseUrl}/MesaEntrada/ExpedienteUpdateServices`, true);
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
});
};

// create form 
if(document.getElementById('create')) {  
    document.getElementById('create').addEventListener('click', (e) => { 
    e.preventDefault();
    const numeroExpediente = document.getElementById('numeroExpediente'). value;
    const añoExpediente = document.getElementById('añoExpediente').value;
    const motivo = document.getElementById('motivo').value; 
    const cantidadHojas = document.getElementById('cantidadHojas').value; 
    const codigoSector = document.getElementById('codigoSector').value;
    const codigoEstado = document.getElementById('codigoEstado').value;
    const observaciones = document.getElementById('observaciones').value;
    const tipoDocumento = document.getElementById('tipoDocumento').value; 
    const numeroDocumento = document.getElementById('numeroDocumento').value;
    const interno = document.getElementById('interno').checked;
    // Validaciones
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
    if(motivo.length == 0) {
        document.getElementById('requiredMotivo').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
        return false;
    } 
    else {
        document.getElementById('requiredMotivo').innerHTML = `<p class="text-danger"><small></smal></p>`  
    } 
    if(cantidadHojas.length == 0 || parseInt(cantidadHojas) == 0) {
        document.getElementById('requiredCantidadHojas').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
        return false;
    } 
    else {
        document.getElementById('requiredCantidadHojas').innerHTML = `<p class="text-danger"><small></smal></p>`  
    } 
    if(tipoDocumento.length == 0 || parseInt(tipoDocumento) == 0) { 
        document.getElementById('requiredTipoDocumento').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
        return false;
    } 
    else {
        document.getElementById('requiredTipoDocumento').innerHTML = `<p class="text-danger"><small></smal></p>`
    }
    if(numeroDocumento.length == 0 || parseInt(numeroDocumento) == 0) {
        document.getElementById('requiredNumeroDocumento').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
        return false;
    } 
    else {
        document.getElementById('requiredNumeroDocumento').innerHTML = `<p class="text-danger"><small></smal></p>`  
    } 
    if(codigoSector.length == 0 || parseInt(codigoSector) == 0) {
        document.getElementById('requiredCodigoSector').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
        return false;
    } 
    else {
        document.getElementById('requiredCodigoSector').innerHTML = `<p class="text-danger"><small></smal></p>`  
    } 
    if(codigoEstado.length == 0 || parseInt(codigoEstado) == 0) {
        document.getElementById('requiredCodigoEstado').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
        return false;
    } 
    else {
        document.getElementById('requiredCodigoEstado').innerHTML = `<p class="text-danger"><small></smal></p>`  
    } 

    var params = `numeroExpediente=${numeroExpediente}
                &anioExpediente=${añoExpediente}
                &motivo=${motivo}
                &cantidadHojas=${cantidadHojas}
                &codigoSector=${codigoSector}
                &codigoEstado=${codigoEstado}
                &observaciones=${observaciones}
                &tipoDocumento=${tipoDocumento}
                &numeroDocumento=${numeroDocumento}
                &interno=${interno}
                `; console.log(params)
    let obj = new XMLHttpRequest();
    let counter = 0;
    obj.open('POST', `${baseUrl}/MesaEntrada/ExpedienteCreateServices`, true);
    obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
    obj.onreadystatechange = function () {
        if(obj.status==200 && obj.responseText != 'error') { console.log("en la respuestas: ", obj.responseText)
            counter += 1;
            let txtHtml = '';
            parser = new DOMParser();
            xmlDoc = parser.parseFromString(this.responseText,"text/xml");   
            
            

            
            
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


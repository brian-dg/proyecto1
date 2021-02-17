
// search all registers
const getIndividuos = () => {   
    // Loading 
    let templateLoading = ''; 
    templateLoading = `<div class="loading"><img src="/miciudad/assets/images/loader.gif" alt="loading" /><br/>Un momento, por favor...</div>`
    document.getElementById('loading').innerHTML = templateLoading;
    let obj = new XMLHttpRequest();
    obj.open('GET', `${baseUrl}/Individuos/IndividuosServices`, true);
    obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
    obj.onreadystatechange = function () { 
        templateLoading = '';
        if(obj.status==200 && obj.responseText != 'error') { 
            let txtHtml = '';
            parser = new DOMParser();
            xmlDoc = parser.parseFromString(this.responseText,"text/xml");   
            if(xmlDoc.getElementsByTagName('individuos').length > 0) { 
                for(i=0;i<xmlDoc.getElementsByTagName('individuos').length;i++){
                    tipdoc = xmlDoc.getElementsByTagName('tipdoc')[i].childNodes[0].nodeValue;
                    tipdocdesc = xmlDoc.getElementsByTagName('tipdocdesc')[i].innerHTML;
                    nrodoc = xmlDoc.getElementsByTagName('nrodoc')[i].innerHTML;
                    nombre = xmlDoc.getElementsByTagName('nombre')[i].innerHTML;
                    domicilio = xmlDoc.getElementsByTagName('domicilio')[i].innerHTML;
                    numero = xmlDoc.getElementsByTagName('numero')[i].innerHTML;
                    localidad = xmlDoc.getElementsByTagName('localidad')[i].innerHTML;
                    ref= xmlDoc.getElementsByTagName('individuos')[i].getAttribute('ref');             
                    // dev view
                    txtHtml += `<tr>
                            <td class="text-left">${tipdocdesc}</td>
                            <td class="text-left">${nrodoc}</td>
                            <td class="text-left">${nombre}</td> 
                            <td class="text-left">${domicilio} ${numero}</td>
                            <td class="text-left">${localidad}</td> 
                            <td class="text-center"> 
                            <a href="./IndividuoEdit.html?tipdoc=${tipdoc}&nrodoc=${nrodoc}">
                                <button type="button"  class="btn btn-success btn-sm">Editar</button>
                            </a>
                            </td>
                            <td class="text-center">
                                <button type="button" class="btn btn-danger btn-sm" onclick="IndividuoDelete(${tipdoc}, ${nrodoc})">Eliminar</button>
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

// delete register
const IndividuoDelete = (tipdoc, nrodoc) => {  
    let params = '';
    let response = confirm('Seguro que quiere eliminar el registro?');
    if(response == true ){
        params = `tipoDocumento=${tipdoc} 
                  &numeroDocumento=${nrodoc}`;
        let obj = new XMLHttpRequest();
        obj.open('POST', `${baseUrl}/Individuos/IndividuoDeleteServices`, true);
        obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
        obj.onreadystatechange = function () {
            if(obj.status==200 && obj.responseText != 'error') {
                window.location="individuos";
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

// serch people in just in time 
const getIndividuosSearch = (e) => {  
    let palabra = document.getElementById('palabra').value; 
    if(palabra.length > 0) {
        var params = `palabra=${palabra}`;
        let obj = new XMLHttpRequest();
        obj.open('POST', `${baseUrl}/Individuos/IndividuosServices`, true);
        obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
        obj.onreadystatechange = function () {
            if(obj.status==200 && obj.responseText != 'error') { console.log(obj.responseText)
                let txtHtml = '';
                parser = new DOMParser();
                xmlDoc = parser.parseFromString(this.responseText,"text/xml"); 
                if(xmlDoc.getElementsByTagName('individuos').length > 0) {
                    for(i=0;i<xmlDoc.getElementsByTagName('individuos').length;i++){ 
                        tipdoc = xmlDoc.getElementsByTagName('tipdoc')[i].childNodes[0].nodeValue;
                        tipdocdesc = xmlDoc.getElementsByTagName('tipdocdesc')[i].childNodes[0].nodeValue;
                        nrodoc = xmlDoc.getElementsByTagName('nrodoc')[i].childNodes[0].nodeValue;
                        nombre = xmlDoc.getElementsByTagName('nombre')[i].innerHTML;
                        domicilio = xmlDoc.getElementsByTagName('domicilio')[i].innerHTML;
                        numero = xmlDoc.getElementsByTagName('numero')[i].innerHTML;
                        localidad = xmlDoc.getElementsByTagName('localidad')[i].innerHTML;
                        ref= xmlDoc.getElementsByTagName('individuos')[i].getAttribute('ref'); 
                        // dev view 
                        txtHtml += `<tr>
                                <td class="text-left">${tipdocdesc}</td>
                                <td class="text-left">${nrodoc}</td>
                                <td class="text-left">${nombre}</td> 
                                <td class="text-left">${domicilio} ${numero}</td>
                                <td class="text-left">${localidad}</td> 
                                <td class="text-center"> 
                                <a href="./IndividuoEdit.html?tipdoc=${tipdoc}&nrodoc=${nrodoc}">
                                    <button type="button"  class="btn btn-success btn-sm">Editar</button>
                                </a>
                                </td>
                                <td class="text-center">
                                    <button type="button" class="btn btn-danger btn-sm" onclick="IndividuoDelete(${tipdoc}, ${nrodoc})">Eliminar</button>
                                </td>
                                </tr>`
                    } 
                    document.getElementById('table-result').innerHTML = txtHtml;
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
    } 
    else { 
        getIndividuos() 
    };
};

// serch people in just in time 
const getIndividuosDocumento = () => {  
    let tipoDocumento = document.getElementById('tipoDocumento').value; 
    let numeroDocumento = document.getElementById('numeroDocumento').value;
    if(numeroDocumento.length > 2 && tipoDocumento.length > 0) {
        var params = `tipoDocumento=${tipoDocumento}
                    &numeroDocumento= ${numeroDocumento}`;
        let obj = new XMLHttpRequest();
        obj.open('POST', `${baseUrl}/Individuos/IndividuoDocumentoServices`, true);
        obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
        obj.onreadystatechange = function () {
            if(obj.status==200 && obj.responseText != 'error') {  console.log(obj.responseText)
                let txtHtml = '';
                parser = new DOMParser();
                xmlDoc = parser.parseFromString(this.responseText,"text/xml"); 
                if(xmlDoc.getElementsByTagName('individuos').length > 0) { console.log(xmlDoc)
                    for(i=0;i<xmlDoc.getElementsByTagName('individuos').length;i++){ 
                        tipdoc = xmlDoc.getElementsByTagName('tipdoc')[i].childNodes[0].nodeValue;
                        tipdocdesc = xmlDoc.getElementsByTagName('tipdocdesc')[i].childNodes[0].nodeValue;
                        nrodoc = xmlDoc.getElementsByTagName('nrodoc')[i].childNodes[0].nodeValue;
                        nombre = xmlDoc.getElementsByTagName('nombre')[i].innerHTML;
                        domicilio = xmlDoc.getElementsByTagName('domicilio')[i].innerHTML;
                        numero = xmlDoc.getElementsByTagName('numero')[i].innerHTML;
                        localidad = xmlDoc.getElementsByTagName('localidad')[i].innerHTML;
                        ref= xmlDoc.getElementsByTagName('individuos')[i].getAttribute('ref'); 
                        // dev view 
                        txtHtml += `<tr>
                                <td class="text-left">${tipdocdesc}</td>
                                <td class="text-left">${nrodoc}</td>
                                <td class="text-left">${nombre}</td> 
                                <td class="text-left">${domicilio} ${numero}</td>
                                <td class="text-left">${localidad}</td> 
                                <td class="text-center"> 
                                <a href="./IndividuoEdit.html?tipdoc=${tipdoc}&nrodoc=${nrodoc}">
                                    <button type="button"  class="btn btn-success btn-sm">Editar</button>
                                </a>
                                </td>
                                <td class="text-center">
                                    <button type="button" class="btn btn-danger btn-sm" onclick="IndividuoDelete(${tipdoc}, ${nrodoc})">Eliminar</button>
                                </td>
                                </tr>`
                        
                    } 
                } 
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
    }
    else {
        getIndividuos();
    }
};

// search one person
const getIndividuo = () => { 
    let params = '';
    if(location.search.length > 0) {
        params = location.search;
    } 

    if(document.getElementById('tipoDocumento').value.length > 0 && document.getElementById('numeroDocumento').value.length > 0) {
        params= `?tipdoc=${document.getElementById('tipoDocumento').value}
                &nrodoc=${document.getElementById('numeroDocumento').value}`;
    } 

    let obj = new XMLHttpRequest();
    obj.open('GET', `${baseUrl}/Individuos/IndividuoServices${params}`, true);
    obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
    obj.onreadystatechange = function () {
        if(obj.status==200 && obj.responseText != 'error') { 
            let txtHtml = '';
            parser = new DOMParser();
            xmlDoc = parser.parseFromString(this.responseText,"text/xml"); 
            if(xmlDoc.getElementsByTagName('individuos').length > 0) {
                for(i=0;i<xmlDoc.getElementsByTagName('individuos').length;i++){
                    tipdoc = xmlDoc.getElementsByTagName('tipdoc')[i].childNodes[0].nodeValue;
                    nrodoc = xmlDoc.getElementsByTagName('nrodoc')[i].childNodes[0].nodeValue;
                    cuit = xmlDoc.getElementsByTagName('cuit')[i].innerHTML;
                    nombre = xmlDoc.getElementsByTagName('nombre')[i].innerHTML;
                    fecnac = xmlDoc.getElementsByTagName('fecnac')[i].innerHTML;
                    codcalle = xmlDoc.getElementsByTagName('codcalle')[i].innerHTML;
                    callexml = xmlDoc.getElementsByTagName('callexml')[i].innerHTML;
                    domicilio = xmlDoc.getElementsByTagName('domicilio')[i].innerHTML;
                    numero = xmlDoc.getElementsByTagName('numero')[i].innerHTML;
                    piso = xmlDoc.getElementsByTagName('piso')[i].innerHTML;
                    dpto = xmlDoc.getElementsByTagName('dpto')[i].innerHTML;
                    codpos = xmlDoc.getElementsByTagName('codpos')[i].innerHTML;
                    localidad = xmlDoc.getElementsByTagName('localidad')[i].innerHTML;
                    codpais = xmlDoc.getElementsByTagName('codpais')[i].innerHTML;
                    nacion = xmlDoc.getElementsByTagName('nacion')[i].innerHTML;
                    mail = xmlDoc.getElementsByTagName('mail')[i].innerHTML;
                    telefono = xmlDoc.getElementsByTagName('telefono')[i].innerHTML;
                    celular = xmlDoc.getElementsByTagName('celular')[i].innerHTML;
                    estcivil = xmlDoc.getElementsByTagName('estcivil')[i].innerHTML;
                    estadocivil = xmlDoc.getElementsByTagName('estadocivil')[i].innerHTML;
                    ref= xmlDoc.getElementsByTagName('individuos')[i].getAttribute('ref');

                    document.getElementById('tipoDocumento').value = tipdoc;
                    document.getElementById('numeroDocumento').value = nrodoc;
                    document.getElementById('nombreIndividuo').value = nombre;
                    document.getElementById('fechaNacimiento').value = fecnac;
                    document.getElementById('calle').value = domicilio;
                    document.getElementById('numeroCalle').value = numero;
                    document.getElementById('pisoCalle').value = piso;
                    document.getElementById('departamento').value = dpto;
                    document.getElementById('codigoPostal').value = codpos;
                    document.getElementById('localidad').value = localidad;
                    document.getElementById('email').value = mail;
                    document.getElementById('fijo').value = telefono;
                    document.getElementById('celu').value = celular;
                    document.getElementById('codigoPais').value = codpais;
                    document.getElementById('nacionalidad').value = nacion;
                    document.getElementById('codigoCivil').value = estcivil;
                    document.getElementById('nombreCivil').value = estadocivil;
                    document.getElementById('codigoCalle').value = codcalle;
                    document.getElementById('nombreCalle').value = callexml;
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

// search one person
const getNameIndividuo = () => { 
    let params = '';
    if(document.getElementById('tipoDocumento').value.length > 0 && document.getElementById('numeroDocumento').value.length > 0) {
        params= `?tipdoc=${document.getElementById('tipoDocumento').value}
                &nrodoc=${document.getElementById('numeroDocumento').value}`;
    } 

    let obj = new XMLHttpRequest();
    obj.open('GET', `${baseUrl}/Individuos/IndividuoNameServices${params}`, true);
    obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
    obj.onreadystatechange = function () {
        if(obj.status==200 && obj.responseText != 'error') { 
            let txtHtml = '';
            parser = new DOMParser();
            xmlDoc = parser.parseFromString(this.responseText,"text/xml"); 
            if(xmlDoc.getElementsByTagName('individuos').length > 0) {
                for(i=0;i<xmlDoc.getElementsByTagName('individuos').length;i++){
                    tipdoc = xmlDoc.getElementsByTagName('tipdoc')[i].childNodes[0].nodeValue;
                    nrodoc = xmlDoc.getElementsByTagName('nrodoc')[i].childNodes[0].nodeValue;
                    nombre = xmlDoc.getElementsByTagName('nombre')[i].innerHTML;
                    ref= xmlDoc.getElementsByTagName('individuos')[i].getAttribute('ref');

                    document.getElementById('tipoDocumento').value = tipdoc;
                    document.getElementById('numeroDocumento').value = nrodoc;
                    document.getElementById('nombreIndividuo').value = nombre;
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
    const tipoDocumento = document.getElementById('tipoDocumento').value; 
    const numeroDocumento = document.getElementById('numeroDocumento').value;
    const nombreIndividuo = document.getElementById('nombreIndividuo').value;
    const codigoCalle = document.getElementById('codigoCalle').value;
    const calle = document.getElementById('calle').value;
    const numeroCalle = document.getElementById('numeroCalle').value;
    const pisoCalle = document.getElementById('pisoCalle').value;
    const departamento = document.getElementById('departamento').value;
    const codigoPostal = document.getElementById('codigoPostal').value;
    const codigoPais = document.getElementById('codigoPais').value;
    const fechaNacimiento = document.getElementById('fechaNacimiento').value;
    const codigoCivil = document.getElementById('codigoCivil').value;
    const email = document.getElementById('email').value;
    const celu = document.getElementById('celu').value;
    const fijo = document.getElementById('fijo').value;
    var params = `tipoDocumento=${tipoDocumento}
                &numeroDocumento=${numeroDocumento}
                &nombreIndividuo=${nombreIndividuo}
                &codigoCalle=${codigoCalle}
                &calle=${calle}
                &numeroCalle=${numeroCalle}
                &pisoCalle=${pisoCalle}
                &departamento=${departamento}
                &codigoPostal=${codigoPostal}
                &codigoPais=${codigoPais}
                &fechaNacimiento=${fechaNacimiento}
                &codigoCivil=${codigoCivil}
                &email=${email}
                &celu=${celu}
                &fijo=${fijo}
                `;
    let obj = new XMLHttpRequest();
    obj.open('POST', `${baseUrl}/Individuos/IndividuoUpdateServices`, true);
    obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
    obj.onreadystatechange = function () {
        if(obj.status==200 && obj.responseText != 'error') {
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
            if(nombreIndividuo.length == 0) {
                document.getElementById('requiredNombreIndividuo').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
                return false;
            } 
            else {
                document.getElementById('requiredNombreIndividuo').innerHTML = `<p class="text-danger"><small></smal></p>`  
            } 
            if(calle.length == 0) {
                document.getElementById('requiredCalle').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
                return false;
            } 
            else {
                document.getElementById('requiredCalle').innerHTML = `<p class="text-danger"><small></smal></p>`  
            } 
            if(numeroCalle.length == 0 || parseInt(numeroCalle) == 0) {
                document.getElementById('requiredNumeroCalle').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
                return false;
            } 
            else {
                document.getElementById('requiredNumeroCalle').innerHTML = `<p class="text-danger"><small></smal></p>`  
            } 
            if(codigoPostal.length == 0 || parseInt(codigoPostal) == 0) {
                document.getElementById('requiredCodigoPostal').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
                return false;
            } 
            else {
                document.getElementById('requiredCodigoPostal').innerHTML = `<p class="text-danger"><small></smal></p>`  
            } 
            window.location="individuos";
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
    const tipoDocumento = document.getElementById('tipoDocumento').value; 
    const numeroDocumento = document.getElementById('numeroDocumento').value;
    const nombreIndividuo = document.getElementById('nombreIndividuo').value;
    const codigoCalle = document.getElementById('codigoCalle').value;
    const calle = document.getElementById('calle').value;
    const numeroCalle = document.getElementById('numeroCalle').value;
    const pisoCalle = document.getElementById('pisoCalle').value;
    const departamento = document.getElementById('departamento').value;
    const codigoPostal = document.getElementById('codigoPostal').value;
    const codigoPais = document.getElementById('codigoPais').value;
    const fechaNacimiento = document.getElementById('fechaNacimiento').value;
    const codigoCivil = document.getElementById('codigoCivil').value;
    const email = document.getElementById('email').value;
    const celu = document.getElementById('celu').value;
    const fijo = document.getElementById('fijo').value;
    var params = `tipoDocumento=${tipoDocumento}
                &numeroDocumento=${numeroDocumento}
                &nombreIndividuo=${nombreIndividuo}
                &codigoCalle=${codigoCalle}
                &calle=${calle}
                &numeroCalle=${numeroCalle}
                &pisoCalle=${pisoCalle}
                &departamento=${departamento}
                &codigoPostal=${codigoPostal}
                &codigoPais=${codigoPais}
                &fechaNacimiento=${fechaNacimiento}
                &codigoCivil=${codigoCivil}
                &email=${email}
                &celu=${celu}
                &fijo=${fijo}
                `;
    let obj = new XMLHttpRequest();
    let counter = 0;
    obj.open('POST', `${baseUrl}/Individuos/IndividuoCreateServices`, true);
    obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
    obj.onreadystatechange = function () {
        if(obj.status==200 && obj.responseText != 'error') {
            counter += 1;
            let txtHtml = '';
            parser = new DOMParser();
            xmlDoc = parser.parseFromString(this.responseText,"text/xml");   
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
            if(nombreIndividuo.length == 0) {
                document.getElementById('requiredNombreIndividuo').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
                return false;
            } 
            else {
                document.getElementById('requiredNombreIndividuo').innerHTML = `<p class="text-danger"><small></smal></p>`  
            } 
            if(calle.length == 0) {
                document.getElementById('requiredCalle').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
                return false;
            } 
            else {
                document.getElementById('requiredCalle').innerHTML = `<p class="text-danger"><small></smal></p>`  
            } 
            if(numeroCalle.length == 0 || parseInt(numeroCalle) == 0) {
                document.getElementById('requiredNumeroCalle').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
                return false;
            } 
            else {
                document.getElementById('requiredNumeroCalle').innerHTML = `<p class="text-danger"><small></smal></p>`  
            } 
            if(codigoPostal.length == 0 || parseInt(codigoPostal) == 0) {
                document.getElementById('requiredCodigoPostal').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
                return false;
            } 
            else {
                document.getElementById('requiredCodigoPostal').innerHTML = `<p class="text-danger"><small></smal></p>`  
            } 
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
                    window.location="individuos";
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

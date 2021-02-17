// search all registers
const getGrupos = () => {   
    let obj = new XMLHttpRequest();
    obj.open('GET', `${baseUrl}/Administracion/GruposServices`, true);
    obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
    obj.onreadystatechange = function () { 
        if(obj.status==200 && obj.responseText != 'error') { 
            let txtHtml = '';
            let templateSelect = `<tr><option></option></tr>`;
            parser = new DOMParser();
            xmlDoc = parser.parseFromString(this.responseText,"text/xml");   
            if(xmlDoc.getElementsByTagName('grupos').length > 0) { 
                for(i=0;i<xmlDoc.getElementsByTagName('grupos').length;i++){ 
                    codigo = xmlDoc.getElementsByTagName('codigo')[i].childNodes[0].nodeValue;
                    nombre = xmlDoc.getElementsByTagName('nombre')[i].innerHTML;
                    ref= xmlDoc.getElementsByTagName('grupos')[i].getAttribute('ref');             
                    // dev view
                    if(document.getElementById('table-result')){
                        txtHtml += `<tr>
                                    <td class="text-left">${codigo}</td>
                                    <td class="text-left">${nombre}</td> 
                                    <td class="text-center"> 
                                    <a href="./GrupoEdit.html?codigoGrupo=${id}">
                                        <button type="button"  class="btn btn-success btn-sm">Editar</button>
                                    </a>
                                    </td>
                                    </tr>`
                    };
                    if(document.getElementById('codigoGrupo')){
                        templateSelect += `<tr><option value="${codigo}">${nombre}</option></tr>`;
                    };
                } 
            }  
            if(document.getElementById('table-result')){
                document.getElementById('table-result').innerHTML = txtHtml;
            }
            if(document.getElementById('codigoGrupo')){
                document.getElementById('codigoGrupo').innerHTML = templateSelect;
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

/*
// serch people in just in time 
const getUsuariosSearch = (e) => {  
    let palabra = document.getElementById('palabra').value; 
    if(palabra.length > 0) {
        var params = `palabra=${palabra}`;
        let obj = new XMLHttpRequest();
        obj.open('POST', `${baseUrl}/Administracion/UsuariosServices`, true);
        obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
        obj.onreadystatechange = function () {
            if(obj.status==200 && obj.responseText != 'error') { 
                let txtHtml = '';
                parser = new DOMParser();
                xmlDoc = parser.parseFromString(this.responseText,"text/xml");  
                if(xmlDoc.getElementsByTagName('usuarios').length > 0) {
                    for(i=0;i<xmlDoc.getElementsByTagName('usuarios').length;i++){ 
                        id = xmlDoc.getElementsByTagName('id')[i].childNodes[0].nodeValue;
                        nombre = xmlDoc.getElementsByTagName('nombre')[i].innerHTML;
                        grupo = xmlDoc.getElementsByTagName('grupo')[i].innerHTML;
                        ref= xmlDoc.getElementsByTagName('usuarios')[i].getAttribute('ref');             
                        // dev view
                        txtHtml += `<tr>
                                <td class="text-left">${id}</td>
                                <td class="text-left">${nombre}</td> 
                                <td class="text-left">${grupo}</td> 
                                <td class="text-center"> 
                                <a href="./UsuarioEdit.html?idUsuario=${id}">
                                    <button type="button"  class="btn btn-success btn-sm">Editar</button>
                                </a>
                               
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
        getUsuarios();
    };
};

// search one person
const getUsuario = () => { 
    let params = '';
    if(location.search.length > 0) {
        params = location.search;
    } 

    if(document.getElementById('codigoUsuario').value.length > 0) {
        params= `?idUsuario=${document.getElementById('codigoUsuario').value}`;
    } console.log(params)

    let obj = new XMLHttpRequest();
    obj.open('GET', `${baseUrl}/Administracion/UsuarioServices${params}`, true);
    obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
    obj.onreadystatechange = function () {
        if(obj.status==200 && obj.responseText != 'error') { 
            let txtHtml = '';
            parser = new DOMParser(); 
            xmlDoc = parser.parseFromString(this.responseText,"text/xml");  
            if(xmlDoc.getElementsByTagName('usuarios').length > 0) { 
                for(i=0;i<xmlDoc.getElementsByTagName('usuarios').length;i++){  
                    id = xmlDoc.getElementsByTagName('id')[i].childNodes[0].nodeValue;
                    nombre = xmlDoc.getElementsByTagName('nombre')[i].innerHTML;
                    pass = xmlDoc.getElementsByTagName('pass')[i].innerHTML;
                    grupo = xmlDoc.getElementsByTagName('grupo')[i].innerHTML;
                    nombregrupo = xmlDoc.getElementsByTagName('nombregrupo')[i].innerHTML;
                    ref= xmlDoc.getElementsByTagName('usuarios')[i].getAttribute('ref');
                    
                    document.getElementById('codigoUsuario').value = id;
                    document.getElementById('nombreUsuario').value = nombre;
                    document.getElementById('password').value = pass;
                    
                    txtHtml += `<tr>
                    <option value="${grupo}">${nombregrupo}</option>
                    <option></option>
                    </tr>`;
                    // lleno el select con los grupos 
                    if(xmlDoc.getElementsByTagName('grupos').length > 0) { 
                        for(i=0;i<xmlDoc.getElementsByTagName('grupos').length;i++){
                            codigo = xmlDoc.getElementsByTagName('codigo')[i].childNodes[0].nodeValue;
                            descripcion = xmlDoc.getElementsByTagName('descripcion')[i].innerHTML;
                            ref= xmlDoc.getElementsByTagName('grupos')[i].getAttribute('ref');
                            txtHtml += `<tr>
                            <option value="${codigo}">${descripcion}</option>
                            </tr>`;
                        }
                    }
                    
                } 
            }
            document.getElementById('codigoGrupo').innerHTML = txtHtml;
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
    const codigoSector = document.getElementById('codigoSector').value; 
    const nombreSector = document.getElementById('nombreSector').value;
    var params = `codigoSector=${codigoSector}
                &nombreSector=${nombreSector}`;
    if(codigoSector.length == 0 || parseInt(codigoSector) == 0) { 
        document.getElementById('requiredCodigoSector').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
        return false;
    } 
    else {
        document.getElementById('requiredCodigoSector').innerHTML = `<p class="text-danger"><small></smal></p>`
    }
    if(nombreSector.length == 0) {
        document.getElementById('requiredNombreSector').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
        return false;
    } 
    else {
        document.getElementById('requiredNombreSector').innerHTML = `<p class="text-danger"><small></smal></p>`  
    };
    let obj = new XMLHttpRequest();
    obj.open('POST', `${baseUrl}/Sectores/SectorUpdateServices`, true);
    obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
    obj.onreadystatechange = function () {
        if(obj.status==200 && obj.responseText != 'error') {
             window.location="sectores";
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
    const codigoSector = document.getElementById('codigoSector').value; 
    const nombreSector = document.getElementById('nombreSector').value;
    var params = `codigoSector=${codigoSector}
                &nombreSector=${nombreSector}`;
    if(codigoSector.length == 0 || parseInt(codigoSector) == 0) { 
        document.getElementById('requiredCodigoSector').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
        return false;
    } 
    else {
        document.getElementById('requiredCodigoSector').innerHTML = `<p class="text-danger"><small></smal></p>`
    }
    if(nombreSector.length == 0) {
        document.getElementById('requiredNombreSector').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
        return false;
    } 
    else {
        document.getElementById('requiredNombreSector').innerHTML = `<p class="text-danger"><small></smal></p>`  
    };            
    let obj = new XMLHttpRequest();
    let counter = 0;
    obj.open('POST', `${baseUrl}/Sectores/SectorCreateServices`, true);
    obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
    obj.onreadystatechange = function () {
        if(obj.status==200 && obj.responseText != 'error') {
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
                    window.location="sectores";
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
*/

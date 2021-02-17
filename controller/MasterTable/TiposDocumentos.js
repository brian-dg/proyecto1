// search all registers
const getTiposDocumentos = () => { 
    let obj = new XMLHttpRequest();
    obj.open('GET', `${baseUrl}/TiposDocumentos/TiposDocumentosServices`, true);
    obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
    obj.onreadystatechange = function () {
        if(obj.status==200 && obj.responseText != 'error') {  
            let txtHtml = '';
            let templateSelect = '<option></option>';
            parser = new DOMParser();
            xmlDoc = parser.parseFromString(this.responseText,"text/xml");
            if(xmlDoc.getElementsByTagName('documentos').length > 0) {            
                for(i=0;i<xmlDoc.getElementsByTagName('documentos').length;i++){
                    tipdoc = xmlDoc.getElementsByTagName('tipdoc')[i].childNodes[0].nodeValue;
                    descripcion = xmlDoc.getElementsByTagName('descripcion')[i].childNodes[0].nodeValue;
                    usalta = xmlDoc.getElementsByTagName('usalta')[i].innerHTML;
                    fechaalta = xmlDoc.getElementsByTagName('fechaalta')[i].innerHTML;
                    horaalta = xmlDoc.getElementsByTagName('horaalta')[i].innerHTML;
                    ref= xmlDoc.getElementsByTagName('documentos')[i].getAttribute('ref');
                    // dev view  
                    txtHtml += `<tr> 
                                <td class="text-left">${tipdoc}</td>
                                <td class="text-left">${descripcion}</td>
                                <td class="text-left">${usalta}</td>
                                <td class="text-left">${fechaalta}</td>
                                <td class="text-left">${horaalta}</td>
                                <td class="text-center"> 
                                <a href="./TipoDocumentoEdit.html?tipdoc=${tipdoc}">
                                    <button type="button"  class="btn btn-success btn-sm">Editar</button>
                                </a>
                                </td>
                                <td class="text-center">
                                    <button type="button" class="btn btn-danger btn-sm" onclick="TipoDocumentoDelete(${tipdoc})">Eliminar</button>
                                </td>
                                </tr>`; 
                    templateSelect += `<option value=${tipdoc}>${descripcion}</option>`;
                } 
                if(document.getElementById('table-result')){
                    document.getElementById('table-result').innerHTML = txtHtml;
                };
                if(document.getElementById('tipoDocumento')){
                    document.getElementById('tipoDocumento').innerHTML = templateSelect;
                };
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

// delete register
const TipoDocumentoDelete = (tipdoc) => {  
    let params = '';
    let response = confirm('Seguro que quiere eliminar el registro?');
    if(response == true ){
        params = `tipoDocumento=${tipdoc}`;
        let obj = new XMLHttpRequest();
        obj.open('POST', `${baseUrl}/TiposDocumentos/TipoDocumentoDeleteServices`, true);
        obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
        obj.onreadystatechange = function () { 
            if(obj.status==200 && obj.responseText != 'error') {
                window.location="TiposDocumentos";
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

// search one register
const getTipoDocumento = () => { 
    let params = '';
    if(location.search.length > 0) {
        params = location.search;
    } 
    if(document.getElementById('tipoDocumento').value.length > 0) {
        params= `?tipdoc=${document.getElementById('tipoDocumento').value}`;
    }
    let obj = new XMLHttpRequest();
    obj.open('GET', `${baseUrl}/TiposDocumentos/TipoDocumentoServices${params}`, true);
    obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
    obj.onreadystatechange = function () {
        if(obj.status==200 && obj.responseText != 'error') {     
            parser = new DOMParser();
            xmlDoc = parser.parseFromString(this.responseText,"text/xml");
            if(xmlDoc.getElementsByTagName('documento').length > 0) {
                for(i=0;i<xmlDoc.getElementsByTagName('documento').length;i++){
                    tipdoc = xmlDoc.getElementsByTagName('tipdoc')[i].childNodes[0].nodeValue;
                    descripcion = xmlDoc.getElementsByTagName('descripcion')[i].innerHTML;
                    ref= xmlDoc.getElementsByTagName('documento')[i].getAttribute('ref');
                }
                document.getElementById('tipoDocumento').value = tipdoc;
                document.getElementById('descripcion').value = descripcion; 
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
if(document.getElementById('update')){
    document.getElementById('update').addEventListener('click', (e) => { 
    e.preventDefault();
    const tipoDocumento = document.getElementById('tipoDocumento').value; 
    const descripcion = document.getElementById('descripcion').value;
    var params = `tipoDocumento=${tipoDocumento}
                &descripcion=${descripcion}
                `;  
    let obj = new XMLHttpRequest();
    obj.open('POST', `${baseUrl}/TiposDocumentos/TipoDocumentoUpdateServices`, true);
    obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
    obj.onreadystatechange = function () { console.log(obj.responseText)
        if(obj.status==200 && obj.responseText != 'error') { 
            if(tipoDocumento.length == 0 || parseInt(tipoDocumento) == 0) { 
                document.getElementById('requiredTipoDocumento').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
                return false;
            } 
            else {
                document.getElementById('requiredTipoDocumento').innerHTML = `<p class="text-danger"><small></smal></p>`
            }
            if(descripcion.length == 0) {
                document.getElementById('requiredDescripcion').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
                return false;
            } 
            else {
                document.getElementById('requiredDescripcion').innerHTML = `<p class="text-danger"><small></smal></p>`  
            } 
            
            window.location="TiposDocumentos";
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
    const descripcion = document.getElementById('descripcion').value; 
    var params = `tipoDocumento=${tipoDocumento}
                &descripcion=${descripcion}
                `;  
    let obj = new XMLHttpRequest();
    let counter = 0;
    obj.open('POST', `${baseUrl}/TiposDocumentos/TipoDocumentoCreateServices`, true);
    obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
    obj.onreadystatechange = function () { 
        if(obj.status==200 && obj.responseText != 'error') {  
            let txtHtml = '';
            counter += 1;
            parser = new DOMParser();
            xmlDoc = parser.parseFromString(this.responseText,"text/xml");  
                if(tipoDocumento.length == 0 || parseInt(tipoDocumento) == 0) { 
                    document.getElementById('requiredTipoDocumento').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
                    return false;
                } 
                else {
                    document.getElementById('requiredTipoDocumento').innerHTML = `<p class="text-danger"><small></smal></p>`
                }
                if(descripcion.length == 0) {
                    document.getElementById('requiredDescripcion').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
                    return false;
                } 
                else {
                    document.getElementById('requiredDescripcion').innerHTML = `<p class="text-danger"><small></smal></p>`  
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
                        window.location="TiposDocumentos";
                    }
                }
                return xmlDoc;
        }
        else { 
            console.log('error de conexion-> estatus: ' + obj.status + ', ready estatus: ' + obj.readyState);
            alertify.error('Ocurrió un Error');
        }
    }
    obj.send(params);
    return false;
}); 
};
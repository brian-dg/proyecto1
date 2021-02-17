// search all registers
const getCodigosCalle = () => {  
    // Loading 
    let templateLoading = ''; 
    templateLoading = `<div class="loading"><img src="/miciudad/assets/images/loader.gif" alt="loading" /><br/>Un momento, por favor...</div>`
    document.getElementById('loading').innerHTML = templateLoading;
    let obj = new XMLHttpRequest();
    obj.open('GET', `${baseUrl}/CodigosCalles/CodigosCallesServices`, true);
    obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
    obj.onreadystatechange = function () {
        templateLoading = '';
        if(obj.status==200 && obj.responseText != 'error') {
            let txtHtml = '';
            parser = new DOMParser();
            xmlDoc = parser.parseFromString(this.responseText,"text/xml");  
            for(i=0;i<xmlDoc.getElementsByTagName('calle').length;i++){
                codcalle = xmlDoc.getElementsByTagName('codcalle')[i].childNodes[0].nodeValue;
                nombre = xmlDoc.getElementsByTagName('nombre')[i].innerHTML;
                usalta = xmlDoc.getElementsByTagName('usalta')[i].innerHTML;
                fechaalta = xmlDoc.getElementsByTagName('fechaalta')[i].innerHTML;
                horaalta = xmlDoc.getElementsByTagName('horaalta')[i].innerHTML;
                ref= xmlDoc.getElementsByTagName('calle')[i].getAttribute('ref');
                // dev view
                txtHtml += `<tr>
                            <td class="text-left">${codcalle}</td>
                            <td class="text-left">${nombre}</td>
                            <td class="text-left">${usalta}</td>
                            <td class="text-left">${fechaalta}</td>
                            <td class="text-left">${horaalta}</td>
                            <td class="text-center"> 
                            <a href="./CalleEdit.html?codcalle=${codcalle}">
                                <button type="button"  class="btn btn-success btn-sm">Editar</button>
                            </a>
                            </td>
                            <td class="text-center">
                                <button type="button" class="btn btn-danger btn-sm" onclick="CodigoCalleDelete(${codcalle})">Eliminar</button>
                            </td>
                            </tr>`
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
const CodigoCalleDelete = (codcalle) => {  
    let params = '';
    let response = confirm('Seguro que quiere eliminar el registro: ' + codcalle + '?');
    if(response == true ){
        params = `codcalle=${codcalle}`;
        let obj = new XMLHttpRequest();
        obj.open('POST', `${baseUrl}/CodigosCalles/CodigoCalleDeleteServices`, true);
        obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
        obj.onreadystatechange = function () {
            if(obj.status==200 && obj.responseText != 'error') {
                window.location="calles";
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


const getCodigoCalle = () => { 
    let params = '';
    if(location.search.length > 0) {
        params = location.search;
    } 
    if(document.getElementById('codigoCalle').value.length > 0) {
        params= `?codcalle=${document.getElementById('codigoCalle').value}`;
    } 
    let obj = new XMLHttpRequest();
    obj.open('GET', `${baseUrl}/MasterTable/CodigoCalleServices${params}`, true); 
    obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
    obj.onreadystatechange = function () {
        if(obj.status==200 && obj.responseText != 'error') {  
            let txtHtml = '';
            parser = new DOMParser();
            xmlDoc = parser.parseFromString(this.responseText,"text/xml"); console.log(obj.responseText)
            for(i=0;i<xmlDoc.getElementsByTagName('calle').length;i++){
                codcalle = xmlDoc.getElementsByTagName('codcalle')[i].childNodes[0].nodeValue;
                nombre = xmlDoc.getElementsByTagName('nombre')[i].innerHTML;
                ref= xmlDoc.getElementsByTagName('calle')[i].getAttribute('ref');
                document.getElementById('codigoCalle').value = codcalle;
                document.getElementById('nombreCalle').value = nombre;
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
    const codigoCalle = document.getElementById('codigoCalle').value; 
    const nombreCalle = document.getElementById('nombreCalle').value;
    var params = `codigoCalle=${codigoCalle}
                &nombreCalle=${nombreCalle}
                `; 
    let obj = new XMLHttpRequest();
    obj.open('POST', `${baseUrl}/CodigosCalles/CodigoCalleUpdateServices`, true);
    obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
    obj.onreadystatechange = function () { 
        if(obj.status==200 && obj.responseText != 'error') { 
            if(codigoCalle.length == 0 || parseInt(codigoCalle) == 0) { 
                document.getElementById('requiredCodigoCalle').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
                return false;
            } 
            else {
                document.getElementById('requiredCodigoCalle').innerHTML = `<p class="text-danger"><small></smal></p>`
            }
            if(nombreCalle.length == 0) { 
                document.getElementById('requiredNombreCalle').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
                return false;
            } 
            else {
                document.getElementById('requiredNombreCalle').innerHTML = `<p class="text-danger"><small></smal></p>`
            }
            window.location="calles";
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
    const codigoCalle = document.getElementById('codigoCalle').value; 
    const nombreCalle = document.getElementById('nombreCalle').value; 
    var params = `codigoCalle=${codigoCalle}
                &nombreCalle=${nombreCalle}
                `;  
    let obj = new XMLHttpRequest();
    let counter = 0;
    obj.open('POST', `${baseUrl}/CodigosCalles/CodigoCalleCreateServices`, true);
    obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
    obj.onreadystatechange = function () { 
        if(obj.status==200 && obj.responseText != 'error') {  
            let txtHtml = '';
            counter += 1;
            parser = new DOMParser();
            xmlDoc = parser.parseFromString(this.responseText,"text/xml");  
                if(codigoCalle.length == 0 || parseInt(codigoCalle) == 0) { 
                    document.getElementById('requiredCodigoCalle').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
                    return false;
                } 
                else {
                    document.getElementById('requiredCodigoCalle').innerHTML = `<p class="text-danger"><small></smal></p>`
                }
                if(nombreCalle.length == 0) {
                    document.getElementById('requiredNombreCalle').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
                    return false;
                } 
                else {
                    document.getElementById('requiredNombreCalle').innerHTML = `<p class="text-danger"><small></smal></p>`  
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
                        window.location="calles";
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
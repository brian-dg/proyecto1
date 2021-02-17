// search all registers
const getLocalidades = () => {  
    let obj = new XMLHttpRequest();
    obj.open('GET', `${baseUrl}/Localidades/LocalidadesServices`, true);
    obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
    obj.onreadystatechange = function () {
        if(obj.status==200 && obj.responseText != 'error') {
            let txtHtml = '';
            parser = new DOMParser();
            xmlDoc = parser.parseFromString(this.responseText,"text/xml");
            for(i=0;i<xmlDoc.getElementsByTagName('localidades').length;i++){
                codpos = xmlDoc.getElementsByTagName('codpos')[i].childNodes[0].nodeValue;
                nombre = xmlDoc.getElementsByTagName('nombre')[i].childNodes[0].nodeValue;
                ref= xmlDoc.getElementsByTagName('localidades')[i].getAttribute('ref');
                // dev view
                txtHtml += `<tr>
                            <td class="text-left">${codpos}</td>
                            <td class="text-left">${nombre}</td>
                            <td class="text-center"> 
                            <a href="./LocalidadEdit.html?codpos=${codpos}">
                                <button type="button"  class="btn btn-success btn-sm">Editar</button>
                            </a>
                            </td>
                            <td class="text-center">
                                <button type="button" class="btn btn-danger btn-sm" onclick="LocalidadDelete(${codpos})">Eliminar</button>
                            </td>
                            </tr>`
            } 
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
const LocalidadDelete = (codpos) => {  
    let params = '';
    let response = confirm('Seguro que quiere eliminar el registro?');
    if(response == true ){
        params = `codigoPostal=${codpos}`;
        let obj = new XMLHttpRequest();
        obj.open('POST', `${baseUrl}/Localidades/LocalidadDeleteServices`, true);
        obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
        obj.onreadystatechange = function () {
            if(obj.status==200 && obj.responseText != 'error') {
                window.location="localidades";
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
const getLocalidadesSearch = (e) => {  
    let palabra = document.getElementById('palabra').value; 
    if(palabra.length > 2) {
        var params = `palabra=${palabra}`;
        let obj = new XMLHttpRequest();
        obj.open('POST', `${baseUrl}/Localidades/LocalidadesServices`, true);
        obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
        obj.onreadystatechange = function () {
            if(obj.status==200 && obj.responseText != 'error') {
                let txtHtml = '';
                parser = new DOMParser();
                xmlDoc = parser.parseFromString(this.responseText,"text/xml");
                for(i=0;i<xmlDoc.getElementsByTagName('localidades').length;i++){
                    codpos = xmlDoc.getElementsByTagName('codpos')[i].childNodes[0].nodeValue;
                    nombre = xmlDoc.getElementsByTagName('nombre')[i].childNodes[0].nodeValue;
                    ref= xmlDoc.getElementsByTagName('localidades')[i].getAttribute('ref');
                    // dev view
                    txtHtml += `<tr>
                                <td class="text-left">${codpos}</td>
                                <td class="text-left">${nombre}</td>
                                <td class="text-center"> 
                                <a href="./LocalidadEdit.html?codpos=${codpos}">
                                    <button type="button"  class="btn btn-success btn-sm">Editar</button>
                                </a>
                                </td>
                                <td class="text-center">
                                    <button type="button" class="btn btn-danger btn-sm" onclick="LocalidadDelete(${codpos})">Eliminar</button>
                                </td>
                                </tr>`
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
        getLocalidades() 
    };
};

const getLocalidad = () => {  
    let params = '';
    if(location.search.length > 0) {
        params = location.search;
    } 
    if(document.getElementById('codigoPostal').value.length > 0) {
        params= `?codpos=${document.getElementById('codigoPostal').value}`;
    }
    let obj = new XMLHttpRequest();
    obj.open('GET', `${baseUrl}/MasterTable/LocalidadServices${params}`, true);
    obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
    obj.onreadystatechange = function () {
        if(obj.status==200 && obj.responseText != 'error') {
            let txtHtml = '';
            parser = new DOMParser();
            xmlDoc = parser.parseFromString(this.responseText,"text/xml");
            for(i=0;i<xmlDoc.getElementsByTagName('localidad').length;i++){
                codpos = xmlDoc.getElementsByTagName('codpos')[i].childNodes[0].nodeValue;
                nombre = xmlDoc.getElementsByTagName('nombre')[i].innerHTML;
                ref= xmlDoc.getElementsByTagName('localidad')[i].getAttribute('ref');
                document.getElementById('codigoPostal').value = codpos;
                document.getElementById('localidad').value = nombre;
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
    const codigoPostal = document.getElementById('codigoPostal').value; 
    const localidad = document.getElementById('localidad').value;
    var params = `codigoPostal=${codigoPostal}
                &localidad=${localidad}
                `;
    let obj = new XMLHttpRequest();
    obj.open('POST', `${baseUrl}/Localidades/LocalidadUpdateServices`, true);
    obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
    obj.onreadystatechange = function () {
        if(obj.status==200 && obj.responseText != 'error') {
            if(codigoPostal.length == 0 || parseInt(codigoPostal) == 0) { 
                document.getElementById('requiredCodigoPostal').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
                return false;
            } 
            else {
                document.getElementById('requiredCodigoPostal').innerHTML = `<p class="text-danger"><small></smal></p>`
            }
            if(localidad.length == 0) { 
                document.getElementById('requiredLocalidad').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
                return false;
            } 
            else {
                document.getElementById('requiredLocalidad').innerHTML = `<p class="text-danger"><small></smal></p>`
            }
            window.location="localidades";
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
    const codigoPostal = document.getElementById('codigoPostal').value; 
    const localidad = document.getElementById('localidad').value; 
    var params = `codigoPostal=${codigoPostal}
                &localidad=${localidad}
                `;  
    let obj = new XMLHttpRequest();
    let counter = 0;
    obj.open('POST', `${baseUrl}/Localidades/LocalidadCreateServices`, true);
    obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
    obj.onreadystatechange = function () { 
        if(obj.status==200 && obj.responseText != 'error') {  
            let txtHtml = '';
            counter += 1;
            parser = new DOMParser();
            xmlDoc = parser.parseFromString(this.responseText,"text/xml");  
                if(codigoPostal.length == 0 || parseInt(codigoPostal) == 0) { 
                    document.getElementById('requiredCodigoPostal').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
                    return false;
                } 
                else {
                    document.getElementById('requiredCodigoPostal').innerHTML = `<p class="text-danger"><small></smal></p>`
                }
                if(localidad.length == 0) {
                    document.getElementById('requiredLocalidad').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
                    return false;
                } 
                else {
                    document.getElementById('requiredLocalidad').innerHTML = `<p class="text-danger"><small></smal></p>`  
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
                        window.location="localidades";
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
// search all registers
const getEstadosCivil = () => {  
    let obj = new XMLHttpRequest();
    obj.open('GET', `${baseUrl}/EstadosCivil/EstadosCivilServices`, true);
    obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
    obj.onreadystatechange = function () {
        if(obj.status==200 && obj.responseText != 'error') {
            let txtHtml = '';
            parser = new DOMParser();
            xmlDoc = parser.parseFromString(this.responseText,"text/xml"); 
            for(i=0;i<xmlDoc.getElementsByTagName('civil').length;i++){
                estcivil = xmlDoc.getElementsByTagName('estcivil')[i].childNodes[0].nodeValue;
                nombre = xmlDoc.getElementsByTagName('nombre')[i].innerHTML;
                usalta = xmlDoc.getElementsByTagName('usalta')[i].innerHTML;
                fechaalta = xmlDoc.getElementsByTagName('fechaalta')[i].innerHTML;
                horaalta = xmlDoc.getElementsByTagName('horaalta')[i].innerHTML;
                ref= xmlDoc.getElementsByTagName('civil')[i].getAttribute('ref');
                // dev view
                txtHtml += `<tr>
                            <td class="text-left">${estcivil}</td>
                            <td class="text-left">${nombre}</td>
                            <td class="text-left">${usalta}</td>
                            <td class="text-left">${fechaalta}</td>
                            <td class="text-left">${horaalta}</td>
                            <td class="text-center"> 
                            <a href="./EstadoCivilEdit.html?estcivil=${estcivil}">
                                <button type="button"  class="btn btn-success btn-sm">Editar</button>
                            </a>
                            </td>
                            <td class="text-center">
                                <button type="button" class="btn btn-danger btn-sm" onclick="EstadoCivilDelete(${estcivil})">Eliminar</button>
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
const EstadoCivilDelete = (estcivil) => {  
    let params = '';
    let response = confirm('Seguro que quiere eliminar el registro: ' + estcivil + '?');
    if(response == true ){
        params = `estcivil=${estcivil}`;
        let obj = new XMLHttpRequest();
        obj.open('POST', `${baseUrl}/EstadosCivil/EstadoCivilDeleteServices`, true);
        obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
        obj.onreadystatechange = function () {
            if(obj.status==200 && obj.responseText != 'error') {
                window.location="estadoscivil";
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


const getEstadoCivil = () => {
    let params = '';
    if(location.search.length > 0) {
        params = location.search;
    } 
    if(document.getElementById('codigoCivil').value.length > 0) {
        params= `?estcivil=${document.getElementById('codigoCivil').value}`;
    } 
    let obj = new XMLHttpRequest();
    obj.open('GET', `${baseUrl}/MasterTable/EstadoCivilServices${params}`, true);
    obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
    obj.onreadystatechange = function () {
        if(obj.status==200 && obj.responseText != 'error') {  
            let txtHtml = '';
            parser = new DOMParser();
            xmlDoc = parser.parseFromString(this.responseText,"text/xml");
            for(i=0;i<xmlDoc.getElementsByTagName('civil').length;i++){
                estcivil = xmlDoc.getElementsByTagName('estcivil')[i].childNodes[0].nodeValue;
                nombre = xmlDoc.getElementsByTagName('nombre')[i].innerHTML;
                ref= xmlDoc.getElementsByTagName('civil')[i].getAttribute('ref');
                document.getElementById('codigoCivil').value = estcivil;
                document.getElementById('nombreCivil').value = nombre;
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
    const codigoCivil = document.getElementById('codigoCivil').value; 
    const nombreCivil = document.getElementById('nombreCivil').value;
    var params = `codigoCivil=${codigoCivil}
                &nombreCivil=${nombreCivil}
                `;
    let obj = new XMLHttpRequest();
    obj.open('POST', `${baseUrl}/EstadosCivil/EstadoCivilUpdateServices`, true);
    obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
    obj.onreadystatechange = function () { 
        if(obj.status==200 && obj.responseText != 'error') { 
            if(codigoCivil.length == 0 || parseInt(codigoCivil) == 0) { 
                document.getElementById('requiredCodigoCivil').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
                return false;
            } 
            else {
                document.getElementById('requiredCodigoCivil').innerHTML = `<p class="text-danger"><small></smal></p>`
            }
            if(nombreCivil.length == 0) { 
                document.getElementById('requiredNombreCivil').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
                return false;
            } 
            else {
                document.getElementById('requiredNombreCivil').innerHTML = `<p class="text-danger"><small></smal></p>`
            }
            window.location="estadoscivil";
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
    const codigoCivil = document.getElementById('codigoCivil').value; 
    const nombreCivil = document.getElementById('nombreCivil').value; 
    var params = `codigoCivil=${codigoCivil}
                &nombreCivil=${nombreCivil}
                `;  
    let obj = new XMLHttpRequest();
    let counter = 0;
    obj.open('POST', `${baseUrl}/EstadosCivil/EstadoCivilCreateServices`, true);
    obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
    obj.onreadystatechange = function () { 
        if(obj.status==200 && obj.responseText != 'error') {  
            let txtHtml = '';
            counter += 1;
            parser = new DOMParser();
            xmlDoc = parser.parseFromString(this.responseText,"text/xml");  
                if(codigoCivil.length == 0 || parseInt(codigoCivil) == 0) { 
                    document.getElementById('requiredCodigoCivil').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
                    return false;
                } 
                else {
                    document.getElementById('requiredCodigoCivil').innerHTML = `<p class="text-danger"><small></smal></p>`
                }
                if(nombreCivil.length == 0) {
                    document.getElementById('requiredNombreCivil').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
                    return false;
                } 
                else {
                    document.getElementById('requiredNombreCivil').innerHTML = `<p class="text-danger"><small></smal></p>`  
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
                        window.location="estadoscivil";
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
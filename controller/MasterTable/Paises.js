// search all registers
const getPaises = () => {  
    let obj = new XMLHttpRequest();
    obj.open('GET', `${baseUrl}/MasterTable/PaisesServices`, true);
    obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
    obj.onreadystatechange = function () {
        if(obj.status==200 && obj.responseText != 'error') {
            let txtHtml = '';
            parser = new DOMParser();
            xmlDoc = parser.parseFromString(this.responseText,"text/xml");  
            for(i=0;i<xmlDoc.getElementsByTagName('paises').length;i++){
                codpais = xmlDoc.getElementsByTagName('codpais')[i].childNodes[0].nodeValue;
                nombre = xmlDoc.getElementsByTagName('nombre')[i].innerHTML;
                usalta = xmlDoc.getElementsByTagName('usalta')[i].innerHTML;
                fechaalta = xmlDoc.getElementsByTagName('fechaalta')[i].innerHTML;
                horaalta = xmlDoc.getElementsByTagName('horaalta')[i].innerHTML;
                ref= xmlDoc.getElementsByTagName('paises')[i].getAttribute('ref');
                // dev view
                txtHtml += `<tr>
                            <td class="text-left">${codpais}</td>
                            <td class="text-left">${nombre}</td>
                            <td class="text-left">${usalta}</td>
                            <td class="text-left">${fechaalta}</td>
                            <td class="text-left">${horaalta}</td>
                            <td class="text-center"> 
                            <a href="./PaisEdit.html?codpais=${codpais}">
                                <button type="button"  class="btn btn-success btn-sm">Editar</button>
                            </a>
                            </td>
                            <td class="text-center">
                                <button type="button" class="btn btn-danger btn-sm" onclick="PaisDelete(${codpais})">Eliminar</button>
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
const PaisDelete = (codpais) => {  
    let params = '';
    let response = confirm('Seguro que quiere eliminar el registro: ' + codpais + '?');
    if(response == true ){
        params = `codpais=${codpais}`;
        let obj = new XMLHttpRequest();
        obj.open('POST', `${baseUrl}/Paises/PaisDeleteServices`, true);
        obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
        obj.onreadystatechange = function () {
            if(obj.status==200 && obj.responseText != 'error') {
                window.location="paises";
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


const getPais = () => { 
    let params = '';
    if(location.search.length > 0) {
        params = location.search;
    } 
    if(document.getElementById('codigoPais').value.length > 0) {
        params= `?codpais=${document.getElementById('codigoPais').value}`;
    } 
    let obj = new XMLHttpRequest(); 
    obj.open('GET', `${baseUrl}/MasterTable/PaisServices${params}`, true); 
    obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
    obj.onreadystatechange = function () {
        if(obj.status==200 && obj.responseText != 'error') {  
            let txtHtml = '';
            parser = new DOMParser();
            xmlDoc = parser.parseFromString(this.responseText,"text/xml"); 
            for(i=0;i<xmlDoc.getElementsByTagName('pais').length;i++){
                codpais = xmlDoc.getElementsByTagName('codpais')[i].childNodes[0].nodeValue;
                nombre = xmlDoc.getElementsByTagName('nombre')[i].innerHTML;
                ref= xmlDoc.getElementsByTagName('pais')[i].getAttribute('ref');
                document.getElementById('codigoPais').value = codpais;
                document.getElementById('nombrePais').value = nombre;
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
    const codigoPais = document.getElementById('codigoPais').value; 
    const nombrePais = document.getElementById('nombrePais').value;
    var params = `codigoPais=${codigoPais}
                &nombrePais=${nombrePais}
                `; 
    let obj = new XMLHttpRequest();
    obj.open('POST', `${baseUrl}/Paises/PaisUpdateServices`, true);
    obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
    obj.onreadystatechange = function () { 
        if(obj.status==200 && obj.responseText != 'error') { 
            if(codigoPais.length == 0 || parseInt(codigoPais) == 0) { 
                document.getElementById('requiredCodigoPais').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
                return false;
            } 
            else {
                document.getElementById('requiredCodigoPais').innerHTML = `<p class="text-danger"><small></smal></p>`
            }
            if(nombrePais.length == 0) { 
                document.getElementById('requiredNombrePais').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
                return false;
            } 
            else {
                document.getElementById('requiredNombrePais').innerHTML = `<p class="text-danger"><small></smal></p>`
            }
            window.location="paises";
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
    const codigoPais = document.getElementById('codigoPais').value; 
    const nombrePais = document.getElementById('nombrePais').value; 
    var params = `codigoPais=${codigoPais}
                &nombrePais=${nombrePais}
                `;  
    let obj = new XMLHttpRequest();
    let counter = 0;
    obj.open('POST', `${baseUrl}/Paises/PaisCreateServices`, true);
    obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
    obj.onreadystatechange = function () { 
        if(obj.status==200 && obj.responseText != 'error') {  
            let txtHtml = '';
            counter += 1;
            parser = new DOMParser();
            xmlDoc = parser.parseFromString(this.responseText,"text/xml");  
                if(codigoPais.length == 0 || parseInt(codigoPais) == 0) { 
                    document.getElementById('requiredCodigoPais').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
                    return false;
                } 
                else {
                    document.getElementById('requiredCodigoPais').innerHTML = `<p class="text-danger"><small></smal></p>`
                }
                if(nombrePais.length == 0) {
                    document.getElementById('requiredNombrePais').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
                    return false;
                } 
                else {
                    document.getElementById('requiredNombrePais').innerHTML = `<p class="text-danger"><small></smal></p>`  
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
                        window.location="paises";
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
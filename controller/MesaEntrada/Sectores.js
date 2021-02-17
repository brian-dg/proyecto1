 function getSectoresSelect() { 
    let theObject = new XMLHttpRequest();
    theObject.open('GET', `${baseUrl}/MesaEntrada/SectoresServices.html`, true);
    theObject.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
    theObject.onreadystatechange = function () {
        if(theObject.status==200 && theObject.responseText != 'error') {
            let txtHtml = '';
            parser = new DOMParser();
            xmlDoc = parser.parseFromString(this.responseText,"text/xml");
            txtHtml = `<option></option>`
            for(i=0;i<xmlDoc.getElementsByTagName('sector').length;i++){
                codigo = xmlDoc.getElementsByTagName('codigo')[i].childNodes[0].nodeValue;
                descripcion = xmlDoc.getElementsByTagName('descripcion')[i].childNodes[0].nodeValue;
                ref= xmlDoc.getElementsByTagName('sector')[i].getAttribute('ref');

                txtHtml += `<tr>
                            <option value="${codigo}">${descripcion}</option>
                            </tr>`
            } 
            document.getElementById('codigoSector').innerHTML = txtHtml;
            return xmlDoc;
        }
        else {
            console.error('error de conexion-> estatus: ' + theObject.status + ', ready estatus: ' + theObject.readyState);
            alertify.error('Ocurrió un Error');
        }
    }
    theObject.send();
}; 

// search all registers
const getSectores = () => {   
    // Loading 
    let templateLoading = ''; 
    templateLoading = `<div class="loading"><img src="/miciudad/assets/images/loader.gif" alt="loading" /><br/>Un momento, por favor...</div>`
    document.getElementById('loading').innerHTML = templateLoading;
    let obj = new XMLHttpRequest();
    obj.open('GET', `${baseUrl}/Sectores/SectoresServices`, true);
    obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
    obj.onreadystatechange = function () { 
        templateLoading = '';
        if(obj.status==200 && obj.responseText != 'error') { 
            let txtHtml = '';
            parser = new DOMParser();
            xmlDoc = parser.parseFromString(this.responseText,"text/xml");   
            if(xmlDoc.getElementsByTagName('sectores').length > 0) { 
                for(i=0;i<xmlDoc.getElementsByTagName('sectores').length;i++){ 
                    codigo = xmlDoc.getElementsByTagName('codigo')[i].childNodes[0].nodeValue;
                    nombre = xmlDoc.getElementsByTagName('nombre')[i].innerHTML;
                    ref= xmlDoc.getElementsByTagName('sectores')[i].getAttribute('ref');             
                    // dev view
                    txtHtml += `<tr>
                            <td class="text-left">${codigo}</td>
                            <td class="text-left">${nombre}</td> 
                            <td class="text-center"> 
                            <a href="./SectorEdit.html?codigoSector=${codigo}">
                                <button type="button"  class="btn btn-success btn-sm">Editar</button>
                            </a>
                            </td>
                            <td class="text-center">
                                <button type="button" class="btn btn-danger btn-sm" onclick="SectorDelete(${codigo})">Eliminar</button>
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
const SectorDelete = (codigo) => {  
    let params = '';
    let response = confirm('Seguro que quiere eliminar el Sector: ' + codigo + '?');
    if(response == true ){
        params = `codigoSector=${codigo}`;
        let obj = new XMLHttpRequest();
        obj.open('POST', `${baseUrl}/Sectores/SectorDeleteServices`, true);
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
    }
};

// serch people in just in time 
const getSectoresSearch = (e) => {  
    let palabra = document.getElementById('palabra').value; 
    if(palabra.length > 2) {
        var params = `palabra=${palabra}`;
        let obj = new XMLHttpRequest();
        obj.open('POST', `${baseUrl}/Sectores/SectoresServices`, true);
        obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
        obj.onreadystatechange = function () {
            if(obj.status==200 && obj.responseText != 'error') { console.log(obj.responseText)
                let txtHtml = '';
                parser = new DOMParser();
                xmlDoc = parser.parseFromString(this.responseText,"text/xml"); 
                if(xmlDoc.getElementsByTagName('sectores').length > 0) {
                    for(i=0;i<xmlDoc.getElementsByTagName('sectores').length;i++){ 
                        codigo = xmlDoc.getElementsByTagName('codigo')[i].childNodes[0].nodeValue;
                        nombre = xmlDoc.getElementsByTagName('nombre')[i].innerHTML;
                        ref= xmlDoc.getElementsByTagName('sectores')[i].getAttribute('ref'); 
                        // dev view 
                        txtHtml += `<tr>
                                <td class="text-left">${codigo}</td>
                                <td class="text-left">${nombre}</td> 
                                <td class="text-center"> 
                                <a href="./SectorEdit.html?codigoSector=${codigo}">
                                    <button type="button"  class="btn btn-success btn-sm">Editar</button>
                                </a>
                                </td>
                                <td class="text-center">
                                    <button type="button" class="btn btn-danger btn-sm" onclick="SectorDelete(${codigo})">Eliminar</button>
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
        getSectores() 
    };
};


// search one person
const getSector = () => { 
    let params = '';
    if(location.search.length > 0) {
        params = location.search;
    } 

    if(document.getElementById('codigoSector').value.length > 0) {
        params= `?codigoSector=${document.getElementById('codigoSector').value}`;
    } 

    let obj = new XMLHttpRequest();
    obj.open('GET', `${baseUrl}/Sectores/SectorServices${params}`, true);
    obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
    obj.onreadystatechange = function () {
        if(obj.status==200 && obj.responseText != 'error') { 
            let txtHtml = '';
            parser = new DOMParser(); 
            xmlDoc = parser.parseFromString(this.responseText,"text/xml"); 
            if(xmlDoc.getElementsByTagName('sectores').length > 0) { 
                for(i=0;i<xmlDoc.getElementsByTagName('sectores').length;i++){  
                    codigo = xmlDoc.getElementsByTagName('codigo')[i].childNodes[0].nodeValue;
                    nombre = xmlDoc.getElementsByTagName('nombre')[i].innerHTML;
                    ref= xmlDoc.getElementsByTagName('sectores')[i].getAttribute('ref');
                    
                    document.getElementById('codigoSector').value = codigo;
                    document.getElementById('nombreSector').value = nombre;
                   
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


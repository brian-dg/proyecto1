const getMenusDetalles = () => {  
    if(location.search.length > 0) {
        params = location.search;
    }  
    // Alternativa a URLSearchParams 
    var queryParams = window.location.search.substr(1).split('&').reduce(function (qs, query) {
        const chunks = query.split('=');
        const key = chunks[0];
        let value = decodeURIComponent(chunks[1] || '');
        let valueLower = value.trim().toLowerCase();
        if (valueLower === 'true' || value === 'false') {
          value = Boolean(value); 
        } else if (!isNaN(Number(value))) {
          value = Number(value); 
        } 
        return (qs[key] = value, qs);
      }, {}); 

      const template =  `<a href="./MenuDetalleCreate.html?codigoMenu=${queryParams.codigoMenu}">
                        <button class="mt-1 btn btn-primary" id="newREgister" type="button">Agregar SubMenú</button>
                        </a>`;

    let obj = new XMLHttpRequest();
    obj.open('GET', `${baseUrl}/Administracion/MenusDetallesServices${params}`, true);
    obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
    obj.onreadystatechange = function () { 
        templateLoading = '';
        if(obj.status==200 && obj.responseText != 'error') {  
            let txtHtml = '';
            let templateSubTitulo = '';
            parser = new DOMParser();
            xmlDoc = parser.parseFromString(this.responseText,"text/xml");   
            if(xmlDoc.getElementsByTagName('detalle').length > 0) {  
                for(i=0;i<xmlDoc.getElementsByTagName('detalle').length;i++){ 
                    codigo = xmlDoc.getElementsByTagName('codigo')[i].childNodes[0].nodeValue;
                    nombre = xmlDoc.getElementsByTagName('nombre')[i].innerHTML;
                    accion = xmlDoc.getElementsByTagName('accion')[i].innerHTML;
                    renglon = xmlDoc.getElementsByTagName('renglon')[i].innerHTML;
                    nombremenu = xmlDoc.getElementsByTagName('nombremenu')[i].innerHTML;
                    ref= xmlDoc.getElementsByTagName('detalle')[i].getAttribute('ref');             
                    // dev view
                    txtHtml += `<tr>
                            <td class="text-left">${renglon}</td>
                            <td class="text-left">${nombre}</td> 
                            <td class="text-left">${accion}</td> 
                            <td class="text-center"> 
                            <a href="./MenuDetalleEdit.html?codigoMenu=${codigo}&renglon=${renglon}">
                                <button type="button"  class="btn btn-success btn-sm">Editar</button>
                            </a>
                            </td>
                            </tr>`;
                    templateSubTitulo = `<h5 class="card-title text-center">${nombremenu}</h5>`;
                            
                } 
            }
            document.getElementById('btnNew').innerHTML = template;
            document.getElementById('subTitulo').innerHTML = templateSubTitulo;
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


// Busca un submenu 
const getMenuDetalle = () => { 
    let params = '';
    if(location.search.length > 0) {
        params = location.search;
    } 

    if(document.getElementById('codigoMenu').value.length > 0) {
        params= `?codigoMenu=${document.getElementById('codigoMenu').value}`;
    } 
    let obj = new XMLHttpRequest();
    obj.open('GET', `${baseUrl}/Administracion/MenuDetalleServices${params}`, true);
    obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
    obj.onreadystatechange = function () {
        if(obj.status==200 && obj.responseText != 'error') { 
            let txtHtml = '';
            parser = new DOMParser(); 
            xmlDoc = parser.parseFromString(this.responseText,"text/xml");  console.log(xmlDoc)
            if(xmlDoc.getElementsByTagName('detalle').length > 0) {  
                for(i=0;i<xmlDoc.getElementsByTagName('detalle').length;i++){  
                    codigo = xmlDoc.getElementsByTagName('codigo')[i].childNodes[0].nodeValue;
                    nombre = xmlDoc.getElementsByTagName('nombre')[i].innerHTML;
                    accion = xmlDoc.getElementsByTagName('accion')[i].innerHTML;
                    renglon = xmlDoc.getElementsByTagName('renglon')[i].innerHTML;
                    ref= xmlDoc.getElementsByTagName('detalle')[i].getAttribute('ref');
                    
                    document.getElementById('codigoMenu').value = codigo;
                    document.getElementById('renglon').value = renglon;
                    document.getElementById('nombreMenu').value = nombre;
                    document.getElementById('accion').value = accion;
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
if(document.getElementById('updateDetalle')) {
    document.getElementById('updateDetalle').addEventListener('click', (e) => {   
    e.preventDefault();
    const codigoMenu = document.getElementById('codigoMenu').value; 
    const nombreMenu = document.getElementById('nombreMenu').value;
    const accion = document.getElementById('accion').value;
    const renglon = document.getElementById('renglon').value;

    var params = `codigoMenu=${codigoMenu}
                    &nombreMenu=${nombreMenu}
                    &accion=${accion}
                    &renglon=${renglon}`;
    if(codigoMenu.length == 0) { 
        document.getElementById('requiredCodigoMenu').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
        return false;
    } 
    else {
        document.getElementById('requiredCodigoMenu').innerHTML = `<p class="text-danger"><small></smal></p>`
    }
    if(renglon.length == 0) { 
        document.getElementById('requiredRenglon').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
        return false;
    } 
    else {
        document.getElementById('requiredRenglon').innerHTML = `<p class="text-danger"><small></smal></p>`
    }
    if(nombreMenu.length == 0) {
        document.getElementById('requiredNombreMenu').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
        return false;
    } 
    else {
        document.getElementById('requiredNombreMenu').innerHTML = `<p class="text-danger"><small></smal></p>`  
    };

    if(accion.length == 0) {
        document.getElementById('requiredAccion').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
        return false;
    } 
    else {
        document.getElementById('requiredAccion').innerHTML = `<p class="text-danger"><small></smal></p>`  
    };
    let obj = new XMLHttpRequest();
    obj.open('POST', `${baseUrl}/Administracion/MenuDetalleUpdateServices`, true); 
    obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
    obj.onreadystatechange = function () { console.log(obj.responseText)
        if(obj.status==200 && obj.responseText != 'error') {
             window.location="menus.html";
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
if(document.getElementById('createDetalle')) {  
    document.getElementById('createDetalle').addEventListener('click', (e) => { 
    e.preventDefault();
    const codigoMenu = document.getElementById('codigoMenu').value; 
    const nombreMenu = document.getElementById('nombreMenu').value;
    const accion = document.getElementById('accion').value;
    const renglon = document.getElementById('renglon').value;

    var params = `codigoMenu=${codigoMenu}
                    &nombreMenu=${nombreMenu}
                    &accion=${accion}
                    &renglon=${renglon}`;
    if(codigoMenu.length == 0) { 
        document.getElementById('requiredCodigoMenu').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
        return false;
    } 
    else {
        document.getElementById('requiredCodigoMenu').innerHTML = `<p class="text-danger"><small></smal></p>`
    }
    if(renglon.length == 0) { 
        document.getElementById('requiredRenglon').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
        return false;
    } 
    else {
        document.getElementById('requiredRenglon').innerHTML = `<p class="text-danger"><small></smal></p>`
    }
    if(nombreMenu.length == 0) {
        document.getElementById('requiredNombreMenu').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
        return false;
    } 
    else {
        document.getElementById('requiredNombreMenu').innerHTML = `<p class="text-danger"><small></smal></p>`  
    };
    if(accion.length == 0) {
        document.getElementById('requiredAccion').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
        return false;
    } 
    else {
        document.getElementById('requiredAccion').innerHTML = `<p class="text-danger"><small></smal></p>`  
    };

            
    let obj = new XMLHttpRequest();
    let counter = 0;
    obj.open('POST', `${baseUrl}/Administracion/MenuDetalleCreateServices`, true);
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
                    window.location="menus.html";
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


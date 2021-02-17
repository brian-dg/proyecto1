// search all registers
const getMenuPermisos = () => {   
    let obj = new XMLHttpRequest();
    obj.open('GET', `${baseUrl}Administracion/MenuServices`, true);
    obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
    obj.onreadystatechange = function () { 
        if(obj.status==200 && obj.responseText != 'error') { 
            let txtHtml = ''; 
            parser = new DOMParser();
            xmlDoc = parser.parseFromString(this.responseText,"text/xml");    
            if(xmlDoc.getElementsByTagName('menu').length > 0) { 
                for(i=0;i<xmlDoc.getElementsByTagName('menu').length;i++){ 
                    titulo = xmlDoc.getElementsByTagName('titulo')[i].childNodes[0].nodeValue;
                    nombremenu = xmlDoc.getElementsByTagName('nombremenu')[i].innerHTML;
                    codigomenu = xmlDoc.getElementsByTagName('codigomenu')[i].innerHTML;
                    ref= xmlDoc.getElementsByTagName('menu')[i].getAttribute('ref');             
                    // Titulo del menu 
                    txtHtml +=   `<li class="app-sidebar__heading">${titulo}</li>
                                    <li>
                                    <a href="#">
                                        <i class="metismenu-icon pe-7s-diamond"></i>
                                        ${nombremenu}
                                        <i class="metismenu-state-icon pe-7s-angle-down caret-left"></i>
                                    </a>
                                    <ul>`;
                    //  Sub Menu  
                    for(m=0;m<xmlDoc.getElementsByTagName('detalle').length;m++){ 
                        nombresubmenu = xmlDoc.getElementsByTagName('nombresubmenu')[m].innerHTML;
                        accion = xmlDoc.getElementsByTagName('accion')[m].innerHTML;
                        codigosubmenu = xmlDoc.getElementsByTagName('codigosubmenu')[m].innerHTML;
                        ref= xmlDoc.getElementsByTagName('detalle')[m].getAttribute('ref'); 
                        
                        if(codigomenu == codigosubmenu){
                        txtHtml += `<li>
                                    <a href="${ipServer}${accion}">
                                        <i class="metismenu-icon"></i>
                                        ${nombresubmenu}
                                    </a>
                                </li>`;}
                   } 
                   // cierre de submenu
                   txtHtml += `</ul></li>`;
                } 
            }
            document.getElementById('menuPrincipal').innerHTML = txtHtml;
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
// trae todos los titulos del menu
const getTitulosMenus = () => {   
    // Loading 
    let templateLoading = ''; 
    templateLoading = `<div class="loading">
                        <img src="/municipio2.0/assets/images/loader.gif" alt="loading" />
                        <br/>
                        Un momento, por favor...
                        </div>`; 
    document.getElementById('loading').innerHTML = templateLoading;
    let obj = new XMLHttpRequest();
    obj.open('GET', `${baseUrl}/Administracion/MenusTitulosServices`, true);
    obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
    obj.onreadystatechange = function () { 
        templateLoading = '';
        if(obj.status==200 && obj.responseText != 'error') {  
            let txtHtml = '';
            parser = new DOMParser();
            xmlDoc = parser.parseFromString(this.responseText,"text/xml");   
            if(xmlDoc.getElementsByTagName('menu').length > 0) {  
                for(i=0;i<xmlDoc.getElementsByTagName('menu').length;i++){ 
                    codigo = xmlDoc.getElementsByTagName('codigo')[i].childNodes[0].nodeValue;
                    nombre = xmlDoc.getElementsByTagName('nombre')[i].innerHTML;
                    titulo = xmlDoc.getElementsByTagName('titulo')[i].innerHTML;
                    ref= xmlDoc.getElementsByTagName('menu')[i].getAttribute('ref');             
                    // dev view
                    txtHtml += `<tr>
                            <td class="text-left">${codigo}</td>
                            <td class="text-left">${nombre}</td> 
                            <td class="text-left">${titulo}</td> 
                            <td class="text-center"> 
                            <a href="./MenuTituloEdit.html?codigoMenu=${codigo}">
                                <button type="button"  class="btn btn-success btn-sm">Editar</button>
                            </a>
                            
                            <a href="./MenuDetalles.html?codigoMenu=${codigo}">
                                <button type="button"  class="btn btn-primary btn-sm">SubMenú</button>
                            </a>
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
// one menu
const getTituloMenu = () => { 
    let params = '';
    if(location.search.length > 0) {
        params = location.search;
    } 

    if(document.getElementById('codigoMenu').value.length > 0) {
        params= `?codigoMenu=${document.getElementById('codigoMenu').value}`;
    } 
    let obj = new XMLHttpRequest();
    obj.open('GET', `${baseUrl}/Administracion/MenuTituloServices${params}`, true);
    obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
    obj.onreadystatechange = function () {
        if(obj.status==200 && obj.responseText != 'error') { 
            let txtHtml = '';
            parser = new DOMParser(); 
            xmlDoc = parser.parseFromString(this.responseText,"text/xml");  console.log(xmlDoc)
            if(xmlDoc.getElementsByTagName('menu').length > 0) {  
                for(i=0;i<xmlDoc.getElementsByTagName('menu').length;i++){  
                    codigo = xmlDoc.getElementsByTagName('codigo')[i].childNodes[0].nodeValue;
                    nombre = xmlDoc.getElementsByTagName('nombre')[i].innerHTML;
                    titulo = xmlDoc.getElementsByTagName('titulo')[i].innerHTML;
                    ref= xmlDoc.getElementsByTagName('menu')[i].getAttribute('ref');
                    
                    document.getElementById('codigoMenu').value = codigo;
                    document.getElementById('nombreMenu').value = nombre;
                    document.getElementById('titulo').value = titulo;
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
if(document.getElementById('updateMenu')) {
    document.getElementById('updateMenu').addEventListener('click', (e) => {   
    e.preventDefault();
    const codigoMenu = document.getElementById('codigoMenu').value; 
    const nombreMenu = document.getElementById('nombreMenu').value;
    const titulo = document.getElementById('titulo').value;

    var params = `codigoMenu=${codigoMenu}
                    &nombreMenu=${nombreMenu}
                    &titulo=${titulo}`;
    if(codigoMenu.length == 0) { 
        document.getElementById('requiredCodigoMenu').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
        return false;
    } 
    else {
        document.getElementById('requiredCodigoMenu').innerHTML = `<p class="text-danger"><small></smal></p>`
    }
    if(nombreMenu.length == 0) {
        document.getElementById('requiredNombreMenu').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
        return false;
    } 
    else {
        document.getElementById('requiredNombreMenu').innerHTML = `<p class="text-danger"><small></smal></p>`  
    };

    if(titulo.length == 0) {
        document.getElementById('requiredTitulo').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
        return false;
    } 
    else {
        document.getElementById('requiredTitulo').innerHTML = `<p class="text-danger"><small></smal></p>`  
    };
    let obj = new XMLHttpRequest();
    obj.open('POST', `${baseUrl}/Administracion/MenuTituloUpdateServices`, true);
    obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
    obj.onreadystatechange = function () {
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
if(document.getElementById('createMenu')) {  
    document.getElementById('createMenu').addEventListener('click', (e) => { 
    e.preventDefault();
    const codigoMenu = document.getElementById('codigoMenu').value; 
    const nombreMenu = document.getElementById('nombreMenu').value;
    const titulo = document.getElementById('titulo').value;

    var params = `codigoMenu=${codigoMenu}
                    &nombreMenu=${nombreMenu}
                    &titulo=${titulo}`;
    if(codigoMenu.length == 0) { 
        document.getElementById('requiredCodigoMenu').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
        return false;
    } 
    else {
        document.getElementById('requiredCodigoMenu').innerHTML = `<p class="text-danger"><small></smal></p>`
    }
    if(titulo.length == 0) {
        document.getElementById('requiredTitulo').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
        return false;
    } 
    else {
        document.getElementById('requiredTitulo').innerHTML = `<p class="text-danger"><small></smal></p>`  
    };
    if(nombreMenu.length == 0) {
        document.getElementById('requiredNombreMenu').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
        return false;
    } 
    else {
        document.getElementById('requiredNombreMenu').innerHTML = `<p class="text-danger"><small></smal></p>`  
    };

            
    let obj = new XMLHttpRequest();
    let counter = 0;
    obj.open('POST', `${baseUrl}/Administracion/MenuTituloCreateServices`, true);
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



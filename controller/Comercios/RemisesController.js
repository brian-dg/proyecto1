const getRemises = () => {
    let txtHtml = '';
    let templateLoading = '';
    //let templateCantidad = '';

    //loading 
    templateLoading = `<div class="loading"><img src="/municipio2.0/assets/images/loader.gif" alt="loading" /><br/>Un momento, por favor...</div>`;
    document.getElementById('loading').innerHTML = templateLoading;

    let obj = new XMLHttpRequest();
    obj.open('GET', `${baseUrl}Comercios/RemisesServices`, true);
    obj.onreadystatechange = function () {

        if (obj.readyState == 4 && obj.status == 200) {

            const objCleaned = obj.responseText.slice(84);
            const jsonObj = JSON.parse(objCleaned);
            templateLoading = '';
            document.getElementById('loading').innerHTML = templateLoading;

            //templateCantidad = `<h6 class="text-primary">Comercios Activos: ${jsonObj[0].cantidadtotal}</h6>`;
            //document.getElementById('total').innerHTML = templateCantidad;

            jsonObj.forEach(element => {

                txtHtml += ` <tr>
                            <td class="text-left">${element.inscripcion}</td>
                            <td class="text-left">${element.licencia}</td> 
                            <td class="text-right">${element.dominio}</td> 
                            <td class="text-right">${element.titular}</td> `;

                if (element.baja) {
                    txtHtml += `<td class="text-center"><span class="bg-danger  small text-white rounded">Inactivo</span></td>`;
                }
                else {
                    txtHtml += `<td class="text-center"><span class="bg-primary  small text-white rounded">Activo</span></td>`;
                };

                txtHtml += `                          
                            <td class="text-center">
                                <a href="./RemisVer.html?inscripcion=${element.inscripcion}">
                                    <button type="button"  class="btn btn-warning btn-sm">Ver</button>
                                </a>

                                <a href="./RemisEdit.html?inscripcion=${element.inscripcion}">
                                    <button type="button"  class="btn btn-success btn-sm">Editar</button>
                                </a>
                            
                                <button type="button" class="btn btn-danger btn-sm" onclick="RemisDelete(${element.inscripcion})">Eliminar</button>
                            </td> 
                            </tr>`;

            });
            document.getElementById('table-result').innerHTML = txtHtml;
        }
    }
    obj.send();
    return false;
};
const getSearch = (e) => {
    let txtHtml = '';
    let params = '';
    let numeroInscripcion = '';
    let palabra = '';

    palabra = document.getElementById('palabra').value;
    numeroInscripcion = document.getElementById('numeroInscripcion').value;
    if (palabra.length > 0 || numeroInscripcion.length > 0) {
        params = `numeroInscripcion=${numeroInscripcion}
                    &palabra=${palabra}`

        let obj = new XMLHttpRequest();
        obj.open('POST', `${baseUrl}Comercios/RemisesServices`, true);
        obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
        obj.onreadystatechange = function () {
            if (obj.readyState == 4) {

                const objCleaned = obj.responseText.slice(84); console.log(objCleaned);
                const jsonObj = JSON.parse(objCleaned);
                templateLoading = '';
                jsonObj.forEach(element => {

                    txtHtml += `<tr>
                                 <td class="text-left">${element.inscripcion}</td>
                                 <td class="text-left">${element.licencia}</td> 
                                 <td class="text-right">${element.dominio}</td> 
                                 <td class="text-right">${element.titular}</td> `;

                    if (element.baja) {
                        txtHtml += `<td class="text-center"><span class="bg-danger  small text-white rounded">Inactivo</span></td>`;
                    }
                    else {
                        txtHtml += `<td class="text-center"><span class="bg-primary  small text-white rounded">Activo</span></td>`;
                    };
                    txtHtml += `
                                
                                <td class="text-center">
                                <a href="./RemisVer.html?inscripcion=${element.inscripcion}">
                                    <button type="button"  class="btn btn-warning btn-sm">Ver</button>
                                </a>
    
                                <a href="./RemisEdit.html?inscripcion=${element.inscripcion}">
                                    <button type="button"  class="btn btn-success btn-sm">Editar</button>
                                </a>
                            
                                <button type="button" class="btn btn-danger btn-sm" onclick="RemisDelete(${element.inscripcion})">Eliminar</button>
                            </td> 
                                </tr>`;
                });
                document.getElementById('table-result').innerHTML = txtHtml;
            }
        }
        obj.send(params);
        return false;
    }
    else getRemises();
};

//Llenar campos del edit 
const getRemis = () => { 
    if (location.search.length > 0) {
        params = location.search;
    }
    let obj = new XMLHttpRequest();
    obj.open('GET', `${baseUrl}Comercios/RemisEmpresaServices${params}`, true);
    obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
    obj.onreadystatechange = function() {

        if (obj.readyState == 4) {
            const objCleaned = obj.responseText.slice(84); 
            const jsonObj = JSON.parse(objCleaned);
            let txtHtml = '';
            let monotributoChecked = false;
            let choferChecked = false;
            let cabinChecked = false; 
            let adhiereChecked = false;  console.log(jsonObj)
            document.getElementById('inscripcion').value = jsonObj.Remis.inscripcion;
            document.getElementById('licencia').value = jsonObj.Remis.licencia;
            //document.getElementById('fechaHabilitacion').value = jsonObj.Remis.fechaHabilitacion.split('/')//.reverse().join('-');
            document.getElementById('tipoDocumento').value = jsonObj.Remis.tipodocumento;
            document.getElementById('numeroDocumento').value = jsonObj.Remis.numerodocumento;
            document.getElementById('titular').value = jsonObj.Remis.titular;
            document.getElementById('domicilio').value = jsonObj.Remis.domicilio;
            document.getElementById('dominio').value = jsonObj.Remis.dominio;
            document.getElementById('vehiculo').value = jsonObj.Remis.vehiculo;
            document.getElementById('modeloAño').value = jsonObj.Remis.modeloanio;
            document.getElementById('empresa').value = jsonObj.Remis.empresa;
            
            if (jsonObj.Remis.monotributo == 'yes') {
                monotributoChecked = true;
            }
            if (jsonObj.Remis.chofer == 'yes') {
                choferChecked = true;
            }
            if (jsonObj.Remis.cabin9 == 'yes') {
                cabinChecked = true;
            }
            if (jsonObj.Remis.adhiere == 'yes') {
                adhiereChecked = true;
            }
            document.getElementById('monotributo').checked = monotributoChecked;
            document.getElementById('chofer').checked = choferChecked;
            document.getElementById('cabin9').checked = cabinChecked;
            

            txtHtml += `<tr>
    <option value="${jsonObj.Remis.codigodocumento}">${jsonObj.Remis.nombredocumento}</option>
    <option></option>
    </tr>`;

            jsonObj.TipoDoc.forEach(element => {
                txtHtml += `<option value="${element.codigodocumento}">${element.nombredocumento}</option>`;
            });

            document.getElementById('tipoDocumento').innerHTML = txtHtml;
            return jsonObj;
        }
    }
    obj.send();
    return false;
};

// crear Formulario 

if (document.getElementById('create')) {
    document.getElementById('create').addEventListener('click', (e) => {
        e.preventDefault();
        
        var params = '';
        const inscripcion = document.getElementById('inscripcion').value;
        const licencia = document.getElementById('licencia').value;
        const fechaHabilitacion = document.getElementById('fechaHabilitacion').value.split('-').reverse().join('/');
        const tipoDocumento = document.getElementById('tipoDocumento').value;
        const numeroDocumento = document.getElementById('numeroDocumento').value;
        const titular = document.getElementById('titular').value;
        const domicilio = document.getElementById('domicilio').value;
        const dominio = document.getElementById('dominio').value;
        const vehiculo = document.getElementById('vehiculo').value;
        const modeloAño = document.getElementById('modeloAño').value;
        const empresa = document.getElementById('empresa').value;
        const monotributo = document.getElementById('monotributo').checked;
        const chofer = document.getElementById('chofer').checked;
        const cabin9 = document.getElementById('cabin9').checked;
        

        params = `inscripcion=${inscripcion}
                  &licencia=${licencia}
                  &fechaHabilitacion=${fechaHabilitacion}
                  &tipoDocumento=${tipoDocumento}
                  &numeroDocumento=${numeroDocumento}
                  &titular=${titular}
                  &domicilio=${domicilio}
                  &dominio=${dominio}
                  &vehiculo=${vehiculo}
                  &modeloAnio=${modeloAño}
                  &empresa=${empresa}
                  &monotributo=${monotributo}
                  &chofer=${chofer}
                  &cabin9=${cabin9}
                  &observaciones=${observaciones}`;
     

        let obj = new XMLHttpRequest();
        obj.open('POST', `${baseUrl}Comercios/RemisCreateServices`, true);
        obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
        obj.onreadystatechange = function() {
            if (obj.readyState == 4) {
                const objCleaned = obj.responseText.slice(84);
                console.log(objCleaned)
                const jsonObj = JSON.parse(objCleaned);
                if (jsonObj.error != '') {
                    document.getElementById('informe').innerHTML = jsonObj.error;
                    return false;
                }
                window.location = 'remises.html';
                return jsonObj;

            }
        }
        obj.send(params);
        return false;
    });
};

const getTiposDocumentos = () => {
    let txtHtml = '';
    let obj = new XMLHttpRequest();
    obj.open('GET', `${baseUrl}TiposDocumentos/TiposDocumentosServices`, true);
    obj.onreadystatechange = function() {
        if (obj.readyState == 4 && obj.status == 200) {
            const objCleaned = obj.responseText.slice(84); 
            const jsonObj = JSON.parse(objCleaned);
            txtHtml += `<tr>
                            <option></option>
                            </tr>`;
            jsonObj.forEach(element  => {
                 txtHtml += `<option value="${element.tipdoc}">${element.descripcion}</option>`;
            });
            document.getElementById('tipoDocumento').innerHTML = txtHtml;
            return jsonObj;
        }
        
    };
    obj.send();
    return false;
};

const getRemisEmpresas = () => {
    let txtHtml = '';
    let obj = new XMLHttpRequest();
    obj.open('GET', `${baseUrl}Comercios/RemisEmpresasServices`, true);
    obj.onreadystatechange = function() {
        if (obj.readyState == 4 && obj.status == 200) {
            const objCleaned = obj.responseText.slice(84);
            const jsonObj = JSON.parse(objCleaned);
            txtHtml += `<tr>
                            <option></option>
                            </tr>`;
            jsonObj.forEach(element  => {
                 txtHtml += `<option value="${element.empresa}">${element.descripcion}</option>`;
            });
            document.getElementById('empresa').innerHTML = txtHtml;
            return jsonObj;
        }
        
    };
    obj.send();
    return false;
};


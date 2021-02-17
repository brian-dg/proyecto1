const getComercios = () => {
    let templateLoading = '';
    let txtHtml = '';
    let templateCantidad = '';
    let params = '';
    if (location.search.length > 0) {
        params = location.search;
    }
    // Loading 
    templateLoading = `<div class="loading"><img src="/miciudad/assets/images/loader.gif" alt="loading" /><br/>Un momento, por favor...</div>`;
    document.getElementById('loading').innerHTML = templateLoading;
    
    let obj = new XMLHttpRequest();
    obj.open('GET', `${baseUrl}Comercios/ComerciosServices${params}`, true);
    obj.onreadystatechange = function() {
        
        if (obj.readyState == 4 && obj.status == 200) {

            const objCleaned = obj.responseText.slice(84); console.log(objCleaned)
            const jsonObj = JSON.parse(objCleaned);
            templateLoading = '';
            document.getElementById('loading').innerHTML = templateLoading;

            templateCantidad = `<h6 class="text-primary">Comercios Activos: ${jsonObj[0].cantidadtotal}</h6>`;
            document.getElementById('total').innerHTML = templateCantidad;
            jsonObj.forEach(element => {
                
                    txtHtml += ` <tr>
                                <td class="text-left">${element.inscripcion}</td>
                                <td class="text-left">${element.razonSocial}</td> 
                                <td lass="text-left">`
                                    
                    element.rubros.forEach(rubros => {
                        if(rubros.idRubro){
                            txtHtml += `<li value="${rubros.idRubro}">${rubros.idRubro} - ${rubros.rubro}</li>`;
                        }
                    });
                    txtHtml += `</td>
                                <td class="text-left">${element.inicio}</td>
                                <td class="text-center"><span class="bg-primary  text-white rounded small">Activo</span</td>
                                <td class="text-center">
                                    <div class="dropdown">
                                        <button 
                                            class="btn btn-primary-outline text-primary" 
                                            type="button" 
                                            id="dropdownMenuButton" 
                                            data-toggle="dropdown" 
                                            aria-haspopup="true" 
                                            aria-expanded="false"

                                        >
                                            <i class="fas fa-bars"></i>
                                        </button>
                                        <div class="dropdown-menu bg-primarysoft" aria-labelledby="dropdownMenuButton">
                                            <a class="dropdown-item" href="./ComercioVer.html?inscripcion=${element.inscripcion}">Ver</a>
                                            <hr class="mt-0">
                                            <a class="dropdown-item" href="./ComercioEdit.html?inscripcion=${element.inscripcion}">Editar</a>
                                            <hr class="mt-0">
                                            <a class="dropdown-item" href="./cuentacorriente.html?inscripcion=${element.inscripcion}">Cuenta Corriente</a>
                                            <hr class="mt-0">
                                            <a class="dropdown-item" href="./rubrosporcomercio.html?inscripcion=${element.inscripcion}"">Editar Rubros</a>
                                        </div>
                                    </div>
                                </td>
                                </tr>`;

                                

                
            });
            document.getElementById('table-result').innerHTML = txtHtml;
            return jsonObj;
        }
       
       
       
    };
    obj.send();
    return false;
};

// busqueda just in time por palabra
const getSearch = (e) => {
    let palabra = '';
    let activos = '';
    let numeroInscripcion = '';
    let txtHtml = '';
    
    palabra = document.getElementById('palabra').value;
    numeroInscripcion = document.getElementById('numeroInscripcion').value;
    console.log(numeroInscripcion)
    activos = document.getElementById('activos').checked;
    if (palabra.length > 0 || numeroInscripcion.length > 0) {
        var params = `palabra=${palabra}
                    &activos=${activos}
                    &numeroInscripcion=${numeroInscripcion}`;  
        
        let obj = new XMLHttpRequest();
        obj.open('POST', `${baseUrl}Comercios/ComerciosServices`, true);
        obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
        obj.onreadystatechange = function() {
            if (obj.readyState == 4) {
                const objCleaned = obj.responseText.slice(84); console.log("resouesta: ", obj.responseText)
                const jsonObj = JSON.parse(objCleaned);
                if (jsonObj.length > 0) {
                    jsonObj.forEach(element => {
                        if (element.baja == '') {
                            txtHtml += `<tr>
                                        <td class="text-left">${element.inscripcion}</td>
                                        <td class="text-left">${element.razonSocial}</td> 
                                        <td class="text-left">`

                            element.rubros.forEach(rubros => {
                                if(rubros.idRubro){
                                    txtHtml += `<li value="${rubros.idRubro}">${rubros.idRubro} - ${rubros.rubro}</li>`;
                                }
                            });

                            txtHtml += `</td>
                                 <td class="text-left">${element.inicio}</td>`; 
                                 if(element.baja){
                                    txtHtml += `<td class="text-center"><span class="bg-danger  small text-white rounded">Inactivo</span></td>`;
                                }
                                else{
                                    txtHtml += `<td class="text-center"><span class="bg-primary  small text-white rounded">Activo</span></td>`;
                                }
                                txtHtml +=
                                `<td class="text-center">
                                <div class="dropdown">
                                    <button 
                                        class="btn  btn-primary-outline text-primary" 
                                        type="button" 
                                        id="dropdownMenuButton" 
                                        data-toggle="dropdown" 
                                        aria-haspopup="true" 
                                        aria-expanded="false"
                                    >
                                        <i class="fas fa-bars"></i>
                                    </button>
                                    <div class="dropdown-menu bg-primarysoft"  aria-labelledby="dropdownMenuButton">
                                        <a class="dropdown-item" href="./ComercioVer.html?inscripcion=${element.inscripcion}">Ver</a>
                                        <a class="dropdown-item" href="./ComercioEdit.html?inscripcion=${element.inscripcion}">Editar</a>
                                        <a class="dropdown-item" href="./cuentacorriente.html?inscripcion=${element.inscripcion}">Cuenta Corriente</a>
                                        <a class="dropdown-item" href="#">Editar Rubros</a>
                                    </div>
                                </div>
                            </td>
                                </td>
                         </tr>`;
                        } else {
                            txtHtml += `<tr class="text-muted">
                         <td class="text-left text-danger">${element.inscripcion}</td>
                         <td class="text-left text-danger">${element.razonSocial}</td> 
                         <td class="text-left text-danger">`

                            element.rubros.forEach(rubros => {
                                txtHtml += `<li value="${rubros.idRubro}">${rubros.idRubro} - ${rubros.rubro}</li>`
                            });

                            txtHtml += `</td>
                                 <td class="text-left text-danger">${element.inicio}</td>`; 
                                 if(element.baja){
                                    txtHtml += `<td class="text-left text-danger"><span class="bg-danger small text-white rounded">Inactivo</span></td>`;
                                }
                                else{
                                    txtHtml += `<td class="text-left"><span class="bg-primary small text-white rounded">Activo</span</td>`;
                                }
                                txtHtml +=
                                `<td class="text-center">
                                <div class="dropdown">
                                    <button 
                                        class="btn  btn-primary-outline text-primary" 
                                        type="button" 
                                        id="dropdownMenuButton" 
                                        data-toggle="dropdown" 
                                        aria-haspopup="true" 
                                        aria-expanded="false"
                                    >
                                        <i class="fas fa-bars"></i>
                                    </button>
                                    <div class="dropdown-menu bg-primarysoft" aria-labelledby="dropdownMenuButton">
                                        <a class="dropdown-item" href="./ComercioVer.html?inscripcion=${element.inscripcion}">Ver</a>
                                        
                                        <a class="dropdown-item" href="./ComercioEdit.html?inscripcion=${element.inscripcion}">Editar</a>
                                        <a class="dropdown-item" href="./cuentacorriente.html?inscripcion=${element.inscripcion}">Cuenta Corriente</a>
                                    </div>
                                </div>
                            </td>
                         </tr>`;
                        }


                    });
                    txtHtml += `<tr><td colspan="6">&nbsp</td></tr>
                                <tr><td colspan="6">&nbsp</td></tr>`
                    document.getElementById('table-result').innerHTML = txtHtml;
                    return jsonObj;
                };
            }
        };
        obj.send(params);
        return false;
    } else {
        getComercios();
    };
};


const getComercio = () => {
    if (location.search.length > 0) {
        params = location.search;
    }
    let obj = new XMLHttpRequest();
    obj.open('GET', `${baseUrl}Comercios/ComercioServices${params}`, true);
    obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
    obj.onreadystatechange = function() {

        if (obj.readyState == 4) {
            const objCleaned = obj.responseText.slice(84);
            const jsonObj = JSON.parse(objCleaned);
            let txtHtml = '';
            let activoChecked = false;
            let cabinChecked = false;
            let grandeChecked = false; 
            let adhiereChecked = false;  console.log(jsonObj)
            document.getElementById('inscripcion').value = jsonObj.comercio.inscripcion;
            document.getElementById('razonSocial').value = jsonObj.comercio.razonsocial;
            document.getElementById('numeroDocumento').value = jsonObj.comercio.numerodocumento;
            document.getElementById('nombreIndividuo').value = jsonObj.comercio.nombreindividuo;
            document.getElementById('domicilioComercio').value = jsonObj.comercio.domiciliocomercial;
            document.getElementById('mail').value = jsonObj.comercio.mail;
            document.getElementById('fechaInscripcion').value = jsonObj.comercio.fechainscripcion.split('/').reverse().join('-');
            document.getElementById('fechaInicio').value = jsonObj.comercio.fechainicio.split('/').reverse().join('-');
            document.getElementById('fechaCese').value = jsonObj.comercio.fechacese.split('/').reverse().join('-');
            document.getElementById('cantidadEmpleados').value = jsonObj.comercio.personal;
            document.getElementById('superficie').value = jsonObj.comercio.superficie;
            document.getElementById('ingresoAnual').value = jsonObj.comercio.ingresoanual;
            document.getElementById('categoriaMonotributo').value = jsonObj.comercio.categoriamonotributo;
            document.getElementById('domicilioEntrega').value = jsonObj.comercio.domicilioentrega;
            document.getElementById('codigoPostal').value = jsonObj.comercio.codigopostal;
            document.getElementById('publicidad').value = jsonObj.comercio.publicidad;
            document.getElementById('observaciones').value = jsonObj.comercio.observaciones;

            if (jsonObj.comercio.activo == 'yes') {
                activoChecked = true;
            }
            if (jsonObj.comercio.cabin9 == 'yes') {
                cabinChecked = true;
            }
            if (jsonObj.comercio.grancontribuyente == 'yes') {
                grandeChecked = true;
            }
            if (jsonObj.comercio.adhiere == 'yes') {
                adhiereChecked = true;
            }
            document.getElementById('cabin9').checked = cabinChecked;
            document.getElementById('activo').checked = activoChecked;
            document.getElementById('granContribuyente').checked = grandeChecked;
            document.getElementById('adhiere').checked = adhiereChecked;

            txtHtml += `<tr>
    <option value="${jsonObj.comercio.idtipodoc}">${jsonObj.comercio.tipodoc}</option>
    <option></option>
    </tr>`;

            jsonObj.TipoDoc.forEach(element => {
                txtHtml += `<option value="${element.tipdoc}">${element.descripcion}</option>`;
            });

            document.getElementById('tipoDocumento').innerHTML = txtHtml;
            return jsonObj;
        }
    }
    obj.send();
    return false;
};


const getComercioDetails = () => {
    if (location.search.length > 0) {
        params = location.search;
    }
    let obj = new XMLHttpRequest();
    obj.open('GET', `${baseUrl}Comercios/ComercioServices${params}`, true);
    obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
    obj.onreadystatechange = function() {

        if (obj.readyState == 4) {
            const objCleaned = obj.responseText.slice(84);
            const jsonObj = JSON.parse(objCleaned);
            let txtHtmlDetails ='';
            
            txtHtmlDetails += ` <h6 class="text-right">Codigo Link: ${jsonObj.comercio.link}</h6>
                                <h6 class="text-right">Codigo de Gestión: ${jsonObj.comercio.codigogestion}</h6>
                                <h6>Numero de Inscripción Comercial: ${jsonObj.comercio.inscripcion}</h6>
                                <h6>Razón Social: ${jsonObj.comercio.razonsocial}</h6>
                                <h6>Documento: ${jsonObj.comercio.numerodocumento}</h6>
                                <h6>Responsable: ${jsonObj.comercio.nombreindividuo}</h6>
                                <h6>Domicilio Comercial:: ${jsonObj.comercio.domiciliocomercial}</h6>
                                <h6>Empleados: ${jsonObj.comercio.personal}</h6> 
                                <h6>Superficie: ${jsonObj.comercio.superficie} m2</h6> 
                                <h6>Ingreso Anual: $ ${jsonObj.comercio.ingresoanual}</h6> 
                                <h6>Categoría Monotributo: ${jsonObj.comercio.categoriamonotributo}</h6>
                                <h6>Mail: ${jsonObj.comercio.mail}</h6>
                                <h6>Publicidad: ${jsonObj.comercio.publicidad} %</h6>
                                <h6>Observaciones: ${jsonObj.comercio.observaciones}</h6>
                                <br>
                                <p class="text-primary">Fecha Inscripcion: ${jsonObj.comercio.fechainscripcion} -
                                    Fecha Inicio de Actividades: ${jsonObj.comercio.fechainicio} -
                                    Fecha Cese: ${jsonObj.comercio.fechacese}</p>
                                `;
            
            document.getElementById('detalle').innerHTML = txtHtmlDetails;
            return jsonObj;
        }
    }
    obj.send();
    return false;
};


const getPrintDeuda = () => {
    let templateLoading = '';
    let params = '';
    if (location.search.length > 0) {
        params = location.search;
    }
    if (document.getElementById('loading')) {
        // Loading 
        templateLoading = `<div class="loading"><img src="/miciudad/assets/images/loader.gif" alt="loading" /><br/>Un momento, por favor...</div>`;
        document.getElementById('loading').innerHTML = templateLoading;
    }
    let obj = new XMLHttpRequest();
    obj.open('GET', `${baseUrl}Comercios/PrintDeudaServices${params}`, true);
    obj.onreadystatechange = function() {
        templateLoading = '';
        if (obj.readyState == 4) {
            const objCleaned = obj.responseText.slice(84);
            const jsonObj = JSON.parse(objCleaned);
            window.location = `${ipServer}municipio2.0/Documents/Drei/${jsonObj[0].file}`
            return jsonObj;
        }
        if (document.getElementById('loading')) {
            document.getElementById('loading').innerHTML = templateLoading;
        }
    };
    obj.send();
    return false;
};


const getPrintPagos = () => {
    let templateLoading = '';
    let params = '';
    if (location.search.length > 0) {
        params = location.search;
    }
    if (document.getElementById('loading')) {
        // Loading 
        templateLoading = `<div class="loading"><img src="/miciudad/assets/images/loader.gif" alt="loading" /><br/>Un momento, por favor...</div>`;
        document.getElementById('loading').innerHTML = templateLoading;
    }
    let obj = new XMLHttpRequest();
    obj.open('GET', `${baseUrl}Comercios/PrintPagosServices${params}`, true);
    obj.onreadystatechange = function() {
        templateLoading = '';
        if (obj.readyState == 4) {
            const objCleaned = obj.responseText.slice(84);
            const jsonObj = JSON.parse(objCleaned);
            window.location = `${ipServer}municipio2.0/Documents/Drei/${jsonObj[0].file}`
            return jsonObj;
        }
        if (document.getElementById('loading')) {
            document.getElementById('loading').innerHTML = templateLoading;
        }
    };
    obj.send();
    return false;
};



// update form 
if (document.getElementById('update')) {
    document.getElementById('update').addEventListener('click', (e) => {
        e.preventDefault();
        var params = '';
        const inscripcion = document.getElementById('inscripcion').value;
        const razonSocial = document.getElementById('razonSocial').value;
        const numeroDocumento = document.getElementById('numeroDocumento').value;
        const tipoDocumento = document.getElementById('tipoDocumento').value;
        const cuit = document.getElementById('cuit').value;
        const domicilioComercio = document.getElementById('domicilioComercio').value;
        const cabin9 = document.getElementById('cabin9').checked;
        const mail = document.getElementById('mail').value;
        const fechaInscripcion = document.getElementById('fechaInscripcion').value.split('-').reverse().join('/');
        const fechaInicio = document.getElementById('fechaInicio').value.split('-').reverse().join('/');
        const fechaCese = document.getElementById('fechaCese').value.split('-').reverse().join('/');
        const activo = document.getElementById('activo').checked;
        const granContribuyente = document.getElementById('granContribuyente').checked;
        const adhiere = document.getElementById('adhiere').checked;
        const cantidadEmpleados = document.getElementById('cantidadEmpleados').value;
        const superficie = document.getElementById('superficie').value;
        const ingresoAnual = document.getElementById('ingresoAnual').value;
        const categoriaMonotributo = document.getElementById('categoriaMonotributo').value;
        const domicilioEntrega = document.getElementById('domicilioEntrega').value;
        const codigoPostal = document.getElementById('codigoPostal').value;
        const publicidad = document.getElementById('publicidad').value;
        const observaciones = document.getElementById('observaciones').value;

        params = `inscripcion=${inscripcion}
                 &razonSocial=${razonSocial}
                 &numeroDocumento=${numeroDocumento}
                 &tipoDocumento=${tipoDocumento}
                 &cuit=${cuit}
                 &domicilioComercio=${domicilioComercio}
                 &cabin9=${cabin9}
                 &mail=${mail}
                 &fechaInscripcion=${fechaInscripcion}
                 &fechaInicio=${fechaInicio}
                 &fechaCese=${fechaCese}
                 &activo=${activo}
                 &granContribuyente=${granContribuyente}
                 &adhiere=${adhiere}
                 &cantidadEmpleados=${cantidadEmpleados}
                 &superficie=${superficie}
                 &ingresoAnual=${ingresoAnual}
                 &categoriaMonotributo=${categoriaMonotributo}
                 &domicilioEntrega=${domicilioEntrega}
                 &codigoPostal=${codigoPostal}
                 &publicidad=${publicidad}
                 &observaciones=${observaciones}`;

        let obj = new XMLHttpRequest();
        obj.open('POST', `${baseUrl}Comercios/ComercioUpdateServices`, true);
        obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
        obj.onreadystatechange = function() {
            if (obj.readyState == 4) {
                const objCleaned = obj.responseText.slice(84);
                const jsonObj = JSON.parse(objCleaned);
                if (jsonObj.error != '') {
                    document.getElementById('informe').innerHTML = jsonObj.error;
                    return false;
                }
                window.location = 'comercios.html';
                return jsonObj;

            }
        }
        obj.send(params);
        return false;
    });
};

// create form 
if (document.getElementById('create')) {
    document.getElementById('create').addEventListener('click', (e) => {
        e.preventDefault();
        var params = '';
        const inscripcion = document.getElementById('inscripcion').value;
        const razonSocial = document.getElementById('razonSocial').value;
        const numeroDocumento = document.getElementById('numeroDocumento').value;
        const tipoDocumento = document.getElementById('tipoDocumento').value;
        const cuit = document.getElementById('cuit').value;
        const domicilioComercio = document.getElementById('domicilioComercio').value;
        const cabin9 = document.getElementById('cabin9').checked;
        const mail = document.getElementById('mail').value;
        const fechaInscripcion = document.getElementById('fechaInscripcion').value.split('-').reverse().join('/');
        const fechaInicio = document.getElementById('fechaInicio').value.split('-').reverse().join('/');
        const fechaCese = document.getElementById('fechaCese').value.split('-').reverse().join('/');
        const activo = document.getElementById('activo').checked;
        const granContribuyente = document.getElementById('granContribuyente').checked;
        const adhiere = document.getElementById('adhiere').checked;
        const cantidadEmpleados = document.getElementById('cantidadEmpleados').value;
        const superficie = document.getElementById('superficie').value;
        const ingresoAnual = document.getElementById('ingresoAnual').value;
        const categoriaMonotributo = document.getElementById('categoriaMonotributo').value;
        const domicilioEntrega = document.getElementById('domicilioEntrega').value;
        const codigoPostal = document.getElementById('codigoPostal').value;
        const publicidad = document.getElementById('publicidad').value;
        const observaciones = document.getElementById('observaciones').value;

        params = `inscripcion=${inscripcion}
                 &razonSocial=${razonSocial}
                 &numeroDocumento=${numeroDocumento}
                 &tipoDocumento=${tipoDocumento}
                 &cuit=${cuit}
                 &domicilioComercio=${domicilioComercio}
                 &cabin9=${cabin9}
                 &mail=${mail}
                 &fechaInscripcion=${fechaInscripcion}
                 &fechaInicio=${fechaInicio}
                 &fechaCese=${fechaCese}
                 &activo=${activo}
                 &granContribuyente=${granContribuyente}
                 &adhiere=${adhiere}
                 &cantidadEmpleados=${cantidadEmpleados}
                 &superficie=${superficie}
                 &ingresoAnual=${ingresoAnual}
                 &categoriaMonotributo=${categoriaMonotributo}
                 &domicilioEntrega=${domicilioEntrega}
                 &codigoPostal=${codigoPostal}
                 &publicidad=${publicidad}
                 &observaciones=${observaciones}`;

        let obj = new XMLHttpRequest();
        obj.open('POST', `${baseUrl}Comercios/ComercioCreateServices`, true);
        obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
        obj.onreadystatechange = function() {
            if (obj.readyState == 4) {
                const objCleaned = obj.responseText.slice(84);
                const jsonObj = JSON.parse(objCleaned);
                if (jsonObj.error != '') {
                    document.getElementById('informe').innerHTML = jsonObj.error;
                    return false;
                }
                window.location = 'comercios.html';
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
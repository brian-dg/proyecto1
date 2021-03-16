// delete register
const RubroDelete = (numeroRubro) => {  
    let params = '';
    let response = confirm('Seguro que quiere eliminar el rubro: ' + numeroRubro + ' ?');
    if(response == true ){
        params = `numeroRubro=${numeroRubro}`; 
        let obj = new XMLHttpRequest(); 
        obj.open('POST', `${baseUrl}Comercios/RubroDeleteServices`, true);
        obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
        obj.onreadystatechange = function () { console.log(obj.responseText)
            if (obj.readyState == 4 && obj.status == 200) {
                const objCleaned = obj.responseText.slice(84);  console.log(objCleaned)
                const jsonObj = JSON.parse(objCleaned);
                if (jsonObj.error != '') {
                    document.getElementById('informe').innerHTML = jsonObj.error;
                    return false;
                }
                getRubros();
                return xmlDoc;
            }
        }
        obj.send(params);
        return false;
    }
};


const getRubros = () => {
    let templateLoading = '';
    let txtHtml = '';
    let templateCantidad = '';
    let templateBoton = '';
    let params = '';
    if (location.search.length > 0) {
        params = location.search;
    }
    // Loading 
    templateLoading = `<div class="loading"><img src="/miciudad/assets/images/loader.gif" alt="loading" /><br/>Un momento, por favor...</div>`;
    document.getElementById('loading').innerHTML = templateLoading;
    
    let obj = new XMLHttpRequest();
    obj.open('GET', `${baseUrl}Comercios/RubrosServices${params}`, true);
    obj.onreadystatechange = function() {
        
        if (obj.readyState == 4 && obj.status == 200) {

            const objCleaned = obj.responseText.slice(84); 
            const jsonObj = JSON.parse(objCleaned);
            templateLoading = '';
            document.getElementById('loading').innerHTML = templateLoading;
            templateBoton = `<a href="./printcomercio.html" target="_blank">
                                <button class="mt-1 btn btn-success btn-sm" type="button">Imprimir Listado de Rubros</button>
                            </a>
                            <a href="./RubroCreate.html">
					            <button class="mt-1 btn btn-sm btn-primary" type="button">Nuevo Rubro</button>
                            </a>`;

            templateCantidad = `<h6 class="text-primary">Cantidad de Rubros: ${jsonObj[0].cantidadtotal}</h6>`;
            document.getElementById('total').innerHTML = templateCantidad;
            jsonObj.forEach(element => {
                
                    txtHtml += ` <tr>
                                <td class="text-left">${element.codigo}</td>
                                <td class="text-left">${element.nombrerubro}</td> 
                                <td class="text-right">${element.alicuota}</td> 
                                <td class="text-right">${element.montominimo}</td> 
                                <td class="text-center">
                                <a href="./RubroVer.html?numeroRubro=${element.codigo}">
                                    <button type="button"  class="btn btn-warning btn-sm">Ver</button>
                                </a>

                                <a href="./RubroEdit.html?numeroRubro=${element.codigo}">
                                    <button type="button"  class="btn btn-success btn-sm">Editar</button>
                                </a>
                            
                                <button type="button" class="btn btn-danger btn-sm" onclick="RubroDelete(${element.codigo})">Eliminar</button>
                            </td> 
                                </tr>`;

                                

                
            });
            document.getElementById('table-result').innerHTML = txtHtml;
            document.getElementById('btnRubro').innerHTML = templateBoton;
            return jsonObj;
        }
       
       
       
    };
    obj.send();
    return false;
};

// busqueda just in time por palabra
const getSearch = (e) => {
    let palabra = '';
    let numeroRubro = '';
    let txtHtml = '';
    let templateBoton = '';
    
    palabra = document.getElementById('palabra').value;
    numeroRubro = document.getElementById('numeroRubro').value;
    if (palabra.length > 0 || numeroRubro.length > 0) {
        var params = `palabra=${palabra}
                    &numeroRubro=${numeroRubro}`;  
        
        let obj = new XMLHttpRequest();
        obj.open('POST', `${baseUrl}Comercios/RubrosServices`, true);
        obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
        obj.onreadystatechange = function() {
            if (obj.readyState == 4) {
                const objCleaned = obj.responseText.slice(84); 
                const jsonObj = JSON.parse(objCleaned);

                templateBoton = `<a href="./printcomercio.html?numeroRubro=${jsonObj[0].codigo}" target="_blank">
                                <button class="mt-1 btn btn-success btn-sm" type="button">Imprimir Listado de Rubros</button>
                            </a>
                            <a href="./RubroCreate.html">
					            <button class="mt-1 btn btn-sm btn-primary" type="button">Nuevo Rubro</button>
                            </a>`;

                if (jsonObj.length > 0) {
                    jsonObj.forEach(element => {
                        
                        txtHtml += ` <tr>
                        <td class="text-left">${element.codigo}</td>
                        <td class="text-left">${element.nombrerubro}</td> 
                        <td class="text-right">${element.alicuota}</td> 
                        <td class="text-right">${element.montominimo}</td> 
                        <td class="text-center">
                        <a href="./RubroVer.html?numeroRubro=${element.codigo}">
                            <button type="button"  class="btn btn-warning btn-sm">Ver</button>
                        </a>

                        <a href="./RubroEdit.html?numeroRubro=${element.codigo}">
                            <button type="button"  class="btn btn-success btn-sm">Editar</button>
                        </a>
                    
                        <button type="button" class="btn btn-danger btn-sm" onclick="RubroDelete(${element.codigo})">Eliminar</button>
                    </td> 
                        </tr>`;
                        

                    });
                    document.getElementById('table-result').innerHTML = txtHtml;
                    document.getElementById('btnRubro').innerHTML = templateBoton;
                    return jsonObj;
                };
            }
        };
        obj.send(params);
        return false;
    } else {
        getRubros();
    };
};


const getRubro = () => {
    let params = '';

    if (location.search.length > 0) {
        params = location.search;
    }
    let obj = new XMLHttpRequest();
    obj.open('GET', `${baseUrl}Comercios/RubroServices${params}`, true); console.log(params)
    obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
    obj.onreadystatechange = function() {

        if (obj.readyState == 4) {
            const objCleaned = obj.responseText.slice(84); console.log(objCleaned)
            const jsonObj = JSON.parse(objCleaned);
            
            
            document.getElementById('numeroRubro').value = jsonObj.Rubro.codigo;
            document.getElementById('nombreRubro').value = jsonObj.Rubro.nombrerubro;
            document.getElementById('alicuota').value = jsonObj.Rubro.alicuota;
            document.getElementById('montoMinimo').value = jsonObj.Rubro.montominimo;
            
            return jsonObj;
        }
    }
    obj.send();
    return false;
};


const getRubroDetails = () => {
    if (location.search.length > 0) {
        params = location.search;
    }
    let obj = new XMLHttpRequest();
    obj.open('GET', `${baseUrl}Comercios/RubroServices${params}`, true);
    obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
    obj.onreadystatechange = function() {

        if (obj.readyState == 4) {
            const objCleaned = obj.responseText.slice(84);
            const jsonObj = JSON.parse(objCleaned);
            let txtHtmlDetails ='';
            
            const alicuotaNormalized = jsonObj.Rubro.alicuota.replace('.', '').replace(',', '.');
            const montoMinimoNormalized = jsonObj.Rubro.montominimo.replace('.', '').replace(',', '.');
                    
            
            txtHtmlDetails += ` <h6>Número Rubro: ${jsonObj.Rubro.codigo}</h6>
                                <h6>Nombre del rubro: ${jsonObj.Rubro.nombreRubro}</h6>
                                <h6>Alícuota: ${parseFloat(alicuotaNormalized).toFixed(2)}</h6>
                                <h6>Monto Mínimo: ${parseFloat(montoMinimoNormalized).toFixed(2)}</h6>
                                `;
            
            document.getElementById('detalle').innerHTML = txtHtmlDetails;
            return jsonObj;
        }
    }
    obj.send();
    return false;
};


const getPrintRubros = () => {
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
    obj.open('GET', `${baseUrl}Comercios/PrintRubrosServices${params}`, true);
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
        const numeroRubro = document.getElementById('numeroRubro').value;
        const nombreRubro = document.getElementById('nombreRubro').value;
        const alicuota = document.getElementById('alicuota').value;
        const montoMinimo = document.getElementById('montoMinimo').value;
        
        params = `numeroRubro=${numeroRubro}
                 &nombreRubro=${nombreRubro}
                 &alicuota=${alicuota}
                 &montoMinimo=${montoMinimo}`;

        let obj = new XMLHttpRequest();
        obj.open('POST', `${baseUrl}Comercios/RubroUpdateServices`, true);
        obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
        obj.onreadystatechange = function() {
            if (obj.readyState == 4) {
                const objCleaned = obj.responseText.slice(84);
                const jsonObj = JSON.parse(objCleaned);
                if (jsonObj.error != '') {
                    document.getElementById('informe').innerHTML = jsonObj.error;
                    return false;
                }
                window.location = 'Rubros.html';
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
        const numeroRubro = document.getElementById('numeroRubro').value;
        const nombreRubro = document.getElementById('nombreRubro').value;
        const alicuota = document.getElementById('alicuota').value;
        const montoMinimo = document.getElementById('montoMinimo').value;
        
        params = `numeroRubro=${numeroRubro}
                 &nombreRubro=${nombreRubro}
                 &alicuota=${alicuota}
                 &montoMinimo=${montoMinimo}`;

        let obj = new XMLHttpRequest();
        obj.open('POST', `${baseUrl}Comercios/RubroCreateServices`, true);
        obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
        obj.onreadystatechange = function() {
            if (obj.readyState == 4) {
                const objCleaned = obj.responseText.slice(84); console.log(objCleaned)
                const jsonObj = JSON.parse(objCleaned);
                if (jsonObj.error != '') {
                    document.getElementById('informe').innerHTML = jsonObj.error;
                    return false;
                }
                window.location = 'Rubros.html';
                return jsonObj;

            }
        }
        obj.send(params);
        return false;
    });
};

const getRubrosporComercio = () => {
    let txtHtml = '';
    let params = '';
    if (location.search.length > 0) {
        params = location.search;
    } console.log(params)
   
    
    let obj = new XMLHttpRequest();
    obj.open('GET', `${baseUrl}Comercios/RubrosporComercioServices${params}`, true);
    obj.onreadystatechange = function() {
        
        if (obj.readyState == 4 && obj.status == 200) {
            const objCleaned = obj.responseText.slice(84); 
            const jsonObj = JSON.parse(objCleaned);
            jsonObj.forEach(element => {
                
                    txtHtml += ` <tr>
                                <option value="${element.codigo}">${element.nombrerubro}</option>
                                </tr>`;

                                

                
            });
            document.getElementById('rubros-search').innerHTML = txtHtml;
            
            return jsonObj;
        }
       
       
       
    };
    obj.send();
    return false;
};


const getRubrosAsociado = () => {
    let txtHtml = '';
    let params = '';
    if (location.search.length > 0) {
        params = location.search;
    } console.log(params)

    
    let obj = new XMLHttpRequest();
    obj.open('GET', `${baseUrl}Comercios/RubrosAsociadoServices${params}`, true);
    obj.onreadystatechange = function() {
        
        if (obj.readyState == 4 && obj.status == 200) {
            const objCleaned = obj.responseText.slice(84); 
            const jsonObj = JSON.parse(objCleaned);
            jsonObj.forEach(element => {
                
                txtHtml += ` <tr>
                <td class="text-left">${element.codigo}</td>
                <td class="text-left">${element.nombrerubro}</td> 
                <td class="text-right">${element.alicuota}</td> 
                <td class="text-right">${element.montominimo}</td> 
                <td class="text-center">
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

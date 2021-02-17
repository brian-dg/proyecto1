const getDeudas = () => {
    let templateLoading = '';
    let txtHtml = '';
    let params = '';
    let templateInforme = '';
    let templateTotal = '';

    
    let inscripcion = '';
    let cantidadTotal = 0;

    let totalNominal = 0;
    let totalPagos = 0;
    let totalDeuda = 0;
    let totalActual = 0;
    let totalFoprosi = 0;
    let totalPublicidad = 0;
    let totalGeneral = 0;

    templateBoton = '';
    if (location.search.length > 0) {
        params = location.search;
    }
    // Loading 
    templateLoading = `<div class="loading"><img src="/miciudad/assets/images/loader.gif" alt="loading" /><br/>Un momento, por favor...</div>`;
    document.getElementById('loading').innerHTML = templateLoading;
    
    let obj = new XMLHttpRequest();
    obj.open('GET', `${baseUrl}Comercios/DeudaComercioServices${params}`, true);
    obj.onreadystatechange = function() {
        if (obj.readyState == 4 && obj.status == 200) {
            const objCleaned = obj.responseText.slice(84);
            const jsonObj = JSON.parse(objCleaned);
            templateLoading = '';
            document.getElementById('loading').innerHTML = templateLoading;

            templateInforme = `Inscripción Comercial: ${jsonObj[0].inscripcion} - ${jsonObj[0].razonSocial}`;
            templateBoton = `<a href="./printdeudadrei.html?inscripcion=${jsonObj[0].inscripcion}" target="_blank">
                                <button class="mt-1 btn btn-success btn-sm" type="button">Imprimir Listado de Deuda</button>
                            </a>
                            <a href="./pagos.html?inscripcion=${jsonObj[0].inscripcion}">
					            <button class="mt-1 btn btn-sm btn-primary" type="button">Ver Pagos</button>
                            </a>`;

            jsonObj.forEach(element => {
                inscripcion = element.inscripcion;
                cantidadTotal = element.cantidadtotal;
                if (element.error == '') {
                    if (element.convenio == 0) {
                        txtHtml += `<tr>
                                <td class="text-left">${element.periodo}/${element.anio}</td>
                                <td class="text-left">${element.nominal}</td> 
                                <td class="text-left">${element.pagos}</td> 
                                <td class="text-left">${element.deuda}</td> 
                                <td class="text-left">${element.actual}</td> 
                                <td class="text-left">${element.foprosi}</td> 
                                <td class="text-left">${element.publicidad}</td> 
                                <td class="text-left">${element.convenio}</td>`

                                if(element.ddjj == 'yes'){
                                    txtHtml += `<td class="text-center"><span class="bg-success  small text-white rounded">Presentó</span></td>`;
                                }
                                else{
                                    txtHtml += `<td class="text-center"><span class="bg-danger  small text-white rounded">No presentó</span></td>`;
                                }

                                txtHtml += `<td class="text-center">
                                <div class="dropdown">
                                    <button 
                                        class="btn btn-mypage2" 
                                        type="button" 
                                        data-toggle="dropdown" 
                                        aria-haspopup="true" 
                                        aria-expanded="false"
                                    >
                                        <i class="fas fa-ellipsis-v"></i>
                                    </button>
                                    <div class="dropdown-menu bg-primarysoft" aria-labelledby="dropdownMenuButton">`
                                    if(element.ddjj == 'yes'){
                                        txtHtml += `<a href="./printddjj.html?inscripcion=${element.inscripcion}&periodo=${element.periodo}&anio=${element.anio}" target="_blank">
                                                        Visualizar DDJJ
                                                    </a>`
                                    }
                                     txtHtml += `<a class="dropdown-item" href="#">Cargar pago manual</a>
                                    </div>
                                </div>
                            </td>
                                </tr>`;
                    } else {
                        txtHtml += `<tr>
                                <td class="text-left bg-warningsoft">${element.periodo}/${element.anio}</td>
                                <td class="text-left bg-warningsoft">${element.nominal}</td> 
                                <td class="text-left bg-warningsoft">${element.pagos}</td> 
                                <td class="text-left bg-warningsoft">${element.deuda}</td> 
                                <td class="text-left bg-warningsoft">${element.actual}</td> 
                                <td class="text-left bg-warningsoft">${element.foprosi}</td> 
                                <td class="text-left bg-warningsoft">${element.publicidad}</td> 
                                <td class="text-left bg-warningsoft">${element.convenio}</td> 
                                <td class="text-left bg-warningsoft">&nbsp</td> 
                                <td class="text-left bg-warningsoft"> 
                                </td>
                                </tr>`;
                    }


                    const nominalNormalized = element.nominal.replace('.', '').replace(',', '.');
                    totalNominal += parseFloat(nominalNormalized);
                    const pagosNormalized = element.pagos.replace('.', '').replace(',', '.');
                    totalPagos += parseFloat(pagosNormalized);
                    const deudaNormalized = element.deuda.replace('.', '').replace(',', '.');
                    totalDeuda += parseFloat(deudaNormalized);
                    const actualNormalized = element.actual.replace('.', '').replace(',', '.');
                    totalActual += parseFloat(actualNormalized);
                    const foprosiNormalized = element.foprosi.replace('.', '').replace(',', '.');
                    totalFoprosi += parseFloat(foprosiNormalized);
                    const publicidadNormalized = element.publicidad.replace('.', '').replace(',', '.');
                    totalPublicidad += parseFloat(publicidadNormalized);

                    totalGeneral = totalActual + totalFoprosi + totalPublicidad;
                }
            });


            templateTotal = `<p>Deuda Total: ${totalGeneral.toFixed(2).replace('.', ',')}</p>`

            txtHtml += `<tr><td colspan="10">&nbsp</td></tr>
                                <tr>
                                <td class="text-left card-title">Total:</td>
                                <td class="text-left card-title">${totalNominal.toFixed(2).replace('.', ',')}</td> 
                                <td class="text-left card-title">${totalPagos.toFixed(2).replace('.', ',')}</td> 
                                <td class="text-left card-title">${totalDeuda.toFixed(2).replace('.', ',')}</td> 
                                <td class="text-rleft card-title">${totalActual.toFixed(2).replace('.', ',')}</td> 
                                <td class="text-left card-title">${totalFoprosi.toFixed(2).replace('.', ',')}</td> 
                                <td class="text-left card-title">${totalPublicidad.toFixed(2).replace('.', ',')}</td> 
                                <td class="text-left card-title">&nbsp</td> 
                                <td class="text-left card-title">&nbsp</td> 
                                <td class="text-left"> 
                                </td>
                                </tr>`

            document.getElementById('table-result').innerHTML = txtHtml;
            document.getElementById('titulo').innerHTML = templateInforme;
            document.getElementById('total').innerHTML = templateTotal;
            document.getElementById('btnDeuda').innerHTML = templateBoton;
            return jsonObj;
        }
    };
    obj.send();
    return false;
};
// PAGOS
const getPagos = () => {
    let templateLoading = '';
    let txtHtml = '';
    let params = '';
    let templateInforme = '';
    let templateTotal = '';

    let inscripcion = '';
    let cantidadTotal = 0;

    let totalNominal = 0;
    let totalPagos = 0;
    let totalDeuda = 0;
    let totalActual = 0;
    let totalFoprosi = 0;
    let totalGeneral = 0;

    templateBoton = '';
    if (location.search.length > 0) {
        params = location.search;
    }
    
    // Loading 
    templateLoading = `<div class="loading"><img src="/miciudad/assets/images/loader.gif" alt="loading" /><br/>Un momento, por favor...</div>`;
    document.getElementById('loading').innerHTML = templateLoading;
    
    let obj = new XMLHttpRequest();
    obj.open('GET', `${baseUrl}Comercios/PagosComercioServices${params}`, true);
    obj.onreadystatechange = function() {
         
        if (obj.readyState == 4 && obj.status == 200) {
            const objCleaned = obj.responseText.slice(84); console.log(objCleaned)
            const jsonObj = JSON.parse(objCleaned);
            templateLoading = '';
            document.getElementById('loading').innerHTML = templateLoading;

            templateInforme = `Inscripción Comercial: ${jsonObj[0].inscripcion} - ${jsonObj[0].razonSocial}`;
            templateBoton = `<a href="./printpagosdrei.html?inscripcion=${jsonObj[0].inscripcion}" target="_blank">
                                <button class="mt-1 btn btn-sm btn-success" type="button">Imprimir Listado de Pagos</button>
                            </a>
                            <a href="./cuentacorriente.html?inscripcion=${jsonObj[0].inscripcion}">
					            <button class="mt-1 btn btn-sm btn-primary" type="button">Ver Deuda</button>
                            </a>`;

            jsonObj.forEach(element => {
                inscripcion = element.inscripcion;
                cantidadTotal = element.cantidadtotal;
                if (element.error == '') {
                    if (element.convenio == 0) {
                        txtHtml += `<tr>
                                <td class="text-left">${element.periodo}/${element.anio}</td>
                                <td class="text-left">${element.nominal}</td> 
                                <td class="text-left">${element.pagos}</td> 
                                <td class="text-left">${element.fechapago}</td> 
                                <td class="text-left">${element.caja}</td> 
                                <td class="text-leftt">${element.saldo}</td> 
                                <td class="text-left">${element.saldoactual}</td> 
                                <td class="text-left">${element.foprosi}</td>
                                <td class="text-left">${element.convenio}</td>` 
                                if(element.ddjj == 'yes'){
                                    txtHtml += `<td class="text-center"><span class="bg-success  small text-white rounded">Presentó</span></td>`;
                                }
                                else{
                                    txtHtml += `<td class="text-center"><span class="bg-danger  small text-white rounded">No presentó</span></td>`;
                                }
                                

                                txtHtml += ` <td class="text-center">
                                <div class="dropdown">
                                    <button 
                                        class="btn btn-mypage2" 
                                        type="button" 
                                        data-toggle="dropdown" 
                                        aria-haspopup="true" 
                                        aria-expanded="false"
                                    >
                                        <i class="fas fa-ellipsis-v"></i>
                                    </button>
                                    <div class="dropdown-menu bg-primarysoft" aria-labelledby="dropdownMenuButton">`
                                    if(element.ddjj == 'yes'){
                                        txtHtml += `<a class="ml-2" href="./printddjj.html?inscripcion=${element.inscripcion}&periodo=${element.periodo}&anio=${element.anio}" target="_blank">
                                        Visualizar DDJJ
                                            </a>`
                                    }
                                     txtHtml += `<a class="dropdown-item" href="#">Cancelar pago</a>
                                    </div>
                                </div>
                            </td>
                                </tr>`;
                    }
                    else {  
                        txtHtml += `<tr>
                                <td class="text-left bg-warningsoft">${element.periodo}/${element.anio}</td>
                                <td class="text-left bg-warningsoft">${element.nominal}</td> 
                                <td class="text-left bg-warningsoft">${element.pagos}</td> 
                                <td class="text-left bg-warningsoft">${element.fechapago}</td> 
                                <td class="text-left bg-warningsoft">${element.caja}</td> 
                                <td class="text-left bg-warningsoft">${element.saldo}</td> 
                                <td class="text-left bg-warningsoft">${element.saldoactual}</td> 
                                <td class="text-left bg-warningsoft">${element.foprosi}</td> 
                                <td class="text-left bg-warningsoft">${element.convenio}</td> 
                                <td class="text-left bg-warningsoft">&nbsp</td> 
                                <td class="text-left bg-warningsoft">
                                </td>
                                </tr>`;

                    }

                    const nominalNormalized = element.nominal.replace('.', '').replace(',', '.');
                    totalNominal += parseFloat(nominalNormalized);
                    const pagosNormalized = element.pagos.replace('.', '').replace(',', '.');
                    totalPagos += parseFloat(pagosNormalized);
                    const deudaNormalized = element.saldo.replace('.', '').replace(',', '.');
                    totalDeuda += parseFloat(deudaNormalized);
                    const actualNormalized = element.saldoactual.replace('.', '').replace(',', '.');
                    totalActual += parseFloat(actualNormalized);
                    const foprosiNormalized = element.foprosi.replace('.', '').replace(',', '.');
                    totalFoprosi += parseFloat(foprosiNormalized);
                    

                    totalGeneral = totalPagos + totalFoprosi;
                }
            });


            templateTotal = `<p>Total Abonado: ${totalGeneral.toFixed(2).replace('.', ',')}</p>`

            txtHtml += `<tr><td colspan="11">&nbsp</td></tr>
                                <tr>
                                <td class="text-left card-title">Total:</td>
                                <td class="text-left card-title">${totalNominal.toFixed(2).replace('.', ',')}</td> 
                                <td class="text-left card-title">${totalPagos.toFixed(2).replace('.', ',')}</td>
                                <td class="text-left card-title">&nbsp</td>
                                <td class="text-left card-title">&nbsp</td>
                                <td class="text-left card-title">${totalDeuda.toFixed(2).replace('.', ',')}</td> 
                                <td class="text-left card-title">${totalActual.toFixed(2).replace('.', ',')}</td> 
                                <td class="text-left card-title">${totalFoprosi.toFixed(2).replace('.', ',')}</td> 
                                <td class="text-left">&nbsp</td>
                                <td class="text-left">&nbsp</td>
                                <td class="text-left"> 
                                </td>
                                </tr>`

            document.getElementById('table-result').innerHTML = txtHtml;
            document.getElementById('titulo').innerHTML = templateInforme;
            document.getElementById('total').innerHTML = templateTotal;
            document.getElementById('btnDeuda').innerHTML = templateBoton;
            return jsonObj;
        }
        
    };
    obj.send();
    return false;
};

const getPrintDDJJ = () => {
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
    obj.open('GET', `${baseUrl}Comercios/PrintDDJJServices${params}`, true);
    obj.onreadystatechange = function() {
        templateLoading = '';
        if (obj.readyState == 4) {
            const objCleaned = obj.responseText.slice(84); console.log(objCleaned)
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
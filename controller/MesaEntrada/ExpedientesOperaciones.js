
// RECEPCION DE EXPEDIENTES 
// search all registers
const getRecepcionExpedientes = () => {  
    // Loading 
    let templateLoading = ''; 
    templateLoading = `<div class="loading"><img src="/miciudad/assets/images/loader.gif" alt="loading" /><br/>Un momento, por favor...</div>`
    document.getElementById('loading').innerHTML = templateLoading;

   let obj = new XMLHttpRequest();
   obj.open('GET', `${baseUrl}/MesaEntrada/ExpedientesRecepcionServices`, true);
   obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
   obj.onreadystatechange = function () { 
       templateLoading = '';
       if(obj.status==200 && obj.responseText != 'error') { 
           let txtHtml = '';
           let template = '';
           let lastPage = 0;
           parser = new DOMParser();
           xmlDoc = parser.parseFromString(this.responseText,"text/xml");   console.log(xmlDoc)
            
           if(xmlDoc.getElementsByTagName('expedientes').length > 0) { 
               for(i=0;i<xmlDoc.getElementsByTagName('expedientes').length;i++){ 
                   numeroexpediente = xmlDoc.getElementsByTagName('numeroexpediente')[i].childNodes[0].nodeValue;
                   anio = xmlDoc.getElementsByTagName('anio')[i].innerHTML;
                   fecha = xmlDoc.getElementsByTagName('fecha')[i].innerHTML;
                   individuo = xmlDoc.getElementsByTagName('individuo')[i].innerHTML;
                   motivo = xmlDoc.getElementsByTagName('motivo')[i].innerHTML;
                   estado = xmlDoc.getElementsByTagName('estado')[i].innerHTML;
                   total = xmlDoc.getElementsByTagName('total')[i].innerHTML;
                   pagina = xmlDoc.getElementsByTagName('pagina')[i].innerHTML;
                   ref= xmlDoc.getElementsByTagName('expedientes')[i].getAttribute('ref');       
                   
                   if(total % 100 > 0) {
                       lastPage = parseInt(total / 100) + 1;
                   } 
                   else{
                       lastPage = parseInt(total / 100);
                   }
                   // dev view
                   txtHtml += `<tr>
                           <td class="text-left">${numeroexpediente}/${anio}</td>
                           <td class="text-left">${fecha}</td>
                           <td class="text-left">${individuo}</td> 
                           <td class="text-left">${motivo}</td>
                           <td class="text-center">
                           <button type="button" class="btn btn-success btn-sm" onclick="RecibirExpedientes(${numeroexpediente}, ${anio})">Recibir</button>
                           </td>
                           
                           </tr>`;
               } 
               if(total > 100) {   
                   // pagination
                   template = `<nav aria-label="Page navigation example" class="text-right">
                               <ul class="pagination justify-content-end m-3">`;
                   for(i=1;i< total / 100;i++){
                       template += `<li class="page-item text-primary"><a class="page-link" onclick="getExpedientesRecepcionPagination(${i})">${i}</a></li>`
                   }; 
                   template += `<li class="page-item ' + wdisabled + '"><a class="page-link text-primary" onclick="getExpedientesRecepcionPagination(${2})">>></a></li>
                               <li class="page-item"><a class="page-link text-primary" onclick="getExpedientesRecepcionPagination(${lastPage})">Fin</a></li>
                               </ul>
                              </nav>
                              <p class="text-left col-md-12 text-primary ml-3"><small> Página: ${pagina} de ${lastPage}</small></p>
                              `; 
               }
               else{
                   template = '';
               };
           }
           document.getElementById('loading').innerHTML = templateLoading;
           document.getElementById('pagination').innerHTML = template;
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

// search all registers paginations
const getExpedientesRecepcionPagination = (page) => {  
   let params = '';
   params = `page=${page}`;
   // Loading 
   let templateLoading = ''; 
   templateLoading = `<div class="loading"><img src="/miciudad/assets/images/loader.gif" alt="loading" /><br/>Un momento, por favor...</div>`
   document.getElementById('loading').innerHTML = templateLoading;

   let obj = new XMLHttpRequest();
   obj.open('POST', `${baseUrl}/MesaEntrada/ExpedientesRecepcionPaginationServices`, true);
   obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
   obj.onreadystatechange = function () { 
       templateLoading = '';
       if(obj.status==200 && obj.responseText != 'error') { 
           let txtHtml = '';
           let nextPage = 0;
           let prevPage = 0;
           let lastPage = 0;
           parser = new DOMParser();
           xmlDoc = parser.parseFromString(this.responseText,"text/xml");   
           if(xmlDoc.getElementsByTagName('expedientes').length > 0) {  
               for(i=0;i<xmlDoc.getElementsByTagName('expedientes').length;i++){ 
                   numeroexpediente = xmlDoc.getElementsByTagName('numeroexpediente')[i].childNodes[0].nodeValue;
                   anio = xmlDoc.getElementsByTagName('anio')[i].innerHTML;
                   fecha = xmlDoc.getElementsByTagName('fecha')[i].innerHTML;
                   individuo = xmlDoc.getElementsByTagName('individuo')[i].innerHTML;
                   motivo = xmlDoc.getElementsByTagName('motivo')[i].innerHTML;
                   estado = xmlDoc.getElementsByTagName('estado')[i].innerHTML;
                   pagina = xmlDoc.getElementsByTagName('pagina')[i].innerHTML;
                   ref= xmlDoc.getElementsByTagName('expedientes')[i].getAttribute('ref');             
                   // dev view
                   nextPage = parseInt(pagina) + 1; 
                   prevPage = parseInt(pagina) - 1;
                   if(total % 100 > 0) {
                       lastPage = parseInt(total / 100) + 1;
                   } 
                   else{
                       lastPage = parseInt(total / 100);
                   }
                   txtHtml += `<tr>
                           <td class="text-left">${numeroexpediente}/${anio}</td>
                           <td class="text-left">${fecha}</td>
                           <td class="text-left">${individuo}</td> 
                           <td class="text-left">${motivo}</td>
                           <td class="text-center">
                           <button type="button" class="btn btn-success btn-sm" onclick="RecibirExpedientes(${numeroexpediente}, ${anio})">Recibir</button>
                           </td>
                           </tr>`
               } 
               if(total > 100) {   
                   // pagination
                   template = `<nav aria-label="Page navigation example" class="text-right">
                               <ul class="pagination justify-content-end m-3">
                               <li class="page-item"><a class="page-link text-primary" onclick="getExpedientesRecepcionPagination(${1})">Inicio</a></li>
                               <li class="page-item"><a class="page-link text-primary" onclick="getExpedientesRecepcionPagination(${prevPage})"><<</a></li>` ;
                   for(i=1;i< total / 100;i++){
                       template += `<li class="page-item"><a class="page-link text-primary" onclick="getExpedientesRecepcionPagination(${i})">${i}</a></li>`
                   }; 
                   template += `<li class="page-item ' + wdisabled + '"><a class="page-link text-primary" onclick="getExpedientesRecepcionPagination(${nextPage})">>></a></li>
                               <li class="page-item"><a class="page-link text-primary" onclick="getExpedientesRecepcionPagination(${lastPage})">Fin</a></li>
                               </ul>
                               </nav>
                               <p class="text-left col-md-12 text-primary ml-3"><small> Página: ${pagina} de ${lastPage}</small></p>
                               `; 
                   }
                   else{
                       template = '';
                   };
                   document.getElementById('loading').innerHTML = templateLoading;
                   document.getElementById('pagination').innerHTML = template;
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
};



const RecibirExpedientes = (numeroExpediente, anio) => {  
   let params = '';
   let response = confirm('Confirma la recepción del expediente ' + numeroExpediente + '/' + anio + ' ?');
   if(response == true ){
       params = `numeroExpediente=${numeroExpediente}
                &anio=${anio}`; 
       let obj = new XMLHttpRequest(); console.log(params)
       obj.open('POST', `${baseUrl}/MesaEntrada/RecepcionExpedienteServices`, true);
       obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
       obj.onreadystatechange = function () { 
           if(obj.status==200 && obj.responseText != 'error') {
               window.location="RecepcionExpediente";
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
let newRegister = []; 
let cadena = '';
const addRegister = (name) => {
   if(name.checked){
       newRegister.push(name.value);
   }
   else {
       var i = newRegister.indexOf( name.value );
       if ( i !== -1 ) {
           newRegister.splice( i, 1 );
   }
   }
   cadena = newRegister.join(';');
   let template = ''; 
   template = `<button type="button" class="btn btn-primary btn-sm" onclick="EnviarExpedientes(cadena)">Enviar</button>`;
   document.getElementById('btnEnviar').innerHTML = template;
};

// search all registers
const getEnvioExpedientes = () => {  
   let fechaDesde = document.getElementById('fechaDesde').value; 
   let fechaHasta = document.getElementById('fechaHasta').value; 
   // Validaciones
   if(fechaDesde.length == 0) { 
       document.getElementById('requiredFechaDesde').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
       return false;
   } 
   else {
       document.getElementById('requiredFechaDesde').innerHTML = `<p class="text-danger"><small></smal></p>`
   }
   if(fechaHasta.length == 0) { 
       document.getElementById('requiredFechaHasta').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
       return false;
   } 
   else {
       document.getElementById('requiredFechaHasta').innerHTML = `<p class="text-danger"><small></smal></p>`
   }

    fechaDesde = fechaDesde.split('-').reverse().join('/');
    fechaHasta = fechaHasta.split('-').reverse().join('/');

   var params = `fechaDesde=${fechaDesde}
                 &fechaHasta=${fechaHasta}`; console.log(params);

   // Loading 
   let templateLoading = ''; 
   templateLoading = `<div class="loading"><img src="/miciudad/assets/images/loader.gif" alt="loading" /><br/>Un momento, por favor...</div>`
   document.getElementById('loading').innerHTML = templateLoading;
   let obj = new XMLHttpRequest(); 
   obj.open('POST', `${baseUrl}/MesaEntrada/ExpedientesEnvioServices`, true);
   obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
   obj.onreadystatechange = function () { 
       templateLoading = '';
       if(obj.status==200 && obj.responseText != 'error') { 
           let txtHtml = '';
           parser = new DOMParser();
           xmlDoc = parser.parseFromString(this.responseText,"text/xml");  
           if(xmlDoc.getElementsByTagName('expedientes').length > 0) {
              for(i=0;i<xmlDoc.getElementsByTagName('expedientes').length;i++){ 
                   numeroexpediente = xmlDoc.getElementsByTagName('numeroexpediente')[i].childNodes[0].nodeValue;
                   anio = xmlDoc.getElementsByTagName('anio')[i].innerHTML;
                   fecha = xmlDoc.getElementsByTagName('fecha')[i].innerHTML;
                   individuo = xmlDoc.getElementsByTagName('individuo')[i].innerHTML;
                   motivo = xmlDoc.getElementsByTagName('motivo')[i].innerHTML;
                   estado = xmlDoc.getElementsByTagName('estado')[i].innerHTML;
                   ref= xmlDoc.getElementsByTagName('expedientes')[i].getAttribute('ref');             
                   // dev view

                   
                  
                   txtHtml += `<tr>
                           <td class="text-left">${numeroexpediente}/${anio}</td>
                           <td class="text-left">${fecha}</td>
                           <td class="text-left">${individuo}</td> 
                           <td class="text-left">${motivo}</td>`; 
                    
                           while (numeroexpediente.length < 5) {
                            numeroexpediente = "0" + numeroexpediente;
                          };

                    txtHtml += `<td class="text-center">
                           <input type="checkbox" 
                               class="form-check-input" 
                               id="seleccion${i}" 
                               onclick="addRegister(seleccion${i})"
                               value="${numeroexpediente}${anio}"
                           >
                           </td>
                           </tr>`;
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
   obj.send(params);
   return false;
};


const EnviarExpedientes = (seleccionados) => {  
   let params = '';
   const codigoSector = document.getElementById('codigoSector').value;
   if(seleccionados.length == 0) { 
        document.getElementById('requiredSeleccionado').innerHTML = `<p class="text-danger"><small>Debe seleccionar al menos un expediente</smal></p>`
        return false;
    } 
    else {
        document.getElementById('requiredSeleccionado').innerHTML = `<p class="text-danger"><small></smal></p>`
    }
   if(codigoSector.length == 0 || parseInt(codigoSector) == 0) { 
    document.getElementById('requiredSector').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
    return false;
    } 
    else {
        document.getElementById('requiredSector').innerHTML = `<p class="text-danger"><small></smal></p>`
    }
    
    params = `seleccionados=${seleccionados}
               &codigoSector=${codigoSector}`;   
       let obj = new XMLHttpRequest(); 
       obj.open('POST', `${baseUrl}/MesaEntrada/EnvioExpedientesSeleccionadosServices`, true);
       obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
       obj.onreadystatechange = function () {  
           if(obj.status==200 && obj.responseText != 'error') { 
               window.location="EnvioExpediente";
               return xmlDoc;
           }
           else {
               console.error('error de conexion-> estatus: ' + obj.status + ', ready estatus: ' + obj.readyState);
               alertify.error('Ocurrió un Error');
           }
       }
       obj.send(params);
       return false;
};

const getLocalizarExpediente = () => { 
    let params  = ''; 
    const numeroExpediente = document.getElementById('numeroExpediente').value;
    const anioExpediente = document.getElementById('anioExpediente').value; 

    if(numeroExpediente.length == 0 || parseInt(numeroExpediente) == 0) {
        document.getElementById('requiredNumeroExpediente').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
        return false;
    }
    else {
        document.getElementById('requiredNumeroExpediente').innerHTML = `<p class="text-danger"><small></smal></p>`
    }
    if(anioExpediente.length == 0 || parseInt(anioExpediente) == 0) {
        document.getElementById('requiredAño').innerHTML = `<p class="text-danger"><small>Campo Obligatorio</smal></p>`
        return false;
    }
    else {
        document.getElementById('requiredAño').innerHTML = `<p class="text-danger"><small></smal></p>`
    }
    
    params = `numeroexpediente=${numeroExpediente}
            &anio=${anioExpediente}`;
                
    let obj = new XMLHttpRequest();
    obj.open('POST', `${baseUrl}/MesaEntrada/LocalizacionExpedienteServices`, true); 
    obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
    obj.onreadystatechange = function () { 
        if(obj.status==200 && obj.responseText != 'error') { 
            let templateDetalle = '';
            parser = new DOMParser();
            xmlDoc = parser.parseFromString(this.responseText,"text/xml");  
            // Seguimiento del expediente 
            if(xmlDoc.getElementsByTagName('seguimiento').length > 0) { 
                for(i=0;i<xmlDoc.getElementsByTagName('seguimiento').length;i++){  console.log(xmlDoc)
                   individuo = xmlDoc.getElementsByTagName('individuo')[i].innerHTML;
                   motivo = xmlDoc.getElementsByTagName('motivo')[i].innerHTML;
                   fecha = xmlDoc.getElementsByTagName('fecha')[i].innerHTML;
                   hora = xmlDoc.getElementsByTagName('hora')[i].innerHTML;
                   usuario = xmlDoc.getElementsByTagName('usuario')[i].innerHTML;
                    sectorenvio = xmlDoc.getElementsByTagName('sectorenvio')[i].innerHTML;
                    fechaenvio = xmlDoc.getElementsByTagName('fechaenvio')[i].innerHTML;
                    horaenvio = xmlDoc.getElementsByTagName('horaenvio')[i].innerHTML;
                    usuarioenvio = xmlDoc.getElementsByTagName('usuarioenvio')[i].innerHTML;
                    sectoringreso = xmlDoc.getElementsByTagName('sectoringreso')[i].innerHTML;
                    fechaingreso = xmlDoc.getElementsByTagName('fechaingreso')[i].innerHTML;
                    horaingreso = xmlDoc.getElementsByTagName('horaingreso')[i].innerHTML;
                    usuarioingreso = xmlDoc.getElementsByTagName('usuarioingreso')[i].innerHTML;
                    ref= xmlDoc.getElementsByTagName('seguimiento')[i].getAttribute('ref');   
                    
                    templateDetalle += `<tr>
                                    <td class="text-left">${sectorenvio}</td>
                                    <td class="text-left">${fechaenvio}</td>
                                    <td class="text-left">${horaenvio}</td> 
                                    <td class="text-left">${usuarioenvio}</td>
                                    <td class="text-left"></td>
                                    <td class="text-left">${sectoringreso}</td>
                                    <td class="text-left">${fechaingreso}</td>
                                    <td class="text-left">${horaingreso}</td> 
                                    <td class="text-left">${usuarioingreso}</td>
                                </tr>`; 

               } 
               document.getElementById('individuo').value = individuo;
               document.getElementById('motivo').value = motivo;
               document.getElementById('fechaIngreso').value = fecha;
               document.getElementById('horaIngreso').value = hora;
               document.getElementById('usuarioIngreso').value = usuario;
           }
           document.getElementById('table-result').innerHTML = templateDetalle;
           return xmlDoc;
            
        }
        else {
            console.error('error de conexion-> estatus: ' + obj.status + ', ready estatus: ' + obj.readyState);
            alertify.error('Ocurrió un Error');
        }
    }
    obj.send(params); 
    return false;
};
//const baseUrl = 'http://localhost/cgi-bin/cgiip.exe/WService=wsbroker2/services/';

// create
datos.addEventListener('submit', (e) => {
    e.preventDefault();
    const codigoNormativa = document.getElementById('codigoNormativa').value; 
    const numeroNormativa = document.getElementById('numeroNormativa').value;
    const anioNormativa = document.getElementById('anioNormativa').value;
    const resumen = document.getElementById('resumen').value;
    const fechaEmision = document.getElementById('fechaEmision').value;
    const fechaRecepcion = document.getElementById('fechaRecepcion').value;
    const modifica = document.getElementById('modifica').value;
    const modificada = document.getElementById('modificada').value;
    const origenNormativa = document.getElementById('origenNormativa').value;
    const vigente = document.getElementById('vigente');
    const publico = document.getElementById('publico');

    var params = `codigoNormativa=${codigoNormativa}
                &numeroNormativa=${numeroNormativa}
                &anioNormativa=${anioNormativa}
                &resumen=${resumen}
                &fechaEmision=${fechaEmision}
                &fechaRecepcion=${fechaRecepcion}
                &modifica=${modifica}
                &modificada=${modificada}
                &origenNormativa=${origenNormativa}
                &vigente=${vigente.checked}
                &publico=${publico.checked}
                `;

    let theObject = new XMLHttpRequest(); 
    theObject.open('POST', `${baseUrl}/DisposicionServices.html`, true);
    theObject.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
    theObject.onreadystatechange = function () {  console.log(theObject.responseText)
        if(theObject.status==200 && theObject.responseText != 'error') {
        let txtHtml = '';
        console.log(this.responseText)
        parser = new DOMParser();
        xmlDoc = parser.parseFromString(this.responseText,"text/xml");
       
        for(i=0;i<xmlDoc.getElementsByTagName('normativa').length;i++){
            codigo = xmlDoc.getElementsByTagName('codigo')[i].childNodes[0].nodeValue;
            descripcion = xmlDoc.getElementsByTagName('descripcion')[i].childNodes[0].nodeValue;
            ref= xmlDoc.getElementsByTagName('normativa')[i].getAttribute('ref');

                     txtHtml += `<tr>
                     <option value="${codigo}">${descripcion}</option>
                     </tr>`
        } 
         document.getElementById('codigoNormativa').innerHTML = txtHtml;
         return xmlDoc;
        }
    }
    theObject.send(params);
    return false;
});
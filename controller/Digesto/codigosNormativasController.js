const baseUrl = 'http://localhost/cgi-bin/cgiip.exe/WService=wsbroker2/services/Digesto';

// todos los codigos 
function getCodigos() {  console.log("getCodigos")
    let theObject = new XMLHttpRequest();
    theObject.open('GET', `${baseUrl}/CodigosNormativasServices.html`, true);
    theObject.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
    theObject.onreadystatechange = function () {
        if(theObject.status==200 && theObject.responseText != 'error') {
            let txtHtml = '';
            parser = new DOMParser();
            xmlDoc = parser.parseFromString(this.responseText,"text/xml");
         console.log(xmlDoc)
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
        else {
            console.error('error de conexion-> estatus: ' + theObject.status + ', ready estatus: ' + theObject.readyState);
            alertify.error('Ocurrió un Error');
        }
    }
    theObject.send();
};


function getOrigenDisposiciones() { 
    let theObject = new XMLHttpRequest();
    theObject.open('GET', `${baseUrl}/OrigenNormativasServices.html`, true);
    theObject.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
    theObject.onreadystatechange = function () {
        if(theObject.status==200 && theObject.responseText != 'error') {
            let txtHtml = '';
            parser = new DOMParser();
            xmlDoc = parser.parseFromString(this.responseText,"text/xml");
        
            for(i=0;i<xmlDoc.getElementsByTagName('origen').length;i++){
                codigo = xmlDoc.getElementsByTagName('codigo')[i].childNodes[0].nodeValue;
                descripcion = xmlDoc.getElementsByTagName('descripcion')[i].childNodes[0].nodeValue;
                ref= xmlDoc.getElementsByTagName('origen')[i].getAttribute('ref');

                txtHtml += `<tr>
                            <option value="${codigo}">${descripcion}</option>
                            </tr>`
            } 
            document.getElementById('origenNormativa').innerHTML = txtHtml;
        }
        else {
                console.error('error de conexion-> estatus: ' + theObject.status + ', ready estatus: ' + theObject.readyState);
                alertify.error('Ocurrió un Error');
            }
    }
    theObject.send();
};


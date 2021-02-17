// search all registers
const getComprobantesPorSector = () => {  
    let obj = new XMLHttpRequest();
    obj.open('GET', `${baseUrl}/Comprobantes/ComprobantesPorSectorServices`, true);
    obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
    obj.onreadystatechange = function () { 
        templateLoading = '';
        if(obj.status==200 && obj.responseText != 'error') { 
            let txtHtml = '';
            let templateSelect = '<option></option>';
            parser = new DOMParser();
            xmlDoc = parser.parseFromString(this.responseText,"text/xml");    console.log(obj.responseText)
            if(xmlDoc.getElementsByTagName('comprobante').length > 0) { 
                for(i=0;i<xmlDoc.getElementsByTagName('comprobante').length;i++){ 
                    codigo = xmlDoc.getElementsByTagName('codigo')[i].childNodes[0].nodeValue;
                    nombre = xmlDoc.getElementsByTagName('nombre')[i].innerHTML;
                    ref= xmlDoc.getElementsByTagName('comprobante')[i].getAttribute('ref');             
                    // dev view 
                    txtHtml += `<tr>
                            <td class="text-left">${codigo}</td>
                            <td class="text-left">${nombre}</td> 
                            </tr>`; 
                    templateSelect += `<option value=${codigo}>${nombre}</option>`;
                } 
            } 
            if(document.getElementById('table-result')){
                document.getElementById('table-result').innerHTML = txtHtml;
            };
            if(document.getElementById('codigoComprobante')){
                document.getElementById('codigoComprobante').innerHTML = templateSelect;
            };
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


// delete register
const RubroAsociadoDelete = (numeroInscripcion, numeroRubro) => {  
    let params = '';
    let response = confirm('Seguro que quiere eliminar el rubro: ' + numeroRubro + ' ?');
    if(response == true ){
        params = `numeroInscripcion=${numeroInscripcion} 
                  &numeroRubro=${numeroRubro}`; 
        let obj = new XMLHttpRequest(); 
        obj.open('POST', `${baseUrl}Comercios/RubroAsociadoDeleteServices`, true);
        obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
        obj.onreadystatechange = function () { console.log(obj.responseText)
            if (obj.readyState == 4 && obj.status == 200) {
                const objCleaned = obj.responseText.slice(84);  console.log(objCleaned)
                const jsonObj = JSON.parse(objCleaned);
                if (jsonObj.error != '') {
                    document.getElementById('informe').innerHTML = jsonObj.error;
                    return false;
                }
                getRubrosAsociado();
                return xmlDoc;
            }
        }
        obj.send(params);
        return false;
    }
};

const getRubrosporComercio = () => {
    let txtHtml = `<option></option>`;
    let params = '';
    if (location.search.length > 0) {
        params = location.search;
    } 
   
    
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
    let template = '';
    let params = '';
    let currentInscripcion = '';
    let currentRazonSocial = '';
    if (location.search.length > 0) {
        params = location.search;
    } 

    var queryParams = window.location.search.substr(1).split('&').reduce(function (qs, query) {
        const chunks = query.split('=');
        const key = chunks[0];
        let value = decodeURIComponent(chunks[1] || '');
        let valueLower = value.trim().toLowerCase();
        if (valueLower === 'true' || value === 'false') {
          value = Boolean(value); 
        } else if (!isNaN(Number(value))) {
          value = Number(value); 
        } 
        return (qs[key] = value, qs);
      }, {});  

      params =  `?inscripcion=${queryParams.inscripcion}`; 
      console.log(params)

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
                    <button type="button" class="btn btn-danger btn-sm" onclick="RubroAsociadoDelete(${element.inscripcion}, ${element.codigo})">Eliminar</button>
                </td> 
                </tr>`;

                template = `<h6 class="text-primary">Comercio: ${element.inscripcion} - ${element.razonsocial}</h6>`
                document.getElementById('numeroInscripcion').value = element.inscripcion;
                
            });
            
            document.getElementById('inscripcion').innerHTML = template;
            document.getElementById('table-result').innerHTML = txtHtml;
            
            return jsonObj;
        }
       
       
       
    };
    obj.send();
    return false;
};

// create form 
if (document.getElementById('create')) {
    document.getElementById('create').addEventListener('click', (e) => { 
        e.preventDefault();
        var params = ''; 
        const numeroRubro = document.getElementById('rubros-search').value;
        const numeroInscripcion = document.getElementById('numeroInscripcion').value;
        params = `numeroRubro=${numeroRubro}
                &numeroInscripcion=${numeroInscripcion}`;
        let obj = new XMLHttpRequest();
        obj.open('POST', `${baseUrl}Comercios/RubroAsociarCreateServices`, true);
        obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
        obj.onreadystatechange = function() {
            if (obj.readyState == 4) {
                const objCleaned = obj.responseText.slice(84); console.log(objCleaned)
                const jsonObj = JSON.parse(objCleaned);
                if (jsonObj.error != '') {
                    document.getElementById('informe').innerHTML = jsonObj.error;
                    return false;
                }
                getRubrosAsociado();
                return jsonObj;
            }
        }
        obj.send(params);
        return false;
    });
};

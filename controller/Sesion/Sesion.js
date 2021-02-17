// create cookie 
if(document.getElementById('btnLogin')) {  
    document.getElementById('btnLogin').addEventListener('click', (e) => { 
        e.preventDefault();
        let userName = document.getElementById('userName').value;
        let password = document.getElementById('password').value;
        var params = `userName=${userName}
                    &password=${password}`;
        let obj = new XMLHttpRequest(); console.log(baseUrl)
        obj.open('POST', `${baseUrl}Sesion/LoginServices`, true);
        obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
        obj.onreadystatechange = function () {  
            if(obj.readyState == 4) { 
                const objCleaned = obj.responseText.slice(84);   console.log(objCleaned)
                const jsonObj = JSON.parse(objCleaned); 
                if(jsonObj.error != '') {
                    document.getElementById('informe').innerHTML = jsonObj.error;
                    document.getElementById('userName').value = '';
                    document.getElementById('password').value = '';
                    return false; 
                }
                window.location='principal.html';
                return jsonObj;
            }
        }
        obj.send(params);
        return false;
    });
};
// validacions de arranque 
const getStart = () => { 
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
      if(queryParams.Donde == "Salida"){
        if (document.cookie != "") {
            document.cookie = "perez=;expires = Thu, 13 Dec 2016 12:00:00 UTC; path=/";
            window.location="index.html";
        };
      }
    if(document.cookie != '') {
        window.location='principal.html';
        return false;
    };
};


// User Logued
const getSesionUser = () => {  
    // si esta cerrada la sesion manda al index
    if(document.cookie == '') {
        window.location=`${ipServer}municipio2.0/index.html`;
        return false;
    };  
    let obj = new XMLHttpRequest();
    obj.open('GET', `${baseUrl}/Sesion/userSesionServices`, true);
    obj.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
    obj.onreadystatechange = function () { 
        if(obj.readyState == 4) {  
            const objCleaned = obj.responseText.slice(84); 
            const jsonObj = JSON.parse(objCleaned); 
            
            if(jsonObj.error != '') {
                window.location='index.html';
                document.getElementById('informe').innerHTML = jsonObj.error;
                return false; 
            } 
            document.getElementById('nombreUsuario').innerHTML = jsonObj.nombre;
            document.getElementById('nombreSector').innerHTML = jsonObj.sector;
            return jsonObj;
        }
    }
    obj.send();
    return false;
};
const UsuarioGruposData = (data) => { 
    let txtHtml = '<tr><option></option></tr>';
    data.forEach(element => { 
        identificador = element.id;
        txtHtml += `<tr><option value="${element.codigo}">${element.nombre}</option></tr>` ;
    }); 
    document.getElementById('codigoGrupo').innerHTML = txtHtml;
    return false;
}
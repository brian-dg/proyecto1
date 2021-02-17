const UsuariosData = (data) => { 
    let txtHtml = '';
    let url = 'Administracion/UsuarioDeleteServices';
    data.forEach(element => { 
        identificador = element.id;
        txtHtml += `<tr>
        <td class="text-left">${element.id}</td>
        <td class="text-left">${element.nombre}</td> 
        <td class="text-left">${element.grupo}</td> 
        <td class="text-center"> 
        <a href="./UsuarioEdit.html?idUsuario=${element.id}">
            <button type="button"  class="btn btn-success btn-sm">Editar</button>
        </a>
        </td>
        <td class="text-center">
            <a href="./UsuarioDelete.html?idUsuario=${element.id}">
                <button type="button" class="btn btn-danger btn-sm">Eliminar</button>
            </a>
        </td>
        </tr>` ;
    }); 
    document.getElementById('table-result').innerHTML = txtHtml;
    return false;
}
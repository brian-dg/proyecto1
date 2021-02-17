const UsuarioData = (data) => { 
    let txtHtml = '';
    document.getElementById('codigoUsuario').value = data.usuarios.id;
    document.getElementById('nombreUser').value = data.usuarios.nombre;
    document.getElementById('password').value = data.usuarios.pass;

    txtHtml += `<tr>
    <option value="${data.usuarios.idgrupo}">${data.usuarios.grupo}</option>
    <option></option>
    </tr>`;

    data.grupos.forEach(element => { 
       txtHtml +=  `<option value="${element.idgrupo}">${element.grupo}</option>`;
    });

    document.getElementById('codigoGrupo').innerHTML = txtHtml;
    return false;
}
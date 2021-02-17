$(document).ready(function(){
    console.log("jquery is working");
    if($('#palagra')) { 
        $('#palabra').keyup(function(e) {
            let search = $('#palabra').val();
            $.ajax({
            url: 'http://localhost/cgi-bin/cgiip.exe/WService=wsbroker2/services/DigestoWord.html',
            type: 'GET',
            data: { search },
            success: function(response) {
                
             parser = new DOMParser();
             xmlDoc = parser.parseFromString(response,"text/xml");
             
             
                let txtHtml = '';
                 for(i=0;i<xmlDoc.getElementsByTagName('digesto').length;i++){
     
                     codigo = xmlDoc.getElementsByTagName('codigo')[i].childNodes[0].nodeValue;
                     numero = xmlDoc.getElementsByTagName('numero')[i].childNodes[0].nodeValue;
                     anio = xmlDoc.getElementsByTagName('anio')[i].childNodes[0].nodeValue;
                     vigente = xmlDoc.getElementsByTagName('vigente')[i].childNodes[0].nodeValue;
                     observaciones = xmlDoc.getElementsByTagName('observaciones')[i].childNodes[0].nodeValue;
                     ref= xmlDoc.getElementsByTagName('digesto')[i].getAttribute('ref');

                     txtHtml += `<tr>
                                <td class="text-center text-muted">${codigo}</td>
                                <td class="text-center">${numero}</td> 
                                <td class="text-center">${anio}</td>
                                <td class="text-left">${observaciones}</td>
                                <td class="text-center"> 
                                <a href="./NewDigesto.html?numeroNormativa=${numero}">
                                    <button type="button" id="Editar" class="btn btn-success btn-sm">Editar</button>
                                </a>
                                </td>
                                <td class="text-center">
                                    <button type="button" id="Eliminar" class="btn btn-danger btn-sm">Eliminar</button>
                                </td>
                                </tr>`
                     }
                     console.log(txtHtml);
                     $('#table-result').html(txtHtml);
            }
        })
    })
};
    // fin de search 
    $('#task-form').submit(function(e){
        const postData = {
            name: $('#name').val(),
            description: $('#description').val()
        };
        $.post('task-add-php', postData, function(response) {
            console.log(response);
            $('#task-form').trigger('reset');
        });
        e.preventDefault();
    });
    //fin del submit

    $.ajax({
        url: 'tasl-list.php',
        type: 'GET',
        succes: function(reponse) {
            console.log(response);
        }
    });

})
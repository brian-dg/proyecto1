// valida numero entero
function numeroEntero(evt)
{
var charCode = (evt.which) ? evt.which : event.keyCode
if (charCode > 31 && (charCode < 48 || charCode > 57))
return false;
return true;
}
// Numero Decimal        
function numeroDecimal(evt)
{
var charCode = (evt.which) ? evt.which : event.keyCode
if (charCode != 44 && charCode > 31 && (charCode < 48 || charCode > 57))
return false;
return true;
} 
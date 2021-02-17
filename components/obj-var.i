def var C-Cookie as ch no-undo.
def var wRequestPost as log no-undo.
def var wok as log init false no-undo.
def var wcodigo1 as ch no-undo. /* **** primer campo clave **** */
def var wcodigo2 as ch no-undo. /* **** segundo campo clave **** */
def var wcodigo3 as ch no-undo. /* **** tercer campo clave **** */
def var wvalidationOK as log init false no-undo.
def var wcant as i no-undo.
def var wcol as i no-undo. /* **** cantidad de columnas para armar cabcera de tabla **** */
def var q as i no-undo.
def var wmje as ch no-undo.
def var V-SECTOR as int no-undo.
def var ok-met as log no-undo initial false.
def var carpeta as ch no-undo.
def var wFotos as ch no-undo. 
def var wcharspecial as log init false no-undo.


/* **** propiedades de los objetos **** */
def var wtitulo as ch no-undo. /* **** titulo de cabecera **** */
def var wpagback as ch no-undo. /* **** pagina de retorno del boton volver **** */
def var wpagenew as ch no-undo. /* **** pagina de caraga del boton nuevo registro **** */
def var wpagenext as ch no-undo. /* **** proxima pagina **** */
def var wParRec1 as ch no-undo. /* **** primer parametro recibido **** */
def var wParRec2 as ch no-undo. /* **** segundo parametro recibido **** */
def var wParRec3 as ch no-undo. /* **** tercer parametro recibido **** */
def var wParRec4 as ch no-undo. /* **** cuarto parametro recibido **** */
def var wclass as ch no-undo. /* **** calses para un objeto **** */
def var whidden as log init false no-undo. /* **** muestra/oculta un objeto **** */
def var wname as ch no-undo. /* **** nombre para un objeto **** */
def var wpholder as ch no-undo. /* **** pclholder de un objeto **** */
def var wvalue as ch no-undo. /* **** valor para un objeto **** */
def var wvalue2 as ch no-undo. /* **** valor para un objeto **** */
def var wlabel as ch no-undo. /* **** label de un objeto **** */
def var wlabel2 as ch no-undo. /* **** label segundo objeto **** */
def var wwidth as ch no-undo. /* **** largo del objeto **** */
def var wtype as ch no-undo. /* **** tipo de objeto **** */
def var wtype2 as ch no-undo.
def var wid as ch no-undo. /* **** id del objeto *****/
def var wmaxlength as ch no-undo.
def var wreadonly as ch no-undo.
def var wdisabled as ch no-undo. 
def var wchecked as ch no-undo. 
def var wactivo as log init false. /* **** activa/desactiva checkbox **** */
def var wautofocus as ch no-undo. 
def var wrequired as ch no-undo. 
def var wmethod as ch no-undo. /* **** para el form **** */
def var waction as ch no-undo. /* **** para el form **** */
def var wimg as ch no-undo. /**** imagen para botones **** */
def var wtarget as ch no-undo.
/* **** **** */

define temp-table tt-select
            field codigo as ch
            field descripcion as ch.

 

const baseUrl = 'http://localhost/cgi-bin/cgiip.exe/WService=wsbroker4/services/';
const baseUrlComercio = 'http://localhost/cgi-bin/cgiip.exe/WService=wsbroker3/services/';

const ipServer = 'http://localhost/';



if(document.getElementById('btnSalida')){
    let template = ''; 
    template = `<button 
                    type="button" 
                    tabindex="0" 
                    class="dropdown-item text-primary" 
                    onclick="window.open('${ipServer}municipio2.0/index.html?Donde=Salida', '_self');" + '"/>
                    Cerrar Sesión
                </button>`; 
    document.getElementById('btnSalida').innerHTML = template;
};

// Armado del menu 
const getBuildMain = () => { 
    let txtHtml = '';
    txtHtml +=   `<li class="app-sidebar__heading">Panel de Control</li>
                    <li>
                        <a href="${ipServer}municipio2.0/principal.html" class="mm-active">
                            <i class="metismenu-icon pe-7s-rocket"></i>
                            Inicio
                        </a>
                    </li>
                    
                    
                    <li class="app-sidebar__heading">Comercios</li>
                    <li>
                        <a href="#">
                            <i class="metismenu-icon pe-7s-diamond"></i>
                            Menú Comercios
                            <i class="metismenu-state-icon pe-7s-angle-down caret-left"></i>
                        </a>
                        <ul>
                            <li>
                                <a href="#">
                                    <i class="metismenu-icon pe-7s-diamond"></i>
                                    Principal
                                    <i class="metismenu-state-icon pe-7s-angle-down caret-left"></i>
                                </a>
                                <ul>
                                    <li>
                                        <a href="${ipServer}municipio2.0/views/Comercios/Comercios.html">
                                            <i class="metismenu-icon"></i>
                                            Comercios
                                        </a>
                                    </li>

                                    <li>
                                        <a href="${ipServer}municipio2.0/views/Comercios/Rubros.html">
                                            <i class="metismenu-icon"></i>
                                            Rubros
                                        </a>
                                    </li>
                                </ul>

                                
                        </ul>

                        <ul>
                            <li>
                                <a href="#">
                                    <i class="metismenu-icon pe-7s-diamond"></i>
                                    Remises
                                <i class="metismenu-state-icon pe-7s-angle-down caret-left"></i>
                                </a>
                            <ul>

                                <li>
                                    <a href="${ipServer}municipio2.0/views/Comercios/Remises.html">
                                        <i class="metismenu-icon"></i>
                                        Empresa de Remises
                                    </a>
                                </li>

                                <li>
                                    <a href="${ipServer}municipio2.0/views/Comercios/CambioUnidad.html">
                                        <i class="metismenu-icon"></i>
                                        Cambio de Unidad
                                    </a>
                                </li>

                                <li>
                                    <a href="${ipServer}municipio2.0/views/Comercios/CargaPago.html">
                                        <i class="metismenu-icon"></i>
                                        Carga de Pago
                                    </a>
                                </li>

                                <li>
                                    <a href="${ipServer}municipio2.0/views/Comercios/GenerarDeudaAnual.html">
                                        <i class="metismenu-icon"></i>
                                        Generacion de Deuda Anual
                                    </a>
                                </li>

                                <li>
                                    <a href="${ipServer}municipio2.0/views/Comercios/GenerarDeudaMensual.html">
                                        <i class="metismenu-icon"></i>
                                        Generacion de Deuda Mensual
                                    </a>
                                </li>

                                <li>
                                    <a href="${ipServer}municipio2.0/views/Comercios/EstadoCuenta.html">
                                        <i class="metismenu-icon"></i>
                                        Estado de Cuenta
                                    </a>
                                </li>

                                <li>
                                    <a href="${ipServer}municipio2.0/views/Comercios/ImpresionAnual.html">
                                        <i class="metismenu-icon"></i>
                                        Impresion habilitacion Anual
                                    </a>
                                </li>

                                <li>
                                    <a href="${ipServer}municipio2.0/views/Comercios/ImpresionMensual.html">
                                        <i class="metismenu-icon"></i>
                                        Impresion Desinfeccion Mensual
                                    </a>
                                </li>

                                <li>
                                    <a href="${ipServer}municipio2.0/views/Comercios/DesinfeccionDeudores.html">
                                        <i class="metismenu-icon"></i>
                                        Desinfeccion Deudores x Periodo
                                    </a>
                                </li>

                            </ul>
                    </ul>

                        <ul>
                            <li>
                                <a href="#">
                                    <i class="metismenu-icon pe-7s-diamond"></i>
                                    Procesos
                                    <i class="metismenu-state-icon pe-7s-angle-down caret-left"></i>
                                </a>
                                <ul>
                                    <li>
                                        <a href="#">
                                            <i class="metismenu-icon"></i>
                                            Generar Liquidaciones
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="metismenu-icon"></i>
                                            Actualizar DDJJ
                                        </a>
                                    </li>

                                    <li>
                                        <a href="#">
                                            <i class="metismenu-icon"></i>
                                            Importar Cobranzas
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="metismenu-icon"></i>
                                            Importar Cobranzas NBSF
                                        </a>
                                    </li>
                                </ul>

                    
                    </ul>

                            
                        </ul>
                        <ul>
                        <li>
                        <a href="#">
                            <i class="metismenu-icon pe-7s-diamond"></i>
                            Modulo AFIP
                            <i class="metismenu-state-icon pe-7s-angle-down caret-left"></i>
                        </a>
                        <ul>
                            <li>
                                <a href="${ipServer}municipio2.0/views/Comercios/ImportarDj.html">
                                    <i class="metismenu-icon"></i>
                                    Importar Dj
                                </a>
                            </li>
                            <li>
                                <a href="${ipServer}municipio2.0/views/Comercios/ConsultarDj.html">
                                    <i class="metismenu-icon"></i>
                                    Consultar DJ por Periodo
                                </a>
                            </li>
                        </ul>
                    </ul>

                    <ul>
                    <li>
                    <a href="#">
                        <i class="metismenu-icon pe-7s-diamond"></i>
                        Informes y Listados
                        <i class="metismenu-state-icon pe-7s-angle-down caret-left"></i>
                    </a>
                    <ul>
                        <li>
                            <a href="${ipServer}municipio2.0/views/Comercios/ImprimirCodigoGestion.html">
                                <i class="metismenu-icon"></i>
                                Imprimir Codigo de Gestion
                            </a>
                        </li>
                        
                        <li>
                            <a href="${ipServer}municipio2.0/views/Comercios/DeudoresImporte.html">
                                <i class="metismenu-icon"></i>
                                Deudores por Importe
                            </a>
                        </li>

                        <li>
                            <a href="${ipServer}municipio2.0/views/Comercios/DeudaCantidadPeriodo.html">
                                <i class="metismenu-icon"></i>
                                Deuda por Periodos
                            </a>
                        </li>

                        <li>
                            <a href="${ipServer}municipio2.0/views/Comercios/DeudoresDrei.html">
                                <i class="metismenu-icon"></i>
                                Deudores DRei
                            </a>
                        </li>

                        <li>
                            <a href="${ipServer}municipio2.0/views/Comercios/ConsultaComercio.html">
                                <i class="metismenu-icon"></i>
                                Consulta de Comercio 
                            </a>
                        </li>

                        <li>
                            <a href="${ipServer}municipio2.0/views/Comercios/ListadoComercio.html">
                                <i class="metismenu-icon"></i>
                                Listado de Comercio 
                            </a>
                        </li>

                        <li>
                            <a href="${ipServer}municipio2.0/views/Comercios/ListadoAlfaComercio.html">
                                <i class="metismenu-icon"></i>
                                Listado Alfabetico Comercio 
                            </a>
                        </li>

                        <li>
                            <a href="${ipServer}municipio2.0/views/Comercios/ListadoRubro.html">
                                <i class="metismenu-icon"></i>
                                Listado por Rubro 
                            </a>
                        </li>

                        <li>
                            <a href="${ipServer}municipio2.0/views/Comercios/ConsultaDDJJ.html">
                                <i class="metismenu-icon"></i>
                                Consulta DDJJ
                            </a>
                        </li>
                    </ul>
                </ul>


                        <li class="app-sidebar__heading">Tasa General de Inmuebles</li>



                    </li>
                    
                    
            
                    `;
    document.getElementById('menuPrincipal').innerHTML = txtHtml;
    return false;
}


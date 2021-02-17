const baseUrl = 'http://192.168.1.155/cgi-bin/cgiip.exe/WService=wsbroker4/services/';
const baseUrlComercio = 'http://192.168.1.170/cgi-bin/cgiip.exe/WService=wsbroker3/services/';

const ipServer = 'http://192.168.1.155/';



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



                        <li class="app-sidebar__heading">Tasa General de Inmuebles</li>



                    </li>
                    
                    
            
                    `;
    document.getElementById('menuPrincipal').innerHTML = txtHtml;
    return false;
}


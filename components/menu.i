{&out}  
        '<div class="app-main">'
                '<div class="app-sidebar sidebar-shadow">'
                    '<div class="app-header__logo">'
                        '<div class="logo-src"></div>'
                        '<div class="header__pane ml-auto">'
                            '<div>'
                                '<button type="button" class="hamburger close-sidebar-btn hamburger--elastic" data-class="closed-sidebar">'
                                    '<span class="hamburger-box">'
                                        '<span class="hamburger-inner"></span>'
                                    '</span>'
                                '</button>'
                            '</div>'
                        '</div>'
                    '</div>'
                    '<div class="app-header__mobile-menu">'
                        '<div>'
                            '<button type="button" class="hamburger hamburger--elastic mobile-toggle-nav">'
                                '<span class="hamburger-box">'
                                    '<span class="hamburger-inner"></span>'
                                '</span>'
                            '</button>'
                        '</div>'
                    '</div>'
                    '<div class="app-header__menu">'
                        '<span>'
                            '<button type="button" class="btn-icon btn-icon-only btn btn-primary btn-sm mobile-toggle-header-nav">'
                                '<span class="btn-icon-wrapper">'
                                    '<i class="fa fa-ellipsis-v fa-w-6"></i>'
                                '</span>'
                            '</button>'
                        '</span>'
                    '</div>'    
                    '<div class="scrollbar-sidebar">'
                        '<div class="app-sidebar__inner">'
                            '<ul class="vertical-nav-menu">'
                                '<li class="app-sidebar__heading">Panel de Control</li>'
                                '<li>'
                                    '<a href="' + myPage + 'principal.html" class="mm-active">'
                                        '<i class="metismenu-icon pe-7s-rocket"></i>'
                                        'Inicio'
                                    '</a>'
                                '</li>'. 

                                /* menu Administradion */
                                if v-sector = 22 then do: 
                                    {&out}
                                    '<li class="app-sidebar__heading">Administración</li>'
                                    '<li>'
                                        '<a href="#">'
                                            '<i class="metismenu-icon pe-7s-diamond"></i>'
                                            'Menú Administración'
                                            '<i class="metismenu-state-icon pe-7s-angle-down caret-left"></i>'
                                        '</a>'
                                        '<ul>'. 
                                            {&out}
                                            '<li>'
                                                '<a href="' + myPage + 'views/Administracion/usuarios.html">'
                                                    '<i class="metismenu-icon">'
                                                    '</i>Usuarios' 
                                                '</a>'
                                            '</li>'. 
                                            {&out}
                                            '<li>'
                                                '<a href="' + myPage + 'views/Administracion/grupos.html">'
                                                    '<i class="metismenu-icon">'
                                                    '</i>Grupos Usuarios' 
                                                '</a>'
                                            '</li>'. 
                                            {&out}
                                            '<li>'
                                                '<a href="' + myPage + 'views/Administracion/modulos.html">'
                                                    '<i class="metismenu-icon">'
                                                    '</i>Modulos'
                                                '</a>'
                                            '</li>'
                                            '<li>'
                                                '<a href="' + myPage + 'views/Administracion/aplicaciones.html">'
                                                    '<i class="metismenu-icon">'
                                                    '</i>Aplicaciones'
                                                '</a>'
                                            '</li>'
                                            '<li>'
                                                '<a href="' + myPage + 'views/Administracion/permisos.html">'
                                                    '<i class="metismenu-icon">'
                                                    '</i>Permisos'
                                                '</a>'
                                            '</li>'
                                        '</ul>'
                                    '</li>'. 
                                end.
                                

                               /* find first s-aplicaciones where s-aplicaciones.programa = "menu_individuos.r" no-lock no-error. 
                                if avail s-aplicaciones then do: 
                                    find first s-permisos where s-permisos.id-app = s-aplicaciones.id-app 
                                                            and s-permisos.id-usuario = s-usuarios.id-usuario no-lock no-error. 
                                    if avail s-permisos then do: */
                                    IF v-sector = 16 or v-sector = 22 or v-sector = 11 then do:
                                        {&out}
                                        '<li class="app-sidebar__heading">Individuos</li>'
                                            '<li>'
                                                '<a href="#">'
                                                    '<i class="metismenu-icon pe-7s-diamond"></i>'
                                                    'Menú Invididuos'
                                                    '<i class="metismenu-state-icon pe-7s-angle-down caret-left"></i>'
                                                '</a>'
                                                '<ul>'
                                                    '<li>'
                                                        '<a href="' + myPage + 'views/individuos/Individuos.html">'
                                                            '<i class="metismenu-icon"></i>'
                                                            'Inidividuos'
                                                        '</a>'
                                                    '</li>'
                                                    '<li>'
                                                        '<a href="' + myPage + 'views/TiposDocumentos/TiposDocumentos.html">'
                                                            '<i class="metismenu-icon">'
                                                            '</i>Tipo Documento'
                                                        '</a>'
                                                    '</li>'
                                                    '<li>'
                                                        '<a href="' + myPage + 'views/Localidades/Localidades.html">'
                                                            '<i class="metismenu-icon">'
                                                            '</i>Localidades'
                                                        '</a>'
                                                    '</li>'
                                                    '<li>'
                                                        '<a href="' + myPage + 'views/EstadoCivil/EstadosCivil.html">'
                                                            '<i class="metismenu-icon">'
                                                            '</i>Estado Civil'
                                                        '</a>'
                                                    '</li>'
                                                    '<li>'
                                                        '<a href="' + myPage + 'views/Calles/Calles.html">'
                                                            '<i class="metismenu-icon">'
                                                                '</i>Calles'
                                                        '</a>'
                                                    '</li>'
                                                    '<li>'
                                                        '<a href="' + myPage + 'views/Paises/Paises.html">'
                                                            '<i class="metismenu-icon">'
                                                            '</i>Paises'
                                                        '</a>'
                                                    '</li>'
                                                '</ul>'
                                            '</li>'.
                                    end. 
                                /* end. */
                                
                                /* menu digesto */
                                find first s-aplicaciones where s-aplicaciones.programa = "menu_digesto.r" no-lock no-error. 
                                if avail s-aplicaciones then do: 
                                    find first s-permisos where s-permisos.id-app = s-aplicaciones.id-app 
                                                            and s-permisos.id-usuario = s-usuarios.id-usuario no-lock no-error. 
                                    if avail s-permisos then do: 
                                        {&out}
                                        '<li class="app-sidebar__heading">Digesto</li>'
                                        '<li>'
                                            '<a href="#">'
                                                '<i class="metismenu-icon pe-7s-diamond"></i>'
                                                'Menú Digesto'
                                                '<i class="metismenu-state-icon pe-7s-angle-down caret-left"></i>'
                                            '</a>'
                                            '<ul>'
                                                '<li>'
                                                    '<a href="' + myPage + 'views/Digesto/ListadoDigesto.html">'
                                                        '<i class="metismenu-icon"></i>'
                                                        'Normativas'
                                                    '</a>'
                                                '</li>'
                                                '<li>'
                                                    '<a href="' + myPage + 'views/Digesto/NewDigesto.html">'
                                                        '<i class="metismenu-icon">'
                                                        '</i>Origenes'
                                                    '</a>'
                                                '</li>'
                                                '<li>'
                                                    '<a href="' + myPage + 'views/Digesto/ListadoDigesto.html">'
                                                        '<i class="metismenu-icon">'
                                                        '</i>Disposiciones'
                                                    '</a>'
                                                '</li>'
                                            '</ul>'
                                        '</li>'.
                                    end.
                                end. 
                                
                                /* menu mesa de entradas */
                                find first s-aplicaciones where s-aplicaciones.programa = "menu_mge.r" no-lock no-error. 
                                if avail s-aplicaciones then do: 
                                    find first s-permisos where s-permisos.id-app = s-aplicaciones.id-app 
                                                            and s-permisos.id-usuario = s-usuarios.id-usuario no-lock no-error. 
                                    if avail s-permisos then do: 
                                        {&out}
                                        '<li class="app-sidebar__heading">Mesa de Entradas</li>'
                                        '<li>'
                                            '<a href="#">'
                                                '<i class="metismenu-icon pe-7s-diamond"></i>'
                                                'Menú Mesa de entradas'
                                                '<i class="metismenu-state-icon pe-7s-angle-down caret-left"></i>'
                                            '</a>'
                                            '<ul>'. 
                                            /* solo visualizable por gobierno mesa de entradas y sistemas */
                                            IF v-sector = 16 or v-sector = 22 or v-sector = 11 then do:
                                                    {&out}
                                                    '<li>'
                                                        '<a href="' + myPage + 'views/MesaEntrada/expedientes.html">'
                                                            '<i class="metismenu-icon">'
                                                            '</i>Expedientes' 
                                                        '</a>'
                                                    '</li>'. 
                                            end. 
                                            IF v-sector = 22 then do:
                                                {&out}
                                                '<li>'
                                                    '<a href="' + myPage + 'views/Sectores/sectores.html">'
                                                        '<i class="metismenu-icon">'
                                                        '</i>Sectores' 
                                                    '</a>'
                                                '</li>'. 
                                            end. 
                                                {&out}
                                                '<li>'
                                                    '<a href="' + myPage + 'views/MesaEntrada/RecepcionExpediente.html">'
                                                        '<i class="metismenu-icon">'
                                                        '</i>Recepción'
                                                    '</a>'
                                                '</li>'
                                                '<li>'
                                                    '<a href="' + myPage + 'views/MesaEntrada/EnvioExpediente.html">'
                                                        '<i class="metismenu-icon">'
                                                        '</i>Envío'
                                                    '</a>'
                                                '</li>'
                                                '<li>'
                                                    '<a href="' + myPage + 'views/MesaEntrada/LocalizacionExpediente.html">'
                                                        '<i class="metismenu-icon">'
                                                        '</i>Localización'
                                                    '</a>'
                                                '</li>'. 

                                                IF v-sector = 16 or v-sector = 22 or v-sector = 11 then do:
                                                    {&out}
                                                    '<li>'
                                                        '<a href="' + myPage + 'views/Recibos/Recibos.html">'
                                                            '<i class="metismenu-icon">'
                                                            '</i>Recibos' 
                                                        '</a>'
                                                    '</li>'. 
                                                end. 
                                            {&out}
                                            '</ul>'
                                        '</li>'. 
                                    end.
                                end.


                            {&out}    
                            '</ul>'
                        '</div>'
                   '</div>' 
                '</div> '
                '<div class="app-main__outer">'.
                  /*  '<div class="app-main__inner">'
                        '<div class="app-page-title">'
                            '<div class="page-title-wrapper">'. */
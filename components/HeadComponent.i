PROCEDURE output-headers:
    wRequestPost = (REQUEST_METHOD="POST").
    {./components/GetCookieUser.i}
END PROCEDURE.
{./constantes/constantes.i}

/* busco sector del individuo */
def var v-sector as i no-undo.
FIND FIRST MGE_USUAXSECTOR WHERE MGE_USUAXSECTOR.ID-USUARIO = S-USUARIOS.ID-USUARIO NO-LOCK NO-ERROR.
IF AVAILABLE MGE_USUAXSECTOR THEN DO:
    ASSIGN V-SECTOR = MGE_USUAXSECTOR.CODIGO_SECTOR.
    find first mge_sector where mge_sector.codigo_sector = mge_usuaxSector.codigo_sector no-lock no-error. 
   
end.
{&out}
'<!doctype html>'
'<html lang="es">'
'<head>'
'<meta charset="utf-8">'
'<meta http-equiv="X-UA-Compatible" content="IE=edge">'
'<meta http-equiv="Content-Language" content="en">'
'<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>'
'<title>Mi Ciudad Pro</title>'
'<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" />'
'<meta name="msapplication-tap-highlight" content="no">'

'<link href="/miciudad/main.css" rel="stylesheet">'
'</head>'.
{&out}
'<body>'
    '<div class="app-container app-theme-white body-tabs-shadow fixed-sidebar fixed-header">'.
        {&out}
        '<div class="app-header header-shadow">'
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
            '<div class="app-header__content">'
                '<div class="app-header-left">'
                    '<div class="search-wrapper">'
                        '<div class="input-holder">'
                            '<input type="text" class="search-input" placeholder="Type to search">'
                            '<button class="search-icon"><span></span></button>'
                        '</div>'
                        '<button class="close"></button>'
                    '</div>'
                    '<ul class="header-menu nav">'
                        '<li class="nav-item">'
                            '<a href="javascript:void(0);" class="nav-link">'
                                '<i class="nav-link-icon fa fa-database"> </i>'
                                'Estadísticas'
                            '</a>'
                        '</li>'
                        '<li class="btn-group nav-item">'
                            '<a href="javascript:void(0);" class="nav-link">'
                                '<i class="nav-link-icon fa fa-edit"></i>'
                                'Proyectos'
                            '</a>'
                        '</li>'
                        '<li class="dropdown nav-item">'
                            '<a href="javascript:void(0);" class="nav-link">'
                                '<i class="nav-link-icon fa fa-cog"></i>'
                                'Configuraciones'
                            '</a>'
                        '</li>'
                    '</ul>'        
                '</div>'
                '<div class="app-header-right">'
                    '<div class="header-btn-lg pr-0">'
                        '<div class="widget-content p-0">'
                            '<div class="widget-content-wrapper">'
                                '<div class="widget-content-left">'
                                    '<div class="btn-group">'
                                        '<a data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="p-0 btn">'
                                            '<img width="42" class="rounded-circle" src="/miciudad/assets/images/avatars/1.jpg" alt="">'
                                            '<i class="fa fa-angle-down ml-2 opacity-8"></i>'
                                        '</a>'
                                        '<div tabindex="-1" role="menu" aria-hidden="true" class="dropdown-menu dropdown-menu-right">'
                                            '<button type="button" tabindex="0" class="dropdown-item">Cuenta de usuario</button>'
                                            '<button type="button" tabindex="0" class="dropdown-item">Configuraciones</button>'
                                            '<div tabindex="-1" class="dropdown-divider"></div>'
                                            '<button type="button" tabindex="0" class="dropdown-item text-primary" onclick="window.open(' + "'" + myPage + 'Index.r?donde=Salida' + "', '_self');" + '"/>Cerrar Sesión</button>'
                                        '</div>'
                                    '</div>'
                                '</div>'
                                '<div class="widget-content-left  ml-3 header-user-info">'
                                    '<div class="widget-heading">'
                                       s-usuarios.nombre
                                    '</div>'
                                    '<div class="widget-subheading">'
                                        mge_sector.nombre_sector
                                    '</div>'
                                '</div>'
                                
                            '</div>'
                        '</div>'
                    '</div>'       
                '</div>'
            '</div>'
        '</div>'.
        
        {./components/menu.i}






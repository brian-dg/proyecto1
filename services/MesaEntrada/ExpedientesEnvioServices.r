	��V���_H  � �              �                                 �z  0B480028utf-8 MAIN C:\xampp\htdocs\municipio2.0\services\MesaEntrada\ExpedientesEnvioServices.w,, PROCEDURE local-e4gl-options,,OUTPUT p_version DECIMAL,OUTPUT p_options CHARACTER,OUTPUT p_content-type CHARACTER PROCEDURE set-attribute-list,,INPUT p-attr-list CHARACTER PROCEDURE get-attribute,,INPUT p_attr-name CHARACTER PROCEDURE dispatch,,INPUT p-method-name CHARACTER PROCEDURE adm-timing-out,, PROCEDURE adm-destroy,, EXTERN logNote,LOGICAL,INPUT pcLogType CHARACTER,INPUT pcLogText CHARACTER EXTERN getGlobal,CHARACTER,INPUT cName CHARACTER EXTERN setGlobal,LOGICAL,INPUT cName CHARACTER,INPUT cValue CHARACTER EXTERN getSession,CHARACTER,INPUT cName CHARACTER EXTERN setSession,LOGICAL,INPUT cName CHARACTER,INPUT cValue CHARACTER EXTERN get-config,CHARACTER,INPUT p_name CHARACTER EXTERN check-agent-mode,LOGICAL,INPUT p_mode CHARACTER EXTERN queue-message,INTEGER,INPUT p_grp CHARACTER,INPUT p_message CHARACTER EXTERN output-messages,INTEGER,INPUT p_option CHARACTER,INPUT p_grp CHARACTER,INPUT p_message CHARACTER EXTERN get-message-groups,CHARACTER, EXTERN get-messages,CHARACTER,INPUT p_grp CHARACTER,INPUT p_delete LOGICAL EXTERN available-messages,LOGICAL,INPUT p_grp CHARACTER EXTERN set-cookie,CHARACTER,INPUT p_name CHARACTER,INPUT p_value CHARACTER,INPUT p_date DATE,INPUT p_time INTEGER,INPUT p_path CHARACTER,INPUT p_domain CHARACTER,INPUT p_options CHARACTER EXTERN get-cookie,CHARACTER,INPUT p_name CHARACTER EXTERN delete-cookie,CHARACTER,INPUT p_name CHARACTER,INPUT p_path CHARACTER,INPUT p_domain CHARACTER EXTERN url-format,CHARACTER,INPUT p_url CHARACTER,INPUT p_name-list CHARACTER,INPUT p_delim CHARACTER EXTERN url-field-list,CHARACTER,INPUT p_name-list CHARACTER,INPUT p_delim CHARACTER EXTERN url-field,CHARACTER,INPUT p_name CHARACTER,INPUT p_value CHARACTER,INPUT p_delim CHARACTER EXTERN url-encode,CHARACTER,INPUT p_value CHARACTER,INPUT p_enctype CHARACTER EXTERN url-decode,CHARACTER,INPUT p_in CHARACTER EXTERN set-wseu-cookie,CHARACTER,INPUT p_cookie CHARACTER EXTERN set-user-field,LOGICAL,INPUT p_name CHARACTER,INPUT p_value CHARACTER EXTERN output-http-header,CHARACTER,INPUT p_header CHARACTER,INPUT p_value CHARACTER EXTERN output-content-type,LOGICAL,INPUT p_type CHARACTER EXTERN html-encode,CHARACTER,INPUT p_in CHARACTER EXTERN hidden-field-list,CHARACTER,INPUT p_name-list CHARACTER EXTERN hidden-field,CHARACTER,INPUT p_name CHARACTER,INPUT p_value CHARACTER EXTERN get-user-field,CHARACTER,INPUT p_name CHARACTER EXTERN get-value,CHARACTER,INPUT p_name CHARACTER EXTERN get-field,CHARACTER,INPUT p_name CHARACTER EXTERN get-cgi,CHARACTER,INPUT p_name CHARACTER EXTERN format-datetime,CHARACTER,INPUT p_format CHARACTER,INPUT p_date DATE,INPUT p_time INTEGER,INPUT p_options CHARACTER EXTERN convert-datetime,CHARACTER,INPUT p_conversion CHARACTER,INPUT p_idate DATE,INPUT p_itime INTEGER,OUTPUT p_odate DATE,OUTPUT p_otime INTEGER      X  �=              )l  Xh%�      �   ) lT  �  $U  �  �U  P DY  < �]  H �a  l ? 4c  �ISO8859-1                                                        � 4 ` �  D              `            \$                |' .�   �!           L  �                                         PROGRESS                              �                     � 8                                                             |      4                     �     p                                                        �0     �                    �     �                                                0       L@                         �p     @                                                @       �L     l                    X�     �                                                L       X     �                    �@                                                     X       �g     <                    (�     x                                                g       �s     �                    �     �                                                s       T}                         �x     H                                                }       ��     t                    `�	     �                                                �       $�     �                    �H
                                                     �       ��     D                    0�     �                                                �       ��     �                    �     �                                                �       \�                          �     P                                                �       ��     |                    h�     �                                                �       ,�     �                    �P                                                      �       ��     L                    8�     �                                                �       ��     �                    �      �                                                �       d�                         �     X                                                �       �	    �                    p�     �                                                	      4	    �                    �X	     (	                                                      �	&    T	                    @	�	     �	                                                &      
,    �	                    �	(
     �	                                                ,      l
7    $
                    
�
     `
                                                7      �
>    �
                    x
�
     �
                                                >      <F    �
                    �
`     0                                                F      �N    \                    H�     �                                                N      Y    �                    �0                                                      Y      ta    ,                    �     h                                                a      �k    �                    �      �                                                k      Dx    �     ,             �h     8                                                x      ��    d                    P�     �                                                �      �    �     
            �8                                                      �      |�    4      ����           �!     p                                                �      ��    �
   
                �"     �                                                �      
L�                        �p#     @                                                �      ��    l                   X�$     �                                                �      @�    �+  $   AppProgram,AppURL,HostURL,SelDelim,SelfURL,       �d%     4                                                �        x    `                    L�&     �                                                x               munisis91d                       PROGRESS                         ,+ ��  �           qX�_      ���                  d, &�  &           _�s^      &�                  �- 6�  6           �'�_      6,�                  �.   `   AL $A�/_�s^H   A         �        / y�  y           媪_      y3                  0 ��  �           _�s^      ��                  (  `  �        H      0                                                                                                                                                                                                           D  �       @      / .                                                                                                                                                                                                    D1 ��  �           �0v^      �6!                    2 ��  �           _�s^      �,q                    >��' �$%     �DX ��  
    state-less                                                                                                                                                                                                                                                                                          X   l   |   �   �   �   �   �   �   �   �       ,  <  L  \  l  |  �  �      X   l   |   �   �   �   �   �   �   �   �      ,  <  L  \  l  |  �  �                                                 	      
                           �  ���������  �    �    �      �          �   i     	    J`es�������  ��                     ��                     ��                     ��                     ��                     ��                    ����                      + �V�  , �    - ��  / ��y  0 �    . �    1 ��  2 �    undefined             h�$�$L < �$��             ��\      |��      O ��    e�      O ��    R�      O ��    ��    convert-datetime       l   �   �     CHARACTER,INPUT p_conversion CHARACTER,INPUT p_idate DATE,INPUT p_itime INTEGER,OUTPUT p_odate DATE,OUTPUT p_otime INTEGER  format-datetime �    4      CHARACTER,INPUT p_format CHARACTER,INPUT p_date DATE,INPUT p_time INTEGER,INPUT p_options CHARACTER get-cgi   �  �      CHARACTER,INPUT p_name CHARACTER    get-field   �( �  � 	     CHARACTER,INPUT p_name CHARACTER    get-value   �4   < #	     CHARACTER,INPUT p_name CHARACTER    get-user-field  (@ `  � -     CHARACTER,INPUT p_name CHARACTER    hidden-field    pL �  � <     CHARACTER,INPUT p_name CHARACTER,INPUT p_value CHARACTER    hidden-field-list   �X   0 I     CHARACTER,INPUT p_name-list CHARACTER   html-encode d X  x [     CHARACTER,INPUT p_in CHARACTER  output-content-type dp �  �	 g     LOGICAL,INPUT p_type CHARACTER  output-http-header  �| �  
 {     CHARACTER,INPUT p_header CHARACTER,INPUT p_value CHARACTER  set-user-field  �� D  h �     LOGICAL,INPUT p_name CHARACTER,INPUT p_value CHARACTER  set-wseu-cookie T� �  � �     CHARACTER,INPUT p_cookie CHARACTER  url-decode  �� �   �
     CHARACTER,INPUT p_in CHARACTER  url-encode  �� (  H �
     CHARACTER,INPUT p_value CHARACTER,INPUT p_enctype CHARACTER url-field   4� �  � �	     CHARACTER,INPUT p_name CHARACTER,INPUT p_value CHARACTER,INPUT p_delim CHARACTER    url-field-list  �� �   �     CHARACTER,INPUT p_name-list CHARACTER,INPUT p_delim CHARACTER   url-format  � \  | �
     CHARACTER,INPUT p_url CHARACTER,INPUT p_name-list CHARACTER,INPUT p_delim CHARACTER delete-cookie   h� �  � �     CHARACTER,INPUT p_name CHARACTER,INPUT p_path CHARACTER,INPUT p_domain CHARACTER    get-cookie  �� H  h �
     CHARACTER,INPUT p_name CHARACTER    set-cookie  T� �  �  
     CHARACTER,INPUT p_name CHARACTER,INPUT p_value CHARACTER,INPUT p_date DATE,INPUT p_time INTEGER,INPUT p_path CHARACTER,INPUT p_domain CHARACTER,INPUT p_options CHARACTER   available-messages  � X  �      LOGICAL,INPUT p_grp CHARACTER   get-messages    l�  �      CHARACTER,INPUT p_grp CHARACTER,INPUT p_delete LOGICAL  get-message-groups  ��  $	 +     CHARACTER,  output-messages 	$0	  T	 >     INTEGER,INPUT p_option CHARACTER,INPUT p_grp CHARACTER,INPUT p_message CHARACTER    queue-message   @	0�	  �	 N     INTEGER,INPUT p_grp CHARACTER,INPUT p_message CHARACTER check-agent-mode    �	<
  ,
 \     LOGICAL,INPUT p_mode CHARACTER  get-config  
HL
  l
 m
     CHARACTER,INPUT p_name CHARACTER    setSession  X
T�
  �
 �
     LOGICAL,INPUT cName CHARACTER,INPUT cValue CHARACTER    getSession  �
`�
   �
     CHARACTER,INPUT cName CHARACTER setGlobal   �
l(  H �	     LOGICAL,INPUT cName CHARACTER,INPUT cValue CHARACTER    getGlobal   4x�  � �	     CHARACTER,INPUT cName CHARACTER logNote ���  �  �     LOGICAL,INPUT pcLogType CHARACTER,INPUT pcLogText CHARACTER adm-destroy                   �                     �     adm-timing-out  $X                �                          dispatch    h�t       ( �                      j     get-attribute   ��t       ) �                     �     set-attribute-list  � t       * p                     E     T/��   �	          3 ���� ��      3 ��	  $ �����               '           � ߱   ��      3 ��$	  $ �����               '           � ߱     $      3 ��0	  $ �8���               '           � ߱  � �`��  4 ��<	        �          ��             ��       0��       �h�/	��     �	          3 ��d	   ���    4 ���	  O ���  ��	     ��@    4 ���	        H          ��             ��       Й�       �h/	�`     �	          3 ���	   �t|    4 ���	  O ���  ��
  � ���    4 ��
  � �<
    �$ ����        \
    ' 
     
     � ߱  � �,�  4 ��x
        4          ��                     ��       �@� 	�
    L� 
�
    X� 4    �A     + � ��       �                          � � � �         ��       �       �     �          � �   �4x  4 ��@        <          ��                    <��       �d� H    �@        x       � ߱    $ H���          � �      � �    A!     , � ��       ��                           �         �                       @          � �H "`    4 ��        �          ��             "%       ���       "$     '           � ߱  �$ #h���          A$     - � ��       �                             ,                 8       @     �          � �H    '         �    '           � ߱  \$ 5���        � >h�    4 ���        �          ��             >J       �y�       >p    �   �$% � %��             ?I     z�       ?�   L  ��                  7 ��    /    ��           t  �      �            6 ?     / � ��       �t  �      �                                         8 L `         ��                       @          � �  O ��  e�      O ��  R�      O ��  ��    �AB     0 d ��       X�                           � �         ��                       @          t �   D��    4 ��0        �          ��             DH        \�       D�49 E. <    .         H    .           � ߱    $ F���        	    �   �$(% �0%��             K]	     x=�      KH� ���                   7 ��    0   ����           |  ��                6 K     0 D����       4|  ��                                             T h p         xl                       @          T `  J K        �  ��                                          ��              �       �0  ��$                 A ��    /    ��           l  �      h            6 K     / � ��       �l  �      h                     *                    �   $ 8         ��       L\         Td       �          � �         O ��	 	 e�      O ��	 	 R�      O ��	 	 ��    �9 T.     .             .              . 	     	   ,    . 
     
   8    .         D    .         P    .         \    .           � ߱    $ U(���        
    (  |       ��             ^n0     � �    , ^�   D|  ��                  7 ��   .    ��               �      �            6 ^    . � ��              �      �                                             �                       @          � �  O ��
 
 e�      O ��
 
 R�      O ��
 
 ��        �  �    �x  ��             _m�     <#�       _@   ��  ��                  7 ��    0   ����        	   �  �                  6 _     0 8����      	 ,�  �                                               h t         l`                       @          H T  O ��  e�      O ��  R�      O ��  ��      a��    4 ���                   ��             ad       �#�       a�   b    4 ���  : c  .   � e,p    4 ��         x          ��             ej       T$�       e4   f��    4 ��         �          ��             fi       �*�       f�   g��    4 ��@  : h  .      k�    4 ��`  : l  .   �    '           � ߱  |$ p���            �  ,!  8%� � @%��             s��      �+�    �# s@l ��   	                 7 ��   .    ��        
       �                  6 s    . , ��       
       �                                                   `T                       @          < H   ��l                   A ��    /    ��           �  ��     �            6 s     / $  ��        �  ��     �                     *                    � � �         ` T        ��         ��       �          4  D   J s       �   ��                                          0<              �            O ��  e�      O ��  R�      O ��  ��    H    '         \    '           � ߱  @!$ x� ���        �!A{     1 �! ��       x!�                           � �         �!�!       ��         ��       �          �! �!@" }�!�!,"  4 ����    '           � ߱    $ ~�!���             '           � ߱    $ "���        �"A�     2 �" ��       x"                                    �"�"                       @          �" �"4# ��"�" #  4 ��08    '           � ߱    $ ��"���        D    '           � ߱    $ �#���        �# �@#d#�#  4 ��Lt    '           � ߱    $ �H#���        �    '           � ߱    $ �x#���        �    '           � ߱    $ ��#���        P    '           � ߱  $$ ��#���        8$ �$$    4 ��X  Q �($    d              O�������  local-e4gl-options  4H$t       3 �    <                  8�     �   
state-less                         = ��. �$8 ��.   = ��.   = ��. �$8 ��0 �$8 ��0 �$8 ��-  %8 ��- %8 ��, %8 ��,   8 ��+   8 ��+   8 ��/   8 ��/   8 ��/   8 ��/ H%8 ��2 P%8 ��2 X%8 ��1 `%8 ��1   8 ��/   8 ��/     
" "   
   
" "   
   
" "   
   
" "   
   
" "   
   
" "   
   
" "   
   
" "   
   
" "   
   
" "   
   
" "   
   
" "   
   
" "   
   
" "   
   
" "   
   
" "   
   
" "   
   
" "   
   
" "   
   
" "   
   
" "   
   
" "   
   
" "   
   
" "   
   
" "   
   
" "   
   
" "   
   
" "   
   
" "   
   
" "   
   
" "   
   
" "   
   
" "   
   �     }    �
�    %     set-attribute-list 
�    %      Web-State = Timed-Out �8    " (  �� F    " (     %              %       ����    T   %              � %              � K 0 P       " (          � M " (  !4    S         � M " (     �     }    �%                    � M " (  �  0 P       " (          � F " (  !4    S         � F " (     �     }    �%                    � F " (  �  " (     
�        �  � T	 % 	    ADM-ERROR !�     }    �@ @   $    �    }    �%              %       Q    	 $    �    }    �%              %       8     %     dispatch �
" "   
   %     show-errors % 	    ADM-ERROR !%               " )     � � %               � � %      WEB1.0  � �	 " '     � �      " '     � � " '     � � %     get-time-remaining 
" "   
   
�    " )          " )     %      special-get-attribute �
�    " )      �     }    ��  %              " )         %              %                   " *     %                  " *     �     " *     T    " *     " *  !        " *     �  %               � & %      
       " *     %      
       � B �     }    �Az`       8 " *  �  %                      " *  ڢ�  %              z`      8  " *  �           " *  ��  %              %       ����    " *     � � ! " *     � �	 " *     � � " *     %      special-set-attribute �
�    " *     " *     %     local-e4gl-options 
�    " '     " '     " '     8    �    }    �� � � �	 %     output-header   
�    �     }    �%               8    �    }    �� � � �	 %     output-headers  
�    �     }    �%                A    " '  �� � �	              " '  !�              � �     " ' 
 �� �  �              � �      4     T    %              " ' 
 !�              � �      4     T    %              " ' 
 !�              � �      4     T    %              " ' 
 !%              %              z     T    &    " ' 
    z     T    &    " ' 
    &    &         %                  ] " +     &    * +   �              �            � 	 �     }    ��  �              �            �  �              �            �  " +         " ,     &    * ,   " ,     " ,     &    &    �  $ � �  G %       	       z     �              � c
 �  $ � �  G %       	       z     �              � n
 ( (       " '  Ԣ%                 " '     %             o%   o                 " '           " '     @            " /     &        " /     &        " /     &   " /     " /             " 0     &        " 0     &     * 0   " /     " /     o%   o           � �  " '    @            " 0     &        " 0     &       " 0     &    " 0     " 0     o%   o           " 0    " 0          " '           " '     &    &    &    &    x    T    0        %              %                  " /     &        " /     &        " /     &   " 0     " 0     " 0 	    " 0 
    " 0     " 0     " 0     " 0     " .     " .             " 0     &        " 0     &        " 0     " .         " 0     " .         " 0     " .         " 0     " .         " 0     " .         " 0     %              � � o%   o           " .    " .    &    &    &    &    0        %              %                  " /     &   " /     " /     %                   " '     %              " /     " /     &    &    &    &        %              %              * 1   " 1     � �  " /         " 2     &    * 2   " 2     � �      " /     %                   " /     � �   �    �    �    |    l    X    H    8    $            �     �     �     �     �     �     x     h     X     H     ,              " '     � � � �      " '     � � � � � �      " /     � � � 	      " /     �  �  " '     �   � ) " '     � 5 � B " / 	    � K	 � U " '     � ^	 � h � w " '                " '     " '  �" '  ֢%                         l     L <   ��            
\       (ř      O ��    e�      O ��    R�      O ��    ��       x �     4 ���  � �  ��                    ����                              l     L <   ��             \       �ř      O ��    e�      O ��    R�      O ��    ��      /�    � �          3 ���   �         3 ���  ��                    ����                              �     L <   ��            &e\      p�      O ��    e�      O ��    R�      O ��    ��    , (       l    �  7� �     4 ���  $ 8� ���            (           � ߱  L    (           � ߱  � $ 9� ���        | ; 8  4 ���  $ @���            (           � ߱     KDL    4 ��,  $ N`���        �    (           � ߱  �/	Q�     �          3 ���� T��    4 ���  O T��  ���  � V�    4 ��                  ��             Vb       �ș       V�   [$h    4 ��         p          ��             ^a       �ș       ^,�/_�   ��          3 ���   �        3 ���  O `��  ���    O d��  ���    >��(        �,                                                     (     ��                    ����                              �     L <   ��            l�\      �ə      O ��    e�      O ��    R�      O ��    ��    s )       l    �p y� ��  � �    $ z� ���        $    )           � ߱   �  8  $ {� ���        @    )           � ߱  8 T  $ |���        \    )           � ߱  p@ h  $ }T���        p    )           � ߱  �x �  $ ~����        �    )           � ߱    � �        �          ��             �       hM�       �l/�   �          3 ���(          3 ���   4<      3 ���  $ �P���               )           � ߱    $ �����        �    )           � ߱          �          ��             ��       �M�       ��/	��              3 ���           3 ��    � (X  4 ��,  $ �<���        @    )           � ߱    $ �l���        D    )           � ߱    O ���  ��X    >��)      �� �@                                                      0              0      )     ��                    ����                              �     L <   ��            ��\      �N�      O ��    e�      O ��    R�      O ��    ��    � *       l      �   � ,          ��      0       ��       �W�       ��   $ �� ���        d    *           � ߱  $$ ����        �    *           � ߱    4 ���\$ �@���        �    *           � ߱   �h�    4 ��        �          ��             ��       X�       �p 	��                  �3 ��<�3 ��D�3 ��X�3 ��d�3 ��x  3 ���  O ��� ��    @$ �$���        �    *           � ߱  p$ �T���        �    *           � ߱    p �`�(�  �� l  $�����        t    '           � ߱  �� �  $ �����        �    '           � ߱    � �  $ ����        �    '           � ߱    /	�@   H�          3 ���\ T        3 ���   h        3 ���  >��*      �� �h                                                                               (   8   H   X          (   8   H   X          *     ��                    ����                                    L <   ��            ��\       ��      O ��    e�      O ��    R�      O ��    ��    � 3  �    l    � 3  �    �    � 3       �      >��3      �  � H              
    web-object  	    text/html �          4              4   �/
web-object	text/html   3     ��                    ����                    TXS WebStream GATEWAY_INTERFACE SERVER_SOFTWARE SERVER_PROTOCOL SERVER_NAME SERVER_PORT REQUEST_METHOD SCRIPT_NAME PATH_INFO PATH_TRANSLATED QUERY_STRING REMOTE_ADDR REMOTE_HOST REMOTE_IDENT REMOTE_USER AUTH_TYPE CONTENT_TYPE CONTENT_LENGTH HTTP_ACCEPT HTTP_COOKIE HTTP_REFERER HTTP_USER_AGENT HTTPS AppProgram AppURL SelfURL HostURL CookiePath RootURL useConnID CookieDomain SelDelim , output-content-type http-newline 
 utc-offset web-utilities-hdl debug-options debugging-enabled MiscVarList CONVERT-DATETIME FORMAT-DATETIME GET-CGI GET-FIELD GET-VALUE GET-USER-FIELD HIDDEN-FIELD HIDDEN-FIELD-LIST HTML-ENCODE OUTPUT-CONTENT-TYPE OUTPUT-HTTP-HEADER SET-USER-FIELD SET-WSEU-COOKIE URL-DECODE URL-ENCODE URL-FIELD URL-FIELD-LIST URL-FORMAT DELETE-COOKIE GET-COOKIE SET-COOKIE AVAILABLE-MESSAGES GET-MESSAGES GET-MESSAGE-GROUPS OUTPUT-MESSAGES QUEUE-MESSAGE CHECK-AGENT-MODE GET-CONFIG gscSessionId SETSESSION GETSESSION SETGLOBAL GETGLOBAL LOGNOTE adm-web-state adm-web-timeout adm-web-tohdlr adm-web-time-remaining ADM-DESTROY Web-State = Timed-Out ADM-TIMING-OUT p-method-name caller-name adm-   local- ADM-ERROR show-errors DISPATCH p_attr-name attr-value p_period Type  Version WEB1.0 Web-State Web-Timeout Web-Timeout-Handler Web-Time-Remaining GET-ATTRIBUTE p-attr-list cntr attr-name attr-entry = Invalid element in set-attribute call: in SET-ATTRIBUTE-LIST e4gl-version e4gl-options e4gl-content-type output-header PROCEDURE output-headers no-content-type wRequestPost C-Cookie perez  Usuario Password NombreUsuario S-Usuarios Valido TRUE european FALSE v-sector MGE_UsuaXSector MGE_Sector tt-envio Codigo_Sector_Ingreso Anio Fecha_Ingreso Observacion Usuario_Ingreso Hora_Ingreso NumeroExpediente Fecha_envio Hora_Envio Usuario_Envio Codigo_Sector_Envio Codigo_Estado headerJson bodyJson footerJson enterBody individuoXml k fechaXml estadoXml fechaDesde fechaHasta cantidadTotal fechaDesde fechaHasta MGE_Expediente MGE_Seguimiento <expedientesstore> Individuos Individuos MGE_Estado <expedientes ref= ' > <numeroexpediente> </numeroexpediente> <anio> </anio> <fecha> </fecha> <individuo> </individuo> <motivo> </motivo> <estado> </estado> </expedientes> </expedientesstore> p_version p_options p_content-type LOCAL-E4GL-OPTIONS default idx-usuario idx-prim PUK-Clave IDX-PRIMARIO � D�     �    4           (       adm-destroy  `           P       adm-timing-out     (    t      caller-name   (      �   p-method-name   8 �     d �   �       dispatch    789;@KNQTV[^_`abde)    �      attr-value    )         p_period      )      0  p_attr-name � d    �    T      get-attribute   yz{|}~������������*    �     cntr    �*    �     attr-name   �*    �     attr-value    *    �     attr-entry    *        p-attr-list <<    ��  (      set-attribute-list  ����������������x3      l  p_version   �3      �  p_options     3      �  p_content-type  �      \  �      local-e4gl-options  �  ��P    ,  ,           tt-envio    p     �     �     �     �     �     �     �     �     �               Codigo_Sector_Ingreso   Anio    Fecha_Ingreso   Observacion Usuario_Ingreso Hora_Ingreso    NumeroExpediente    Fecha_envio Hora_Envio  Usuario_Envio   Codigo_Sector_Envio Codigo_Estado   P      <     GATEWAY_INTERFACE   p    `     SERVER_SOFTWARE �    �     SERVER_PROTOCOL �    �     SERVER_NAME �    �     SERVER_PORT �    �     REQUEST_METHOD      �     SCRIPT_NAME           PATH_INFO   @    0     PATH_TRANSLATED `	 	   P     QUERY_STRING    |
 
   p     REMOTE_ADDR �    �     REMOTE_HOST �    �     REMOTE_IDENT    �    �     REMOTE_USER �    �     AUTH_TYPE             CONTENT_TYPE    0          CONTENT_LENGTH  L    @     HTTP_ACCEPT h    \     HTTP_COOKIE �    x     HTTP_REFERER    �    �     HTTP_USER_AGENT �    �     HTTPS   �    �     AppProgram  �    �     AppURL           SelfURL $         HostURL @    4     CookiePath  X    P     RootURL t    h     useConnID   �    �     CookieDomain    �    �     SelDelim    �    �     output-content-type �      �     http-newline    ! !        utc-offset  4" "      
   web-utilities-hdl   T# #   D     debug-options   x$ $   d     debugging-enabled   �% %   �     MiscVarList �& &   �     gscSessionId    �' '  �     adm-web-state   �' '  �     adm-web-timeout 	' '  	     adm-web-tohdlr  <	' '  $	     adm-web-time-remaining  \	' '  L	     e4gl-version    |	' '  l	     e4gl-options    �	' '  �	     e4gl-content-type   �	' ' 	 �	     wRequestPost    �	' ' 
 �	     C-Cookie    �	' '  �	     v-sector    
' '  
     headerJson  0
' '  $
     bodyJson    L
' '  @
     footerJson  h
' '  \
     enterBody   �
' '  x
     individuoXml    �
' '  �
     k   �
' '  �
     fechaXml    �
' '  �
     estadoXml   �
' '  �
     fechaDesde  ' '        fechaHasta    ' '       cantidadTotal   D( +  8  S-Usuarios  `) ,  P  MGE_UsuaXSector x* -  l  MGE_Sector  �+ . L�  tt-envio    �, /  �  MGE_Expediente  �- 0  �  MGE_Seguimiento �. 1  �  Individuos    / 2  �  MGE_Estado  �������������	
!"#$%5>?BDEFHIJKTU]^_abcdefghijklmnpsx{}~������������  &�    .\components\GetCookieUser.i   �R    .\variables\GeneralVariables.i �]r#   2C:\Program Files (x86)\PROGRESS91D\src\web\method\e4gl.i   ��"#   2C:\Program Files (x86)\PROGRESS91D\src\web\method\admweb.i ,��#   2C:\Program Files (x86)\PROGRESS91D\src\web\method\cgidefs.i    p^�#   2C:\Program Files (x86)\PROGRESS91D\src\web\method\proto.i  ��#   2C:\Program Files (x86)\PROGRESS91D\src\web\method\session.i    �	�    2C:\xampp\htdocs\municipio2.0\services\MesaEntrada\ExpedientesEnvioServices.w   
	��V1�#`D   �              �                                 2~  0B440028utf-8 MAIN C:\xampp\htdocs\municipio2.0\services\Comercios\PagosComercioServices.w,, PROCEDURE local-e4gl-options,,OUTPUT p_version DECIMAL,OUTPUT p_options CHARACTER,OUTPUT p_content-type CHARACTER PROCEDURE set-attribute-list,,INPUT p-attr-list CHARACTER PROCEDURE get-attribute,,INPUT p_attr-name CHARACTER PROCEDURE dispatch,,INPUT p-method-name CHARACTER PROCEDURE adm-timing-out,, PROCEDURE adm-destroy,, EXTERN logNote,LOGICAL,INPUT pcLogType CHARACTER,INPUT pcLogText CHARACTER EXTERN getGlobal,CHARACTER,INPUT cName CHARACTER EXTERN setGlobal,LOGICAL,INPUT cName CHARACTER,INPUT cValue CHARACTER EXTERN getSession,CHARACTER,INPUT cName CHARACTER EXTERN setSession,LOGICAL,INPUT cName CHARACTER,INPUT cValue CHARACTER EXTERN get-config,CHARACTER,INPUT p_name CHARACTER EXTERN check-agent-mode,LOGICAL,INPUT p_mode CHARACTER EXTERN queue-message,INTEGER,INPUT p_grp CHARACTER,INPUT p_message CHARACTER EXTERN output-messages,INTEGER,INPUT p_option CHARACTER,INPUT p_grp CHARACTER,INPUT p_message CHARACTER EXTERN get-message-groups,CHARACTER, EXTERN get-messages,CHARACTER,INPUT p_grp CHARACTER,INPUT p_delete LOGICAL EXTERN available-messages,LOGICAL,INPUT p_grp CHARACTER EXTERN set-cookie,CHARACTER,INPUT p_name CHARACTER,INPUT p_value CHARACTER,INPUT p_date DATE,INPUT p_time INTEGER,INPUT p_path CHARACTER,INPUT p_domain CHARACTER,INPUT p_options CHARACTER EXTERN get-cookie,CHARACTER,INPUT p_name CHARACTER EXTERN delete-cookie,CHARACTER,INPUT p_name CHARACTER,INPUT p_path CHARACTER,INPUT p_domain CHARACTER EXTERN url-format,CHARACTER,INPUT p_url CHARACTER,INPUT p_name-list CHARACTER,INPUT p_delim CHARACTER EXTERN url-field-list,CHARACTER,INPUT p_name-list CHARACTER,INPUT p_delim CHARACTER EXTERN url-field,CHARACTER,INPUT p_name CHARACTER,INPUT p_value CHARACTER,INPUT p_delim CHARACTER EXTERN url-encode,CHARACTER,INPUT p_value CHARACTER,INPUT p_enctype CHARACTER EXTERN url-decode,CHARACTER,INPUT p_in CHARACTER EXTERN set-wseu-cookie,CHARACTER,INPUT p_cookie CHARACTER EXTERN set-user-field,LOGICAL,INPUT p_name CHARACTER,INPUT p_value CHARACTER EXTERN output-http-header,CHARACTER,INPUT p_header CHARACTER,INPUT p_value CHARACTER EXTERN output-content-type,LOGICAL,INPUT p_type CHARACTER EXTERN html-encode,CHARACTER,INPUT p_in CHARACTER EXTERN hidden-field-list,CHARACTER,INPUT p_name-list CHARACTER EXTERN hidden-field,CHARACTER,INPUT p_name CHARACTER,INPUT p_value CHARACTER EXTERN get-user-field,CHARACTER,INPUT p_name CHARACTER EXTERN get-value,CHARACTER,INPUT p_name CHARACTER EXTERN get-field,CHARACTER,INPUT p_name CHARACTER EXTERN get-cgi,CHARACTER,INPUT p_name CHARACTER EXTERN format-datetime,CHARACTER,INPUT p_format CHARACTER,INPUT p_date DATE,INPUT p_time INTEGER,INPUT p_options CHARACTER EXTERN convert-datetime,CHARACTER,INPUT p_conversion CHARACTER,INPUT p_idate DATE,INPUT p_itime INTEGER,OUTPUT p_odate DATE,OUTPUT p_otime INTEGER       ,  \>              .p  ,0&�         ) PX  �  Y  �  �Y  P (]  < da  H �e  l ? g  	ISO8859-1                                                        � 3 \ �  �    �           `            X%            H+ d' �|    �! �             �                                         PROGRESS                              �                     � 8                                                             |      4                     �     p                                                        �0     �                    �     �                                                0       L@                         �p     @                                                @       �L     l                    X�     �                                                L       X     �                    �@                                                     X       �g     <                    (�     x                                                g       �s     �                    �     �                                                s       T}                         �x     H                                                }       ��     t                    `�	     �                                                �       $�     �                    �H
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
L�                        �p#     @                                                �      ��    l                   X�$     �                                                �      @�    �+  $   AppProgram,AppURL,HostURL,SelDelim,SelfURL,       �d%     4                                                �        x    `                    L�&     �                                                x      �       comercio                         PROGRESS                         ,, ��  �           9sC      ��Q                  d- �             ��W      �                  T. ��  �           ��Z      �d�                  x  �          P      . -                                                                                                                                                                                                 �  �             . -                                                                                                                                                                                             �/ ��  �           Z1iC      �u�                           caja                             PROGRESS                         0 ��  �           �SB      �.�                    1 ��  �           K�	`      ��X                    > ��+ �%                   >��' �%.     d�| �`  
    state-less                                                                                                                                                                                                                                                                                                                                                                                                             |   �   �   �   �   �   �   �           0  @  P  `  p  �  �  �  �  �  �  �  �          0  @  P       |   �   �   �   �   �   �   �          0  @  P  `  p  �  �  �  �  �  �  �  �          0  @  P    ��                     ��                     ��                     ��                     ��                    ����                      , �    - �    . �    / �    0 	    1 	    undefined             h�%�%L < �%��             ��\      ��      O ��    e�      O ��    R�      O ��    ��    convert-datetime       l   �   �     CHARACTER,INPUT p_conversion CHARACTER,INPUT p_idate DATE,INPUT p_itime INTEGER,OUTPUT p_odate DATE,OUTPUT p_otime INTEGER  format-datetime �    4      CHARACTER,INPUT p_format CHARACTER,INPUT p_date DATE,INPUT p_time INTEGER,INPUT p_options CHARACTER get-cgi   �  �      CHARACTER,INPUT p_name CHARACTER    get-field   �( �  � 	     CHARACTER,INPUT p_name CHARACTER    get-value   �4   < #	     CHARACTER,INPUT p_name CHARACTER    get-user-field  (@ `  � -     CHARACTER,INPUT p_name CHARACTER    hidden-field    pL �  � <     CHARACTER,INPUT p_name CHARACTER,INPUT p_value CHARACTER    hidden-field-list   �X   0 I     CHARACTER,INPUT p_name-list CHARACTER   html-encode d X  x [     CHARACTER,INPUT p_in CHARACTER  output-content-type dp �  �	 g     LOGICAL,INPUT p_type CHARACTER  output-http-header  �| �  
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
l(  H �	     LOGICAL,INPUT cName CHARACTER,INPUT cValue CHARACTER    getGlobal   4x�  � �	     CHARACTER,INPUT cName CHARACTER logNote ���  �  �     LOGICAL,INPUT pcLogType CHARACTER,INPUT pcLogText CHARACTER adm-destroy                   �                     �     adm-timing-out  $X                �                          dispatch    h�t       ( �                      j     get-attribute   ��t       ) �                     �     set-attribute-list  � t       * p                     E     T/��   �	          3 ���� ��      3 ��	  $ �����               '           � ߱   ��      3 ��$	  $ �����               '           � ߱     $      3 ��0	  $ �8���               '           � ߱  � �`��  4 ��<	        �          ��             ��       �x�       �h�/	��     �	          3 ��d	   ���    4 ���	  O ���  ��	     ��@    4 ���	        H          ��             ��       py�       �h/	�`     �	          3 ���	   �t|    4 ���	  O ���  ��
  � ���    4 ��
  � �<
    \
    '           � ߱  �$ ����        \A     ,  ��                                    �
         PD       �
       �
     �          , 8 h��  4 ���
�
    '           � ߱    $ p���                �          ��             &        ��       � Q �    �
              O%������  �A'     , P ��       H                             �         �x       �       �     �          ` lD (��  4 ����    '           � ߱    $ )����                          ��             *2       ���       *�4Q +$    �              O1������  �A3     , � ��       |                             �         ��       �       �     �          � � 4��    4 ����    '           � ߱    $ 5����        �A6     , H ��       @                             �         |p       �       �     �          X d� 7��    4 ����    '           � ߱    $ 7����        � 9�    4 ��        $          ��             9@       ���       9�@Q :0    0              O?������      �  0  �%���%��             CJ     ��    D CP� ��    	                 7 ��    -    ��               ��                 6 C     - D ��       <    ��                                              �         xl       �       �     �          T `   ��|  
                 7 ��    .    ��           0  ��                6 C     . < ��       ,0  ��                                             �            pd               (                L X  J C        �  ��                                           ���                �            O ��  e�      O ��  R�      O ��  ��    �    '           � ߱    $ I���        �AM     - � ��       |                             �         ��       �       �     �          � �D N��    4 ���     '           � ߱    $ N����            L  �  �%���%��             Q��     f�    �$ Q< h�   	                 7 ��    -    ��               ��    �            6 Q     - � ��       �    ��    �                                                  0$              $     �              X�4 
                 7 ��    .    ��        	   p  ��    �            6 Q     . � ��      	 �p  ��    �                                         , @ T         (       `       h                   J Q       |  ��                                           ��              l             O ��  e�      O ��  R�      O ��  ��    �    '           � ߱  $ W����            '           � ߱  d$ Y����            l  �  &l\&��             Z^|	     �U�     Z(   ��  ��                  7 ��    /    ��        
       �      �            6 Z     /  ��      
     �      �                                                   PD       ,       4     �          , 8  O ��  e�      O ��  R�      O ��  ��       [��    4 ��<	                   ��             []  	     �m�       [�d    '           � ߱    $ \����        �A`     0 T ��       L                             x         �|       �       �     �          d p a���  4 ����    '           � ߱    $ b����        �    '           � ߱    $ c����        H eX    4 ���
        |          ��             el  
     䁅       e�    '           � ߱  �$ f`���        � h��    4 ��0  $ h����        l    '           � ߱     i�4  4 ����    '           � ߱    $ j����            '           � ߱    $ k���        `  mT�    4 ��        �          ��             mr       |��       m\4    '           � ߱  �$ n����           o�  0   4 ��Ld    '           � ߱    $ p����        �    '           � ߱    $ q ���        �    '           � ߱  t $ sD ���        �  u� � �   4 ���@    '           � ߱    $ v� ���        t    '           � ߱    $ w� ���        \! x� !H!  4 ����    '           � ߱    $ y� ���            '           � ߱    $ z,!���        t" {h!�!�!  4 �� H    '           � ߱    $ |p!���                �!          ��             }�       0��       }�!   ~�!"D"  4 ��\�    '           � ߱    $ �!���        �    '           � ߱    $ �("���        �    '           � ߱  �"$ �X"���            �"  $   &�#�#(&��             ���#     ���    H$ ��"   �" #  ��                  7 ��    1    ��             �      X#            6 �     1 �# ��       t#  �      X#                                         � � �         �#�#       ���       ��      �          �# �#  O ��  e�      O ��  R�      O ��  ��    T    '           � ߱    $ ��#���        t    +           � ߱  \$$ �,$���        �$ �h$p$    4 ���  Q �|$    �            �$Q ��$    �               ��$�$�$  4 ��t  Q ��$    �              Q ��$    �            $% � %%    4 ���  Q �%                4%O��������    O��������  local-e4gl-options  4D%t       2 �    <                  8�         �   
state-less                       �         = ��- �%8 ��-   8 ��,   8 ��,   8 ��.   8 ��.  &8 ��0 &8 ��0   8 ��.   8 ��.   8 ��/   8 ��/   8 ��1   8 ��1     
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
�    %      Web-State = Timed-Out �8    " (  ��� F    " (     %              %       ����    T   %              � %              � K 0 P       " (          � M " (  � 4    S         � M " (     �     }    �%                    � M " (  �  0 P       " (          � F " (  � 4    S         � F " (     �     }    �%                    � F " (  �  " (     
�        �  � T	 % 	    ADM-ERROR  �     }    �@ @   $    �    }    �%              %       Q    	 $    �    }    �%              %       8     %     dispatch ��
" "   
   %     show-errors % 	    ADM-ERROR  %               " )     � � %               � � %      WEB1.0  � �	 " '     � �      " '     � � " '     � � %     get-time-remaining 
" "   
   
�    " )          " )     %      special-get-attribute �
�    " )      �     }    ��  %              " )         %              %                   " *     %                  " *     �     " *     T    " *     " *  �         " *     �  %               � & %      
       " *     %      
       � B �     }    �Az`       8 " *  �  %                      " *  T��  %              z`      8  " *  �           " *  ���  %              %       ����    " *     � � ! " *     � �	 " *     � � " *     %      special-set-attribute �
�    " *     " *     %     local-e4gl-options 
�    " '     " '     " '     8    �    }    �� � � �	 %     output-header   
�    �     }    �%               8    �    }    �� � � �	 %     output-headers  
�    �     }    �%                A    " '  ��� � �	              " '  � �  $ � �  G %       	       z     �              � � � � &    &    * ,   " ,      �     �     �     |     l     \     8     (         � � G %       {      � � �              � � � �
 � �  � � � � �  �  %               �  &    &    * ,         " ,      �     �     �     |     l     \     8     (         � � G %       {      � � �              � � � �
 � �  � � � 0 �  �  %               � M &    &    * ,   ! " ,     � U &    &    * ,   ! " ,         " '  ��%                x     h     X     H     8     (         � � G %       {      � �
 � �  � � � \" �  �  %                " '     &    &    %               %               " -     &    &     @   %                      " . 	    &        " .     &    " .     " .     " .          " '     %               " '     &    &    * -   " -      " '     &    &    %               %               " -     &    &     @   %                      " . 	    &        " .     &    " .     " .          " '     %              %               " .  �  &    &        " /     %               %              " .     &    &    * 0   " 0     � �      " '  ��� �  <               +   " .     %                  +   " .               +   " .     %                    " '     %                  +  " .      <    (        " '     %       d       " '     %              %                  " '  ��� �     +  " .         +  " .      <             " '     " '  ��%       d       %              %                   " '     " .     4         " '          " . 	    " .     %                    " '          " . 	    " .     %               4         " .          " . 	    " .     %                         " .     " . 	    " .     %                   " .     %                   " .         " .     %                   " .     � �  %               " .     " .     " .     &    &    &    &    &    &    0        %              %              %                   " '     " 1     %                  " '  ��%              � �  �    �    t    d    H    8            �D    �    �    �    p    `    D    4    (    �     �     �     �     �     �     p     T     D     (         G %       {      � �      " .     � �      " -     � �      " .     � �
      " .     � �      " .     � �            " . 	    " .     �       " '     � 
 " '     �       " '     � + <              " '     " '     %              � =      " '     � K
      " '     � V      " . 
    � e      " '         " '  ��" '  �           � � � �  � y           � � � �  � }     " +  ��%                �     �     �     �     d     T     8     (         � � G %       {      � �      " '  ��� �      " '  W�� � � � �  �  %               %                         l     L <   ��            
\       8ۅ      O ��    e�      O ��    R�      O ��    ��       x �     4 ���  � �  ��                    ����                              l     L <   ��             \       �ۅ      O ��    e�      O ��    R�      O ��    ��      /�    � �          3 ���   �         3 ���  ��                    ����                              �     L <   ��            &e\      ��      O ��    e�      O ��    R�      O ��    ��    , (       l    �  7� �     4 ���  $ 8� ���            (           � ߱  L    (           � ߱  � $ 9� ���        | ; 8  4 ���  $ @���            (           � ߱     KDL    4 ��,  $ N`���        �    (           � ߱  �/	Q�     �          3 ���� T��    4 ���  O T��  ���  � V�    4 ��                  ��             Vb       ��       V�   [$h    4 ��         p          ��             ^a       �       ^,�/_�   ��          3 ���   �        3 ���  O `��  ���    O d��  ���    >��(        �,                                                     (     ��                    ����                              �     L <   ��            l�\      ��      O ��    e�      O ��    R�      O ��    ��    s )       l    �p y� ��  � �    $ z� ���        $    )           � ߱   �  8  $ {� ���        @    )           � ߱  8 T  $ |���        \    )           � ߱  p@ h  $ }T���        p    )           � ߱  �x �  $ ~����        �    )           � ߱    � �        �          ��             �        ��       �l/�   �          3 ���(          3 ���   4<      3 ���  $ �P���               )           � ߱    $ �����        �    )           � ߱          �          ��             ��       x��       ��/	��              3 ���           3 ��    � (X  4 ��,  $ �<���        @    )           � ߱    $ �l���        D    )           � ߱    O ���  ��X    >��)      �� �@                                                      0              0      )     ��                    ����                              �     L <   ��            ��\      |��      O ��    e�      O ��    R�      O ��    ��    � *       l      �   � ,          ��      0       ��       (��       ��   $ �� ���        d    *           � ߱  $$ ����        �    *           � ߱    4 ���\$ �@���        �    *           � ߱   �h�    4 ��        �          ��             ��       ���       �p 	��                  �3 ��<�3 ��D�3 ��X�3 ��d�3 ��x  3 ���  O ��� ��    @$ �$���        �    *           � ߱  p$ �T���        �    *           � ߱    p �`�(�  �� l  $�����        t    '           � ߱  �� �  $ �����        �    '           � ߱    � �  $ ����        �    '           � ߱    /	�@   H�          3 ���\ T        3 ���   h        3 ���  >��*      �� �h                                                                               (   8   H   X          (   8   H   X          *     ��                    ����                                    L <   ��            ��\       \|      O ��    e�      O ��    R�      O ��    ��    � 2  �    l    � 2  �    �    � 2       �      >��2      �  � H              
    web-object  	    text/html �          4              4   �/
web-object	text/html   2     ��                    ����                    TXS WebStream GATEWAY_INTERFACE SERVER_SOFTWARE SERVER_PROTOCOL SERVER_NAME SERVER_PORT REQUEST_METHOD SCRIPT_NAME PATH_INFO PATH_TRANSLATED QUERY_STRING REMOTE_ADDR REMOTE_HOST REMOTE_IDENT REMOTE_USER AUTH_TYPE CONTENT_TYPE CONTENT_LENGTH HTTP_ACCEPT HTTP_COOKIE HTTP_REFERER HTTP_USER_AGENT HTTPS AppProgram AppURL SelfURL HostURL CookiePath RootURL useConnID CookieDomain SelDelim , output-content-type http-newline 
 utc-offset web-utilities-hdl debug-options debugging-enabled MiscVarList CONVERT-DATETIME FORMAT-DATETIME GET-CGI GET-FIELD GET-VALUE GET-USER-FIELD HIDDEN-FIELD HIDDEN-FIELD-LIST HTML-ENCODE OUTPUT-CONTENT-TYPE OUTPUT-HTTP-HEADER SET-USER-FIELD SET-WSEU-COOKIE URL-DECODE URL-ENCODE URL-FIELD URL-FIELD-LIST URL-FORMAT DELETE-COOKIE GET-COOKIE SET-COOKIE AVAILABLE-MESSAGES GET-MESSAGES GET-MESSAGE-GROUPS OUTPUT-MESSAGES QUEUE-MESSAGE CHECK-AGENT-MODE GET-CONFIG gscSessionId SETSESSION GETSESSION SETGLOBAL GETGLOBAL LOGNOTE adm-web-state adm-web-timeout adm-web-tohdlr adm-web-time-remaining ADM-DESTROY Web-State = Timed-Out ADM-TIMING-OUT p-method-name caller-name adm-   local- ADM-ERROR show-errors DISPATCH p_attr-name attr-value p_period Type  Version WEB1.0 Web-State Web-Timeout Web-Timeout-Handler Web-Time-Remaining GET-ATTRIBUTE p-attr-list cntr attr-name attr-entry = Invalid element in set-attribute call: in SET-ATTRIBUTE-LIST e4gl-version e4gl-options e4gl-content-type output-header PROCEDURE output-headers no-content-type fileJson fileJson2 wRequestPost enterBody wDeclaro inscripcion wInteres wTiempo wTotNominal wPagos wRecargo wActualizado wTotal wDeuda wNominal wFoprosi wPunitorio wActivo wFecFoprosi wFecPag razonSocial cantidadPeriodos totalRegistros caja  inscripcion parametros IntAct [ "inscripcion":" ","file":" ","error":" No existe un interes activo " }] FecFop No existe parametro para fecha de inicio FoProSi IntMens IntDia No estámn cargados los Punitorios Comercio Liquidacion DetaLiqui Caja-Codi intMens intDia FoProSi ","razonSocial":" ","periodo":" ","anio":" ","nominal":" ","pagos":" ","fechapago":" ","caja":" ","saldo":" ","saldoactual":" ","foprosi":" ","ddjj":" ","convenio":" ","cantidadtotal":" "}, "}] No posee Pagos p_version p_options p_content-type LOCAL-E4GL-OPTIONS idx-idparam idx-inscripcion idx-ins-ani-per idx-nroliquida idx-codigo puk-clave � �       �    4           (       adm-destroy  `           P       adm-timing-out     (    t      caller-name   (      �   p-method-name   8 �     d �   �       dispatch    789;@KNQTV[^_`abde)    �      attr-value    )         p_period      )      0  p_attr-name � d    �    T      get-attribute   yz{|}~������������*    �     cntr    �*    �     attr-name   �*    �     attr-value    *    �     attr-entry    *        p-attr-list <<    ��  (      set-attribute-list  ����������������x2      l  p_version   �2      �  p_options     2      �  p_content-type  �      \  �      local-e4gl-options  �  ��_    �                      GATEWAY_INTERFACE   @    0     SERVER_SOFTWARE `    P     SERVER_PROTOCOL |    p     SERVER_NAME �    �     SERVER_PORT �    �     REQUEST_METHOD  �    �     SCRIPT_NAME �    �     PATH_INFO             PATH_TRANSLATED 0	 	         QUERY_STRING    L
 
   @     REMOTE_ADDR h    \     REMOTE_HOST �    x     REMOTE_IDENT    �    �     REMOTE_USER �    �     AUTH_TYPE   �    �     CONTENT_TYPE         �     CONTENT_LENGTH           HTTP_ACCEPT 8    ,     HTTP_COOKIE X    H     HTTP_REFERER    x    h     HTTP_USER_AGENT �    �     HTTPS   �    �     AppProgram  �    �     AppURL  �    �     SelfURL �    �     HostURL          CookiePath  (          RootURL D    8     useConnID   d    T     CookieDomain    �    t     SelDelim    �    �     output-content-type �      �     http-newline    �! !   �     utc-offset  " "   �  
   web-utilities-hdl   $# #        debug-options   H$ $   4     debugging-enabled   d% %   X     MiscVarList �& &   t     gscSessionId    �' '  �     adm-web-state   �' '  �     adm-web-timeout �' '  �     adm-web-tohdlr  ' '  �     adm-web-time-remaining  ,' '       e4gl-version    L' '  <     e4gl-options    p' '  \     e4gl-content-type   �' ' 	 �     fileJson    �' ' 
 �     fileJson2   �' '  �     wRequestPost    �+ (  �     enterBody    	' '  �     wDeclaro    	' '  	     inscripcion 8	' '  ,	     wInteres    P	' '  H	     wTiempo l	' '  `	     wTotNominal �	' '  |	     wPagos  �	' '  �	     wRecargo    �	' '  �	     wActualizado    �	' '  �	     wTotal  �	' '  �	     wDeuda  
' '   
     wNominal    (
' '  
     wFoprosi    D
' '  8
     wPunitorio  \
' '  T
     wActivo x
' '  l
     wFecFoprosi �
' '  �
     wFecPag �
' '  �
     razonSocial �
' '  �
     cantidadPeriodos    �
' '  �
     totalRegistros    ' '        caja     ) ,    parametros  8* -  ,  Comercio    P+ .  D  Liquidacion h, /  \  DetaLiqui   �- 0  t  Caja-Codi     . 1  �  FoProSi �������������%&'()*+12345679:?@CIJMNQWYZ[\]^`abcefhijklmnopqrsuvwxyz{|}~����������������    ]r#   2C:\Program Files (x86)\PROGRESS91D\src\web\method\e4gl.i   T�"#   2C:\Program Files (x86)\PROGRESS91D\src\web\method\admweb.i ���#   2C:\Program Files (x86)\PROGRESS91D\src\web\method\cgidefs.i    �^�#   2C:\Program Files (x86)\PROGRESS91D\src\web\method\proto.i  $�#   2C:\Program Files (x86)\PROGRESS91D\src\web\method\session.i    h}�    0C:\xampp\htdocs\municipio2.0\services\Comercios\PagosComercioServices.w    
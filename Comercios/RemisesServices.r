	��V�Y`X   �              �                                 ya  0B580029utf-8 MAIN C:\xampp\htdocs\Municipio2.0\services\Comercios\RemisesServices.w,, PROCEDURE local-e4gl-options,,OUTPUT p_version DECIMAL,OUTPUT p_options CHARACTER,OUTPUT p_content-type CHARACTER PROCEDURE output-headers,, PROCEDURE set-attribute-list,,INPUT p-attr-list CHARACTER PROCEDURE get-attribute,,INPUT p_attr-name CHARACTER PROCEDURE dispatch,,INPUT p-method-name CHARACTER PROCEDURE adm-timing-out,, PROCEDURE adm-destroy,, EXTERN logNote,LOGICAL,INPUT pcLogType CHARACTER,INPUT pcLogText CHARACTER EXTERN getGlobal,CHARACTER,INPUT cName CHARACTER EXTERN setGlobal,LOGICAL,INPUT cName CHARACTER,INPUT cValue CHARACTER EXTERN getSession,CHARACTER,INPUT cName CHARACTER EXTERN setSession,LOGICAL,INPUT cName CHARACTER,INPUT cValue CHARACTER EXTERN get-config,CHARACTER,INPUT p_name CHARACTER EXTERN check-agent-mode,LOGICAL,INPUT p_mode CHARACTER EXTERN queue-message,INTEGER,INPUT p_grp CHARACTER,INPUT p_message CHARACTER EXTERN output-messages,INTEGER,INPUT p_option CHARACTER,INPUT p_grp CHARACTER,INPUT p_message CHARACTER EXTERN get-message-groups,CHARACTER, EXTERN get-messages,CHARACTER,INPUT p_grp CHARACTER,INPUT p_delete LOGICAL EXTERN available-messages,LOGICAL,INPUT p_grp CHARACTER EXTERN set-cookie,CHARACTER,INPUT p_name CHARACTER,INPUT p_value CHARACTER,INPUT p_date DATE,INPUT p_time INTEGER,INPUT p_path CHARACTER,INPUT p_domain CHARACTER,INPUT p_options CHARACTER EXTERN get-cookie,CHARACTER,INPUT p_name CHARACTER EXTERN delete-cookie,CHARACTER,INPUT p_name CHARACTER,INPUT p_path CHARACTER,INPUT p_domain CHARACTER EXTERN url-format,CHARACTER,INPUT p_url CHARACTER,INPUT p_name-list CHARACTER,INPUT p_delim CHARACTER EXTERN url-field-list,CHARACTER,INPUT p_name-list CHARACTER,INPUT p_delim CHARACTER EXTERN url-field,CHARACTER,INPUT p_name CHARACTER,INPUT p_value CHARACTER,INPUT p_delim CHARACTER EXTERN url-encode,CHARACTER,INPUT p_value CHARACTER,INPUT p_enctype CHARACTER EXTERN url-decode,CHARACTER,INPUT p_in CHARACTER EXTERN set-wseu-cookie,CHARACTER,INPUT p_cookie CHARACTER EXTERN set-user-field,LOGICAL,INPUT p_name CHARACTER,INPUT p_value CHARACTER EXTERN output-http-header,CHARACTER,INPUT p_header CHARACTER,INPUT p_value CHARACTER EXTERN output-content-type,LOGICAL,INPUT p_type CHARACTER EXTERN html-encode,CHARACTER,INPUT p_in CHARACTER EXTERN hidden-field-list,CHARACTER,INPUT p_name-list CHARACTER EXTERN hidden-field,CHARACTER,INPUT p_name CHARACTER,INPUT p_value CHARACTER EXTERN get-user-field,CHARACTER,INPUT p_name CHARACTER EXTERN get-value,CHARACTER,INPUT p_name CHARACTER EXTERN get-field,CHARACTER,INPUT p_name CHARACTER EXTERN get-cgi,CHARACTER,INPUT p_name CHARACTER EXTERN format-datetime,CHARACTER,INPUT p_format CHARACTER,INPUT p_date DATE,INPUT p_time INTEGER,INPUT p_options CHARACTER EXTERN convert-datetime,CHARACTER,INPUT p_conversion CHARACTER,INPUT p_idate DATE,INPUT p_itime INTEGER,OUTPUT p_odate DATE,OUTPUT p_otime INTEGER      8  �-              �U  8H       �   ) �?  �  8@  �  A  P XD  < �H  H �L  �  �M  l ? O  �ISO8859-1                                                        � . � �                     `            �            ,+ H' !�    �! $          ,  �                                         PROGRESS                              �                     � 8                                                             |      4                     �     p                                                        �0     �                    �     �                                                0       L@                         �p     @                                                @       �L     l                    X�     �                                                L       X     �                    �@                                                     X       �g     <                    (�     x                                                g       �s     �                    �     �                                                s       T}                         �x     H                                                }       ��     t                    `�	     �                                                �       $�     �                    �H
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
L�                        �p#     @                                                �      ��    l                   X�$     �                                                �      @�    �+  $   AppProgram,AppURL,HostURL,SelDelim,SelfURL,       �d%     4                                                �        x    `                    L�&     �                                                x               comercio                         PROGRESS                           , 3�  3           �d<R      3�#                    > ��+ �                   >��'       8p8 d  
    state-less C                                                                                                                                                                        8   L   \   l   |   �   �   �   �   �   �   �   �       8   L   \   l   |   �   �   �   �   �   �   �   �    ��                     ��                     ��                     ��                    ����                      , �    undefined             h    L <   ��             ��\ 	     ��      O ��    e�      O ��    R�      O ��    ��    convert-datetime       l   �   �     CHARACTER,INPUT p_conversion CHARACTER,INPUT p_idate DATE,INPUT p_itime INTEGER,OUTPUT p_odate DATE,OUTPUT p_otime INTEGER  format-datetime �    4      CHARACTER,INPUT p_format CHARACTER,INPUT p_date DATE,INPUT p_time INTEGER,INPUT p_options CHARACTER get-cgi   �  �      CHARACTER,INPUT p_name CHARACTER    get-field   �( �  � 	     CHARACTER,INPUT p_name CHARACTER    get-value   �4   < #	     CHARACTER,INPUT p_name CHARACTER    get-user-field  (@ `  � -     CHARACTER,INPUT p_name CHARACTER    hidden-field    pL �  � <     CHARACTER,INPUT p_name CHARACTER,INPUT p_value CHARACTER    hidden-field-list   �X   0 I     CHARACTER,INPUT p_name-list CHARACTER   html-encode d X  x [     CHARACTER,INPUT p_in CHARACTER  output-content-type dp �  �	 g     LOGICAL,INPUT p_type CHARACTER  output-http-header  �| �  
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
l(  H �	     LOGICAL,INPUT cName CHARACTER,INPUT cValue CHARACTER    getGlobal   4x�  � �	     CHARACTER,INPUT cName CHARACTER logNote ���  �  �     LOGICAL,INPUT pcLogType CHARACTER,INPUT pcLogText CHARACTER adm-destroy                   �                     �     adm-timing-out  $X                �                          dispatch    h�t       ( �                      j     get-attribute   ��t       ) �                     �     set-attribute-list  � t       * p                     E     T/��   �	          3 ���� ��      3 ��	  $ �����               '           � ߱   ��      3 ��$	  $ �����               '           � ߱     $      3 ��0	  $ �8���               '           � ߱  � �`��  4 ��<	        �          ��             ��       軍       �h�/	��     �	          3 ��d	   ���    4 ���	  O ���  ��	     ��@    4 ���	        H          ��             ��       ���       �h/	�`     �	          3 ���	   �t|    4 ���	  O ���  ��
    ���    4 ��
  � �<
    output-headers  4�                �                          h
    '         �
    '           � ߱  4$ ����        l @�    4 ��         �          ��             ,       d��       H    �    �� ��             )�     ���    P �   �$  ��                  @ ��   ,    ��           0  �      \            6     , � ��       x0  �      \                                                  ��                       @          � �  O ��  e�      O ��  R�      O ��  ��    L    ' 	     	     � ߱   $ ����        D ,4    4 ��t  O �� ��    t PX    4 ���  Q d    �            � ���  4 ����    ' 
     
     � ߱    $ ����            ' 
     
     � ߱    $ ����        Q �                   &4  4 ���  Q '$                  Q (@    D              Q *\    l            � .x�    4 ��t        �          ��             .a  	     ��       .�� /�    4 ���        L          ��             /F       �       /��    '         �    +           � ߱  �$ 0���            �  �  (��0��             3?�     t�    @ 3`   ��  ��                  7 ��    ,    ��           �  �      0            6 3     , T ��       L�  �      0                                         �         �|                       @          d p  O ��  e�      O ��  R�      O ��  ��    �    +           � ߱  $ 4����            '           � ߱    $ 6����        @    '           � ߱  p$ @$���        �    '           � ߱  �$ AT���           C��    4 ���  Q D�    �               H�    4 ���        <          ��             HZ  	     |��       H��    '         �    +           � ߱  �$ I���        	    �  �  8��@��             KU�	     䢄    0 KP   ��  ��                  7 ��    ,    ��             �                   6 K     , D ��       <  �                                                          xl                       @          T `  O ��	 	 e�      O ��	 	 R�      O ��	 	 ��    (    +           � ߱   $ L����        <    '           � ߱    $ M����        d    '           � ߱  `$ V���        �    '           � ߱  t$ WD���           Y��    4 ���  Q Y�    �              Oc�������  local-e4gl-options  ��t       - �    <                  8�          
state-less              8 ��,   8 ��,   8 ��,   8 ��,   8 ��,   8 ��,     
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
�    %     set-attribute-list  
�    %      Web-State = Timed-Out �8    " (  0�� F    " (     %              %       ����    T   %              � %              � K 0 P       " (          � M " (  ө 4    S         � M " (     �     }    �%                    � M " (  �  0 P       " (          � F " (  ө 4    S         � F " (     �     }    �%                    � F " (  �  " (     
�        �  � T	 % 	    ADM-ERROR � �     }    �@ @   $    �    }    �%              %       Q    	 $    �    }    �%              %       8     %     dispatch �
" "   
   %     show-errors % 	    ADM-ERROR � %               " )     � � %               � � %      WEB1.0  � �	 " '     � �      " '     � � " '     � � %     get-time-remaining  
" "   
   
�    " )          " )     %      special-get-attribute �
�    " )      �     }    ��  %              " )         %              %                   " *     %                  " *     �     " *     T    " *     " *  ө         " *     �  %               � & %      
       " *     %      
       � B �     }    �Az`       8 " *  �  %                      " *  ���  %              z`      8  " *  �           " *  ��  %              %       ����    " *     � � ! " *     � �	 " *     � � " *     %      special-set-attribute �
�    " *     " *     %     local-e4gl-options  
�    " '     " '     " '     8    �    }    �� � � �	 %     output-header   
�    �     }    �%               8    �    }    �� � � �	 %     output-headers  
�    �     }    �%                A    " '  �� � �	              " '  ө "       �  $ �   G %       	       z     �              �  �  $ �   G %       	       z     �              �      " '  /�� / o%   o               " ,     &        " ' 	    %                  " ' 	 /�%                  " ' 	 0�%              � 9     " ,     %                   " ,     �    �     �     �     �     �     p     T     D     (         G %       {      � ;      " ,     � K      " ,     � Z      " ,     � h " ,     � v
 " ' 
        " ' 	 0�%                        � � �   � �           � � �   � � � �     " '  /�� �     " '  /��   � 9 %                " '         " ,     &    %               (            �     �     �     �     � $    �     h     X     <     ,         " '     G %       {      � ;      " ,     � K      " ,     � Z �   �   � � " ,     � h " ,     � v
 " ' 
    � � �   � �   , " '     %                   " '  �%                   " '     � � " +     " '         " '  /��   � 9 %               " '     8    " ,     &    %                       �     �     �     �     �     �     �     h     X     <     ,         " '     G %       {      � ;      " ,     � K      " ,     � Z      " ,     � h " ,     � v
 " ' 
    � � �   � �   , " '     %                   " '  �%                   " '     � � " +     " '     %                         l     L <   ��            
\       x��      O ��    e�      O ��    R�      O ��    ��       x �     4 ���  � �  ��                    ����                              l     L <   ��             \       ��      O ��    e�      O ��    R�      O ��    ��      /�    � �          3 ���   �         3 ���  ��                    ����                              �     L <   ��            &e\      ���      O ��    e�      O ��    R�      O ��    ��    , (       l    �  7� �     4 ���  $ 8� ���            (           � ߱  L    (           � ߱  � $ 9� ���        | ; 8  4 ���  $ @���            (           � ߱     KDL    4 ��,  $ N`���        �    (           � ߱  �/	Q�     �          3 ���� T��    4 ���  O T��  ���  � V�    4 ��                  ��             Vb       ���       V�   [$h    4 ��         p          ��             ^a       ��       ^,�/_�   ��          3 ���   �        3 ���  O `��  ���    O d��  ���    >��(        �,                                                     (     ��                    ����                              �     L <   ��            l�\      ��      O ��    e�      O ��    R�      O ��    ��    s )       l    �p y� ��  � �    $ z� ���        $    )           � ߱   �  8  $ {� ���        @    )           � ߱  8 T  $ |���        \    )           � ߱  p@ h  $ }T���        p    )           � ߱  �x �  $ ~����        �    )           � ߱    � �        �          ��             �       �       �l/�   �          3 ���(          3 ���   4<      3 ���  $ �P���               )           � ߱    $ �����        �    )           � ߱          �          ��             ��       p�       ��/	��              3 ���           3 ��    � (X  4 ��,  $ �<���        @    )           � ߱    $ �l���        D    )           � ߱    O ���  ��X    >��)      �� �@                                                      0              0      )     ��                    ����                              �     L <   ��            ��\      t�      O ��    e�      O ��    R�      O ��    ��    � *       l      �   � ,          ��      0       ��       h�       ��   $ �� ���        d    *           � ߱  $$ ����        �    *           � ߱    4 ���\$ �@���        �    *           � ߱   �h�    4 ��        �          ��             ��       ��       �p 	��                  �3 ��<�3 ��D�3 ��X�3 ��d�3 ��x  3 ���  O ��� ��    @$ �$���        �    *           � ߱  p$ �T���        �    *           � ߱    p �`�(�  �� l  $�����        t    '           � ߱  �� �  $ �����        �    '           � ߱    � �  $ ����        �    '           � ߱    /	�@   H�          3 ���\ T        3 ���   h        3 ���  >��*      �� �h                                                                               (   8   H   X          (   8   H   X          *     ��                    ����                              l     L <   ��            
\       ���      O ��    e�      O ��    R�      O ��    ��      $ 	� ���        \
    '           � ߱    ��                    ����                                    L <   ��            x\       �΄      O ��    e�      O ��    R�      O ��    ��    � -  �    l    � -  �    �    � -       �      >��-      �  � H              
    web-object  	    text/html �          4              4   �/
web-object	text/html   -     ��                    ����                    TXS WebStream GATEWAY_INTERFACE SERVER_SOFTWARE SERVER_PROTOCOL SERVER_NAME SERVER_PORT REQUEST_METHOD SCRIPT_NAME PATH_INFO PATH_TRANSLATED QUERY_STRING REMOTE_ADDR REMOTE_HOST REMOTE_IDENT REMOTE_USER AUTH_TYPE CONTENT_TYPE CONTENT_LENGTH HTTP_ACCEPT HTTP_COOKIE HTTP_REFERER HTTP_USER_AGENT HTTPS AppProgram AppURL SelfURL HostURL CookiePath RootURL useConnID CookieDomain SelDelim , output-content-type http-newline 
 utc-offset web-utilities-hdl debug-options debugging-enabled MiscVarList CONVERT-DATETIME FORMAT-DATETIME GET-CGI GET-FIELD GET-VALUE GET-USER-FIELD HIDDEN-FIELD HIDDEN-FIELD-LIST HTML-ENCODE OUTPUT-CONTENT-TYPE OUTPUT-HTTP-HEADER SET-USER-FIELD SET-WSEU-COOKIE URL-DECODE URL-ENCODE URL-FIELD URL-FIELD-LIST URL-FORMAT DELETE-COOKIE GET-COOKIE SET-COOKIE AVAILABLE-MESSAGES GET-MESSAGES GET-MESSAGE-GROUPS OUTPUT-MESSAGES QUEUE-MESSAGE CHECK-AGENT-MODE GET-CONFIG gscSessionId SETSESSION GETSESSION SETGLOBAL GETGLOBAL LOGNOTE adm-web-state adm-web-timeout adm-web-tohdlr adm-web-time-remaining ADM-DESTROY Web-State = Timed-Out ADM-TIMING-OUT p-method-name caller-name adm-   local- ADM-ERROR show-errors DISPATCH p_attr-name attr-value p_period Type  Version WEB1.0 Web-State Web-Timeout Web-Timeout-Handler Web-Time-Remaining GET-ATTRIBUTE p-attr-list cntr attr-name attr-entry = Invalid element in set-attribute call: in SET-ATTRIBUTE-LIST e4gl-version e4gl-options e4gl-content-type output-header PROCEDURE output-headers no-content-type contador fechaBaja wRequestPost numeroinscripcion palabra jsonObj bandera OUTPUT-HEADERS  palabra numeroInscripcion get Remis [ "inscripcion":" ","licencia":" ","dominio":" ","titular":" ","baja":" ","error":" "}, "} ] post " p_version p_options p_content-type LOCAL-E4GL-OPTIONS PUK-Clave  <       �    4           (       adm-destroy  `           P       adm-timing-out     (    t      caller-name   (      �   p-method-name   8 �     d �   �       dispatch    789;@KNQTV[^_`abde)    �      attr-value    )         p_period      )      0  p_attr-name � d    �    T      get-attribute   yz{|}~������������*    �     cntr    �*    �     attr-name   �*    �     attr-value    *    �     attr-entry    *        p-attr-list <<    ��  (      set-attribute-list  �����������������          t      output-headers  	
�-      �  p_version   �-      �  p_options     -      �  p_content-type  \      �  �      local-e4gl-options    �t	5    (  `	        L      8     GATEWAY_INTERFACE   l    \     SERVER_SOFTWARE �    |     SERVER_PROTOCOL �    �     SERVER_NAME �    �     SERVER_PORT �    �     REQUEST_METHOD       �     SCRIPT_NAME          PATH_INFO   <    ,     PATH_TRANSLATED \	 	   L     QUERY_STRING    x
 
   l     REMOTE_ADDR �    �     REMOTE_HOST �    �     REMOTE_IDENT    �    �     REMOTE_USER �    �     AUTH_TYPE       �     CONTENT_TYPE    ,         CONTENT_LENGTH  H    <     HTTP_ACCEPT d    X     HTTP_COOKIE �    t     HTTP_REFERER    �    �     HTTP_USER_AGENT �    �     HTTPS   �    �     AppProgram  �    �     AppURL            SelfURL           HostURL <    0     CookiePath  T    L     RootURL p    d     useConnID   �    �     CookieDomain    �    �     SelDelim    �    �     output-content-type �      �     http-newline    ! !         utc-offset  0" "     
   web-utilities-hdl   P# #   @     debug-options   t$ $   `     debugging-enabled   �% %   �     MiscVarList �& &   �     gscSessionId    �' '  �     adm-web-state   �' '  �     adm-web-timeout ' '        adm-web-tohdlr  8' '        adm-web-time-remaining  X' '  H     e4gl-version    x' '  h     e4gl-options    �' '  �     e4gl-content-type   �' ' 	 �     contador    �' ' 
 �     fechaBaja   �' '  �     wRequestPost    	' '  	     numeroinscripcion   0	' '  (	     palabra H	' '  @	     jsonObj   + (  X	     bandera   ) ,  l	  Remis   �������������&'()*,./0346?@ACDFHIKLMUVWYZac    ]r#   2C:\Program Files (x86)\PROGRESS91D\src\web\method\e4gl.i   �	�"#   2C:\Program Files (x86)\PROGRESS91D\src\web\method\admweb.i $
��#   2C:\Program Files (x86)\PROGRESS91D\src\web\method\cgidefs.i    h
^�#   2C:\Program Files (x86)\PROGRESS91D\src\web\method\proto.i  �
�#   2C:\Program Files (x86)\PROGRESS91D\src\web\method\session.i    �
@�    0C:\xampp\htdocs\Municipio2.0\services\Comercios\RemisesServices.w  
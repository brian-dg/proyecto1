	��VIm"`�   �              �                                 ��  19B00058utf-8 MAIN C:\xampp\htdocs\municipio2.0\services\Comercios\PrintPagosServices.w,, PROCEDURE local-e4gl-options,,OUTPUT p_version DECIMAL,OUTPUT p_options CHARACTER,OUTPUT p_content-type CHARACTER PROCEDURE set-attribute-list,,INPUT p-attr-list CHARACTER PROCEDURE get-attribute,,INPUT p_attr-name CHARACTER PROCEDURE dispatch,,INPUT p-method-name CHARACTER PROCEDURE adm-timing-out,, PROCEDURE adm-destroy,, EXTERN PDFendecrypt,LOGICAL,INPUT BufferPtr MEMPTR,INPUT PasswordPtr MEMPTR EXTERN DeCompressFile,LOGICAL,INPUT InputFile CHARACTER,INPUT OutputFile CHARACTER EXTERN CompressFile,LOGICAL,INPUT InputFile CHARACTER,INPUT OutputFile CHARACTER EXTERN DeCompressBuffer,INTEGER,INPUT InputBuffer MEMPTR,OUTPUT OutputBuffer MEMPTR,OUTPUT OutputSize INTEGER EXTERN CompressBuffer,INTEGER,INPUT InputBuffer MEMPTR,INPUT-OUTPUT OutputBuffer MEMPTR,OUTPUT OutputSize INTEGER EXTERN pdf_get_pdf_info,CHARACTER,INPUT pdfSTREAM CHARACTER,INPUT pdfID CHARACTER,INPUT pInfo CHARACTER EXTERN pdf_text_fontwidth2,DECIMAL,INPUT pdfStream CHARACTER,INPUT pdfFont CHARACTER,INPUT pdfFontSize DECIMAL,INPUT pdfText CHARACTER EXTERN pdf_text_fontwidth,DECIMAL,INPUT pdfStream CHARACTER,INPUT pdfFont CHARACTER,INPUT pdfText CHARACTER EXTERN GetXMLNodeValue,CHARACTER,INPUT pParent CHARACTER,INPUT pNode CHARACTER EXTERN pdf_Font_Loaded,LOGICAL,INPUT pdfStream CHARACTER,INPUT pdfFont CHARACTER EXTERN pdf_get_parameter,CHARACTER,INPUT pdfStream CHARACTER,INPUT pdfParameter CHARACTER EXTERN pdf_get_tool_parameter,CHARACTER,INPUT pdfStream CHARACTER,INPUT pdfToolName CHARACTER,INPUT pdfToolParam CHARACTER,INPUT pdfToolCol INTEGER EXTERN pdf_LastProcedure,LOGICAL,INPUT pdfStream CHARACTER,INPUT pdfProcHandle HANDLE,INPUT pdfHeaderProc CHARACTER EXTERN pdf_PageHeader,LOGICAL,INPUT pdfStream CHARACTER,INPUT pdfProcHandle HANDLE,INPUT pdfHeaderProc CHARACTER EXTERN pdf_PageFooter,LOGICAL,INPUT pdfStream CHARACTER,INPUT pdfProcHandle HANDLE,INPUT pdfFooterProc CHARACTER EXTERN pdf_TotalPages,CHARACTER,INPUT pdfStream CHARACTER EXTERN pdf_get_wrap_length,INTEGER,INPUT pdfStream CHARACTER,INPUT pdfText CHARACTER,INPUT pdfWidth INTEGER EXTERN pdf_Render,INTEGER,INPUT pdfStream CHARACTER EXTERN pdf_PaperType,CHARACTER,INPUT pdfStream CHARACTER EXTERN pdf_Orientation,CHARACTER,INPUT pdfStream CHARACTER EXTERN pdf_GetNumFittingChars,INTEGER,INPUT pdfStream CHARACTER,INPUT pdfText CHARACTER,INPUT pdfFromX INTEGER,INPUT pdfToX INTEGER EXTERN pdf_LeftMargin,INTEGER,INPUT pdfStream CHARACTER EXTERN pdf_get_info,CHARACTER,INPUT pdfStream CHARACTER,INPUT pdfAttribute CHARACTER EXTERN pdf_GraphicY,DECIMAL,INPUT pdfStream CHARACTER EXTERN pdf_GraphicX,DECIMAL,INPUT pdfStream CHARACTER EXTERN pdf_BottomMargin,INTEGER,INPUT pdfStream CHARACTER EXTERN pdf_TopMargin,INTEGER,INPUT pdfStream CHARACTER EXTERN pdf_Angle,INTEGER,INPUT pdfStream CHARACTER EXTERN pdf_PageRotate,INTEGER,INPUT pdfStream CHARACTER EXTERN pdf_Pageheight,INTEGER,INPUT pdfStream CHARACTER EXTERN pdf_PageWidth,INTEGER,INPUT pdfStream CHARACTER EXTERN pdf_Page,INTEGER,INPUT pdfStream CHARACTER EXTERN pdf_FillBlue,DECIMAL,INPUT pdfStream CHARACTER EXTERN pdf_FillGreen,DECIMAL,INPUT pdfStream CHARACTER EXTERN pdf_FillRed,DECIMAL,INPUT pdfStream CHARACTER EXTERN pdf_TextBlue,DECIMAL,INPUT pdfStream CHARACTER EXTERN pdf_TextGreen,DECIMAL,INPUT pdfStream CHARACTER EXTERN pdf_TextRed,DECIMAL,INPUT pdfStream CHARACTER EXTERN pdf_text_widthdec2,DECIMAL,INPUT pdfStream CHARACTER,INPUT pdfFontTag CHARACTER,INPUT pdfFontSize DECIMAL,INPUT pdfText CHARACTER EXTERN pdf_text_widthdec,DECIMAL,INPUT pdfStream CHARACTER,INPUT pdfText CHARACTER EXTERN pdf_text_width,INTEGER,INPUT pdfStream CHARACTER,INPUT pdfText CHARACTER EXTERN pdf_PointSize,DECIMAL,INPUT pdfStream CHARACTER EXTERN pdf_VerticalSpace,DECIMAL,INPUT pdfStream CHARACTER EXTERN pdf_TextY,INTEGER,INPUT pdfStream CHARACTER EXTERN pdf_TextX,INTEGER,INPUT pdfStream CHARACTER EXTERN pdf_ImageDim,INTEGER,INPUT pdfStream CHARACTER,INPUT pdfImage CHARACTER,INPUT pdfDim CHARACTER EXTERN pdf_FontType,CHARACTER,INPUT pdfStream CHARACTER EXTERN pdf_Font,CHARACTER,INPUT pdfStream CHARACTER EXTERN logNote,LOGICAL,INPUT pcLogType CHARACTER,INPUT pcLogText CHARACTER EXTERN getGlobal,CHARACTER,INPUT cName CHARACTER EXTERN setGlobal,LOGICAL,INPUT cName CHARACTER,INPUT cValue CHARACTER EXTERN getSession,CHARACTER,INPUT cName CHARACTER EXTERN setSession,LOGICAL,INPUT cName CHARACTER,INPUT cValue CHARACTER EXTERN get-config,CHARACTER,INPUT p_name CHARACTER EXTERN check-agent-mode,LOGICAL,INPUT p_mode CHARACTER EXTERN queue-message,INTEGER,INPUT p_grp CHARACTER,INPUT p_message CHARACTER EXTERN output-messages,INTEGER,INPUT p_option CHARACTER,INPUT p_grp CHARACTER,INPUT p_message CHARACTER EXTERN get-message-groups,CHARACTER, EXTERN get-messages,CHARACTER,INPUT p_grp CHARACTER,INPUT p_delete LOGICAL EXTERN available-messages,LOGICAL,INPUT p_grp CHARACTER EXTERN set-cookie,CHARACTER,INPUT p_name CHARACTER,INPUT p_value CHARACTER,INPUT p_date DATE,INPUT p_time INTEGER,INPUT p_path CHARACTER,INPUT p_domain CHARACTER,INPUT p_options CHARACTER EXTERN get-cookie,CHARACTER,INPUT p_name CHARACTER EXTERN delete-cookie,CHARACTER,INPUT p_name CHARACTER,INPUT p_path CHARACTER,INPUT p_domain CHARACTER EXTERN url-format,CHARACTER,INPUT p_url CHARACTER,INPUT p_name-list CHARACTER,INPUT p_delim CHARACTER EXTERN url-field-list,CHARACTER,INPUT p_name-list CHARACTER,INPUT p_delim CHARACTER EXTERN url-field,CHARACTER,INPUT p_name CHARACTER,INPUT p_value CHARACTER,INPUT p_delim CHARACTER EXTERN url-encode,CHARACTER,INPUT p_value CHARACTER,INPUT p_enctype CHARACTER EXTERN url-decode,CHARACTER,INPUT p_in CHARACTER EXTERN set-wseu-cookie,CHARACTER,INPUT p_cookie CHARACTER EXTERN set-user-field,LOGICAL,INPUT p_name CHARACTER,INPUT p_value CHARACTER EXTERN output-http-header,CHARACTER,INPUT p_header CHARACTER,INPUT p_value CHARACTER EXTERN output-content-type,LOGICAL,INPUT p_type CHARACTER EXTERN html-encode,CHARACTER,INPUT p_in CHARACTER EXTERN hidden-field-list,CHARACTER,INPUT p_name-list CHARACTER EXTERN hidden-field,CHARACTER,INPUT p_name CHARACTER,INPUT p_value CHARACTER EXTERN get-user-field,CHARACTER,INPUT p_name CHARACTER EXTERN get-value,CHARACTER,INPUT p_name CHARACTER EXTERN get-field,CHARACTER,INPUT p_name CHARACTER EXTERN get-cgi,CHARACTER,INPUT p_name CHARACTER EXTERN format-datetime,CHARACTER,INPUT p_format CHARACTER,INPUT p_date DATE,INPUT p_time INTEGER,INPUT p_options CHARACTER EXTERN convert-datetime,CHARACTER,INPUT p_conversion CHARACTER,INPUT p_idate DATE,INPUT p_itime INTEGER,OUTPUT p_odate DATE,OUTPUT p_otime INTEGER     $  j              G�  $�K�/      T   ) ��  �  \�  �  ,�  P |�  < ��  H  �  l ? l�  �ISO8859-1                                                        � 9 � �  0,  �          `            �J            �+ �' �-   ,&Q �            �                                         PROGRESS                              �                     � 8                                                             |      4                     �     p                                                        �0     �                    �     �                                                0       L@                         �p     @                                                @       �L     l                    X�     �                                                L       X     �                    �@                                                     X       �g     <                    (�     x                                                g       �s     �                    �     �                                                s       T}                         �x     H                                                }       ��     t                    `�	     �                                                �       $�     �                    �H
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
L�                        �p#     @                                                �      ��    l                   X�$     �                                                �      @�    �+  $   AppProgram,AppURL,HostURL,SelDelim,SelfURL,       �d%     4                                                �        x    `                    L�&     �                                                x      $       comercio                         PROGRESS                         8, ��  �           9sC      ��Q                    �!     
p-   `   ��D \�-    �   �         $        �.   `   ��8, d���    �   �         �        �/   `   s�� �s=�        s         �        0   `   ���' ����    l   �         ,        P1   `   	�   	(S    D   	         �        �2   `   w	�� �w	t4    �   w	         `        �3   `   �	�< X�	h    |   �	         �        �4 ��  �           ��W      ��                  p5 ��  �           ��Z      �d�                      L  �        �2      5 4                                                                                                                                                                                                                              caja                             PROGRESS                         �6 $             �SB      .�                    7 �             K�	`      �X                    > ��+ �J                   >��' �J2     �� �  
    state-less                                                                                                                                                                                                                                                                                                                                                                                                                   
             " �   �   �   �   �   �   �   �       (  8  H  X  h  x  �  �  �  �  �  �  �  �      (  8  H  X  h  x     " �   �   �   �   �   �   �   �      (  8  H  X  h  x  �  �  �  �  �  �  �  �      (  8  H  X  h  x                            �  ���������   �       �          �   i     	    ���                                                 	      
                                                                                 �  �  ���������                     �    �          �   i     	    ����������#-7AKU^i                                        �  ���������     �     �          �   i     	    ��{��                                                 	      
                                                         �  �  ���������                      �    �    �    �    �    �          �   i     i     i     i     i     i     	 	 	 	 	 	    ���������������		                                                 	      
                                 �  ���������                   �          �   i     	    ��%	-	�5	>	F	N	V	_	g	o	                                              �  ���������           �	    �	          �   i  i     i     	 	 	    ��	�	�	�	�	                                                  �  ���	������       �       �          �   i    	 	    ���	�	�	�	�	    ��                     ��                     ��                    ����                      , �    4 �    5 �    6 �    7 �    undefined             h�K0KL < 8K��             ��\      ބ      O ��    e�      O ��    R�      O ��    ��    convert-datetime       l   �   �     CHARACTER,INPUT p_conversion CHARACTER,INPUT p_idate DATE,INPUT p_itime INTEGER,OUTPUT p_odate DATE,OUTPUT p_otime INTEGER  format-datetime �    4      CHARACTER,INPUT p_format CHARACTER,INPUT p_date DATE,INPUT p_time INTEGER,INPUT p_options CHARACTER get-cgi   �  �      CHARACTER,INPUT p_name CHARACTER    get-field   �( �  � 	     CHARACTER,INPUT p_name CHARACTER    get-value   �4   < #	     CHARACTER,INPUT p_name CHARACTER    get-user-field  (@ `  � -     CHARACTER,INPUT p_name CHARACTER    hidden-field    pL �  � <     CHARACTER,INPUT p_name CHARACTER,INPUT p_value CHARACTER    hidden-field-list   �X   0 I     CHARACTER,INPUT p_name-list CHARACTER   html-encode d X  x [     CHARACTER,INPUT p_in CHARACTER  output-content-type dp �  �	 g     LOGICAL,INPUT p_type CHARACTER  output-http-header  �| �  
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
l(  H �	     LOGICAL,INPUT cName CHARACTER,INPUT cValue CHARACTER    getGlobal   4x�  � �	     CHARACTER,INPUT cName CHARACTER logNote ���  �  �     LOGICAL,INPUT pcLogType CHARACTER,INPUT pcLogText CHARACTER adm-destroy                   �                     �     adm-timing-out  $X                �                          dispatch    h�t       ( �                      j     get-attribute   ��t       ) �                     �     set-attribute-list  � t       * p                     E     T/��   �	          3 ���� ��      3 ��	  $ �����               '           � ߱   ��      3 ��$	  $ �����               '           � ߱     $      3 ��0	  $ �8���               '           � ߱  � �`��  4 ��<	        �          ��             ��       i�       �h�/	��     �	          3 ��d	   ���    4 ���	  O ���  ��	     ��@    4 ���	        H          ��             ��       �i�       �h/	�`     �	          3 ���	   �t|    4 ���	  O ���  ��
  � ���    4 ��
  � �<
    \
    ' 	     	     � ߱  �$ ����        \A     ,  ��                                    �
         PD       �
       �
     �          , 8 h��  4 ���
�
    '           � ߱    $ p���                �          ��             #       ��       � Q �    �
              O"������  �A%     , P ��       H                             �         �x       �       �     �          ` lD &��  4 ����    '           � ߱    $ &����                          ��             '.       ,�       '�4Q ($    �              O-������  �A1     , � ��       |                             �         ��       �       �     �          � � 2��    4 ����    '           � ߱    $ 2����        �A4     , H ��       @                             �         |p       �       �     �          X d� 5��    4 ����    '           � ߱    $ 5����        P 7�    4 ��        $          ��             7>       �+�       7�@Q 80    0              O=�������  x& a\�    4 ��         �          ��             ap       �h       ad�/d�     ' !         3 ��H@        8       � ߱    $ g����        pdf_Font    �P�  ! 

     CHARACTER,INPUT pdfStream CHARACTER pdf_FontType    \<  `" 
     CHARACTER,INPUT pdfStream CHARACTER pdf_ImageDim    Lh�  �#  
     INTEGER,INPUT pdfStream CHARACTER,INPUT pdfImage CHARACTER,INPUT pdfDim CHARACTER   pdf_TextX   �t�  $ -
	     INTEGER,INPUT pdfStream CHARACTER   pdf_TextY   �@  `% 7
	     INTEGER,INPUT pdfStream CHARACTER   pdf_VerticalSpace   L��  �& A
     DECIMAL,INPUT pdfStream CHARACTER   pdf_PointSize   ���  �' S
     DECIMAL,INPUT pdfStream CHARACTER   pdf_text_width  ��  <( a
     INTEGER,INPUT pdfStream CHARACTER,INPUT pdfText CHARACTER   pdf_text_widthdec   (�x  �) p
     DECIMAL,INPUT pdfStream CHARACTER,INPUT pdfText CHARACTER   pdf_text_widthdec2  ���  * �
     DECIMAL,INPUT pdfStream CHARACTER,INPUT pdfFontTag CHARACTER,INPUT pdfFontSize DECIMAL,INPUT pdfText CHARACTER  pdf_TextRed ��t  �+ �
     DECIMAL,INPUT pdfStream CHARACTER   pdf_TextGreen   ���  �, �
     DECIMAL,INPUT pdfStream CHARACTER   pdf_TextBlue    ��   $- �
     DECIMAL,INPUT pdfStream CHARACTER   pdf_FillRed �H  h. �
     DECIMAL,INPUT pdfStream CHARACTER   pdf_FillGreen   T��  �/ �
     DECIMAL,INPUT pdfStream CHARACTER   pdf_FillBlue    ��  �0 �
     DECIMAL,INPUT pdfStream CHARACTER   pdf_Page    �  <1 �
     INTEGER,INPUT pdfStream CHARACTER   pdf_PageWidth   (`  �2 �
     INTEGER,INPUT pdfStream CHARACTER   pdf_Pageheight  p(�  �3 �
     INTEGER,INPUT pdfStream CHARACTER   pdf_PageRotate  �4�  4 	     INTEGER,INPUT pdfStream CHARACTER   pdf_Angle    @8  X5 	     INTEGER,INPUT pdfStream CHARACTER   pdf_TopMargin   DL|  �6 "     INTEGER,INPUT pdfStream CHARACTER   pdf_BottomMargin    �X�  �7 0     INTEGER,INPUT pdfStream CHARACTER   pdf_GraphicX    �d  48 A     DECIMAL,INPUT pdfStream CHARACTER   pdf_GraphicY     pX  |9 N     DECIMAL,INPUT pdfStream CHARACTER   pdf_get_info    h|�  �: [     CHARACTER,INPUT pdfStream CHARACTER,INPUT pdfAttribute CHARACTER    pdf_LeftMargin  ��  ,; h     INTEGER,INPUT pdfStream CHARACTER   pdf_GetNumFittingChars  �P  |< w     INTEGER,INPUT pdfStream CHARACTER,INPUT pdfText CHARACTER,INPUT pdfFromX INTEGER,INPUT pdfToX INTEGER   pdf_Orientation h��  = �     CHARACTER,INPUT pdfStream CHARACTER pdf_PaperType   ��,  P> �     CHARACTER,INPUT pdfStream CHARACTER pdf_Render  <�t  �? �
     INTEGER,INPUT pdfStream CHARACTER   pdf_get_wrap_length ���  �@ �     INTEGER,INPUT pdfStream CHARACTER,INPUT pdfText CHARACTER,INPUT pdfWidth INTEGER    pdf_TotalPages  ��4  XA �     CHARACTER,INPUT pdfStream CHARACTER pdf_PageFooter  D�|  �B �     LOGICAL,INPUT pdfStream CHARACTER,INPUT pdfProcHandle HANDLE,INPUT pdfFooterProc CHARACTER  pdf_PageHeader  ���    C �     LOGICAL,INPUT pdfStream CHARACTER,INPUT pdfProcHandle HANDLE,INPUT pdfHeaderProc CHARACTER  pdf_LastProcedure    �|   � D �     LOGICAL,INPUT pdfStream CHARACTER,INPUT pdfProcHandle HANDLE,INPUT pdfHeaderProc CHARACTER  pdf_get_tool_parameter  �   !  ,!E 
     CHARACTER,INPUT pdfStream CHARACTER,INPUT pdfToolName CHARACTER,INPUT pdfToolParam CHARACTER,INPUT pdfToolCol INTEGER   pdf_get_parameter   !�!  �!F !     CHARACTER,INPUT pdfStream CHARACTER,INPUT pdfParameter CHARACTER    pdf_Font_Loaded �!"  4"G 3     LOGICAL,INPUT pdfStream CHARACTER,INPUT pdfFont CHARACTER   GetXMLNodeValue  "$p"  �"H C     CHARACTER,INPUT pParent CHARACTER,INPUT pNode CHARACTER pdf_text_fontwidth  �"0�"  �"I S     DECIMAL,INPUT pdfStream CHARACTER,INPUT pdfFont CHARACTER,INPUT pdfText CHARACTER   pdf_text_fontwidth2 �"<H#  p#J f     DECIMAL,INPUT pdfStream CHARACTER,INPUT pdfFont CHARACTER,INPUT pdfFontSize DECIMAL,INPUT pdfText CHARACTER pdf_get_pdf_info    \#H�#  $K z     CHARACTER,INPUT pdfSTREAM CHARACTER,INPUT pdfID CHARACTER,INPUT pInfo CHARACTER CompressBuffer  �#TT$  x$L �     INTEGER,INPUT InputBuffer MEMPTR,INPUT-OUTPUT OutputBuffer MEMPTR,OUTPUT OutputSize INTEGER DeCompressBuffer    d$`�$  �$M �     INTEGER,INPUT InputBuffer MEMPTR,OUTPUT OutputBuffer MEMPTR,OUTPUT OutputSize INTEGER   CompressFile    �$lT%  x%N �     LOGICAL,INPUT InputFile CHARACTER,INPUT OutputFile CHARACTER    DeCompressFile  d%x�%  �%O �     LOGICAL,INPUT InputFile CHARACTER,INPUT OutputFile CHARACTER    PDFendecrypt    �%�&  @&P �     LOGICAL,INPUT BufferPtr MEMPTR,INPUT PasswordPtr MEMPTR �&A&     4 �& ��       �&                             �         �&�&       �       �     �          �& �&<' ''('    4 ����    ' 
     
     � ߱    $ ''���        �'/(T'   \'          3 ���p' h'        3 ��   |'        3 ���'/,�'   �'P          3 ��4   �'        3 ��\(/.�'   �'�          3 ��d�' �'        3 ��� ( �'        3 ���   (        3 ���p(//,(   4(�          3 ���H( @(        3 ���\( T(        3 ���   h(        3 ����(/0�(   �(          3 ���   �(        3 �� )/1�(   �(@          3 ��$�( �(        3 ��L�( �(        3 ��T   �(        3 ��\\)/2)    )�          3 ��p4) ,)        3 ���H) @)        3 ���   T)        3 ����)/3t)   |)�          3 ���   �)        3 ����)/4�)   �)�          3 ���   �)        3 �� */5�)   �),          3 ���) �)        3 ��8* *        3 ��@   *        3 ��H|*/68*   @*t          3 ��\T* L*        3 ���h* `*        3 ���   t*        3 ����*/8�*   �*�          3 ���   �*        3 ����*/9�*   �*�          3 ���   �*        3 ���@+/;�*   +          3 ���+ +        3 ��$,+ $+        3 ��,   8+        3 ��4�+/<X+   `+`          3 ��Ht+ l+        3 ��l�+ �+        3 ��t   �+        3 ����+/=�+   �+�          3 ���   �+        3 ���,,/>�+   �+�          3 ���, �+        3 ���, ,        3 ��   $,        3 ��(`,/?D,   L,T          3 ��<   X,        3 ��`�,/@x,   �,�          3 ��h�, �,        3 ����, �,        3 ���   �,        3 ����,/B�,   �,�          3 ���   �,        3 ���L-/C-   -          3 ���$- -        3 �� 8- 0-        3 ��(   D-        3 ��0�-/Dd-   l-\          3 ��D�- x-        3 ��h�- �-        3 ��p   �-        3 ����-/F�-   �-�          3 ���   �-        3 ���8./G�-   �-�          3 ���. .        3 ���$. .        3 ��   0.        3 ���./HP.   X.8          3 �� l. d.        3 ��D�. x.        3 ��L   �.        3 ��p�./I�.   �.�          3 ���   �.        3 ���$//J�.   �.�          3 ����. �.        3 ���/ /        3 ���   /        3 ����//K</   D/          3 ���X/ P/        3 ��l/ d/        3 ��$   x/        3 ��,�//L�/   �/X          3 ��@�/ �/        3 ��d�/ �/        3 ��l   �/        3 ��t80/M�/   �/�          3 ���0 0        3 ���$0 0        3 ���   00        3 ����0/NP0   X0�          3 ���l0 d0        3 ����0 x0        3 ���   �0        3 ���0/O�0   �00          3 ���0 �0        3 ��<�0 �0        3 ��D   �0        3 ��LL1/P1   1x          3 ��`$1 1        3 ���81 01        3 ���   D1        3 ����1/Qd1   l1�          3 ����1 x1        3 ����1 �1        3 ���   �1        3 ����1/R�1   �1          3 ���   �1        3 ��82/T�1   �14          3 ��2 2        3 ��@$2 2        3 ��H   02        3 ��ll2/UP2   X2�          3 ���   d2        3 ����2/V�2   �2�          3 ���   �2        3 ���3/W�2   �2�          3 ���   �2        3 ���    3  �5  �Kt5d5�K��             [��5     �    �F [�24 43l3    	                 7 ��    4    ��               �`5    �3            6 [     4 �3 ��       �3    �`5    �3                                                  �3�3                   �          �3 �3   $4\4 5  
                 7 ��    5    ��           h  �X5    �4            6 [     5 �4 ��       �4h  �X5    �4                                         $ 8 L         �4�4       X       `                �4 �4  J [        H5  ��                                           ��              85             O ��  e�      O ��  R�      O ��  ��    6Ac     6 �5 ��       �5                             �         6�5       �       �     �          �5 �5�6 d 6D6t6  4 ���     '           � ߱    $ e(6���            '           � ߱    $ fX6���        �7 h�6�6    4 ��        �6          ��             ho       ,%       h�60    '           � ߱  7$ i�6���        T7 k7$7    4 ���  $ k87���        �    '           � ߱     l`7�7�7  4 ���    '           � ߱    $ mh7���        h    '           � ߱    $ n�7���        �8 p�78    4 ��|	        <8          ��             pu  	     �       p�7�    '           � ߱  P8$ q 8���           r\8�8�8  4 ����    '           � ߱    $ sd8���             '           � ߱    $ t�8���        4    '           � ߱  �8$ v�8���        h9 x 9$9T9  4 ��T�    '           � ߱    $ y9���        �    '           � ߱    $ z89���        �9 {t9�9�9  4 ���<    '           � ߱    $ ||9���        p    '           � ߱    $ }�9���        �: ~�9:\:  4 ����    '             � ߱    $ �9���        
        d:          ��             ��  
     �       � :   �p:�:�:  4 ����    '             � ߱    $ �x:���        �    '             � ߱    $ ��:���             '           � ߱  D;$ ��:���            L;  �<  �K\<L<�K��             ��l<     ��    @= �;   h;�;  ��                  7 ��    7    ��        	   l   �      �;            6 �     7 < ��      	 �;l   �      �;                                           $  0          @<4<       < L \        D T d      �          < $<  O ��  e�      O ��  R�      O ��  ��    �     '           � ߱    $ �|<���        �     '         !    '         P!    '         �!    '         �!    '         ,"    '         h"    '           � ߱  p=$ ��<���        �"    '           � ߱  �=$ �T=���        �=/��=   �=�"          3 ���"�= �=        3 ���"�= �=        3 ���"   �=        3 ��H#<>/��=    >t#          3 ��\#> >        3 ���#(>  >        3 ���#   4>        3 ���#�>/�T>   \>�#          3 ���#p> h>        3 ���#�> |>        3 ���#   �>        3 ��$�>/��>   �>@$          3 ��($�> �>        3 ��L$�> �>        3 ��T$   �>        3 ��p$P?/�?   ?�$          3 ���$(?  ?        3 ���$<? 4?        3 ���$   H?        3 ���$�?/�h?   p?�$          3 ���$�? |?        3 ���$�? �?        3 ��%   �?        3 ��4%@/��?   �?`%          3 ��H%�? �?        3 ��l%�? �?        3 ��t%    @        3 ���%d@/� @   (@�%          3 ���%<@ 4@        3 ���%P@ H@        3 ���%   \@        3 ���%�@/�|@   �@&          3 ���%   �@        3 ��&   ��@�@    4 ��&        �@          ��             ��       �(       ��@$A/�A   A`&          3 ��D&   A        3 ��l&XA/�<A   DA�&          3 ��t&   PA        3 ���&�A/�pA   xA�&          3 ���&�A �A        3 ���&�A �A        3 ���&   �A        3 ���&B/��A   �A'          3 ���&�A �A        3 ��'�A �A        3 ��'   B        3 ��<'DB/�(B   0Bh'          3 ��P'   <B        3 ��t'�B/�\B   dB�'          3 ��|'xB pB        3 ���'�B �B        3 ���'   �B        3 ���'�B/��B   �B�'          3 ���'�B �B        3 ���'�B �B        3 ���'   �B        3 ���'XC/�C   C$(          3 ��(0C (C        3 ��0(DC <C        3 ��8(   PC        3 ��@(�C/�pC   xCl(          3 ��T(�C �C        3 ��x(�C �C        3 ���(   �C        3 ���(D/��C   �C�(          3 ���(�C �C        3 ���(�C �C        3 ���(   D        3 ���(lD/�(D   0D�(          3 ���(DD <D        3 ��)XD PD        3 ��)   dD        3 ��)�D/��D   �DD)          3 ��,)�D �D        3 ��P)�D �D        3 ��X)   �D        3 ��`)$E/��D   �D�)          3 ��t)�D �D        3 ���)E E        3 ���)   E        3 ���)XE/�<E   DE�)          3 ���)   PE        3 ���)�E/�pE   xE *          3 ���)�E �E        3 ��*�E �E        3 ��*   �E        3 ��8*�E/��E   �Ed*          3 ��L*   �E        3 ��p*F/� F   F�*          3 ��x*   F        3 ���*lF/�4F   <F�*          3 ���*   HF        3 ���*�*    '           � ߱    $ �PF���        �F/��F   �F�*          3 ���*�F �F        3 ��+�F �F        3 ��+   �F        3 ��4+G/��F   �F`+          3 ��H+   G        3 ��l+lG/�(G   0G�+          3 ��t+DG <G        3 ���+XG PG        3 ���+   dG        3 ���+�G/��G   �G�+          3 ���+�G �G        3 ���+�G �G        3 ���+   �G        3 ��,$H/��G   �GD,          3 ��,,�G �G        3 ��P,H H        3 ��X,   H        3 ��t,�H/�<H   DH�,          3 ���,XH PH        3 ���,lH dH        3 ���,   xH        3 ���,�H/��H   �H�,          3 ���,   �H        3 ��-,I/��H   �H(-          3 ��-�H �H        3 ��4-�H �H        3 ��<-   I        3 ��`-t-    '           � ߱  @I$ �I���        tI/�XI   `I�-          3 ���-   lI        3 ���-�I/��I   �I�-          3 ���-   �I        3 ���-J/��I   �I.          3 ���-�I �I        3 ��.�I �I        3 ��.   �I        3 ��$.`J/�J   $JP.          3 ��8.8J 0J        3 ��\.LJ DJ        3 ��d.   XJ        3 ���.�J/�xJ   �J�.          3 ���.   �J        3 ���.  Q ��J    �.            local-e4gl-options  4�Jt       8 �    <                  8      �  �   ) 
state-less             �                �  @K8 ��3 HK8 ��3 PK8 ��2 XK8 ��2 `K8 ��1 hK8 ��1 pK8 ��0 xK8 ��0 �K8 ��/ �K8 ��/ �K8 ��. �K8 ��. �K8 ��- �K8 ��-   = ��4 �K8 ��4   8 ��,   8 ��, �K8 ��6 �K8 ��6   8 ��5   8 ��5   8 ��7   8 ��7     
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
�    %      Web-State = Timed-Out �8    " (  ׄ� F    " (     %              %       ����    T   %              � %              � K 0 P       " (          � M " (  �4    S         � M " (     �     }    �%                    � M " (  �  0 P       " (          � F " (  �4    S         � F " (     �     }    �%                    � F " (  �  " (     
�        �  � T	 % 	    ADM-ERROR �     }    �@ @   $    �    }    �%              %       Q    	 $    �    }    �%              %       8     %     dispatch W�
" "   
   %     show-errors % 	    ADM-ERROR %               " )     � � %               � � %      WEB1.0  � �	 " '     � �      " '     � � " '     � � %     get-time-remaining 
" "   
   
�    " )          " )     %      special-get-attribute �
�    " )      �     }    ��  %              " )         %              %                   " *     %                  " *     �     " *     T    " *     " *  �        " *     �  %               � & %      
       " *     %      
       � B �     }    �Az`       8 " *  �  %                      " *  ��  %              z`      8  " *  �           " *  W��  %              %       ����    " *     � � ! " *     � �	 " *     � � " *     %      special-set-attribute �
�    " *     " *     %     local-e4gl-options 
�    " '     " '     " '     8    �    }    �� � � �	 %     output-header   
�    �     }    �%               8    �    }    �� � � �	 %     output-headers  
�    �     }    �%                A    " '  W�� � �	              " '  ��  $ � �  G %       	       z     �              � � � � &    &    * ,   " ,      �     �     �     |     l     \     8     (         � � G %       {      � � �              � � � �
 � �  � � �  �  �  %               � " &    &    * ,         " ,      �     �     �     |     l     \     8     (         � � G %       {      � � �              � � � �
 � �  � � � )0 �  �  %               � Z &    &    * ,   ! " ,     � b &    &    * ,   ! " ,         " '  ք%                �     �     �     |     l     \     8     (         � � G %       {      � � �              � � � �
 � �  � � � i" �  �  %                � 
" ' ! 
؄% 	    pdf_inc.p �
" ' ! 
ׄ�      ,  �@� �	 
" ' ! 
   
" ' ! 
   
" ' ! 
   
" ' ! 
   
" ' ! 
   
" ' ! 
   
" ' ! 
   
" ' ! 
   
" ' ! 
   
" ' ! 
   
" ' ! 
   
" ' ! 
   
" ' ! 
   
" ' ! 
   
" ' ! 
   
" ' ! 
   
" ' ! 
   
" ' ! 
   
" ' ! 
   
" ' ! 
   
" ' ! 
   
" ' ! 
   
" ' ! 
   
" ' ! 
   
" ' ! 
   
" ' ! 
   
" ' ! 
   
" ' ! 
   
" ' ! 
   
" ' ! 
   
" ' ! 
   
" ' ! 
   
" ' ! 
   
" ' ! 
   
" ' ! 
   
" ' ! 
   
" ' ! 
   
" ' ! 
   
" ' ! 
   
" ' ! 
   
" ' ! 
   
" ' ! 
   
" ' ! 
   
" ' ! 
   
" ' ! 
   
" ' ! 
   
" ' ! 
   
" ' ! 
    " ' 	    &    &    * 4    (         � � ]      " 4     � � %      pdf_new 
" ' ! 
   � �      � � " ' 
    %     pdf_new_Page    
" ' ! 
   � � %     pdf_set_font    
" ' ! 
   � � �  %           %     pdf_text_at 
" ' ! 
   � � �  %              %     pdf_skip W�
" ' ! 
   � � %     pdf_set_font    
" ' ! 
   � � � +	 %           %     pdf_text_at 
" ' ! 
   � � � 5 %       
       %     pdf_skip W�
" ' ! 
   � � %     pdf_skip W�
" ' ! 
   � � %     pdf_set_font    
" ' ! 
   � � � L %           %     pdf_text_at 
" ' ! 
   � � � [ %       F       %     pdf_skip W�
" ' ! 
   � � %     pdf_skip W�
" ' ! 
   � � %     pdf_set_font    
" ' ! 
   � � � +	 %            %     pdf_text_at 
" ' ! 
   � �      � q      " 4     %       
       %     pdf_skip W�
" ' ! 
   � � %     pdf_text_at 
" ' ! 
   � �      �       " 4     %       
       %     pdf_skip W�
" ' ! 
   � � %     pdf_text_at 
" ' ! 
   � �      � �      " 4     %       
       %     pdf_skip W�
" ' ! 
   � � %     pdf_set_font    
" ' ! 
   � � � +	 %            %     pdf_text_at 
" ' ! 
   � �      � �     +  � �
 %       �       %     pdf_skip W�
" ' ! 
   � � %     pdf_set_font    
" ' ! 
   � � � +	 %            %     pdf_text_at 
" ' ! 
   � � U    � � %       �       %       
       %     pdf_skip W�
" ' ! 
   � � %     pdf_text_at 
" ' ! 
   � � � � %       
       %     pdf_text_at 
" ' ! 
   � � � � %              %     pdf_text_at 
" ' ! 
   � � � � %       <       %     pdf_text_at 
" ' ! 
   � � � � %       U      %     pdf_text_at 
" ' ! 
   � � � � %       d       %     pdf_text_at 
" ' ! 
   � � � � %       �      %     pdf_text_at 
" ' ! 
   � � � � %       �       %     pdf_text_at 
" ' ! 
   � � � �
 %       �       %     pdf_skip W�
" ' ! 
   � � %     pdf_text_at 
" ' ! 
   � � U    � � %       �       %       
       %     pdf_skip W�
" ' ! 
   � � %     pdf_skip W�
" ' ! 
   � � %     pdf_skip W�
" ' ! 
   � �  " ' 	    &    &    %               %               " 4     &    &     @   %                      " 5 	    &        " 5     &    " 5     " 5     " 5     &    &    * 6   " 6     � �      " '  ք�   <               +   " 5     %                  +   " 5               +   " 5     %                    " '     %                  +  " 5      <    (        " '     %       d       " '     %              %                  " '  ք�      +  " 5         +  " 5      <             " '     " '  X�%       d       %              %                   " '     " 5     4         " '          " 5 	    " 5     %                    " '          " 5 	    " 5     %               4         " 5          " 5 	    " 5     %                         " 5     " 5 	    " 5     %                   " 5     %                   " 5         " 5     %                   " 5     � �  %               " 5     " 5     " 5     &    &    &    &    &    &    0        %              %              %                   " '     " 7               " '     " 5     %                        " '   " 5 	    %              4          " '       " '     " 5 	    %                        " '     " '     %              4          " '       " '     " '     %                        " '     " '     %                        " '   " '     %                   " '     %              %     pdf_text_at 
" ' ! 
   � �  ,             " 5     � & � )     " 5     � + %       
       %     pdf_text_at 
" ' ! 
   � �     " 5     � 0 %             %     pdf_text_at 
" ' ! 
   � �           " 5 	    " 5     � 0 %       7      %     pdf_text_at 
" ' ! 
   � �     " '   ext� �
 %       P       %     pdf_text_at 
" ' ! 
   � �      " '  ext%       d       %     pdf_text_at 
" ' ! 
   � �          " '     " '  W�� 0 %       �       %     pdf_text_at 
" ' ! 
   � �      " '  ext%       �       %     pdf_text_at 
" ' ! 
   � �      " 5 
    %       �       %     pdf_skip W�
" ' ! 
   � �     " '  ׄ%       1   	   %     pdf_new_Page    
" ' ! 
   � � %     pdf_skip W�
" ' ! 
   � � %     pdf_set_font    
" ' ! 
   � � � +	 %            %     pdf_text_at 
" ' ! 
   � � U    � � %       �       %       
       %     pdf_skip W�
" ' ! 
   � � %     pdf_text_at 
" ' ! 
   � � � � %       
       %     pdf_text_at 
" ' ! 
   � � � � %              %     pdf_text_at 
" ' ! 
   � � � � %       <       %     pdf_text_at 
" ' ! 
   � � � � %       U      %     pdf_text_at 
" ' ! 
   � � � � %       d       %     pdf_text_at 
" ' ! 
   � � � � %       �      %     pdf_text_at 
" ' ! 
   � � � � %       �       %     pdf_text_at 
" ' ! 
   � � � �
 %       �       %     pdf_skip W�
" ' ! 
   � � %     pdf_text_at 
" ' ! 
   � � U    � � %       �       %       
       %     pdf_skip W�
" ' ! 
   � � %     pdf_skip W�
" ' ! 
   � � %     pdf_skip W�
" ' ! 
   � � %               %     pdf_text_at 
" ' ! 
   � � U    � � %       �       %       
       %     pdf_skip W�
" ' ! 
   � � %     pdf_text_at 
" ' ! 
   � �     " '  ext� < %             %     pdf_text_at 
" ' ! 
   � �     " '  ext� < %       4      %     pdf_text_at 
" ' ! 
   � �     " '  ext� < %       �      %     pdf_text_at 
" ' ! 
   � �     " '  ext� < %       �       %     pdf_skip W�
" ' ! 
   � � %     pdf_text_at 
" ' ! 
   � � U    � � %       �       %       
            " '     " '  W�%     pdf_skip W�
" ' ! 
   � � %     pdf_skip W�
" ' ! 
   � � %     pdf_set_font    
" ' ! 
   � � � +	 %            %     pdf_text_at 
" ' ! 
   � �      � M     " '  W�� < %       
       % 	    pdf_Close �
" ' ! 
   � �  �     �     �     �     l     \     8     (         � � G %       {      � � �              � � � �
 " ' 
 �� � � �  �  �            l     L <   ��            
\       @��      O ��    e�      O ��    R�      O ��    ��       x �     4 ���  � �  ��                    ����                              l     L <   ��             \       䯄      O ��    e�      O ��    R�      O ��    ��      /�    � �          3 ���   �         3 ���  ��                    ����                              �     L <   ��            &e\      ض�      O ��    e�      O ��    R�      O ��    ��    , (       l    �  7� �     4 ���  $ 8� ���            (           � ߱  L    (           � ߱  � $ 9� ���        | ; 8  4 ���  $ @���            (           � ߱     KDL    4 ��,  $ N`���        �    (           � ߱  �/	Q�     �          3 ���� T��    4 ���  O T��  ���  � V�    4 ��                  ��             Vb       ���       V�   [$h    4 ��         p          ��             ^a       ��       ^,�/_�   ��          3 ���   �        3 ���  O `��  ���    O d��  ���    >��(        �,                                                     (     ��                    ����                              �     L <   ��            l�\      ��      O ��    e�      O ��    R�      O ��    ��    s )       l    �p y� ��  � �    $ z� ���        $    )           � ߱   �  8  $ {� ���        @    )           � ߱  8 T  $ |���        \    )           � ߱  p@ h  $ }T���        p    )           � ߱  �x �  $ ~����        �    )           � ߱    � �        �          ��             �       h)�       �l/�   �          3 ���(          3 ���   4<      3 ���  $ �P���               )           � ߱    $ �����        �    )           � ߱          �          ��             ��       �)�       ��/	��              3 ���           3 ��    � (X  4 ��,  $ �<���        @    )           � ߱    $ �l���        D    )           � ߱    O ���  ��X    >��)      �� �@                                                      0              0      )     ��                    ����                              �     L <   ��            ��\      �*�      O ��    e�      O ��    R�      O ��    ��    � *       l      �   � ,          ��      0       ��       �/�       ��   $ �� ���        d    *           � ߱  $$ ����        �    *           � ߱    4 ���\$ �@���        �    *           � ߱   �h�    4 ��        �          ��             ��       0�       �p 	��                  �3 ��<�3 ��D�3 ��X�3 ��d�3 ��x  3 ���  O ��� ��    @$ �$���        �    *           � ߱  p$ �T���        �    *           � ߱    p �`�(�  �� l  $�����        t    '           � ߱  �� �  $ �����        �    '           � ߱    � �  $ ����        �    '           � ߱    /	�@   H�          3 ���\ T        3 ���   h        3 ���  >��*      �� �h                                                                               (   8   H   X          (   8   H   X          *     ��                    ����                                    L <   ��            ��\       l�~      O ��    e�      O ��    R�      O ��    ��    \ 8  �    l    f 8  �    �    p 8       �      >��8      �  � H              
    web-object  	    text/html �          4              4   �/
web-object	text/html   8     ��                    ����                    TXS WebStream GATEWAY_INTERFACE SERVER_SOFTWARE SERVER_PROTOCOL SERVER_NAME SERVER_PORT REQUEST_METHOD SCRIPT_NAME PATH_INFO PATH_TRANSLATED QUERY_STRING REMOTE_ADDR REMOTE_HOST REMOTE_IDENT REMOTE_USER AUTH_TYPE CONTENT_TYPE CONTENT_LENGTH HTTP_ACCEPT HTTP_COOKIE HTTP_REFERER HTTP_USER_AGENT HTTPS AppProgram AppURL SelfURL HostURL CookiePath RootURL useConnID CookieDomain SelDelim , output-content-type http-newline 
 utc-offset web-utilities-hdl debug-options debugging-enabled MiscVarList CONVERT-DATETIME FORMAT-DATETIME GET-CGI GET-FIELD GET-VALUE GET-USER-FIELD HIDDEN-FIELD HIDDEN-FIELD-LIST HTML-ENCODE OUTPUT-CONTENT-TYPE OUTPUT-HTTP-HEADER SET-USER-FIELD SET-WSEU-COOKIE URL-DECODE URL-ENCODE URL-FIELD URL-FIELD-LIST URL-FORMAT DELETE-COOKIE GET-COOKIE SET-COOKIE AVAILABLE-MESSAGES GET-MESSAGES GET-MESSAGE-GROUPS OUTPUT-MESSAGES QUEUE-MESSAGE CHECK-AGENT-MODE GET-CONFIG gscSessionId SETSESSION GETSESSION SETGLOBAL GETGLOBAL LOGNOTE adm-web-state adm-web-timeout adm-web-tohdlr adm-web-time-remaining ADM-DESTROY Web-State = Timed-Out ADM-TIMING-OUT p-method-name caller-name adm-   local- ADM-ERROR show-errors DISPATCH p_attr-name attr-value p_period Type  Version WEB1.0 Web-State Web-Timeout Web-Timeout-Handler Web-Time-Remaining GET-ATTRIBUTE p-attr-list cntr attr-name attr-entry = Invalid element in set-attribute call: in SET-ATTRIBUTE-LIST e4gl-version e4gl-options e4gl-content-type output-header PROCEDURE output-headers no-content-type Barcode inscripcion nombreArchivoPdf wDeuda wInteres wTiempo punitorio wActivo wFecFoprosi wPunitorio wNominal wPublicidad WTOTPUBLICIDAD wcalcfoprosi WFOPROSI WTOTFOPROSI WTOTNOMINAL WPAGOS WRECARGO WACTUALIZADO WTOTAL totalGeneral renglon caja wFecPag  inscripcion parametros IntAct [ "inscripcion":" ","file":" ","error":" No existe un interes activo " }] FecFop No existe parametro para fecha de inicio FoProSi IntMens IntDia No estámn cargados los Punitorios h_PDFinc TT_pdf_ext obj_stream pdf_id pdf_name TT_Font obj_id gen_id page_id desc_obj desc_gen enc_obj enc_gen uni_obj uni_gen descend_obj descend_gen file2_obj file2_gen file3_obj file3_gen font_name font_tag font_width font_base TT_Info info_name info_value info_extra TT_Object obj_ptr obj_seq obj_type Rotate obj_Media1 obj_Media2 obj_Media3 obj_Media4 obj_Crop1 obj_Crop2 obj_Crop3 obj_Crop4 TT_Resource par_obj par_gen res_type res_obj res_gen res_len res_text res_old new_obj new_gen TT_pdf_xml xml_parent xml_pnode xml_node xml_value xml_seq TT_Widget widget_type widget_name widget_rect widget_disp widget_page Persistent PDFinc PDF_FONT PDF_FONTTYPE PDF_IMAGEDIM PDF_TEXTX PDF_TEXTY PDF_VERTICALSPACE PDF_POINTSIZE PDF_TEXT_WIDTH PDF_TEXT_WIDTHDEC PDF_TEXT_WIDTHDEC2 PDF_TEXTRED PDF_TEXTGREEN PDF_TEXTBLUE PDF_FILLRED PDF_FILLGREEN PDF_FILLBLUE PDF_PAGE PDF_PAGEWIDTH PDF_PAGEHEIGHT PDF_PAGEROTATE PDF_ANGLE PDF_TOPMARGIN PDF_BOTTOMMARGIN PDF_GRAPHICX PDF_GRAPHICY PDF_GET_INFO PDF_LEFTMARGIN PDF_GETNUMFITTINGCHARS PDF_ORIENTATION PDF_PAPERTYPE PDF_RENDER PDF_GET_WRAP_LENGTH PDF_TOTALPAGES PDF_PAGEFOOTER PDF_PAGEHEADER PDF_LASTPROCEDURE PDF_GET_TOOL_PARAMETER PDF_GET_PARAMETER PDF_FONT_LOADED GETXMLNODEVALUE PDF_TEXT_FONTWIDTH PDF_TEXT_FONTWIDTH2 PDF_GET_PDF_INFO COMPRESSBUFFER DECOMPRESSBUFFER COMPRESSFILE DECOMPRESSFILE PDFENDECRYPT Comercio Pagos .pdf cons .\Documents\Drei\ Cons Helvetica-Bold Municipalidad de Perez  Helvetica Sarmiento 1198 - Perez Helvetica-bold Listado Pagos D.R.eI. Inscripcion:  Razon Social:  Domicilio:  DEUDA ACTUALIZADA AL  99/99/9999 - Periodo Nominal Fecha Lugar Saldo Actual Foprosi Nro. Conv. Liquidacion Caja-Codi intMens intDia FoProSi 99 / 9999 ->>>,>>9.99 zzzz,zzz,zz9.99- Pago Total: $  p_version p_options p_content-type LOCAL-E4GL-OPTIONS default idx-idparam idx-inscripcion idx-ins-ani-per idx-codigo puk-clave �
 �     �    4           (       adm-destroy  `           P       adm-timing-out     (    t      caller-name   (      �   p-method-name   8 �     d �   �       dispatch    789;@KNQTV[^_`abde)    �      attr-value    )         p_period      )      0  p_attr-name � d    �    T      get-attribute   yz{|}~������������*    �     cntr    �*    �     attr-name   �*    �     attr-value    *    �     attr-entry    *        p-attr-list <<    ��  (      set-attribute-list  ����������������x8      l  p_version   �8      �  p_options     8      �  p_content-type  �      \  �      local-e4gl-options  �  � �    �  �        H TT_pdf_ext  (     4     <     obj_stream  pdf_id  pdf_name    �PX TT_Font                      $     ,     8     D     L     T     \     d     p     |     �     �     �     �     �     �     �     obj_stream  pdf_id  obj_id  gen_id  page_id desc_obj    desc_gen    enc_obj enc_gen uni_obj uni_gen descend_obj descend_gen file2_obj   file2_gen   file3_obj   file3_gen   font_name   font_tag    font_width  font_base   L�� TT_Info            (     4     @     obj_stream  pdf_id  info_name   info_value  info_extra  �T` TT_Object   �     �     �                         (     0     8     D     P     \     h     t     �     �     obj_stream  pdf_id  obj_ptr obj_id  gen_id  obj_seq obj_type    page_id Rotate  obj_Media1  obj_Media2  obj_Media3  obj_Media4  obj_Crop1   obj_Crop2   obj_Crop3   obj_Crop4   ��� TT_Resource            (     0     8     @     L     T     \     d     p     x     �     obj_stream  pdf_id  par_obj par_gen page_id res_type    res_obj res_gen res_len res_text    res_old new_obj new_gen �� TT_pdf_xml  �     �     �     �     �          obj_stream  xml_parent  xml_pnode   xml_node    xml_value   xml_seq   $ TT_Widget   \     h     p     |     �     �     �     obj_stream  pdf_id  widget_type widget_name widget_rect widget_disp widget_page �      �     GATEWAY_INTERFACE   �    �     SERVER_SOFTWARE 	     	     SERVER_PROTOCOL ,	     	     SERVER_NAME H	    <	     SERVER_PORT h	    X	     REQUEST_METHOD  �	    x	     SCRIPT_NAME �	    �	     PATH_INFO   �	    �	     PATH_TRANSLATED �		 	   �	     QUERY_STRING    �	
 
   �	     REMOTE_ADDR 
    
     REMOTE_HOST 8
    (
     REMOTE_IDENT    T
    H
     REMOTE_USER p
    d
     AUTH_TYPE   �
    �
     CONTENT_TYPE    �
    �
     CONTENT_LENGTH  �
    �
     HTTP_ACCEPT �
    �
     HTTP_COOKIE     �
     HTTP_REFERER    (         HTTP_USER_AGENT @    8     HTTPS   \    P     AppProgram  t    l     AppURL  �    �     SelfURL �    �     HostURL �    �     CookiePath  �    �     RootURL �    �     useConnID            CookieDomain    0    $     SelDelim    T    @     output-content-type t      d     http-newline    �! !   �     utc-offset  �" "   �  
   web-utilities-hdl   �# #   �     debug-options   �$ $   �     debugging-enabled   % %        MiscVarList 4& &   $     gscSessionId    T' '  D     adm-web-state   t' '  d     adm-web-timeout �' '  �     adm-web-tohdlr  �' '  �     adm-web-time-remaining  �' '  �     e4gl-version    �' '  �     e4gl-options     ' '       e4gl-content-type   8+ (  0     Barcode T' ' 	 H     inscripcion x' ' 
 d     nombreArchivoPdf    �' '  �     wDeuda  �' '  �     wInteres    �' '  �     wTiempo �' '  �     punitorio   �' '  �     wActivo ' '       wFecFoprosi 0' '  $     wPunitorio  L' '  @     wNominal    h' '  \     wPublicidad �' '  x     WTOTPUBLICIDAD  �' '  �     wcalcfoprosi    �' '  �     WFOPROSI    �' '  �     WTOTFOPROSI �' '  �     WTOTNOMINAL ' '       WPAGOS  0' '  $     WRECARGO    P' '  @     WACTUALIZADO    h' '  `     WTOTAL  �' '  x     totalGeneral    �' '  �     renglon �' '  �     caja    �' '   �     wFecPag   ' ' ! �  
   h_PDFinc    ) ,  �  parametros  * - �  TT_pdf_ext  0+ . �(  TT_Font D, / �<  TT_Info \- 0 �P  TT_Object   t. 1 �h  TT_Resource �/ 2 ��  TT_pdf_xml  �0 3 ��  TT_Widget   �1 4  �  Comercio    �2 5  �  Liquidacion �3 6  �  Caja-Codi     4 7  �  FoProSi �������������"#%&'(-.124578=>adgp&'(,./012345689;<=>?@BCDFGHIJKLMNOPQRTUVW[cdefhiklmnopqrstuvxyz{|}~���������������������������������������������������������    Q�   .\pdf_inc.i    HK$   .\pdf_func.i   `�2   .\pdfglobal.i  x�|   .\pdf_pre.i    �]r#   2C:\Program Files (x86)\PROGRESS91D\src\web\method\e4gl.i   ��"#   2C:\Program Files (x86)\PROGRESS91D\src\web\method\admweb.i ���#   2C:\Program Files (x86)\PROGRESS91D\src\web\method\cgidefs.i    0^�#   2C:\Program Files (x86)\PROGRESS91D\src\web\method\proto.i  x�#   2C:\Program Files (x86)\PROGRESS91D\src\web\method\session.i    �U"    0C:\xampp\htdocs\municipio2.0\services\Comercios\PrintPagosServices.w   
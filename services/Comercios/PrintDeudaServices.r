	��VIm"`�   �              �                                 ��  19B00058utf-8 MAIN C:\xampp\htdocs\municipio2.0\services\Comercios\PrintDeudaServices.w,, PROCEDURE local-e4gl-options,,OUTPUT p_version DECIMAL,OUTPUT p_options CHARACTER,OUTPUT p_content-type CHARACTER PROCEDURE set-attribute-list,,INPUT p-attr-list CHARACTER PROCEDURE get-attribute,,INPUT p_attr-name CHARACTER PROCEDURE dispatch,,INPUT p-method-name CHARACTER PROCEDURE adm-timing-out,, PROCEDURE adm-destroy,, EXTERN PDFendecrypt,LOGICAL,INPUT BufferPtr MEMPTR,INPUT PasswordPtr MEMPTR EXTERN DeCompressFile,LOGICAL,INPUT InputFile CHARACTER,INPUT OutputFile CHARACTER EXTERN CompressFile,LOGICAL,INPUT InputFile CHARACTER,INPUT OutputFile CHARACTER EXTERN DeCompressBuffer,INTEGER,INPUT InputBuffer MEMPTR,OUTPUT OutputBuffer MEMPTR,OUTPUT OutputSize INTEGER EXTERN CompressBuffer,INTEGER,INPUT InputBuffer MEMPTR,INPUT-OUTPUT OutputBuffer MEMPTR,OUTPUT OutputSize INTEGER EXTERN pdf_get_pdf_info,CHARACTER,INPUT pdfSTREAM CHARACTER,INPUT pdfID CHARACTER,INPUT pInfo CHARACTER EXTERN pdf_text_fontwidth2,DECIMAL,INPUT pdfStream CHARACTER,INPUT pdfFont CHARACTER,INPUT pdfFontSize DECIMAL,INPUT pdfText CHARACTER EXTERN pdf_text_fontwidth,DECIMAL,INPUT pdfStream CHARACTER,INPUT pdfFont CHARACTER,INPUT pdfText CHARACTER EXTERN GetXMLNodeValue,CHARACTER,INPUT pParent CHARACTER,INPUT pNode CHARACTER EXTERN pdf_Font_Loaded,LOGICAL,INPUT pdfStream CHARACTER,INPUT pdfFont CHARACTER EXTERN pdf_get_parameter,CHARACTER,INPUT pdfStream CHARACTER,INPUT pdfParameter CHARACTER EXTERN pdf_get_tool_parameter,CHARACTER,INPUT pdfStream CHARACTER,INPUT pdfToolName CHARACTER,INPUT pdfToolParam CHARACTER,INPUT pdfToolCol INTEGER EXTERN pdf_LastProcedure,LOGICAL,INPUT pdfStream CHARACTER,INPUT pdfProcHandle HANDLE,INPUT pdfHeaderProc CHARACTER EXTERN pdf_PageHeader,LOGICAL,INPUT pdfStream CHARACTER,INPUT pdfProcHandle HANDLE,INPUT pdfHeaderProc CHARACTER EXTERN pdf_PageFooter,LOGICAL,INPUT pdfStream CHARACTER,INPUT pdfProcHandle HANDLE,INPUT pdfFooterProc CHARACTER EXTERN pdf_TotalPages,CHARACTER,INPUT pdfStream CHARACTER EXTERN pdf_get_wrap_length,INTEGER,INPUT pdfStream CHARACTER,INPUT pdfText CHARACTER,INPUT pdfWidth INTEGER EXTERN pdf_Render,INTEGER,INPUT pdfStream CHARACTER EXTERN pdf_PaperType,CHARACTER,INPUT pdfStream CHARACTER EXTERN pdf_Orientation,CHARACTER,INPUT pdfStream CHARACTER EXTERN pdf_GetNumFittingChars,INTEGER,INPUT pdfStream CHARACTER,INPUT pdfText CHARACTER,INPUT pdfFromX INTEGER,INPUT pdfToX INTEGER EXTERN pdf_LeftMargin,INTEGER,INPUT pdfStream CHARACTER EXTERN pdf_get_info,CHARACTER,INPUT pdfStream CHARACTER,INPUT pdfAttribute CHARACTER EXTERN pdf_GraphicY,DECIMAL,INPUT pdfStream CHARACTER EXTERN pdf_GraphicX,DECIMAL,INPUT pdfStream CHARACTER EXTERN pdf_BottomMargin,INTEGER,INPUT pdfStream CHARACTER EXTERN pdf_TopMargin,INTEGER,INPUT pdfStream CHARACTER EXTERN pdf_Angle,INTEGER,INPUT pdfStream CHARACTER EXTERN pdf_PageRotate,INTEGER,INPUT pdfStream CHARACTER EXTERN pdf_Pageheight,INTEGER,INPUT pdfStream CHARACTER EXTERN pdf_PageWidth,INTEGER,INPUT pdfStream CHARACTER EXTERN pdf_Page,INTEGER,INPUT pdfStream CHARACTER EXTERN pdf_FillBlue,DECIMAL,INPUT pdfStream CHARACTER EXTERN pdf_FillGreen,DECIMAL,INPUT pdfStream CHARACTER EXTERN pdf_FillRed,DECIMAL,INPUT pdfStream CHARACTER EXTERN pdf_TextBlue,DECIMAL,INPUT pdfStream CHARACTER EXTERN pdf_TextGreen,DECIMAL,INPUT pdfStream CHARACTER EXTERN pdf_TextRed,DECIMAL,INPUT pdfStream CHARACTER EXTERN pdf_text_widthdec2,DECIMAL,INPUT pdfStream CHARACTER,INPUT pdfFontTag CHARACTER,INPUT pdfFontSize DECIMAL,INPUT pdfText CHARACTER EXTERN pdf_text_widthdec,DECIMAL,INPUT pdfStream CHARACTER,INPUT pdfText CHARACTER EXTERN pdf_text_width,INTEGER,INPUT pdfStream CHARACTER,INPUT pdfText CHARACTER EXTERN pdf_PointSize,DECIMAL,INPUT pdfStream CHARACTER EXTERN pdf_VerticalSpace,DECIMAL,INPUT pdfStream CHARACTER EXTERN pdf_TextY,INTEGER,INPUT pdfStream CHARACTER EXTERN pdf_TextX,INTEGER,INPUT pdfStream CHARACTER EXTERN pdf_ImageDim,INTEGER,INPUT pdfStream CHARACTER,INPUT pdfImage CHARACTER,INPUT pdfDim CHARACTER EXTERN pdf_FontType,CHARACTER,INPUT pdfStream CHARACTER EXTERN pdf_Font,CHARACTER,INPUT pdfStream CHARACTER EXTERN logNote,LOGICAL,INPUT pcLogType CHARACTER,INPUT pcLogText CHARACTER EXTERN getGlobal,CHARACTER,INPUT cName CHARACTER EXTERN setGlobal,LOGICAL,INPUT cName CHARACTER,INPUT cValue CHARACTER EXTERN getSession,CHARACTER,INPUT cName CHARACTER EXTERN setSession,LOGICAL,INPUT cName CHARACTER,INPUT cValue CHARACTER EXTERN get-config,CHARACTER,INPUT p_name CHARACTER EXTERN check-agent-mode,LOGICAL,INPUT p_mode CHARACTER EXTERN queue-message,INTEGER,INPUT p_grp CHARACTER,INPUT p_message CHARACTER EXTERN output-messages,INTEGER,INPUT p_option CHARACTER,INPUT p_grp CHARACTER,INPUT p_message CHARACTER EXTERN get-message-groups,CHARACTER, EXTERN get-messages,CHARACTER,INPUT p_grp CHARACTER,INPUT p_delete LOGICAL EXTERN available-messages,LOGICAL,INPUT p_grp CHARACTER EXTERN set-cookie,CHARACTER,INPUT p_name CHARACTER,INPUT p_value CHARACTER,INPUT p_date DATE,INPUT p_time INTEGER,INPUT p_path CHARACTER,INPUT p_domain CHARACTER,INPUT p_options CHARACTER EXTERN get-cookie,CHARACTER,INPUT p_name CHARACTER EXTERN delete-cookie,CHARACTER,INPUT p_name CHARACTER,INPUT p_path CHARACTER,INPUT p_domain CHARACTER EXTERN url-format,CHARACTER,INPUT p_url CHARACTER,INPUT p_name-list CHARACTER,INPUT p_delim CHARACTER EXTERN url-field-list,CHARACTER,INPUT p_name-list CHARACTER,INPUT p_delim CHARACTER EXTERN url-field,CHARACTER,INPUT p_name CHARACTER,INPUT p_value CHARACTER,INPUT p_delim CHARACTER EXTERN url-encode,CHARACTER,INPUT p_value CHARACTER,INPUT p_enctype CHARACTER EXTERN url-decode,CHARACTER,INPUT p_in CHARACTER EXTERN set-wseu-cookie,CHARACTER,INPUT p_cookie CHARACTER EXTERN set-user-field,LOGICAL,INPUT p_name CHARACTER,INPUT p_value CHARACTER EXTERN output-http-header,CHARACTER,INPUT p_header CHARACTER,INPUT p_value CHARACTER EXTERN output-content-type,LOGICAL,INPUT p_type CHARACTER EXTERN html-encode,CHARACTER,INPUT p_in CHARACTER EXTERN hidden-field-list,CHARACTER,INPUT p_name-list CHARACTER EXTERN hidden-field,CHARACTER,INPUT p_name CHARACTER,INPUT p_value CHARACTER EXTERN get-user-field,CHARACTER,INPUT p_name CHARACTER EXTERN get-value,CHARACTER,INPUT p_name CHARACTER EXTERN get-field,CHARACTER,INPUT p_name CHARACTER EXTERN get-cgi,CHARACTER,INPUT p_name CHARACTER EXTERN format-datetime,CHARACTER,INPUT p_format CHARACTER,INPUT p_date DATE,INPUT p_time INTEGER,INPUT p_options CHARACTER EXTERN convert-datetime,CHARACTER,INPUT p_conversion CHARACTER,INPUT p_idate DATE,INPUT p_itime INTEGER,OUTPUT p_odate DATE,OUTPUT p_otime INTEGER        `n              ӿ   @P�3      �   ) �  �  ��  �  ��  P �  < �  H d�  l ? а  ISO8859-1                                                        � 9 p �  0,  �          `            O            �+ �' �2   ,&Q �            �                                         PROGRESS                              �                     � 8                                                             |      4                     �     p                                                        �0     �                    �     �                                                0       L@                         �p     @                                                @       �L     l                    X�     �                                                L       X     �                    �@                                                     X       �g     <                    (�     x                                                g       �s     �                    �     �                                                s       T}                         �x     H                                                }       ��     t                    `�	     �                                                �       $�     �                    �H
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
L�                        �p#     @                                                �      ��    l                   X�$     �                                                �      @�    �+  $   AppProgram,AppURL,HostURL,SelDelim,SelfURL,       �d%     4                                                �        x    `                    L�&     �                                                x               comercio                         PROGRESS                         8, ��  �           9sC      ��Q                    �#     
p-   `   ��( @�-    d   �                 �.   `   ��, H���    l   �         l        �/   `   ��� ��=�       �         �        0   `   ���' ����    P   �                 P1   `   9	�� 9	(S    (   9	         t        �2   `   �	�| ��	t4    �   �	         D        �3   `   �	�  <�	h    `   �	         �        �4 ��  �           ��W      ��                  $5 �             ��Z      d�                      L  �        �2      5 4                                                                                                                                                                                                                     \6 7�  7           Z1iC      7u�                    7 A�  A           K�	`      A�X                    > ��+ HO                   >��' LO4     �|� ��  
    state-less                                                                                                                                                                                                                                                                                                                                                                                                                                             
             $ �   �   �   �   �   �   �           0  @  P  `  p  �  �  �  �  �  �  �  �          0  @  P  `  p  �  �  �     $ �   �   �   �   �   �   �          0  @  P  `  p  �  �  �  �  �  �  �  �          0  @  P  `  p  �  �  �                            �  ���������   �       �          �   i     	    ���                                                 	      
                                                                                 �  �  ���������                     �    �          �   i     	    ������#+7CMWaku~�                                        �  ���������     �     �          �   i     	    �����                                                 	      
                                                         �  �  ���������                      �    �    �    �    �    �          �   i     i     i     i     i     i     	 	 	 	 	 	    ������������			%	/	                                                 	      
                                 �  ���������                   �          �   i     	    ��E	M	�U	^	f	n	v		�	�	                                              �  ���������           �	    �	          �   i  i     i     	 	 	    ��	�	�	�	�	                                                  �  ���	������       �       �          �   i    	 	    ���	�	�	 

    ��                     ��                     ��                     ��                    ����                      , �    4 �    5 �    6 �    7 �    undefined             h�O�OL < �O��             ��\      ,ft      O ��    e�      O ��    R�      O ��    ��    convert-datetime       l   �   �     CHARACTER,INPUT p_conversion CHARACTER,INPUT p_idate DATE,INPUT p_itime INTEGER,OUTPUT p_odate DATE,OUTPUT p_otime INTEGER  format-datetime �    4      CHARACTER,INPUT p_format CHARACTER,INPUT p_date DATE,INPUT p_time INTEGER,INPUT p_options CHARACTER get-cgi   �  �      CHARACTER,INPUT p_name CHARACTER    get-field   �( �  � 	     CHARACTER,INPUT p_name CHARACTER    get-value   �4   < #	     CHARACTER,INPUT p_name CHARACTER    get-user-field  (@ `  � -     CHARACTER,INPUT p_name CHARACTER    hidden-field    pL �  � <     CHARACTER,INPUT p_name CHARACTER,INPUT p_value CHARACTER    hidden-field-list   �X   0 I     CHARACTER,INPUT p_name-list CHARACTER   html-encode d X  x [     CHARACTER,INPUT p_in CHARACTER  output-content-type dp �  �	 g     LOGICAL,INPUT p_type CHARACTER  output-http-header  �| �  
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
l(  H �	     LOGICAL,INPUT cName CHARACTER,INPUT cValue CHARACTER    getGlobal   4x�  � �	     CHARACTER,INPUT cName CHARACTER logNote ���  �  �     LOGICAL,INPUT pcLogType CHARACTER,INPUT pcLogText CHARACTER adm-destroy                   �                     �     adm-timing-out  $X                �                          dispatch    h�t       ( �                      j     get-attribute   ��t       ) �                     �     set-attribute-list  � t       * p                     E     T/��   �	          3 ���� ��      3 ��	  $ �����               '           � ߱   ��      3 ��$	  $ �����               '           � ߱     $      3 ��0	  $ �8���               '           � ߱  � �`��  4 ��<	        �          ��             ��       �u       �h�/	��     �	          3 ��d	   ���    4 ���	  O ���  ��	     ��@    4 ���	        H          ��             ��         u       �h/	�`     �	          3 ���	   �t|    4 ���	  O ���  ��
  � ���    4 ��
  � �<
    \
    ' 	     	     � ߱  �$ ����        \A     ,  ��                                    �
         PD       �
       �
     �          , 8 h��  4 ���
�
    '           � ߱    $ p���                �          ��             &       ��~       � Q  �    �
              O%������  �A(     , P ��       H                             �         �x       �       �     �          ` lD )��  4 ����    '           � ߱    $ )����                          ��             *1       �~       *�4Q +$    �              O0������  �A4     , � ��       |                             �         ��       �       �     �          � � 5��    4 ����    '           � ߱    $ 5����        �A7     , H ��       @                             �         |p       �       �     �          X d� 8��    4 ����    '           � ߱    $ 8����        P :�    4 ��        $          ��             :A       ��~       :�@Q ;0    0              O@�������  x& d\�    4 ��         �          ��             ds       �[       dd�/g�     ' #         3 ��H@        8       � ߱    $ j����        pdf_Font    �P�  ! *
     CHARACTER,INPUT pdfStream CHARACTER pdf_FontType    \<  `" 3
     CHARACTER,INPUT pdfStream CHARACTER pdf_ImageDim    Lh�  �# @
     INTEGER,INPUT pdfStream CHARACTER,INPUT pdfImage CHARACTER,INPUT pdfDim CHARACTER   pdf_TextX   �t�  $ M
	     INTEGER,INPUT pdfStream CHARACTER   pdf_TextY   �@  `% W
	     INTEGER,INPUT pdfStream CHARACTER   pdf_VerticalSpace   L��  �& a
     DECIMAL,INPUT pdfStream CHARACTER   pdf_PointSize   ���  �' s
     DECIMAL,INPUT pdfStream CHARACTER   pdf_text_width  ��  <( �
     INTEGER,INPUT pdfStream CHARACTER,INPUT pdfText CHARACTER   pdf_text_widthdec   (�x  �) �
     DECIMAL,INPUT pdfStream CHARACTER,INPUT pdfText CHARACTER   pdf_text_widthdec2  ���  * �
     DECIMAL,INPUT pdfStream CHARACTER,INPUT pdfFontTag CHARACTER,INPUT pdfFontSize DECIMAL,INPUT pdfText CHARACTER  pdf_TextRed ��t  �+ �
     DECIMAL,INPUT pdfStream CHARACTER   pdf_TextGreen   ���  �, �
     DECIMAL,INPUT pdfStream CHARACTER   pdf_TextBlue    ��   $- �
     DECIMAL,INPUT pdfStream CHARACTER   pdf_FillRed �H  h. �
     DECIMAL,INPUT pdfStream CHARACTER   pdf_FillGreen   T��  �/ �
     DECIMAL,INPUT pdfStream CHARACTER   pdf_FillBlue    ��  �0 �
     DECIMAL,INPUT pdfStream CHARACTER   pdf_Page    �  <1      INTEGER,INPUT pdfStream CHARACTER   pdf_PageWidth   (`  �2      INTEGER,INPUT pdfStream CHARACTER   pdf_Pageheight  p(�  �3      INTEGER,INPUT pdfStream CHARACTER   pdf_PageRotate  �4�  4 )     INTEGER,INPUT pdfStream CHARACTER   pdf_Angle    @8  X5 8	     INTEGER,INPUT pdfStream CHARACTER   pdf_TopMargin   DL|  �6 B     INTEGER,INPUT pdfStream CHARACTER   pdf_BottomMargin    �X�  �7 P     INTEGER,INPUT pdfStream CHARACTER   pdf_GraphicX    �d  48 a     DECIMAL,INPUT pdfStream CHARACTER   pdf_GraphicY     pX  |9 n     DECIMAL,INPUT pdfStream CHARACTER   pdf_get_info    h|�  �: {     CHARACTER,INPUT pdfStream CHARACTER,INPUT pdfAttribute CHARACTER    pdf_LeftMargin  ��  ,; �     INTEGER,INPUT pdfStream CHARACTER   pdf_GetNumFittingChars  �P  |< �     INTEGER,INPUT pdfStream CHARACTER,INPUT pdfText CHARACTER,INPUT pdfFromX INTEGER,INPUT pdfToX INTEGER   pdf_Orientation h��  = �     CHARACTER,INPUT pdfStream CHARACTER pdf_PaperType   ��,  P> �     CHARACTER,INPUT pdfStream CHARACTER pdf_Render  <�t  �? �
     INTEGER,INPUT pdfStream CHARACTER   pdf_get_wrap_length ���  �@ �     INTEGER,INPUT pdfStream CHARACTER,INPUT pdfText CHARACTER,INPUT pdfWidth INTEGER    pdf_TotalPages  ��4  XA �     CHARACTER,INPUT pdfStream CHARACTER pdf_PageFooter  D�|  �B �     LOGICAL,INPUT pdfStream CHARACTER,INPUT pdfProcHandle HANDLE,INPUT pdfFooterProc CHARACTER  pdf_PageHeader  ���    C 	     LOGICAL,INPUT pdfStream CHARACTER,INPUT pdfProcHandle HANDLE,INPUT pdfHeaderProc CHARACTER  pdf_LastProcedure    �|   � D      LOGICAL,INPUT pdfStream CHARACTER,INPUT pdfProcHandle HANDLE,INPUT pdfHeaderProc CHARACTER  pdf_get_tool_parameter  �   !  ,!E *     CHARACTER,INPUT pdfStream CHARACTER,INPUT pdfToolName CHARACTER,INPUT pdfToolParam CHARACTER,INPUT pdfToolCol INTEGER   pdf_get_parameter   !�!  �!F A     CHARACTER,INPUT pdfStream CHARACTER,INPUT pdfParameter CHARACTER    pdf_Font_Loaded �!"  4"G S     LOGICAL,INPUT pdfStream CHARACTER,INPUT pdfFont CHARACTER   GetXMLNodeValue  "$p"  �"H c     CHARACTER,INPUT pParent CHARACTER,INPUT pNode CHARACTER pdf_text_fontwidth  �"0�"  �"I s     DECIMAL,INPUT pdfStream CHARACTER,INPUT pdfFont CHARACTER,INPUT pdfText CHARACTER   pdf_text_fontwidth2 �"<H#  p#J �     DECIMAL,INPUT pdfStream CHARACTER,INPUT pdfFont CHARACTER,INPUT pdfFontSize DECIMAL,INPUT pdfText CHARACTER pdf_get_pdf_info    \#H�#  $K �     CHARACTER,INPUT pdfSTREAM CHARACTER,INPUT pdfID CHARACTER,INPUT pInfo CHARACTER CompressBuffer  �#TT$  x$L �     INTEGER,INPUT InputBuffer MEMPTR,INPUT-OUTPUT OutputBuffer MEMPTR,OUTPUT OutputSize INTEGER DeCompressBuffer    d$`�$  �$M �     INTEGER,INPUT InputBuffer MEMPTR,OUTPUT OutputBuffer MEMPTR,OUTPUT OutputSize INTEGER   CompressFile    �$lT%  x%N �     LOGICAL,INPUT InputFile CHARACTER,INPUT OutputFile CHARACTER    DeCompressFile  d%x�%  �%O �     LOGICAL,INPUT InputFile CHARACTER,INPUT OutputFile CHARACTER    PDFendecrypt    �%�&  @&P �     LOGICAL,INPUT BufferPtr MEMPTR,INPUT PasswordPtr MEMPTR �&A)     4 �& ��       �&                             �         �&�&       �       �     �          �& �&<' *'('    4 ����    ' 
     
     � ߱    $ *'���        �'/+T'   \'�          3 ���p' h'        3 ��    |'        3 ���'//�'   �'@          3 ��$   �'        3 ��L(/1�'   �'p          3 ��T�' �'        3 ��| ( �'        3 ���   (        3 ���p(/2,(   4(�          3 ���H( @(        3 ���\( T(        3 ���   h(        3 ����(/3�(   �(           3 ���   �(        3 �� )/4�(   �(0          3 ���( �(        3 ��<�( �(        3 ��D   �(        3 ��L\)/5)    )x          3 ��`4) ,)        3 ���H) @)        3 ���   T)        3 ����)/6t)   |)�          3 ���   �)        3 ����)/7�)   �)�          3 ���   �)        3 ��� */8�)   �)          3 �� �) �)        3 ��(* *        3 ��0   *        3 ��8|*/98*   @*d          3 ��LT* L*        3 ��ph* `*        3 ��x   t*        3 ����*/;�*   �*�          3 ���   �*        3 ����*/<�*   �*�          3 ���   �*        3 ���@+/>�*   +          3 ���+ +        3 ��,+ $+        3 ��   8+        3 ��$�+/?X+   `+P          3 ��8t+ l+        3 ��\�+ �+        3 ��d   �+        3 ����+/@�+   �+�          3 ���   �+        3 ���,,/A�+   �+�          3 ���, �+        3 ���, ,        3 ���   $,        3 ��`,/BD,   L,D          3 ��,   X,        3 ��P�,/Cx,   �,p          3 ��X�, �,        3 ��|�, �,        3 ���   �,        3 ����,/E�,   �,�          3 ���   �,        3 ���L-/F-   -          3 ���$- -        3 ��8- 0-        3 ��   D-        3 �� �-/Gd-   l-L          3 ��4�- x-        3 ��X�- �-        3 ��`   �-        3 ����-/I�-   �-�          3 ���   �-        3 ���8./J�-   �-�          3 ���. .        3 ���$. .        3 ���   0.        3 ����./KP.   X.(          3 ��l. d.        3 ��4�. x.        3 ��<   �.        3 ��`�./L�.   �.�          3 ��t   �.        3 ���$//M�.   �.�          3 ����. �.        3 ���/ /        3 ���   /        3 ����//N</   D/           3 ���X/ P/        3 ��l/ d/        3 ��   x/        3 ���//O�/   �/H          3 ��0�/ �/        3 ��T�/ �/        3 ��\   �/        3 ��d80/P�/   �/�          3 ��x0 0        3 ���$0 0        3 ���   00        3 ����0/QP0   X0�          3 ���l0 d0        3 ����0 x0        3 ���   �0        3 ����0/R�0   �0           3 ���0 �0        3 ��,�0 �0        3 ��4   �0        3 ��<L1/S1   1h          3 ��P$1 1        3 ��t81 01        3 ��|   D1        3 ����1/Td1   l1�          3 ����1 x1        3 ����1 �1        3 ���   �1        3 ����1/U�1   �1�          3 ���   �1        3 ��82/W�1   �1$          3 ��2 2        3 ��0$2 2        3 ��8   02        3 ��\l2/XP2   X2�          3 ��p   d2        3 ����2/Y�2   �2�          3 ���   �2        3 ���3/Z�2   �2�          3 ���   �2        3 ���    3  �5  Pt5d5P��             ^��5     �7    J ^�24 43l3    	                 7 ��    4    ��               �`5    �3            6 ^     4 �3 ��       �3    �`5    �3                                         �         �3�3                   �          �3 �3   $4\4�4  
                 7 ��    5    ��           D  �X5    �4            6 ^     5 �4 ��       �4D  �X5    �4                                          (         �4�4       4       <                �4 �4  J ^        H5  ��                                           |��                45            O ��  e�      O ��  R�      O ��  ��    6 d�5�5    4 ���        �5          ��             df       H9       d�5   e�5 6    4 ���  O e�� ��    46 g6$6    4 ���  O g�� ��    t7 j@6�6    4 �� 	        �6          ��             jq  	     D�       jH6    '           � ߱  �6$ k�6���         7 m�6�6    4 ���  $ m�6���        �    '           � ߱     n707`7  4 ����    '           � ߱    $ o7���        T    '           � ߱    $ pD7���        �8 r�7�7    4 ��h
        �7          ��             rw  
     ��       r�7�    '           � ߱  �7$ s�7���           t8,8\8  4 ����    '           � ߱    $ u8���            '           � ߱    $ v@8���             '         4    '           � ߱  �8$ xp8���        H    '           � ߱   9$ z�8���            (9  H:  0P(::8P��             {�8:     p��    �: {�8   D9|9  ��                  7 ��    6    ��               �      �9            6 {     6 �9 ��       �9    �      �9                                         \         : :       h       p     �          �9 �9  O ��  e�      O ��  R�      O ��  ��       |T:�:    4 ��x        �:          ��             |       ل       |\:�    '         �    '           � ߱    $ }�:���        (; ��:;    4 ����    '           � ߱    $ ��:���        �; �4;X;�;  4 �� <    '           � ߱    $ �<;���        x    '           � ߱    $ �l;���        0= ��;�;    4 ���        �;          ��             ��       �ل       ��; = � <D<    4 ���        L<          ��             ��       8ڄ       �<�<A�     7 �< ��      	 �<P                            �             �<�<         0 @        ( 8 H      �          �< �<   ��<=    4 ��� �     '           � ߱    $ ��<���          O ��� ��    �= �<=`=�=  4 ��� �     '           � ߱    $ �D=���        4!    '           � ߱    $ �t=���        H!    '           � ߱  >$ ��=���            >  d?    (??  ��             ��8?     H܄    x? ��=   4>l>  ��                  7 ��    7    ��        
   �!  �      �>            6 �     7 �> ��      
 �>�!  �      �>                                         \! h! t!         ? ?       �!�!�!       �!�!�!     �          �> �>  O ��  e�      O ��  R�      O ��  ��    �!    '           � ߱    $ �H?���        �@ ��?�?    4 ��"        �?          ��             ��       ���       ��?   ��? @0@  4 ��l"#    '           � ߱    $ ��?���        �#    '           � ߱    $ �@���        �#    '         $    '         @$    '         �$    '         �$    '           %    '         X%    '           � ߱  A$ �D@���        �%    ' "     "     � ߱  A$ ��@���        xA/�4A   <A�%          3 ���%PA HA        3 ���%dA \A        3 ���%   pA        3 ��8&�A/��A   �Ad&          3 ��L&�A �A        3 ��p&�A �A        3 ��x&   �A        3 ���&0B/��A   �A�&          3 ���&B  B        3 ���&B B        3 ���&   (B        3 ���&�B/�HB   PB'          3 ��'dB \B        3 ��('xB pB        3 ��0'   �B        3 ��L'�B/��B   �Bx'          3 ��`'�B �B        3 ���'�B �B        3 ���'   �B        3 ���'DC/� C   C�'          3 ���'C C        3 ���'0C (C        3 ���'   <C        3 ��,(�C/�\C   dCX(          3 ��@(xC pC        3 ��d(�C �C        3 ��l(   �C        3 ���(�C/��C   �C�(          3 ���(�C �C        3 ���(�C �C        3 ���(   �C        3 ���(0D/�D   D)          3 ��)   (D        3 ��()   �<D�D    4 ��0)        �D          ��             ��       �       �DD�D/��D   �Dt)          3 ��X)   �D        3 ���)�D/��D   �D�)          3 ���)   �D        3 ���)LE/�E   E�)          3 ���)$E E        3 ���)8E 0E        3 ���)   DE        3 ���)�E/�dE   lE*          3 �� *�E xE        3 ��$*�E �E        3 ��,*   �E        3 ��P*�E/��E   �E|*          3 ��d*   �E        3 ���*8F/��E   �E�*          3 ���*F F        3 ���*$F F        3 ���*   0F        3 ���*�F/�PF   XF�*          3 ���*lF dF        3 ���*�F xF        3 ��+   �F        3 ��+�F/��F   �F8+          3 �� +�F �F        3 ��D+�F �F        3 ��L+   �F        3 ��T+LG/�G   G�+          3 ��h+$G G        3 ���+8G 0G        3 ���+   DG        3 ���+�G/�dG   lG�+          3 ���+�G xG        3 ���+�G �G        3 ���+   �G        3 ���+H/��G   �G,          3 ���+�G �G        3 ��,�G �G        3 ��$,   �G        3 ��,,`H/�H   $HX,          3 ��@,8H 0H        3 ��d,LH DH        3 ��l,   XH        3 ��t,�H/�xH   �H�,          3 ���,�H �H        3 ���,�H �H        3 ���,   �H        3 ���,�H/��H   �H�,          3 ���,   �H        3 ���,LI/�I   I-          3 ���,$I I        3 �� -8I 0I        3 ��(-   DI        3 ��L-�I/�dI   lIx-          3 ��`-   xI        3 ���-�I/��I   �I�-          3 ���-   �I        3 ���-J/��I   �I�-          3 ���-   �I        3 ���-�-    ' "     "     � ߱    $ ��I���        tJ/�0J   8J.          3 ���-LJ DJ        3 ��.`J XJ        3 ��$.   lJ        3 ��H.�J/��J   �Jt.          3 ��\.   �J        3 ���.K/��J   �J�.          3 ���.�J �J        3 ���.�J �J        3 ���.   �J        3 ���.`K/�K   $K�.          3 ���.8K 0K        3 ��/LK DK        3 ��/   XK        3 ��,/�K/�xK   �KX/          3 ��@/�K �K        3 ��d/�K �K        3 ��l/   �K        3 ���/L/��K   �K�/          3 ���/�K �K        3 ���/L �K        3 ���/   L        3 ���/tL/�0L   8L0          3 ���/LL DL        3 ��0`L XL        3 ��$0   lL        3 ��\0�L/��L   �L�0          3 ��p0�L �L        3 ���0�L �L        3 ���0   �L        3 ���0M/��L   �L�0          3 ���0   �L        3 ���0|M/�M   $M1          3 ���08M 0M        3 ��1LM DM        3 ��$1   XM        3 ��H1\1    ' !     !     � ߱  �M$ �`M���        �M/��M   �M�1          3 ���1   �M        3 ���1�M/��M   �M�1          3 ���1   �M        3 ���1TN/�N   N 2          3 ��2,N $N        3 ��,2@N 8N        3 ��42   LN        3 ��<2�N/�lN   tNh2          3 ��P2�N �N        3 ��t2�N �N        3 ��|2   �N        3 ���2�N/��N   �N�2          3 ���2   �N        3 ���2  Q ��N    �2            local-e4gl-options  4 Ot       8 �    <                  8�      �  �   ) 
state-less             �                  ��O8 ��3 �O8 ��3 �O8 ��2 �O8 ��2 �O8 ��1 �O8 ��1 �O8 ��0 �O8 ��0 �O8 ��/ �O8 ��/ �O8 ��. �O8 ��.  P8 ��- �O8 ��-   = ��4 P8 ��4   8 ��,   8 ��,  P8 ��7 (P8 ��7   8 ��5   8 ��5   8 ��6   8 ��6     
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
�    %      Web-State = Timed-Out t8    " (  �t� F    " (     %              %       ����    T   %              � %              � K 0 P       " (          � M " (  �4    S         � M " (     �     }    �%                    � M " (  �  0 P       " (          � F " (  �4    S         � F " (     �     }    �%                    � F " (  �  " (     
�        �  � T	 % 	    ADM-ERROR �     }    �@ @   $    �    }    �%              %       Q    	 $    �    }    �%              %       8     %     dispatch F�
" "   
   %     show-errors % 	    ADM-ERROR %               " )     � � %               � � %      WEB1.0  � �	 " '     � �      " '     � � " '     � � %     get-time-remaining 
" "   
   
�    " )          " )     %      special-get-attribute �
�    " )      �     }    ��  %              " )         %              %                   " *     %                  " *     �     " *     T    " *     " *  �        " *     �  %               � & %      
       " *     %      
       � B �     }    �Az`       8 " *  �  %                      " *  ���  %              z`      8  " *  �           " *  F��  %              %       ����    " *     � � ! " *     � �	 " *     � � " *     %      special-set-attribute �
�    " *     " *     %     local-e4gl-options 
�    " '     " '     " '     8    �    }    �� � � �	 %     output-header   
�    �     }    �%               8    �    }    �� � � �	 %     output-headers  
�    �     }    �%                A    " '  F�� � �	              " '  ��  $ � �  G %       	       z     �              � � � � &    &    * ,   " ,      �     �     �     |     l     \     8     (         � � G %       {      � � �              � � � 

 � �  �  � ! � = � ? %               � B &    &    * ,         " ,      �     �     �     |     l     \     8     (         � � G %       {      � � �              � � � 

 � �  �  � I0 � = � ? %               � z &    &    * ,   ! " ,     � � &    &    * ,   ! " ,         " '  �t%                �     �     �     |     l     \     8     (         � � G %       {      � � �              � � � 

 � �  �  � �" � = � ? %                � 
" ' # 
�t% 	    pdf_inc.p �
" ' # 
�t�      ,  �@� 
 
" ' # 
   
" ' # 
   
" ' # 
   
" ' # 
   
" ' # 
   
" ' # 
   
" ' # 
   
" ' # 
   
" ' # 
   
" ' # 
   
" ' # 
   
" ' # 
   
" ' # 
   
" ' # 
   
" ' # 
   
" ' # 
   
" ' # 
   
" ' # 
   
" ' # 
   
" ' # 
   
" ' # 
   
" ' # 
   
" ' # 
   
" ' # 
   
" ' # 
   
" ' # 
   
" ' # 
   
" ' # 
   
" ' # 
   
" ' # 
   
" ' # 
   
" ' # 
   
" ' # 
   
" ' # 
   
" ' # 
   
" ' # 
   
" ' # 
   
" ' # 
   
" ' # 
   
" ' # 
   
" ' # 
   
" ' # 
   
" ' # 
   
" ' # 
   
" ' # 
   
" ' # 
   
" ' # 
   
" ' # 
    " ' 	    &    &    * 4        ]      " 4     � � %      pdf_new 
" ' # 
   �       �  " ' 
    %     pdf_new_Page    
" ' # 
   �  %     pdf_set_font    
" ' # 
   �  �  %           %     pdf_text_at 
" ' # 
   �  � - %              %     pdf_skip F�
" ' # 
   �  %     pdf_set_font    
" ' # 
   �  � E	 %           %     pdf_text_at 
" ' # 
   �  � O %       
       %     pdf_skip F�
" ' # 
   �  %     pdf_skip F�
" ' # 
   �  %     pdf_set_font    
" ' # 
   �  � f %           %     pdf_text_at 
" ' # 
   �  � u %       F       %     pdf_skip F�
" ' # 
   �  %     pdf_skip F�
" ' # 
   �  %     pdf_set_font    
" ' # 
   �  � E	 %            %     pdf_text_at 
" ' # 
   �       � �      " 4     %       
       %     pdf_skip F�
" ' # 
   �  %     pdf_text_at 
" ' # 
   �       � �      " 4     %       
       %     pdf_skip F�
" ' # 
   �  %     pdf_text_at 
" ' # 
   �       � �      " 4     %       
       %     pdf_skip F�
" ' # 
   �  %     pdf_set_font    
" ' # 
   �  � E	 %            %     pdf_text_at 
" ' # 
   �       � �     +  � �
 %       �       %     pdf_skip F�
" ' # 
   �  %     pdf_set_font    
" ' # 
   �  � E	 %            %     pdf_text_at 
" ' # 
   �  U    � � %       �       %       
       %     pdf_skip F�
" ' # 
   �  %     pdf_text_at 
" ' # 
   �  � � %       
       %     pdf_text_at 
" ' # 
   �  � � %              %     pdf_text_at 
" ' # 
   �  � � %       <       %     pdf_text_at 
" ' # 
   �  � � %       U      %     pdf_text_at 
" ' # 
   �  � �
 %       n       %     pdf_text_at 
" ' # 
   �  � � %       �       %     pdf_text_at 
" ' # 
   �  � 
 %       �       %     pdf_text_at 
" ' # 
   �  � 
 %       �       %     pdf_skip F�
" ' # 
   �  %     pdf_text_at 
" ' # 
   �  U    � � %       �       %       
       %     pdf_skip F�
" ' # 
   �  %     pdf_skip F�
" ' # 
   �  %     pdf_skip F�
" ' # 
   �   " ' 	    &    &    o%   o           " 4    &    &        %                  " 5     &   " 5     " 5     " 5         " 4     %                  " 5     " 4         " 5     +      " '  �t� (  <               +   " 5     %                  +   " 5               +   " 5     %                    " '     %                  +  " 5      <    (        " '     %       d       " '     %              %                  " '  �t� 0     +  " 5         +  " 5      <             " '     " '  G�%       d       %              %              %               %               %               " 5  �  &    &        " 6     %                    " '     " 6     %                  " '     " 5     " 5              " '     " 5 	    %                        " '     " 5 	    %              %               (         " 5     %                  " 5 	    " 5         " 5     " '     " 5     " 5     " 5     &    &    &    &    &    &    0        %              %              %               * 7   %              " '     P    4             " '     " '     " 4     %       d       %              %               %               " 5     " 5     " 5     &    &    &    &    &    &    0        %              %              %                   " '     " 7       (       " 5     " '         " 5 
    %               �    l    X    <             " '     " '  H�%              %       d       " '  H�%              %               �    l    X    <             " '  /u" '  �%              %       d       " '     %       ����    %              %                         " '     " '     %                        " '   " 5 	    %              4          " '       " '     " 5 	    %                        " '     " '     %              4          " '        " '     " '     %                        " '     " '     %                        " '   " '     %                   " ' "    %              %     pdf_text_at 
" ' # 
   �   ,             " 5     � I � L     " 5     � N %       
       %     pdf_text_at 
" ' # 
   �      " '  ext� S %             %     pdf_text_at 
" ' # 
   �      " 5 	    � S %       7      %     pdf_text_at 
" ' # 
   �      " '  ext� S %       P       %     pdf_text_at 
" ' # 
   �           " '     " '  F�� S %       n       %     pdf_text_at 
" ' # 
   �  (         " '     %       ����    %       �       %     pdf_text_at 
" ' # 
   �       " '  ext%       �      %     pdf_text_at 
" ' # 
   �            " 5 
         " ' "    %       �      %     pdf_skip F�
" ' # 
   �      " ' " �t%       1   	   %     pdf_new_Page    
" ' # 
   �  %     pdf_skip F�
" ' # 
   �  %     pdf_set_font    
" ' # 
   �  � E	 %            %     pdf_text_at 
" ' # 
   �  U    � � %       �       %       
       %     pdf_skip F�
" ' # 
   �  %     pdf_text_at 
" ' # 
   �  � � %       
       %     pdf_text_at 
" ' # 
   �  � � %              %     pdf_text_at 
" ' # 
   �  � � %       <       %     pdf_text_at 
" ' # 
   �  � � %       U      %     pdf_text_at 
" ' # 
   �  � �
 %       n       %     pdf_text_at 
" ' # 
   �  � � %       �       %     pdf_text_at 
" ' # 
   �  � 
 %       �       %     pdf_text_at 
" ' # 
   �  � 
 %       �       %     pdf_skip F�
" ' # 
   �  %     pdf_text_at 
" ' # 
   �  U    � � %       �       %       
       %     pdf_skip F�
" ' # 
   �  %     pdf_skip F�
" ' # 
   �  %     pdf_skip F�
" ' # 
   �  %               %     pdf_text_at 
" ' # 
   �  U    � � %       �       %       
       %     pdf_skip F�
" ' # 
   �  %     pdf_text_at 
" ' # 
   �      " '  ext� _ %             %     pdf_text_at 
" ' # 
   �      " '  ext� _ %       4      %     pdf_text_at 
" ' # 
   �      " '  ext� _ %       N      %     pdf_text_at 
" ' # 
   �      " '   ext� _ %       k      %     pdf_text_at 
" ' # 
   �  (        " '     %       ����    � _ %       �       %     pdf_text_at 
" ' # 
   �      " '  ext� _ %       �      %     pdf_skip F�
" ' # 
   �  %     pdf_text_at 
" ' # 
   �  U    � � %       �       %       
        <      (   " '   ��    " '  F�%       ����    " '  F�%     pdf_skip F�
" ' # 
   �  %     pdf_skip F�
" ' # 
   �  %     pdf_set_font    
" ' # 
   �  � E	 %            %     pdf_text_at 
" ' # 
   �       � p     " ' ! F�� _ %       
       % 	    pdf_Close �
" ' # 
   �   �     �     �     �     l     \     8     (         � � G %       {      � � �              � � � 

 " ' 
 ���  � �  � = � ?           l     L <   ��            
\       X9u      O ��    e�      O ��    R�      O ��    ��       x �     4 ���  � �  ��                    ����                              l     L <   ��             \       �9u      O ��    e�      O ��    R�      O ��    ��      /�    � �          3 ���   �         3 ���  ��                    ����                              �     L <   ��            &e\      �@u      O ��    e�      O ��    R�      O ��    ��    , (       l    �  7� �     4 ���  $ 8� ���            (           � ߱  L    (           � ߱  � $ 9� ���        | ; 8  4 ���  $ @���            (           � ߱     KDL    4 ��,  $ N`���        �    (           � ߱  �/	Q�     �          3 ���� T��    4 ���  O T��  ���  � V�    4 ��                  ��             Vb       �t       V�   [$h    4 ��         p          ��             ^a       |�t       ^,�/_�   ��          3 ���   �        3 ���  O `��  ���    O d��  ���    >��(        �,                                                     (     ��                    ����                              �     L <   ��            l�\      d�t      O ��    e�      O ��    R�      O ��    ��    s )       l    �p y� ��  � �    $ z� ���        $    )           � ߱   �  8  $ {� ���        @    )           � ߱  8 T  $ |���        \    )           � ߱  p@ h  $ }T���        p    )           � ߱  �x �  $ ~����        �    )           � ߱    � �        �          ��             �       @u       �l/�   �          3 ���(          3 ���   4<      3 ���  $ �P���               )           � ߱    $ �����        �    )           � ߱          �          ��             ��       �u       ��/	��              3 ���           3 ��    � (X  4 ��,  $ �<���        @    )           � ߱    $ �l���        D    )           � ߱    O ���  ��X    >��)      �� �@                                                      0              0      )     ��                    ����                              �     L <   ��            ��\      �u      O ��    e�      O ��    R�      O ��    ��    � *       l      �   � ,          ��      0       ��       �"u       ��   $ �� ���        d    *           � ߱  $$ ����        �    *           � ߱    4 ���\$ �@���        �    *           � ߱   �h�    4 ��        �          ��             ��       �"u       �p 	��                  �3 ��<�3 ��D�3 ��X�3 ��d�3 ��x  3 ���  O ��� ��    @$ �$���        �    *           � ߱  p$ �T���        �    *           � ߱    p �`�(�  �� l  $�����        t    '           � ߱  �� �  $ �����        �    '           � ߱    � �  $ ����        �    '           � ߱    /	�@   H�          3 ���\ T        3 ���   h        3 ���  >��*      �� �h                                                                               (   8   H   X          (   8   H   X          *     ��                    ����                                    L <   ��             \       ҄      O ��    e�      O ��    R�      O ��    ��    � 8  �    l    � 8  �    �    � 8       �      >��8      �  � H              
    web-object  	    text/html �          4              4   �/
web-object	text/html   8     ��                    ����                    TXS WebStream GATEWAY_INTERFACE SERVER_SOFTWARE SERVER_PROTOCOL SERVER_NAME SERVER_PORT REQUEST_METHOD SCRIPT_NAME PATH_INFO PATH_TRANSLATED QUERY_STRING REMOTE_ADDR REMOTE_HOST REMOTE_IDENT REMOTE_USER AUTH_TYPE CONTENT_TYPE CONTENT_LENGTH HTTP_ACCEPT HTTP_COOKIE HTTP_REFERER HTTP_USER_AGENT HTTPS AppProgram AppURL SelfURL HostURL CookiePath RootURL useConnID CookieDomain SelDelim , output-content-type http-newline 
 utc-offset web-utilities-hdl debug-options debugging-enabled MiscVarList CONVERT-DATETIME FORMAT-DATETIME GET-CGI GET-FIELD GET-VALUE GET-USER-FIELD HIDDEN-FIELD HIDDEN-FIELD-LIST HTML-ENCODE OUTPUT-CONTENT-TYPE OUTPUT-HTTP-HEADER SET-USER-FIELD SET-WSEU-COOKIE URL-DECODE URL-ENCODE URL-FIELD URL-FIELD-LIST URL-FORMAT DELETE-COOKIE GET-COOKIE SET-COOKIE AVAILABLE-MESSAGES GET-MESSAGES GET-MESSAGE-GROUPS OUTPUT-MESSAGES QUEUE-MESSAGE CHECK-AGENT-MODE GET-CONFIG gscSessionId SETSESSION GETSESSION SETGLOBAL GETGLOBAL LOGNOTE adm-web-state adm-web-timeout adm-web-tohdlr adm-web-time-remaining ADM-DESTROY Web-State = Timed-Out ADM-TIMING-OUT p-method-name caller-name adm-   local- ADM-ERROR show-errors DISPATCH p_attr-name attr-value p_period Type  Version WEB1.0 Web-State Web-Timeout Web-Timeout-Handler Web-Time-Remaining GET-ATTRIBUTE p-attr-list cntr attr-name attr-entry = Invalid element in set-attribute call: in SET-ATTRIBUTE-LIST e4gl-version e4gl-options e4gl-content-type output-header PROCEDURE output-headers no-content-type Barcode inscripcion nombreArchivoPdf wDeuda wInteres wTiempo punitorio wActivo wFecFoprosi wPunitorio wNominal wMinimos wDeclaro wDebeFoprosi wPublicidad wdifer WTOTPUBLICIDAD wcalcfoprosi WFOPROSI WTOTFOPROSI WRUBRO WTOTNOMINAL WPAGOS WRECARGO WACTUALIZADO WTOTAL totalGeneral renglon  inscripcion parametros IntAct [ "inscripcion":" ","file":" ","error":" No existe un interes activo " }] FecFop No existe parametro para fecha de inicio FoProSi IntMens IntDia No estámn cargados los Punitorios h_PDFinc TT_pdf_ext obj_stream pdf_id pdf_name TT_Font obj_id gen_id page_id desc_obj desc_gen enc_obj enc_gen uni_obj uni_gen descend_obj descend_gen file2_obj file2_gen file3_obj file3_gen font_name font_tag font_width font_base TT_Info info_name info_value info_extra TT_Object obj_ptr obj_seq obj_type Rotate obj_Media1 obj_Media2 obj_Media3 obj_Media4 obj_Crop1 obj_Crop2 obj_Crop3 obj_Crop4 TT_Resource par_obj par_gen res_type res_obj res_gen res_len res_text res_old new_obj new_gen TT_pdf_xml xml_parent xml_pnode xml_node xml_value xml_seq TT_Widget widget_type widget_name widget_rect widget_disp widget_page Persistent PDFinc PDF_FONT PDF_FONTTYPE PDF_IMAGEDIM PDF_TEXTX PDF_TEXTY PDF_VERTICALSPACE PDF_POINTSIZE PDF_TEXT_WIDTH PDF_TEXT_WIDTHDEC PDF_TEXT_WIDTHDEC2 PDF_TEXTRED PDF_TEXTGREEN PDF_TEXTBLUE PDF_FILLRED PDF_FILLGREEN PDF_FILLBLUE PDF_PAGE PDF_PAGEWIDTH PDF_PAGEHEIGHT PDF_PAGEROTATE PDF_ANGLE PDF_TOPMARGIN PDF_BOTTOMMARGIN PDF_GRAPHICX PDF_GRAPHICY PDF_GET_INFO PDF_LEFTMARGIN PDF_GETNUMFITTINGCHARS PDF_ORIENTATION PDF_PAPERTYPE PDF_RENDER PDF_GET_WRAP_LENGTH PDF_TOTALPAGES PDF_PAGEFOOTER PDF_PAGEHEADER PDF_LASTPROCEDURE PDF_GET_TOOL_PARAMETER PDF_GET_PARAMETER PDF_FONT_LOADED GETXMLNODEVALUE PDF_TEXT_FONTWIDTH PDF_TEXT_FONTWIDTH2 PDF_GET_PDF_INFO COMPRESSBUFFER DECOMPRESSBUFFER COMPRESSFILE DECOMPRESSFILE PDFENDECRYPT Comercio .pdf cons .\Documents\Drei\ Cons Helvetica-Bold Municipalidad de Perez  Helvetica Sarmiento 1198 - Perez Helvetica-bold Listado Deuda D.R.eI. Inscripcion:  Razon Social:  Domicilio:  DEUDA ACTUALIZADA AL  99/99/9999 - Periodo Nominal Pagos Saldo Saldo Act. FoProSi Publicidad Nro. Conv. Liquidacion INTMENS INTDIA DetaLiqui FoProSi 99 / 9999 ->>>,>>9.99 zzzz,zzz,zz9.99- Deuda Total: $  p_version p_options p_content-type LOCAL-E4GL-OPTIONS default idx-idparam idx-inscripcion idx-ins-ani-per idx-nroliquida puk-clave �
 x�     �    4           (       adm-destroy  `           P       adm-timing-out     (    t      caller-name   (      �   p-method-name   8 �     d �   �       dispatch    789;@KNQTV[^_`abde)    �      attr-value    )         p_period      )      0  p_attr-name � d    �    T      get-attribute   yz{|}~������������*    �     cntr    �*    �     attr-name   �*    �     attr-value    *    �     attr-entry    *        p-attr-list <<    ��  (      set-attribute-list  ����������������x8      l  p_version   �8      �  p_options     8      �  p_content-type  �      \  �      local-e4gl-options    �X�    �  D        H TT_pdf_ext  (     4     <     obj_stream  pdf_id  pdf_name    �PX TT_Font                      $     ,     8     D     L     T     \     d     p     |     �     �     �     �     �     �     �     obj_stream  pdf_id  obj_id  gen_id  page_id desc_obj    desc_gen    enc_obj enc_gen uni_obj uni_gen descend_obj descend_gen file2_obj   file2_gen   file3_obj   file3_gen   font_name   font_tag    font_width  font_base   L�� TT_Info            (     4     @     obj_stream  pdf_id  info_name   info_value  info_extra  �T` TT_Object   �     �     �                         (     0     8     D     P     \     h     t     �     �     obj_stream  pdf_id  obj_ptr obj_id  gen_id  obj_seq obj_type    page_id Rotate  obj_Media1  obj_Media2  obj_Media3  obj_Media4  obj_Crop1   obj_Crop2   obj_Crop3   obj_Crop4   ��� TT_Resource            (     0     8     @     L     T     \     d     p     x     �     obj_stream  pdf_id  par_obj par_gen page_id res_type    res_obj res_gen res_len res_text    res_old new_obj new_gen �� TT_pdf_xml  �     �     �     �     �          obj_stream  xml_parent  xml_pnode   xml_node    xml_value   xml_seq   $ TT_Widget   \     h     p     |     �     �     �     obj_stream  pdf_id  widget_type widget_name widget_rect widget_disp widget_page �      �     GATEWAY_INTERFACE   �    �     SERVER_SOFTWARE 	     	     SERVER_PROTOCOL ,	     	     SERVER_NAME H	    <	     SERVER_PORT h	    X	     REQUEST_METHOD  �	    x	     SCRIPT_NAME �	    �	     PATH_INFO   �	    �	     PATH_TRANSLATED �		 	   �	     QUERY_STRING    �	
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
 d     nombreArchivoPdf    �' '  �     wDeuda  �' '  �     wInteres    �' '  �     wTiempo �' '  �     punitorio   �' '  �     wActivo ' '       wFecFoprosi 0' '  $     wPunitorio  L' '  @     wNominal    h' '  \     wMinimos    �' '  x     wDeclaro    �' '  �     wDebeFoprosi    �' '  �     wPublicidad �' '  �     wdifer  �' '  �     WTOTPUBLICIDAD  ' '       wcalcfoprosi    4' '  (     WFOPROSI    P' '  D     WTOTFOPROSI h+ (  `     WRUBRO  �' '  x     WTOTNOMINAL �' '  �     WPAGOS  �' '  �     WRECARGO    �' '  �     WACTUALIZADO    �' '   �     WTOTAL  ' ' !       totalGeneral    (' ' "       renglon   ' ' # 8  
   h_PDFinc    \) ,  P  parametros  t* - �h  TT_pdf_ext  �+ . ��  TT_Font �, / ��  TT_Info �- 0 ��  TT_Object   �. 1 ��  TT_Resource �/ 2 ��  TT_pdf_xml  �0 3 ��  TT_Widget   1 4    Comercio    ,2 5     Liquidacion D3 6  8  DetaLiqui     4 7  P  FoProSi ������������� %&()*+014578:;@Adgjs)*+/123456789;<>?@ABCEFGIJKLMNOPQRSTUWXYZ^defgjkmnopqrstuvwxz{|}��������������������������������������������������������������������������    Q�   .\pdf_inc.i    �K$   .\pdf_func.i   ��2   .\pdfglobal.i  ��|   .\pdf_pre.i    ]r#   2C:\Program Files (x86)\PROGRESS91D\src\web\method\e4gl.i   �"#   2C:\Program Files (x86)\PROGRESS91D\src\web\method\admweb.i `��#   2C:\Program Files (x86)\PROGRESS91D\src\web\method\cgidefs.i    �^�#   2C:\Program Files (x86)\PROGRESS91D\src\web\method\proto.i  ��#   2C:\Program Files (x86)\PROGRESS91D\src\web\method\session.i    0o
    0C:\xampp\htdocs\municipio2.0\services\Comercios\PrintDeudaServices.w   
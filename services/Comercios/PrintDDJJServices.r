	��V)%`�   �              �                                 �  19B00058utf-8 MAIN C:\xampp\htdocs\municipio2.0\services\Comercios\PrintDDJJServices.w,, PROCEDURE local-e4gl-options,,OUTPUT p_version DECIMAL,OUTPUT p_options CHARACTER,OUTPUT p_content-type CHARACTER PROCEDURE set-attribute-list,,INPUT p-attr-list CHARACTER PROCEDURE get-attribute,,INPUT p_attr-name CHARACTER PROCEDURE dispatch,,INPUT p-method-name CHARACTER PROCEDURE adm-timing-out,, PROCEDURE adm-destroy,, EXTERN PDFendecrypt,LOGICAL,INPUT BufferPtr MEMPTR,INPUT PasswordPtr MEMPTR EXTERN DeCompressFile,LOGICAL,INPUT InputFile CHARACTER,INPUT OutputFile CHARACTER EXTERN CompressFile,LOGICAL,INPUT InputFile CHARACTER,INPUT OutputFile CHARACTER EXTERN DeCompressBuffer,INTEGER,INPUT InputBuffer MEMPTR,OUTPUT OutputBuffer MEMPTR,OUTPUT OutputSize INTEGER EXTERN CompressBuffer,INTEGER,INPUT InputBuffer MEMPTR,INPUT-OUTPUT OutputBuffer MEMPTR,OUTPUT OutputSize INTEGER EXTERN pdf_get_pdf_info,CHARACTER,INPUT pdfSTREAM CHARACTER,INPUT pdfID CHARACTER,INPUT pInfo CHARACTER EXTERN pdf_text_fontwidth2,DECIMAL,INPUT pdfStream CHARACTER,INPUT pdfFont CHARACTER,INPUT pdfFontSize DECIMAL,INPUT pdfText CHARACTER EXTERN pdf_text_fontwidth,DECIMAL,INPUT pdfStream CHARACTER,INPUT pdfFont CHARACTER,INPUT pdfText CHARACTER EXTERN GetXMLNodeValue,CHARACTER,INPUT pParent CHARACTER,INPUT pNode CHARACTER EXTERN pdf_Font_Loaded,LOGICAL,INPUT pdfStream CHARACTER,INPUT pdfFont CHARACTER EXTERN pdf_get_parameter,CHARACTER,INPUT pdfStream CHARACTER,INPUT pdfParameter CHARACTER EXTERN pdf_get_tool_parameter,CHARACTER,INPUT pdfStream CHARACTER,INPUT pdfToolName CHARACTER,INPUT pdfToolParam CHARACTER,INPUT pdfToolCol INTEGER EXTERN pdf_LastProcedure,LOGICAL,INPUT pdfStream CHARACTER,INPUT pdfProcHandle HANDLE,INPUT pdfHeaderProc CHARACTER EXTERN pdf_PageHeader,LOGICAL,INPUT pdfStream CHARACTER,INPUT pdfProcHandle HANDLE,INPUT pdfHeaderProc CHARACTER EXTERN pdf_PageFooter,LOGICAL,INPUT pdfStream CHARACTER,INPUT pdfProcHandle HANDLE,INPUT pdfFooterProc CHARACTER EXTERN pdf_TotalPages,CHARACTER,INPUT pdfStream CHARACTER EXTERN pdf_get_wrap_length,INTEGER,INPUT pdfStream CHARACTER,INPUT pdfText CHARACTER,INPUT pdfWidth INTEGER EXTERN pdf_Render,INTEGER,INPUT pdfStream CHARACTER EXTERN pdf_PaperType,CHARACTER,INPUT pdfStream CHARACTER EXTERN pdf_Orientation,CHARACTER,INPUT pdfStream CHARACTER EXTERN pdf_GetNumFittingChars,INTEGER,INPUT pdfStream CHARACTER,INPUT pdfText CHARACTER,INPUT pdfFromX INTEGER,INPUT pdfToX INTEGER EXTERN pdf_LeftMargin,INTEGER,INPUT pdfStream CHARACTER EXTERN pdf_get_info,CHARACTER,INPUT pdfStream CHARACTER,INPUT pdfAttribute CHARACTER EXTERN pdf_GraphicY,DECIMAL,INPUT pdfStream CHARACTER EXTERN pdf_GraphicX,DECIMAL,INPUT pdfStream CHARACTER EXTERN pdf_BottomMargin,INTEGER,INPUT pdfStream CHARACTER EXTERN pdf_TopMargin,INTEGER,INPUT pdfStream CHARACTER EXTERN pdf_Angle,INTEGER,INPUT pdfStream CHARACTER EXTERN pdf_PageRotate,INTEGER,INPUT pdfStream CHARACTER EXTERN pdf_Pageheight,INTEGER,INPUT pdfStream CHARACTER EXTERN pdf_PageWidth,INTEGER,INPUT pdfStream CHARACTER EXTERN pdf_Page,INTEGER,INPUT pdfStream CHARACTER EXTERN pdf_FillBlue,DECIMAL,INPUT pdfStream CHARACTER EXTERN pdf_FillGreen,DECIMAL,INPUT pdfStream CHARACTER EXTERN pdf_FillRed,DECIMAL,INPUT pdfStream CHARACTER EXTERN pdf_TextBlue,DECIMAL,INPUT pdfStream CHARACTER EXTERN pdf_TextGreen,DECIMAL,INPUT pdfStream CHARACTER EXTERN pdf_TextRed,DECIMAL,INPUT pdfStream CHARACTER EXTERN pdf_text_widthdec2,DECIMAL,INPUT pdfStream CHARACTER,INPUT pdfFontTag CHARACTER,INPUT pdfFontSize DECIMAL,INPUT pdfText CHARACTER EXTERN pdf_text_widthdec,DECIMAL,INPUT pdfStream CHARACTER,INPUT pdfText CHARACTER EXTERN pdf_text_width,INTEGER,INPUT pdfStream CHARACTER,INPUT pdfText CHARACTER EXTERN pdf_PointSize,DECIMAL,INPUT pdfStream CHARACTER EXTERN pdf_VerticalSpace,DECIMAL,INPUT pdfStream CHARACTER EXTERN pdf_TextY,INTEGER,INPUT pdfStream CHARACTER EXTERN pdf_TextX,INTEGER,INPUT pdfStream CHARACTER EXTERN pdf_ImageDim,INTEGER,INPUT pdfStream CHARACTER,INPUT pdfImage CHARACTER,INPUT pdfDim CHARACTER EXTERN pdf_FontType,CHARACTER,INPUT pdfStream CHARACTER EXTERN pdf_Font,CHARACTER,INPUT pdfStream CHARACTER EXTERN logNote,LOGICAL,INPUT pcLogType CHARACTER,INPUT pcLogText CHARACTER EXTERN getGlobal,CHARACTER,INPUT cName CHARACTER EXTERN setGlobal,LOGICAL,INPUT cName CHARACTER,INPUT cValue CHARACTER EXTERN getSession,CHARACTER,INPUT cName CHARACTER EXTERN setSession,LOGICAL,INPUT cName CHARACTER,INPUT cValue CHARACTER EXTERN get-config,CHARACTER,INPUT p_name CHARACTER EXTERN check-agent-mode,LOGICAL,INPUT p_mode CHARACTER EXTERN queue-message,INTEGER,INPUT p_grp CHARACTER,INPUT p_message CHARACTER EXTERN output-messages,INTEGER,INPUT p_option CHARACTER,INPUT p_grp CHARACTER,INPUT p_message CHARACTER EXTERN get-message-groups,CHARACTER, EXTERN get-messages,CHARACTER,INPUT p_grp CHARACTER,INPUT p_delete LOGICAL EXTERN available-messages,LOGICAL,INPUT p_grp CHARACTER EXTERN set-cookie,CHARACTER,INPUT p_name CHARACTER,INPUT p_value CHARACTER,INPUT p_date DATE,INPUT p_time INTEGER,INPUT p_path CHARACTER,INPUT p_domain CHARACTER,INPUT p_options CHARACTER EXTERN get-cookie,CHARACTER,INPUT p_name CHARACTER EXTERN delete-cookie,CHARACTER,INPUT p_name CHARACTER,INPUT p_path CHARACTER,INPUT p_domain CHARACTER EXTERN url-format,CHARACTER,INPUT p_url CHARACTER,INPUT p_name-list CHARACTER,INPUT p_delim CHARACTER EXTERN url-field-list,CHARACTER,INPUT p_name-list CHARACTER,INPUT p_delim CHARACTER EXTERN url-field,CHARACTER,INPUT p_name CHARACTER,INPUT p_value CHARACTER,INPUT p_delim CHARACTER EXTERN url-encode,CHARACTER,INPUT p_value CHARACTER,INPUT p_enctype CHARACTER EXTERN url-decode,CHARACTER,INPUT p_in CHARACTER EXTERN set-wseu-cookie,CHARACTER,INPUT p_cookie CHARACTER EXTERN set-user-field,LOGICAL,INPUT p_name CHARACTER,INPUT p_value CHARACTER EXTERN output-http-header,CHARACTER,INPUT p_header CHARACTER,INPUT p_value CHARACTER EXTERN output-content-type,LOGICAL,INPUT p_type CHARACTER EXTERN html-encode,CHARACTER,INPUT p_in CHARACTER EXTERN hidden-field-list,CHARACTER,INPUT p_name-list CHARACTER EXTERN hidden-field,CHARACTER,INPUT p_name CHARACTER,INPUT p_value CHARACTER EXTERN get-user-field,CHARACTER,INPUT p_name CHARACTER EXTERN get-value,CHARACTER,INPUT p_name CHARACTER EXTERN get-field,CHARACTER,INPUT p_name CHARACTER EXTERN get-cgi,CHARACTER,INPUT p_name CHARACTER EXTERN format-datetime,CHARACTER,INPUT p_format CHARACTER,INPUT p_date DATE,INPUT p_time INTEGER,INPUT p_options CHARACTER EXTERN convert-datetime,CHARACTER,INPUT p_conversion CHARACTER,INPUT p_idate DATE,INPUT p_itime INTEGER,OUTPUT p_odate DATE,OUTPUT p_otime INTEGER      �  �x              C�  ��\�A      �   ) l�  �  $�  �  ��  P D�  < ��  H ��  l ? 4�  ISO8859-1                                                        � 9 , �     �  �          `            |[            �+ �' K   �!Q �          �  <                                         PROGRESS                              �                     � 8                                                             |      4                     �     p                                                        �0     �                    �     �                                                0       L@                         �p     @                                                @       �L     l                    X�     �                                                L       X     �                    �@                                                     X       �g     <                    (�     x                                                g       �s     �                    �     �                                                s       T}                         �x     H                                                }       ��     t                    `�	     �                                                �       $�     �                    �H
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
L�                        �p#     @                                                �      ��    l                   X�$     �                                                �      @�    �+  $   AppProgram,AppURL,HostURL,SelDelim,SelfURL,       �d%     4                                                �        x    `                    L�&     �                                                x        �     
�,   `   ��� ��-        �         �        $-   `   ���, ���    (   �         (        \.   `   ��� ��=�    �   �         T        �/   `   ��\' ����       �         �        �0   `   X�� �X(S    �   X         0        1   `   ��8 P�t4    �   �                  �2   `   ��� ��h       �         �                 comercio                         PROGRESS                         �3 <             ��Z      d�                  �4 <             ��W      �                  05 6<  6           Z1iC      6u�                  h6 @<  @           \_      @�o                    7 x<  x           K�	`      x�X                    > ��+ �[                   >��' �['     pT ��  
    state-less                                                                                                                                                                                                                                                  
              T   h   x   �   �   �   �   �   �   �   �       (  8  H  X  h  x  �      T   h   x   �   �   �   �   �   �   �   �      (  8  H  X  h  x  �                            �  ���������   �       �          �   i     	    ���                                                 	      
                                                                                 �  �  ���������                     �    �          �   i     	    ��	!*2:BJVblv�����                                        �  ���������     �     �          �   i     	    �����                                                 	      
                                                         �  �  ���������                          �    	    �    �    �          �   i     i     i     i     i     i     	 	 	 	 	 	    ���	���%0:DN                                                 	      
                                 �  ���������                             �   i     	    ��dlt}������                                              �  ���������           �    �          �   i  i     i     	 	 	    ������                                                  �  ���	������       �       �          �   i    	 	    ���			+	    ��                     ��                     ��                     ��                    ����                      3 �    4 �    5 �    6 �    7     undefined             h  �[L < �[��             ��\ 	     �0�      O ��    e�      O ��    R�      O ��    ��    convert-datetime       l   �   �     CHARACTER,INPUT p_conversion CHARACTER,INPUT p_idate DATE,INPUT p_itime INTEGER,OUTPUT p_odate DATE,OUTPUT p_otime INTEGER  format-datetime �    4      CHARACTER,INPUT p_format CHARACTER,INPUT p_date DATE,INPUT p_time INTEGER,INPUT p_options CHARACTER get-cgi   �  �      CHARACTER,INPUT p_name CHARACTER    get-field   �( �  � 	     CHARACTER,INPUT p_name CHARACTER    get-value   �4   < #	     CHARACTER,INPUT p_name CHARACTER    get-user-field  (@ `  � -     CHARACTER,INPUT p_name CHARACTER    hidden-field    pL �  � <     CHARACTER,INPUT p_name CHARACTER,INPUT p_value CHARACTER    hidden-field-list   �X   0 I     CHARACTER,INPUT p_name-list CHARACTER   html-encode d X  x [     CHARACTER,INPUT p_in CHARACTER  output-content-type dp �  �	 g     LOGICAL,INPUT p_type CHARACTER  output-http-header  �| �  
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
l(  H �	     LOGICAL,INPUT cName CHARACTER,INPUT cValue CHARACTER    getGlobal   4x�  � �	     CHARACTER,INPUT cName CHARACTER logNote ���  �  �     LOGICAL,INPUT pcLogType CHARACTER,INPUT pcLogText CHARACTER adm-destroy                   �                     �     adm-timing-out  $X                �                          dispatch    h�t       ( �                      j     get-attribute   ��t       ) �                     �     set-attribute-list  � t       * p                     E     T/��   �	          3 ���� ��      3 ��	  $ �����               '           � ߱   ��      3 ��$	  $ �����               '           � ߱     $      3 ��0	  $ �8���               '           � ߱  � �`��  4 ��<	        �          ��             ��       x��       �h�/	��     �	          3 ��d	   ���    4 ���	  O ���  ��	     ��@    4 ���	        H          ��             ��       ��       �h/	�`     �	          3 ���	   �t|    4 ���	  O ���  ��
  � ���    4 ��
  � �<
    \
    '         �
    '         �
    '           � ߱  $ ����        ," >T    4 ��@        \          ��             >M       �2�       >�/At     '          3 ��T�@        x       � ߱    $ D|���        pdf_Font    ���  �! I	     CHARACTER,INPUT pdfStream CHARACTER pdf_FontType    ���  " R	     CHARACTER,INPUT pdfStream CHARACTER pdf_ImageDim     �8  \# _	     INTEGER,INPUT pdfStream CHARACTER,INPUT pdfImage CHARACTER,INPUT pdfDim CHARACTER   pdf_TextX   H��  �$ l		     INTEGER,INPUT pdfStream CHARACTER   pdf_TextY   ���  % v		     INTEGER,INPUT pdfStream CHARACTER   pdf_VerticalSpace    �8  `& �	     DECIMAL,INPUT pdfStream CHARACTER   pdf_PointSize   L��  �' �	     DECIMAL,INPUT pdfStream CHARACTER   pdf_text_width  ���  �( �	     INTEGER,INPUT pdfStream CHARACTER,INPUT pdfText CHARACTER   pdf_text_widthdec   ��,  T) �	     DECIMAL,INPUT pdfStream CHARACTER,INPUT pdfText CHARACTER   pdf_text_widthdec2  @��  �* �	     DECIMAL,INPUT pdfStream CHARACTER,INPUT pdfFontTag CHARACTER,INPUT pdfFontSize DECIMAL,INPUT pdfText CHARACTER  pdf_TextRed �(  H+ �	     DECIMAL,INPUT pdfStream CHARACTER   pdf_TextGreen   4l  �, �	     DECIMAL,INPUT pdfStream CHARACTER   pdf_TextBlue    | �  �- �	     DECIMAL,INPUT pdfStream CHARACTER   pdf_FillRed �,�  . �	     DECIMAL,INPUT pdfStream CHARACTER   pdf_FillGreen   8@  d/ 
     DECIMAL,INPUT pdfStream CHARACTER   pdf_FillBlue    PD�  �0 
     DECIMAL,INPUT pdfStream CHARACTER   pdf_Page    �P�  �1 "
     INTEGER,INPUT pdfStream CHARACTER   pdf_PageWidth   �\  82 +
     INTEGER,INPUT pdfStream CHARACTER   pdf_Pageheight  $h\  �3 9
     INTEGER,INPUT pdfStream CHARACTER   pdf_PageRotate  lt�  �4 H
     INTEGER,INPUT pdfStream CHARACTER   pdf_Angle   ���  5 W
	     INTEGER,INPUT pdfStream CHARACTER   pdf_TopMargin   ��0  T6 a
     INTEGER,INPUT pdfStream CHARACTER   pdf_BottomMargin    @�x  �7 o
     INTEGER,INPUT pdfStream CHARACTER   pdf_GraphicX    ���  �8 �
     DECIMAL,INPUT pdfStream CHARACTER   pdf_GraphicY    ��  09 �
     DECIMAL,INPUT pdfStream CHARACTER   pdf_get_info    �T  x: �
     CHARACTER,INPUT pdfStream CHARACTER,INPUT pdfAttribute CHARACTER    pdf_LeftMargin  d��  �; �
     INTEGER,INPUT pdfStream CHARACTER   pdf_GetNumFittingChars  ��  0< �
     INTEGER,INPUT pdfStream CHARACTER,INPUT pdfText CHARACTER,INPUT pdfFromX INTEGER,INPUT pdfToX INTEGER   pdf_Orientation ��  �= �
     CHARACTER,INPUT pdfStream CHARACTER pdf_PaperType   ���  > �
     CHARACTER,INPUT pdfStream CHARACTER pdf_Render  ��(  H? �

     INTEGER,INPUT pdfStream CHARACTER   pdf_get_wrap_length 4l  �@ �
     INTEGER,INPUT pdfStream CHARACTER,INPUT pdfText CHARACTER,INPUT pdfWidth INTEGER    pdf_TotalPages  ��  A 
     CHARACTER,INPUT pdfStream CHARACTER pdf_PageFooter  �0  TB      LOGICAL,INPUT pdfStream CHARACTER,INPUT pdfProcHandle HANDLE,INPUT pdfFooterProc CHARACTER  pdf_PageHeader  @(�  �C (     LOGICAL,INPUT pdfStream CHARACTER,INPUT pdfProcHandle HANDLE,INPUT pdfHeaderProc CHARACTER  pdf_LastProcedure   �40  XD 7     LOGICAL,INPUT pdfStream CHARACTER,INPUT pdfProcHandle HANDLE,INPUT pdfHeaderProc CHARACTER  pdf_get_tool_parameter  D@�  �E I     CHARACTER,INPUT pdfStream CHARACTER,INPUT pdfToolName CHARACTER,INPUT pdfToolParam CHARACTER,INPUT pdfToolCol INTEGER   pdf_get_parameter   �LX  �F `     CHARACTER,INPUT pdfStream CHARACTER,INPUT pdfParameter CHARACTER    pdf_Font_Loaded lX�  �G r     LOGICAL,INPUT pdfStream CHARACTER,INPUT pdfFont CHARACTER   GetXMLNodeValue �d$  HH �     CHARACTER,INPUT pParent CHARACTER,INPUT pNode CHARACTER pdf_text_fontwidth  4p�  �I �     DECIMAL,INPUT pdfStream CHARACTER,INPUT pdfFont CHARACTER,INPUT pdfText CHARACTER   pdf_text_fontwidth2 �|�  $J �     DECIMAL,INPUT pdfStream CHARACTER,INPUT pdfFont CHARACTER,INPUT pdfFontSize DECIMAL,INPUT pdfText CHARACTER pdf_get_pdf_info    ��  �K �     CHARACTER,INPUT pdfSTREAM CHARACTER,INPUT pdfID CHARACTER,INPUT pInfo CHARACTER CompressBuffer  ��   , L �     INTEGER,INPUT InputBuffer MEMPTR,INPUT-OUTPUT OutputBuffer MEMPTR,OUTPUT OutputSize INTEGER DeCompressBuffer     ��   � M �     INTEGER,INPUT InputBuffer MEMPTR,OUTPUT OutputBuffer MEMPTR,OUTPUT OutputSize INTEGER   CompressFile    � �!  ,!N �     LOGICAL,INPUT InputFile CHARACTER,INPUT OutputFile CHARACTER    DeCompressFile  !�l!  �!O �     LOGICAL,INPUT InputFile CHARACTER,INPUT OutputFile CHARACTER    PDFendecrypt    |!��!  �!P      LOGICAL,INPUT BufferPtr MEMPTR,INPUT PasswordPtr MEMPTR �"A     3 t" ��       d"0                           � � �         �"�"                (     �          �" �"[ �"#    4 ��|        #          ��             �  	     ,-�       �"�#A     4 T# ��       L#                             �         �#|#       �       �     �          d# p#�#$ �#���        �    '           � ߱  $/	�#   �#P          3 ��<�# �#        3 ��\   $        3 ��d@$/$$   ,$�          3 ���   8$        3 ����$/X$   `$�          3 ���t$ l$        3 ����$ �$        3 ���   �$        3 ����$/�$   �$          3 ����$ �$        3 �� �$ �$        3 ��(   �$        3 ��0,%/%   %\          3 ��D   $%        3 ��h�%/D%   L%�          3 ��p`% X%        3 ���t% l%        3 ���   �%        3 ����%/�%   �%�          3 ����% �%        3 ����% �%        3 ���   �%        3 ���&/�%   &          3 ��   &        3 ��(t&/0&   8&H          3 ��0L& D&        3 ��T`& X&        3 ��\   l&        3 ��d�&/�&   �&�          3 ��x   �&        3 ����&/�&   �&�          3 ���   �&        3 ���8'/�&   �&�          3 ���' '        3 ���$' '        3 ��    0'        3 ���'/P'   X'4          3 ��l' d'        3 ��@�' x'        3 ��H   �'        3 ��P�'/�'   �'�          3 ��d�' �'        3 ����' �'        3 ���   �'        3 ���`(/(   (�          3 ���$( (        3 ���8( 0(        3 ���L( D(        3 ���   X(        3 ���(/x(   �(<          3 �� �( �(        3 ��H�( �(        3 ��P�( �(        3 ��d   �(        3 ��xh)/�(   �(�          3 ���) �(        3 ���) )        3 ���,) $)        3 ���@) 8)        3 ���T) L)        3 ���   `)        3 �� */ �)   �)4          3 ���) �)        3 ��@�) �)        3 ��H�) �)        3 ��\�) �)        3 ��p�) �)        3 ���   �)        3 ����*/!*    *�          3 ���4* ,*        3 ���H* @*        3 ���\* T*        3 ���p* h*        3 �� �* |*        3 ��   �*        3 ��(0+/"�*   �*T          3 ��<�* �*        3 ��`�* �*        3 ��h�* �*        3 ��|+  +        3 ���+ +        3 ���   (+        3 ����+/#H+   P+�          3 ���d+ \+        3 ���x+ p+        3 ����+ �+        3 ���+ �+        3 �� �+ �+        3 ��4   �+        3 ��H`,/%�+   �+t          3 ��\�+ �+        3 ���, ,        3 ���$, ,        3 ���8, 0,        3 ���L, D,        3 ���   X,        3 ����,/&x,   �,          3 ����, �,        3 ���, �,        3 ���, �,        3 ��,�, �,        3 ��@�, �,        3 ��T   �,        3 ��h�-/'-   -�          3 ��|,- $-        3 ���@- 8-        3 ���T- L-        3 ���h- `-        3 ���|- t-        3 ���   �-        3 ����-/)�-   �-$          3 ��   �-        3 ��0�-/*�-   �-P          3 ��8   �-        3 ��\,./+.   .|          3 ��d   $.        3 ���`./,D.   L.�          3 ���   X.        3 ����.//x.   �.�          3 ����. �.        3 ����. �.        3 ���   �.        3 ���//0�.   �.          3 ���. �.        3 ��(/ �.        3 ��0   /        3 ��8t//10/   8/d          3 ��LL/ D/        3 ��p`/ X/        3 ��x   l/        3 ����//2�/   �/�          3 ����/ �/        3 ����/ �/        3 ���   �/        3 ���,0/3�/   �/�          3 ���0 �/        3 �� 0 0        3 ��   $0        3 ���0/5D0   L0@          3 ��$`0 X0        3 ��Lt0 l0        3 ��T   �0        3 ��\�0/7�0   �0�          3 ��p   �0        3 ����0/8�0   �0�          3 ���   �0        3 ���L1/:1   1�          3 ���$1 1        3 ���81 01        3 ���   D1        3 ���1/;d1   l1<          3 ��$�1 x1        3 ��H�1 �1        3 ��P   �1        3 ��d2/<�1   �1�          3 ��x�1 �1        3 ����1 �1        3 ���   �1        3 ���`2/=2   $2�          3 ���82 02        3 ���L2 D2        3 ��    X2        3 ��P�2/?x2   �2|          3 ��d   �2        3 ����2/@�2   �2�          3 ���   �2        3 ���$3/B�2   �2�          3 ����2 �2        3 ���3 3        3 ���   3        3 ����3/D<3   D3           3 ��X3 P3        3 ��,l3 d3        3 ��4   x3        3 ��<�3/E�3   �3h          3 ��P�3 �3        3 ��t�3 �3        3 ��|   �3        3 ���84/F�3   �3�          3 ���4 4        3 ���$4 4        3 ���   04        3 ����4/GP4   X4�          3 ���l4 d4        3 ���4 x4        3 ��   �4        3 ���4/I�4   �4@          3 ��(   �4        3 ��L$5/K�4   �4p          3 ��T�4 �4        3 ��|5 5        3 ���   5        3 ����5/M<5   D5�          3 ���X5 P5        3 ���l5 d5        3 ���   x5        3 ����5/N�5   �5          3 ����5 �5        3 ���5 �5        3 ��    �5        3 ��4H    ' 	     	     � ߱  6$ P�5���        h6/Q$6   ,6�          3 ���@6 86        3 ���T6 L6        3 ��    `6        3 �� �6/S�6   �6<           3 ��$    �6        3 ��H �6/T�6   �6h           3 ��P    �6        3 ��t 7/U�6   �6�           3 ��|    �6        3 ��� `7/X7   $7�           3 ��� 87 07        3 ��� L7 D7        3 ���    X7        3 ��!�7/Yx7   �7D!          3 ��,!   �7        3 ��P!�7/Z�7   �7p!          3 ��X!   �7        3 ��|!$8/[�7   �7�!          3 ���!�7 �7        3 ���!8 8        3 ���!   8        3 ���!X8/\<8   D8"          3 ���!   P8        3 ��"�8/]p8   x8<"          3 ��$"   �8        3 ��H"�8/^�8   �8h"          3 ��P"�8 �8        3 ��t"�8 �8        3 ��|"   �8        3 ���"9/` 9   9�"          3 ���"   9        3 ���"P9/a49   <9�"          3 ���"   H9        3 ���"�9/bh9   p9#          3 ���"   |9        3 ��#�9/c�9   �94#          3 ��#   �9        3 ��@#:/e�9   �9`#          3 ��H#�9 �9        3 ��l# : �9        3 ��t#   :        3 ��|#H:/g,:   4:�#          3 ���#   @:        3 ���#|:/h`:   h:�#          3 ���#   t:        3 ���#�:/j�:   �: $          3 ���#�: �:        3 ��$�: �:        3 ��$   �:        3 ��$4;/k�:   �:H$          3 ��0$; ;        3 ��T$ ; ;        3 ��\$   ,;        3 ���$h;/mL;   T;�$          3 ���$   `;        3 ���$�;/n�;   �;�$          3 ���$   �;        3 ���$</p�;   �;%          3 ���$�; �;        3 ��%�; �;        3 �� %�; �;        3 ��4%   <        3 ��H%|</q$<   ,<x%          3 ��\%@< 8<        3 ���%T< L<        3 ���%h< `<        3 ���%   t<        3 ���%=/s�<   �<�%          3 ���%�< �<        3 ���%�< �<        3 ���%�< �<        3 ��&�< �<        3 ��& = �<        3 ��0&   =        3 ��D&H=/u,=   4=p&          3 ��X&   @=        3 ��|&|=/v`=   h=�&          3 ���&   t=        3 ���&�=/w�=   �=�&          3 ���&   �=        3 ���&>/y�=   �=�&          3 ���&�= �=        3 ��'�= �=        3 ��'   >        3 ��'h>/{$>   ,>@'          3 ��('@> 8>        3 ��L'T> L>        3 ��T'   `>        3 ��\'�>/|�>   �>�'          3 ��p'�> �>        3 ���'�> �>        3 ���'   �>        3 ���' ?/}�>   �>�'          3 ���'�> �>        3 ���'? ?        3 ���'   ?        3 ���'|?/~8?   @?(          3 �� (T? L?        3 ��$(h? `?        3 ��,(   t?        3 ��4(�?/��?   �?`(          3 ��H(   �?        3 ��l(�?/��?   �?�(          3 ��t(   �?        3 ���(@/��?   @�(          3 ���(   @        3 ���(�@/�0@   8@�(          3 ���(L@ D@        3 ���(`@ X@        3 �� )t@ l@        3 ��)   �@        3 ��()�@/��@   �@X)          3 ��<)�@ �@        3 ��d)�@ �@        3 ��l)�@ �@        3 ���)   �@        3 ���)�A/�A   A�)          3 ���),A $A        3 ���)@A 8A        3 ���)TA LA        3 ���)hA `A        3 ���)|A tA        3 ��*   �A        3 ��$*(B/��A   �AP*          3 ��8*�A �A        3 ��\*�A �A        3 ��d*�A �A        3 ��x* B �A        3 ���*B B        3 ���*    B        3 ���*�B/�@B   HB�*          3 ���*\B TB        3 ���*pB hB        3 ���*�B |B        3 ��+�B �B        3 ��+�B �B        3 ��0+   �B        3 ��D+XC/��B   �Bp+          3 ��X+�B �B        3 ��|+C  C        3 ���+C C        3 ���+0C (C        3 ���+DC <C        3 ���+   PC        3 ���+�C/�pC   xC ,          3 ���+�C �C        3 ��,�C �C        3 ��,�C �C        3 ��(,�C �C        3 ��<,�C �C        3 ��P,   �C        3 ��d,�D/�D   D�,          3 ��x,$D D        3 ���,8D 0D        3 ���,LD DD        3 ���,`D XD        3 ���,tD lD        3 ���,   �D        3 ���, E/��D   �D -          3 ��-�D �D        3 ��,-�D �D        3 ��4-�D �D        3 ��H-�D �D        3 ��\-E E        3 ��p-   E        3 ���-�E/�8E   @E�-          3 ���-TE LE        3 ���-hE `E        3 ���-|E tE        3 ���-�E �E        3 ���-�E �E        3 �� .   �E        3 ��.DF/��E   �ED.          3 ��(.�E �E        3 ��P. F �E        3 ��X.   F        3 ��`.t.    +         �.    +           � ߱  �F$ �F���            �F  �G  �\�G�G�\��             ���G      ��    `J �XF   �F�F  ��                  7 ��    5    ��               �      (G            6 �     5 LG ��       DG    �      (G                                         �.         �GtG       �.       �.     �          \G hG  O ��  e�      O ��  R�      O ��  ��    <HA �    6 �G ��       �G                            �.         0H$H       �.       �.     �          H H�H/�TH   \H�.          3 ���.pH hH        3 ���.�H |H        3 �� /   �H        3 ��p/�H/��H   �H�/          3 ���/�H �H        3 ���/�H �H        3 ���/   �H        3 ���/PI/�I   I0          3 ���/(I  I        3 ��0<I 4I        3 ��0   HI        3 ��H0�I/�hI   pIt0          3 ��\0�I |I        3 ���0�I �I        3 ���0   �I        3 ���0J/��I   �I�0          3 ���0   �I        3 ���0�0    +         1    +           � ߱    $ ��I���          hJ  �J K    �J�J  ��     0       ���J     ���    pK �$J  $ �|J���        <1    +           � ߱  �J$ ��J���        l1    +           � ߱    4 ���1  O ��  e�      O ��  R�      O ��  ��      /�K    K�1          3 ���1   ,K        3 ���1    xK  �L  �\�LxL�\��             ���L     ���    �L �4K   �K�K  ��                  7 ��    7    ��           P2  �      L            6 �     7 0L ��        LP2  �      L                                         �1 2 2         lL`L        202@2       (282H2     �          @L PL  O ��  e�      O ��  R�      O ��  ��    �2    '           � ߱    $ ��L���        4M/��L   �L�2          3 ���2M M        3 ���2 M M        3 ���2   ,M        3 ���2�T �@M�M�Q  4 ��3        �M          ��             ��       �E�       �HM�M/��M   �M@3          3 ��(3�M �M        3 ��L3�M �M        3 ��T3   �M        3 ��\3DN/� N   N�3          3 ��p3N N        3 ���30N (N        3 ���3   <N        3 ���3xN/�\N   dN$4          3 ��4   pN        3 ��04�N/��N   �NP4          3 ��84�N �N        3 ��\4�N �N        3 ��d4   �N        3 ��l40O/��N   �N�4          3 ���4O  O        3 ���4O O        3 ���4   (O        3 ���4dO/�HO   PO5          3 ���4   \O        3 ��5�O/�|O   �O05          3 ��5�O �O        3 ��<5�O �O        3 ��D5   �O        3 ��x5P ��O�O    4 ���5�5    '           � ߱    $ ��O���        `P/�P   $P86          3 �� 68P 0P        3 ��D6LP DP        3 ��L6   XP        3 ��x6�P/�xP   �P�6          3 ���6   �P        3 ���6�P/��P   �P�6          3 ���6�P �P        3 ���6�P �P        3 ���6   �P        3 ���6  /�Q   Q7          3 �� 7$Q Q        3 ��$78Q 0Q        3 ��,7   DQ        3 ��X7	        �Q          ��             ��  	      ��       �LQ�Q/��Q   �Q�7          3 ��l7   �Q        3 ���7 R/��Q   �Q�7          3 ���7�Q �Q        3 ���7R R        3 ���7   R        3 ���7|R/�8R   @R�7          3 ���7TR LR        3 ��8hR `R        3 ��8   tR        3 ��88�R/��R   �Rd8          3 ��L8   �R        3 ��p8S/��R   �R�8          3 ��x8�R �R        3 ���8�R �R        3 ���8   S        3 ���8PS �S<S    4 ���89    '           � ߱    $ � S���        �S/�hS   pS�9          3 ��l9�S |S        3 ���9�S �S        3 ���9   �S        3 ���9�S/��S   �S�9          3 ���9   �S        3 ���9<T/��S    T:          3 ��:T T        3 ��(:(T  T        3 ��0:   4T        3 ��8:  /�TT   \Td:          3 ��L:pT hT        3 ��p:�T |T        3 ��x:   �T        3 ���:�T/��T   �T�:          3 ���:�T �T        3 ���:�T �T        3 ���:   �T        3 ���:(U/�U   U;          3 ��;    U        3 ��(;\U/�@U   HUH;          3 ��0;   TU        3 ��T;�U/�tU   |Ut;          3 ��\;   �U        3 ���;�U/��U   �U�;          3 ���;�U �U        3 ���;�U �U        3 ���;   �U        3 ���;HV/�V   V<          3 ���; V V        3 ��<4V ,V        3 ��<   @V        3 �� <�V/�`V   hVL<          3 ��4<|V tV        3 ��X<�V �V        3 ��`<   �V        3 ���<�V/��V   �V�<          3 ���<   �V        3 ��=4W/��V   �V(=          3 ��=W W        3 ��4= W W        3 ��<=   ,W        3 ��D=hW/�LW   TWp=          3 ��X=   `W        3 ��|=PX �tW|W�W  4 ���=  /��W   �W�=          3 ���=�W �W        3 ���=�W �W        3 ���=   �W        3 ���=  /��W   �W(>          3 ��>X X        3 ��4> X X        3 ��<>   ,X        3 ��D>X>    ' 
     
     � ߱  dX$ �4X���        �X/�|X   �X�>          3 ��t>   �X        3 ���>�X/��X   �X�>          3 ���>   �X        3 ���> Y/��X   �X�>          3 ���>   �X        3 ���>4Y/�Y    Y?          3 ���>   ,Y        3 ��?�Y/�LY   TY<?          3 ��$?hY `Y        3 ��H?|Y tY        3 ��P?   �Y        3 ��l?�Y/��Y   �Y�?          3 ���?   �Y        3 ���?�Y/��Y   �Y�?          3 ���?   �Y        3 ���?TZ/�Z   Z�?          3 ���?,Z $Z        3 ���?@Z 8Z        3 ��@   LZ        3 ��0@�Z/�lZ   tZ\@          3 ��D@   �Z        3 ��h@�Z/��Z   �Z�@          3 ��p@   �Z        3 ���@  /��Z   �Z�@          3 ���@�Z �Z        3 ���@[ �Z        3 ���@   [        3 ���@L[/�0[   8[ A          3 ��A   D[        3 ��,A  Q �X[    4A            local-e4gl-options  4h[t       8 �    <                  8�     �   �         �     �   
state-less          �o       �  \8 ��2 \8 ��2 \8 ��1 \8 ��1  \8 ��0 (\8 ��0 0\8 ��/ 8\8 ��/ @\8 ��. H\8 ��. P\8 ��- X\8 ��- `\8 ��, h\8 ��, p\8 ��4 x\8 ��4   8 ��3   8 ��3 �\8 ��6 �\8 ��6   8 ��5   8 ��5   8 ��7   8 ��7     
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
�    %      Web-State = Timed-Out �8    " (  r�� F    " (     %              %       ����    T   %              � %              � K 0 P       " (          � M " (  �"4    S         � M " (     �     }    �%                    � M " (  �  0 P       " (          � F " (  �"4    S         � F " (     �     }    �%                    � F " (  �  " (     
�        �  � T	 % 	    ADM-ERROR "�     }    �@ @   $    �    }    �%              %       Q    	 $    �    }    �%              %       8     %     dispatch ��
" "   
   %     show-errors % 	    ADM-ERROR "%               " )     � � %               � � %      WEB1.0  � �	 " '     � �      " '     � � " '     � � %     get-time-remaining 
" "   
   
�    " )          " )     %      special-get-attribute �
�    " )      �     }    ��  %              " )         %              %                   " *     %                  " *     �     " *     T    " *     " *  �"        " *     �  %               � & %      
       " *     %      
       � B �     }    �Az`       8 " *  �  %                      " *  C��  %              z`      8  " *  �           " *  ���  %              %       ����    " *     � � ! " *     � �	 " *     � � " *     %      special-set-attribute �
�    " *     " *     %     local-e4gl-options 
�    " '     " '     " '     8    �    }    �� � � �	 %     output-header   
�    �     }    �%               8    �    }    �� � � �	 %     output-headers  
�    �     }    �%                A    " '  ��� � �	              " '  �"�  $ � �  G %       	       z     �              � � �  $ � �  G %       	       z     �              � � �  $ � �  G %       	       z     �              � �  � 
" '  
s�% 	    pdf_inc.p �
" '  
r��      l  �@� 7	 
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
    " '      " '      " '     &    &    &    &    &    &    0        %              %              %              * 3   " 3     &    &     �     h     D     4              � ( � +      " 4     � +     " 3     � -     " 3     � 2 � 5 %      pdf_new 
" '  
   � :      � ? " '     %     pdf_new_Page    
" '  
   � Q %     pdf_set_font    
" '  
   � Q � V %           %     pdf_text_at 
" '  
   � Q � e %              %     pdf_skip ��
" '  
   � Q %     pdf_set_font    
" '  
   � Q � }	 %           %     pdf_text_at 
" '  
   � Q � � %             %     pdf_skip ��
" '  
   � Q %     pdf_text_at 
" '  
   � Q � � %              %     pdf_skip ��
" '  
   � Q %     pdf_skip ��
" '  
   � Q %     pdf_set_font    
" '  
   � Q � � %            %     pdf_text_at 
" '  
   � Q � � %              %     pdf_set_font    
" '  
   � Q � � %            %     pdf_stroke_color �"
" '  
   � : %              %              %              %     pdf_stroke_fill 
" '  
   � : %            %            %            %     pdf_rect ��
" '  
   � Q %              %       v      %       F       %       $      %          %     pdf_rect ��
" '  
   � Q %       Z       %       v      %       �       %       $      %          %     pdf_rect ��
" '  
   � Q %       �       %       v      %       �       %       $      %          %     pdf_rect ��
" '  
   � Q %       r      %       v      %       �       %       $      %          %     pdf_rect ��
" '  
   � Q %       �      %       v      %       F       %       $      %          %     pdf_rect ��
" '  
   � Q %              %       R     %       F       %       $      %          %     pdf_rect ��
" '  
   � Q %       Z       %       R     %       @      %       $      %          %     pdf_rect ��
" '  
   � Q %       �      %       R     %       �       %       $      %          %     pdf_skip ��
" '  
   � Q %     pdf_skip ��
" '  
   � Q %     pdf_skip ��
" '  
   � Q %     pdf_skip ��
" '  
   � Q %     pdf_text_at 
" '  
   � Q � � %              %     pdf_text_at 
" '  
   � Q � � %       (       %     pdf_text_at 
" '  
   � Q � � %       d       %     pdf_text_at 
" '  
   � Q � � %       �       %     pdf_text_at 
" '  
   � Q � � %       �      %     pdf_set_font    
" '  
   � Q � }	 %            %     pdf_skip ��
" '  
   � Q %     pdf_skip ��
" '  
   � Q %     pdf_text_at 
" '  
   � Q     " 3     �   %       	       %     pdf_text_at 
" '  
   � Q      " 4     %             %     pdf_text_at 
" '  
   � Q     " 4     �  %       �      %     pdf_text_at 
" '  
   � Q  ,             " 3     � - �      " 3     � 2 %       �      %     pdf_skip ��
" '  
   � Q %     pdf_skip ��
" '  
   � Q %     pdf_set_font    
" '  
   � Q � � %            %     pdf_text_at 
" '  
   � Q �  %       	       %     pdf_text_at 
" '  
   � Q � 	 %       2       %     pdf_text_at 
" '  
   � Q � )	 %       s      %     pdf_text_at 
" '  
   � Q � 3 %       �      %     pdf_skip ��
" '  
   � Q %     pdf_set_font    
" '  
   � Q � }	 %            %     pdf_text_at 
" '  
   � Q      " 3     %       	       %     pdf_text_at 
" '  
   � Q      " 4 	    %              h      X     0                " 4     � 2 � E      " 4     � 2 � E      " 4     � - %     pdf_text_at 
" '  
   � Q " ' 	    %       �      %     pdf_skip ��
" '  
   � Q %     pdf_skip ��
" '  
   � Q %     pdf_skip ��
" '  
   � Q %     pdf_text_at 
" '  
   � Q  4      $   � G U    � X %       �       � Z %              %     pdf_skip ��
" '  
   � Q %     pdf_skip ��
" '  
   � Q %     pdf_text_at 
" '  
   � Q  $    U    � X %       n       � m4 %              %     pdf_skip ��
" '  
   � Q %     pdf_skip ��
" '  
   � Q %     pdf_text_at 
" '  
   � Q � �P %              %     pdf_skip ��
" '  
   � Q %     pdf_skip ��
" '  
   � Q %     pdf_skip ��
" '  
   � Q %     pdf_skip ��
" '  
   � Q %     pdf_text_at 
" '  
   � Q � � %       �      %     pdf_skip ��
" '  
   � Q %     pdf_skip ��
" '  
   � Q %     pdf_text_at 
" '  
   � Q � �
 %       n       %     pdf_text_at 
" '  
   � Q U    �  %              %       �      %     pdf_skip ��
" '  
   � Q %     pdf_skip ��
" '  
   � Q %     pdf_stroke_color �"
" '  
   � : %              %              %              %     pdf_stroke_fill 
" '  
   � : %            %            %            %     pdf_rect ��
" '  
   � Q %              %       �      %       0      %       $      %          %     pdf_skip ��
" '  
   � Q %     pdf_skip ��
" '  
   � Q %     pdf_skip ��
" '  
   � Q %     pdf_set_font    
" '  
   � Q � � %            %     pdf_text_at 
" '  
   � Q �  %              %     pdf_text_at 
" '  
   � Q �  %       U      %     pdf_text_at 
" '  
   � Q �  %       s      %     pdf_text_at 
" '  
   � Q � . %       �      %     pdf_skip ��
" '  
   � Q %     pdf_skip ��
" '  
   � Q %     pdf_skip ��
" '  
   � Q %     pdf_stroke_color �"
" '  
   � : %              %              %              %     pdf_stroke_fill 
" '  
   � : %            %            %            %     pdf_rect ��
" '  
   � Q %              %       4     %       �       %       f      %          %     pdf_rect ��
" '  
   � Q %       �       %       4     %       F       %       f      %          %     pdf_rect ��
" '  
   � Q %       ,      %       4     %       �       %       f      %          %     pdf_rect ��
" '  
   � Q %       �      %       4     %       �       %       f      %          %     pdf_rect ��
" '  
   � Q %              %       �      %             %       4      %          %     pdf_rect ��
" '  
   � Q %       ,      %       �      %       �       %       4      %          %     pdf_rect ��
" '  
   � Q %       �      %       �      %       �       %       4      %          %     pdf_rect ��
" '  
   � Q %       ,      %       �      %             %              %          %     pdf_set_font    
" '  
   � Q � }	 %            %               %               " 3  �  &    &    " 5     &    &    %     pdf_text_at 
" '  
   � Q  , <            " 5     � G � N    " 6     %              %          	   %              %     pdf_text_at 
" '  
   � Q          " 6     � R � _ %       P       %     pdf_text_at 
" '  
   � Q      � d     " 5     � g %       x       %     pdf_text_at 
" '  
   � Q      � d     " 5     � g %       �      %     pdf_skip ��
" '  
   � Q      " +     " 5          " +     %                  %              %                   " +     %               (   " +         %              " +     %     pdf_skip ��
" '  
   � Q " 3     " 3     " 3     &    &    &    &    &    &    0        %              %              %                   " '     " 7     %     pdf_set_font    
" '  
   � Q � }	 %                " +     " 3     %     pdf_text_at 
" '  
   � Q � � %              %     pdf_text_at 
" '  
   � Q   L   � d <             " 3     " +     %              � g %       �      %     pdf_skip ��
" '  
   � Q %     pdf_text_at 
" '  
   � Q � � %              %     pdf_text_at 
" '  
   � Q      � d     " '  ��� g %       �      %     pdf_skip ��
" '  
   � Q %     pdf_text_at 
" '  
   � Q  $         � �      " 4     � � %                  " 4     %               P    4             " 3     " +     " 4     %       d       %              %     pdf_text_at 
" '  
   � Q      � d     " '  ��� g %       �      %     pdf_skip ��
" '  
   � Q %     pdf_text_at 
" '  
   � Q � � %              %     pdf_text_at 
" '  
   � Q      � d     " '  ��� g %       �      %     pdf_skip ��
" '  
   � Q %     pdf_text_at 
" '  
   � Q � � %              %     pdf_text_at 
" '  
   � Q      � d     " '  ��� g %       �      %     pdf_skip ��
" '  
   � Q %     pdf_text_at 
" '  
   � Q  $         � �      " 4     � � %                  " 4     %               <             " +     " 4     %       d       %              %     pdf_text_at 
" '  
   � Q      � d     " '  ��� g %       �      %     pdf_skip ��
" '  
   � Q %     pdf_text_at 
" '  
   � Q � � %              %     pdf_text_at 
" '  
   � Q      � d     " '  ��� g %       �      %     pdf_set_font    
" '  
   � Q � � %            %     pdf_skip ��
" '  
   � Q %     pdf_skip ��
" '  
   � Q %     pdf_skip ��
" '  
   � Q %     pdf_text_at 
" '  
   � Q      � �      " 4     %              %     pdf_text_at 
" '  
   � Q � � %       x       %     pdf_text_at 
" '  
   � Q   `   � d P    4               " +  s�" '     " '  E�%              � g %       �      %     pdf_skip ��
" '  
   � Q %     pdf_text_at 
" '  
   � Q � � %              %     pdf_skip ��
" '  
   � Q  " 4     %     pdf_text_at 
" '  
   � Q           � �0 � d     " 3     � R %              %     pdf_text_at 
" '  
   � Q �  %                  " 3     � $
 %     pdf_skip ��
" '  
   � Q %     pdf_skip ��
" '  
   � Q %     pdf_skip ��
" '  
   � Q %     pdf_skip ��
" '  
   � Q %     pdf_text_at 
" '  
   � Q      � / " ' 
    %              %     pdf_skip ��
" '  
   � Q %     pdf_skip ��
" '  
   � Q %     pdf_text_at 
" '  
   � Q      � =     " 3     � $
 %              %     pdf_skip ��
" '  
   � Q %     pdf_skip ��
" '  
   � Q %     pdf_text_at 
" '  
   � Q      � Q     " 3     � $
 %              % 	    pdf_Close �
" '  
   � Q  �     �     |     l     X     H     8     (         � ^ G %       {      � ` � �  � p
 " '  �"� { � �  � � � �           l     L <   ��            
\       ���      O ��    e�      O ��    R�      O ��    ��       x �     4 ���  � �  ��                    ����                              l     L <   ��             \       T��      O ��    e�      O ��    R�      O ��    ��      /�    � �          3 ���   �         3 ���  ��                    ����                              �     L <   ��            &e\      ���      O ��    e�      O ��    R�      O ��    ��    , (       l    �  7� �     4 ���  $ 8� ���            (           � ߱  L    (           � ߱  � $ 9� ���        | ; 8  4 ���  $ @���            (           � ߱     KDL    4 ��,  $ N`���        �    (           � ߱  �/	Q�     �          3 ���� T��    4 ���  O T��  ���  � V�    4 ��                  ��             Vb       4�       V�   [$h    4 ��         p          ��             ^a       ��       ^,�/_�   ��          3 ���   �        3 ���  O `��  ���    O d��  ���    >��(        �,                                                     (     ��                    ����                              �     L <   ��            l�\      |�      O ��    e�      O ��    R�      O ��    ��    s )       l    �p y� ��  � �    $ z� ���        $    )           � ߱   �  8  $ {� ���        @    )           � ߱  8 T  $ |���        \    )           � ߱  p@ h  $ }T���        p    )           � ߱  �x �  $ ~����        �    )           � ߱    � �        �          ��             �       ���       �l/�   �          3 ���(          3 ���   4<      3 ���  $ �P���               )           � ߱    $ �����        �    )           � ߱          �          ��             ��       ��       ��/	��              3 ���           3 ��    � (X  4 ��,  $ �<���        @    )           � ߱    $ �l���        D    )           � ߱    O ���  ��X    >��)      �� �@                                                      0              0      )     ��                    ����                              �     L <   ��            ��\      ��      O ��    e�      O ��    R�      O ��    ��    � *       l      �   � ,          ��      0       ��       h��       ��   $ �� ���        d    *           � ߱  $$ ����        �    *           � ߱    4 ���\$ �@���        �    *           � ߱   �h�    4 ��        �          ��             ��       ���       �p 	��                  �3 ��<�3 ��D�3 ��X�3 ��d�3 ��x  3 ���  O ��� ��    @$ �$���        �    *           � ߱  p$ �T���        �    *           � ߱    p �`�(�  �� l  $�����        t    '           � ߱  �� �  $ �����        �    '           � ߱    � �  $ ����        �    '           � ߱    /	�@   H�          3 ���\ T        3 ���   h        3 ���  >��*      �� �h                                                                               (   8   H   X          (   8   H   X          *     ��                    ����                                    L <   ��            \        �      O ��    e�      O ��    R�      O ��    ��    � 8  �    l    � 8  �    �    � 8       �      >��8      �  � H              
    web-object  	    text/html �          4              4   �/
web-object	text/html   8     ��                    ����                    TXS WebStream GATEWAY_INTERFACE SERVER_SOFTWARE SERVER_PROTOCOL SERVER_NAME SERVER_PORT REQUEST_METHOD SCRIPT_NAME PATH_INFO PATH_TRANSLATED QUERY_STRING REMOTE_ADDR REMOTE_HOST REMOTE_IDENT REMOTE_USER AUTH_TYPE CONTENT_TYPE CONTENT_LENGTH HTTP_ACCEPT HTTP_COOKIE HTTP_REFERER HTTP_USER_AGENT HTTPS AppProgram AppURL SelfURL HostURL CookiePath RootURL useConnID CookieDomain SelDelim , output-content-type http-newline 
 utc-offset web-utilities-hdl debug-options debugging-enabled MiscVarList CONVERT-DATETIME FORMAT-DATETIME GET-CGI GET-FIELD GET-VALUE GET-USER-FIELD HIDDEN-FIELD HIDDEN-FIELD-LIST HTML-ENCODE OUTPUT-CONTENT-TYPE OUTPUT-HTTP-HEADER SET-USER-FIELD SET-WSEU-COOKIE URL-DECODE URL-ENCODE URL-FIELD URL-FIELD-LIST URL-FORMAT DELETE-COOKIE GET-COOKIE SET-COOKIE AVAILABLE-MESSAGES GET-MESSAGES GET-MESSAGE-GROUPS OUTPUT-MESSAGES QUEUE-MESSAGE CHECK-AGENT-MODE GET-CONFIG gscSessionId SETSESSION GETSESSION SETGLOBAL GETGLOBAL LOGNOTE adm-web-state adm-web-timeout adm-web-tohdlr adm-web-time-remaining ADM-DESTROY Web-State = Timed-Out ADM-TIMING-OUT p-method-name caller-name adm-   local- ADM-ERROR show-errors DISPATCH p_attr-name attr-value p_period Type  Version WEB1.0 Web-State Web-Timeout Web-Timeout-Handler Web-Time-Remaining GET-ATTRIBUTE p-attr-list cntr attr-name attr-entry = Invalid element in set-attribute call: in SET-ATTRIBUTE-LIST e4gl-version e4gl-options e4gl-content-type output-header PROCEDURE output-headers no-content-type Barcode wBarra CodeBar sumador secuencia parte digito v-posicion v-barcode WTOTAL WPAGO WVENCIMIENTO wfecha wfecvto WDIA2 WMES2 WANIO2 WCantidad K winteres wtiempo wpunitorio p-total wpublicidad wFOPROSI nombreArchivoPDF inscripcion anio periodo  inscripcion anio periodo h_PDFinc TT_pdf_ext obj_stream pdf_id pdf_name TT_Font obj_id gen_id page_id desc_obj desc_gen enc_obj enc_gen uni_obj uni_gen descend_obj descend_gen file2_obj file2_gen file3_obj file3_gen font_name font_tag font_width font_base TT_Info info_name info_value info_extra TT_Object obj_ptr obj_seq obj_type Rotate obj_Media1 obj_Media2 obj_Media3 obj_Media4 obj_Crop1 obj_Crop2 obj_Crop3 obj_Crop4 TT_Resource par_obj par_gen res_type res_obj res_gen res_len res_text res_old new_obj new_gen TT_pdf_xml xml_parent xml_pnode xml_node xml_value xml_seq TT_Widget widget_type widget_name widget_rect widget_disp widget_page Persistent PDFinc PDF_FONT PDF_FONTTYPE PDF_IMAGEDIM PDF_TEXTX PDF_TEXTY PDF_VERTICALSPACE PDF_POINTSIZE PDF_TEXT_WIDTH PDF_TEXT_WIDTHDEC PDF_TEXT_WIDTHDEC2 PDF_TEXTRED PDF_TEXTGREEN PDF_TEXTBLUE PDF_FILLRED PDF_FILLGREEN PDF_FILLBLUE PDF_PAGE PDF_PAGEWIDTH PDF_PAGEHEIGHT PDF_PAGEROTATE PDF_ANGLE PDF_TOPMARGIN PDF_BOTTOMMARGIN PDF_GRAPHICX PDF_GRAPHICY PDF_GET_INFO PDF_LEFTMARGIN PDF_GETNUMFITTINGCHARS PDF_ORIENTATION PDF_PAPERTYPE PDF_RENDER PDF_GET_WRAP_LENGTH PDF_TOTALPAGES PDF_PAGEFOOTER PDF_PAGEHEADER PDF_LASTPROCEDURE PDF_GET_TOOL_PARAMETER PDF_GET_PARAMETER PDF_FONT_LOADED GETXMLNODEVALUE PDF_TEXT_FONTWIDTH PDF_TEXT_FONTWIDTH2 PDF_GET_PDF_INFO COMPRESSBUFFER DECOMPRESSBUFFER COMPRESSFILE DECOMPRESSFILE PDFENDECRYPT Liquidacion Comercio DJ - 9999 99 .pdf cons .\Documents\Drei\ Cons Helvetica-Bold Municipalidad de Perez  Helvetica Sarmiento 1198  Perez Helvetica-bold Derecho Registro e Inspeccion Inscripcion Comercio/Empresa Titular C.U.I.T. Periodo 9999999 99-99999999-9   Recibo Domicilio Localidad Fecha Inscripcion / El que suscribe  .  en su caracter de  declara bajo juramento que los datos consignados en la presente son correctos y han sido cumplimentados a su leal saber y entender.- FIRMA Aclaracion _ Concepto/Rubro Alicuota Monto Imponible Importe DetaLiqui Rubros 999999  -  >,>>>,>>9.99  /00 $  >,>>>,>>>,>>9.99 FoProSi Dif. Minimo Recargo Publicidad   % Fo.Pro.Si 3% (s/Ord. 3094/2017) Cantidad de empleados:.... TOTAL Observaciones: PAGO MINIMO s/Ord. 3100/17:..................... 99/99/9999 VENCIMIENTO:  FECHA PRESENTACION: FECHA PAGO:  [ "nombreRubro":" ","file":" ","error":" " }] p_version p_options p_content-type LOCAL-E4GL-OPTIONS default idx-ins-ani-per idx-inscripcion idx-nroliquida idx-idrubro puk-clave �
 x�     �    4           (       adm-destroy  `           P       adm-timing-out     (    t      caller-name   (      �   p-method-name   8 �     d �   �       dispatch    789;@KNQTV[^_`abde)    �      attr-value    )         p_period      )      0  p_attr-name � d    �    T      get-attribute   yz{|}~������������*    �     cntr    �*    �     attr-name   �*    �     attr-value    *    �     attr-entry    *        p-attr-list <<    ��  (      set-attribute-list  ����������������x8      l  p_version   �8      �  p_options     8      �  p_content-type  �      \  �      local-e4gl-options    �8�    �  (        H TT_pdf_ext  (     4     <     obj_stream  pdf_id  pdf_name    �PX TT_Font                      $     ,     8     D     L     T     \     d     p     |     �     �     �     �     �     �     �     obj_stream  pdf_id  obj_id  gen_id  page_id desc_obj    desc_gen    enc_obj enc_gen uni_obj uni_gen descend_obj descend_gen file2_obj   file2_gen   file3_obj   file3_gen   font_name   font_tag    font_width  font_base   L�� TT_Info            (     4     @     obj_stream  pdf_id  info_name   info_value  info_extra  �T` TT_Object   �     �     �                         (     0     8     D     P     \     h     t     �     �     obj_stream  pdf_id  obj_ptr obj_id  gen_id  obj_seq obj_type    page_id Rotate  obj_Media1  obj_Media2  obj_Media3  obj_Media4  obj_Crop1   obj_Crop2   obj_Crop3   obj_Crop4   ��� TT_Resource            (     0     8     @     L     T     \     d     p     x     �     obj_stream  pdf_id  par_obj par_gen page_id res_type    res_obj res_gen res_len res_text    res_old new_obj new_gen �� TT_pdf_xml  �     �     �     �     �          obj_stream  xml_parent  xml_pnode   xml_node    xml_value   xml_seq   $ TT_Widget   \     h     p     |     �     �     �     obj_stream  pdf_id  widget_type widget_name widget_rect widget_disp widget_page �      �     GATEWAY_INTERFACE   �    �     SERVER_SOFTWARE 	     	     SERVER_PROTOCOL ,	     	     SERVER_NAME H	    <	     SERVER_PORT h	    X	     REQUEST_METHOD  �	    x	     SCRIPT_NAME �	    �	     PATH_INFO   �	    �	     PATH_TRANSLATED �		 	   �	     QUERY_STRING    �	
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
   web-utilities-hdl   �# #   �     debug-options   �$ $   �     debugging-enabled   % %        MiscVarList 4& &   $     gscSessionId    T' '  D     adm-web-state   t' '  d     adm-web-timeout �' '  �     adm-web-tohdlr  �' '  �     adm-web-time-remaining  �' '  �     e4gl-version    �' '  �     e4gl-options     ' '       e4gl-content-type   8+ (  0     Barcode P+ (  H     wBarra  h+ (  `     CodeBar �+ (  x     sumador �+ (  �     secuencia   �+ (  �     parte   �+ (  �     digito  �+ ( 	 �     v-posicion  + ( 
 �     v-barcode   + (       WTOTAL  4+ (  ,     WPAGO   T+ (  D     WVENCIMIENTO    l' ' 	 d     wfecha  �' ' 
 |     wfecvto �+ (  �     WDIA2   �+ (  �     WMES2   �+ (  �     WANIO2  �+ (  �     WCantidad   �+ (  �     K   ' '       winteres    0' '  (     wtiempo L' '  @     wpunitorio  d' '  \     p-total �' '  t     wpublicidad �' '  �     wFOPROSI    �' '  �     nombreArchivoPDF    �' '  �     inscripcion �' '  �     anio    ' '       periodo   ' '    
   h_PDFinc    @) , �4  TT_pdf_ext  T* - �L  TT_Font h+ . �`  TT_Info �, / �t  TT_Object   �- 0 ��  TT_Resource �. 1 ��  TT_pdf_xml  �/ 2 ��  TT_Widget   �0 3  �  Liquidacion �1 4  �  Comercio    2 5    DetaLiqui   $3 6    Rubros    4 7  0  FoProSi �������������>ADM	 !"#%&')*+,/0123578:;<=?@BDEFGIKMNPQSTUXYZ[\]^`abceghjkmnpqsuvwy{|}~���������������������������������������������������������������������������������������  Q�   .\pdf_inc.i    �K$   .\pdf_func.i   ��2   .\pdfglobal.i  ��|   .\pdf_pre.i    ]r#   2C:\Program Files (x86)\PROGRESS91D\src\web\method\e4gl.i   �"#   2C:\Program Files (x86)\PROGRESS91D\src\web\method\admweb.i `��#   2C:\Program Files (x86)\PROGRESS91D\src\web\method\cgidefs.i    �^�#   2C:\Program Files (x86)\PROGRESS91D\src\web\method\proto.i  ��#   2C:\Program Files (x86)\PROGRESS91D\src\web\method\session.i    0�    0C:\xampp\htdocs\municipio2.0\services\Comercios\PrintDDJJServices.w    
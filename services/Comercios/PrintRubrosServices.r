	��V�z"`�   �              �                                 �  19B40058utf-8 MAIN C:\xampp\htdocs\municipio2.0\services\Comercios\PrintRubrosServices.w,, PROCEDURE local-e4gl-options,,OUTPUT p_version DECIMAL,OUTPUT p_options CHARACTER,OUTPUT p_content-type CHARACTER PROCEDURE set-attribute-list,,INPUT p-attr-list CHARACTER PROCEDURE get-attribute,,INPUT p_attr-name CHARACTER PROCEDURE dispatch,,INPUT p-method-name CHARACTER PROCEDURE adm-timing-out,, PROCEDURE adm-destroy,, EXTERN PDFendecrypt,LOGICAL,INPUT BufferPtr MEMPTR,INPUT PasswordPtr MEMPTR EXTERN DeCompressFile,LOGICAL,INPUT InputFile CHARACTER,INPUT OutputFile CHARACTER EXTERN CompressFile,LOGICAL,INPUT InputFile CHARACTER,INPUT OutputFile CHARACTER EXTERN DeCompressBuffer,INTEGER,INPUT InputBuffer MEMPTR,OUTPUT OutputBuffer MEMPTR,OUTPUT OutputSize INTEGER EXTERN CompressBuffer,INTEGER,INPUT InputBuffer MEMPTR,INPUT-OUTPUT OutputBuffer MEMPTR,OUTPUT OutputSize INTEGER EXTERN pdf_get_pdf_info,CHARACTER,INPUT pdfSTREAM CHARACTER,INPUT pdfID CHARACTER,INPUT pInfo CHARACTER EXTERN pdf_text_fontwidth2,DECIMAL,INPUT pdfStream CHARACTER,INPUT pdfFont CHARACTER,INPUT pdfFontSize DECIMAL,INPUT pdfText CHARACTER EXTERN pdf_text_fontwidth,DECIMAL,INPUT pdfStream CHARACTER,INPUT pdfFont CHARACTER,INPUT pdfText CHARACTER EXTERN GetXMLNodeValue,CHARACTER,INPUT pParent CHARACTER,INPUT pNode CHARACTER EXTERN pdf_Font_Loaded,LOGICAL,INPUT pdfStream CHARACTER,INPUT pdfFont CHARACTER EXTERN pdf_get_parameter,CHARACTER,INPUT pdfStream CHARACTER,INPUT pdfParameter CHARACTER EXTERN pdf_get_tool_parameter,CHARACTER,INPUT pdfStream CHARACTER,INPUT pdfToolName CHARACTER,INPUT pdfToolParam CHARACTER,INPUT pdfToolCol INTEGER EXTERN pdf_LastProcedure,LOGICAL,INPUT pdfStream CHARACTER,INPUT pdfProcHandle HANDLE,INPUT pdfHeaderProc CHARACTER EXTERN pdf_PageHeader,LOGICAL,INPUT pdfStream CHARACTER,INPUT pdfProcHandle HANDLE,INPUT pdfHeaderProc CHARACTER EXTERN pdf_PageFooter,LOGICAL,INPUT pdfStream CHARACTER,INPUT pdfProcHandle HANDLE,INPUT pdfFooterProc CHARACTER EXTERN pdf_TotalPages,CHARACTER,INPUT pdfStream CHARACTER EXTERN pdf_get_wrap_length,INTEGER,INPUT pdfStream CHARACTER,INPUT pdfText CHARACTER,INPUT pdfWidth INTEGER EXTERN pdf_Render,INTEGER,INPUT pdfStream CHARACTER EXTERN pdf_PaperType,CHARACTER,INPUT pdfStream CHARACTER EXTERN pdf_Orientation,CHARACTER,INPUT pdfStream CHARACTER EXTERN pdf_GetNumFittingChars,INTEGER,INPUT pdfStream CHARACTER,INPUT pdfText CHARACTER,INPUT pdfFromX INTEGER,INPUT pdfToX INTEGER EXTERN pdf_LeftMargin,INTEGER,INPUT pdfStream CHARACTER EXTERN pdf_get_info,CHARACTER,INPUT pdfStream CHARACTER,INPUT pdfAttribute CHARACTER EXTERN pdf_GraphicY,DECIMAL,INPUT pdfStream CHARACTER EXTERN pdf_GraphicX,DECIMAL,INPUT pdfStream CHARACTER EXTERN pdf_BottomMargin,INTEGER,INPUT pdfStream CHARACTER EXTERN pdf_TopMargin,INTEGER,INPUT pdfStream CHARACTER EXTERN pdf_Angle,INTEGER,INPUT pdfStream CHARACTER EXTERN pdf_PageRotate,INTEGER,INPUT pdfStream CHARACTER EXTERN pdf_Pageheight,INTEGER,INPUT pdfStream CHARACTER EXTERN pdf_PageWidth,INTEGER,INPUT pdfStream CHARACTER EXTERN pdf_Page,INTEGER,INPUT pdfStream CHARACTER EXTERN pdf_FillBlue,DECIMAL,INPUT pdfStream CHARACTER EXTERN pdf_FillGreen,DECIMAL,INPUT pdfStream CHARACTER EXTERN pdf_FillRed,DECIMAL,INPUT pdfStream CHARACTER EXTERN pdf_TextBlue,DECIMAL,INPUT pdfStream CHARACTER EXTERN pdf_TextGreen,DECIMAL,INPUT pdfStream CHARACTER EXTERN pdf_TextRed,DECIMAL,INPUT pdfStream CHARACTER EXTERN pdf_text_widthdec2,DECIMAL,INPUT pdfStream CHARACTER,INPUT pdfFontTag CHARACTER,INPUT pdfFontSize DECIMAL,INPUT pdfText CHARACTER EXTERN pdf_text_widthdec,DECIMAL,INPUT pdfStream CHARACTER,INPUT pdfText CHARACTER EXTERN pdf_text_width,INTEGER,INPUT pdfStream CHARACTER,INPUT pdfText CHARACTER EXTERN pdf_PointSize,DECIMAL,INPUT pdfStream CHARACTER EXTERN pdf_VerticalSpace,DECIMAL,INPUT pdfStream CHARACTER EXTERN pdf_TextY,INTEGER,INPUT pdfStream CHARACTER EXTERN pdf_TextX,INTEGER,INPUT pdfStream CHARACTER EXTERN pdf_ImageDim,INTEGER,INPUT pdfStream CHARACTER,INPUT pdfImage CHARACTER,INPUT pdfDim CHARACTER EXTERN pdf_FontType,CHARACTER,INPUT pdfStream CHARACTER EXTERN pdf_Font,CHARACTER,INPUT pdfStream CHARACTER EXTERN logNote,LOGICAL,INPUT pcLogType CHARACTER,INPUT pcLogText CHARACTER EXTERN getGlobal,CHARACTER,INPUT cName CHARACTER EXTERN setGlobal,LOGICAL,INPUT cName CHARACTER,INPUT cValue CHARACTER EXTERN getSession,CHARACTER,INPUT cName CHARACTER EXTERN setSession,LOGICAL,INPUT cName CHARACTER,INPUT cValue CHARACTER EXTERN get-config,CHARACTER,INPUT p_name CHARACTER EXTERN check-agent-mode,LOGICAL,INPUT p_mode CHARACTER EXTERN queue-message,INTEGER,INPUT p_grp CHARACTER,INPUT p_message CHARACTER EXTERN output-messages,INTEGER,INPUT p_option CHARACTER,INPUT p_grp CHARACTER,INPUT p_message CHARACTER EXTERN get-message-groups,CHARACTER, EXTERN get-messages,CHARACTER,INPUT p_grp CHARACTER,INPUT p_delete LOGICAL EXTERN available-messages,LOGICAL,INPUT p_grp CHARACTER EXTERN set-cookie,CHARACTER,INPUT p_name CHARACTER,INPUT p_value CHARACTER,INPUT p_date DATE,INPUT p_time INTEGER,INPUT p_path CHARACTER,INPUT p_domain CHARACTER,INPUT p_options CHARACTER EXTERN get-cookie,CHARACTER,INPUT p_name CHARACTER EXTERN delete-cookie,CHARACTER,INPUT p_name CHARACTER,INPUT p_path CHARACTER,INPUT p_domain CHARACTER EXTERN url-format,CHARACTER,INPUT p_url CHARACTER,INPUT p_name-list CHARACTER,INPUT p_delim CHARACTER EXTERN url-field-list,CHARACTER,INPUT p_name-list CHARACTER,INPUT p_delim CHARACTER EXTERN url-field,CHARACTER,INPUT p_name CHARACTER,INPUT p_value CHARACTER,INPUT p_delim CHARACTER EXTERN url-encode,CHARACTER,INPUT p_value CHARACTER,INPUT p_enctype CHARACTER EXTERN url-decode,CHARACTER,INPUT p_in CHARACTER EXTERN set-wseu-cookie,CHARACTER,INPUT p_cookie CHARACTER EXTERN set-user-field,LOGICAL,INPUT p_name CHARACTER,INPUT p_value CHARACTER EXTERN output-http-header,CHARACTER,INPUT p_header CHARACTER,INPUT p_value CHARACTER EXTERN output-content-type,LOGICAL,INPUT p_type CHARACTER EXTERN html-encode,CHARACTER,INPUT p_in CHARACTER EXTERN hidden-field-list,CHARACTER,INPUT p_name-list CHARACTER EXTERN hidden-field,CHARACTER,INPUT p_name CHARACTER,INPUT p_value CHARACTER EXTERN get-user-field,CHARACTER,INPUT p_name CHARACTER EXTERN get-value,CHARACTER,INPUT p_name CHARACTER EXTERN get-field,CHARACTER,INPUT p_name CHARACTER EXTERN get-cgi,CHARACTER,INPUT p_name CHARACTER EXTERN format-datetime,CHARACTER,INPUT p_format CHARACTER,INPUT p_date DATE,INPUT p_time INTEGER,INPUT p_options CHARACTER EXTERN convert-datetime,CHARACTER,INPUT p_conversion CHARACTER,INPUT p_idate DATE,INPUT p_itime INTEGER,OUTPUT p_odate DATE,OUTPUT p_otime INTEGER        �  �M              !�  ��2      �   ) �g  �  xh  �  Hi  P �l  < �p  H u  l ? �v  �ISO8859-1                                                        � 5 ` �  ��  �          `            (2            �+ �' e�   �!Q �          �  <                                         PROGRESS                              �                     � 8                                                             |      4                     �     p                                                        �0     �                    �     �                                                0       L@                         �p     @                                                @       �L     l                    X�     �                                                L       X     �                    �@                                                     X       �g     <                    (�     x                                                g       �s     �                    �     �                                                s       T}                         �x     H                                                }       ��     t                    `�	     �                                                �       $�     �                    �H
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
L�                        �p#     @                                                �      ��    l                   X�$     �                                                �      @�    �+  $   AppProgram,AppURL,HostURL,SelDelim,SelfURL,       �d%     4                                                �        x    `                    L�&     �                                                x        �     
�,   `   �� 0�-    T   �         �        $-   `   �, 8��    \            \        \.   `   ��� ��=�    �   �         �        �/   `   ���' ����    @   �                  �0   `   u�� �u(S       u         d        1   `   ��l ��t4    �   �         4        �2   `   � ,h    P            �                 comercio                         PROGRESS                           3 <             \_      �o                      �  D        �)      3                                                                                                                                                                                                                > ��+ \2                   >��' `2     ��0 ��   
    state-less n                                                                                                                             
              0   D   T   d   t   �   �   �   �   �   �       0   D   T   d   t   �   �   �   �   �   �                            �  ���������   �       �          �   i     	    �                                                 	      
                                                                                 �  �  ���������                     �    �          �   i     	    �&-5>GOW_gs�������                                        �  ���������     �     �          �   i     	    ����                                                 	      
                                                         �  �  ���������                              &    	        �          �   i     i     i     i     i     i     	 	 	 	 	 	    �&	-!,7BMWak                                                 	      
                                 �  ���������                   -          �   i     	    ���-��������                                              �  ���������               �          �   i  i     i     	 	 	    �����                                                  �  ���	������       �       �          �   i    	 	    �$0<H    ��                     ��                    ����                      3 �    undefined             h  x2L < �2��             ��\      䨖      O ��    e�      O ��    R�      O ��    ��    convert-datetime       l   �   �     CHARACTER,INPUT p_conversion CHARACTER,INPUT p_idate DATE,INPUT p_itime INTEGER,OUTPUT p_odate DATE,OUTPUT p_otime INTEGER  format-datetime �    4      CHARACTER,INPUT p_format CHARACTER,INPUT p_date DATE,INPUT p_time INTEGER,INPUT p_options CHARACTER get-cgi   �  �      CHARACTER,INPUT p_name CHARACTER    get-field   �( �  � 	     CHARACTER,INPUT p_name CHARACTER    get-value   �4   < #	     CHARACTER,INPUT p_name CHARACTER    get-user-field  (@ `  � -     CHARACTER,INPUT p_name CHARACTER    hidden-field    pL �  � <     CHARACTER,INPUT p_name CHARACTER,INPUT p_value CHARACTER    hidden-field-list   �X   0 I     CHARACTER,INPUT p_name-list CHARACTER   html-encode d X  x [     CHARACTER,INPUT p_in CHARACTER  output-content-type dp �  �	 g     LOGICAL,INPUT p_type CHARACTER  output-http-header  �| �  
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
l(  H �	     LOGICAL,INPUT cName CHARACTER,INPUT cValue CHARACTER    getGlobal   4x�  � �	     CHARACTER,INPUT cName CHARACTER logNote ���  �  �     LOGICAL,INPUT pcLogType CHARACTER,INPUT pcLogText CHARACTER adm-destroy                   �                     �     adm-timing-out  $X                �                          dispatch    h�t       ( �                      j     get-attribute   ��t       ) �                     �     set-attribute-list  � t       * p                     E     T/��   �	          3 ���� ��      3 ��	  $ �����               '           � ߱   ��      3 ��$	  $ �����               '           � ߱     $      3 ��0	  $ �8���               '           � ߱  � �`��  4 ��<	        �          ��             ��       x��       �h�/	��     �	          3 ��d	   ���    4 ���	  O ���  ��	     ��@    4 ���	        H          ��             ��        �       �h/	�`     �	          3 ���	   �t|    4 ���	  O ���  ��
  � ���    4 ��
  � �<
    �! !��    4 ��\
                  ��             !0       8E|       !�@/$     '          3 ��p
�
@        �
       � ߱    $ '$���        pdf_Font    ��
T  t! f     CHARACTER,INPUT pdfStream CHARACTER pdf_FontType    `�
�  �" o     CHARACTER,INPUT pdfStream CHARACTER pdf_ImageDim    ��
�  # |     INTEGER,INPUT pdfStream CHARACTER,INPUT pdfImage CHARACTER,INPUT pdfDim CHARACTER   pdf_TextX   ��
X  x$ �	     INTEGER,INPUT pdfStream CHARACTER   pdf_TextY   d�
�  �% �	     INTEGER,INPUT pdfStream CHARACTER   pdf_VerticalSpace   ��
�  & �     DECIMAL,INPUT pdfStream CHARACTER   pdf_PointSize   ��
,  P' �     DECIMAL,INPUT pdfStream CHARACTER   pdf_text_width  < t  �( �     INTEGER,INPUT pdfStream CHARACTER,INPUT pdfText CHARACTER   pdf_text_widthdec   ��  �) �     DECIMAL,INPUT pdfStream CHARACTER,INPUT pdfText CHARACTER   pdf_text_widthdec2  �8  `* �     DECIMAL,INPUT pdfStream CHARACTER,INPUT pdfFontTag CHARACTER,INPUT pdfFontSize DECIMAL,INPUT pdfText CHARACTER  pdf_TextRed L$�  �+ �     DECIMAL,INPUT pdfStream CHARACTER   pdf_TextGreen   �0  8, �     DECIMAL,INPUT pdfStream CHARACTER   pdf_TextBlue    $<\  �- 	     DECIMAL,INPUT pdfStream CHARACTER   pdf_FillRed lH�  �. 	     DECIMAL,INPUT pdfStream CHARACTER   pdf_FillGreen   �T�  / $	     DECIMAL,INPUT pdfStream CHARACTER   pdf_FillBlue    �`0  T0 2	     DECIMAL,INPUT pdfStream CHARACTER   pdf_Page    @lx  �1 ?	     INTEGER,INPUT pdfStream CHARACTER   pdf_PageWidth   �x�  �2 H	     INTEGER,INPUT pdfStream CHARACTER   pdf_Pageheight  ��  (3 V	     INTEGER,INPUT pdfStream CHARACTER   pdf_PageRotate  �L  p4 e	     INTEGER,INPUT pdfStream CHARACTER   pdf_Angle   \��  �5 t		     INTEGER,INPUT pdfStream CHARACTER   pdf_TopMargin   ���  �6 ~	     INTEGER,INPUT pdfStream CHARACTER   pdf_BottomMargin    ��   H7 �	     INTEGER,INPUT pdfStream CHARACTER   pdf_GraphicX    4�l  �8 �	     DECIMAL,INPUT pdfStream CHARACTER   pdf_GraphicY    |��  �9 �	     DECIMAL,INPUT pdfStream CHARACTER   pdf_get_info    ���   : �	     CHARACTER,INPUT pdfStream CHARACTER,INPUT pdfAttribute CHARACTER    pdf_LeftMargin  �d  �; �	     INTEGER,INPUT pdfStream CHARACTER   pdf_GetNumFittingChars  t��  �< �	     INTEGER,INPUT pdfStream CHARACTER,INPUT pdfText CHARACTER,INPUT pdfFromX INTEGER,INPUT pdfToX INTEGER   pdf_Orientation ��@  d= �	     CHARACTER,INPUT pdfStream CHARACTER pdf_PaperType   P�  �> �	     CHARACTER,INPUT pdfStream CHARACTER pdf_Render  ��  �? 

     INTEGER,INPUT pdfStream CHARACTER   pdf_get_wrap_length �   <@ 
     INTEGER,INPUT pdfStream CHARACTER,INPUT pdfText CHARACTER,INPUT pdfWidth INTEGER    pdf_TotalPages  (,�  �A '
     CHARACTER,INPUT pdfStream CHARACTER pdf_PageFooter  �8�  �B 6
     LOGICAL,INPUT pdfStream CHARACTER,INPUT pdfProcHandle HANDLE,INPUT pdfFooterProc CHARACTER  pdf_PageHeader  �DX  |C E
     LOGICAL,INPUT pdfStream CHARACTER,INPUT pdfProcHandle HANDLE,INPUT pdfHeaderProc CHARACTER  pdf_LastProcedure   hP�   D T
     LOGICAL,INPUT pdfStream CHARACTER,INPUT pdfProcHandle HANDLE,INPUT pdfHeaderProc CHARACTER  pdf_get_tool_parameter  �\\  �E f
     CHARACTER,INPUT pdfStream CHARACTER,INPUT pdfToolName CHARACTER,INPUT pdfToolParam CHARACTER,INPUT pdfToolCol INTEGER   pdf_get_parameter   th   (F }
     CHARACTER,INPUT pdfStream CHARACTER,INPUT pdfParameter CHARACTER    pdf_Font_Loaded tl  �G �
     LOGICAL,INPUT pdfStream CHARACTER,INPUT pdfFont CHARACTER   GetXMLNodeValue |��  �H �
     CHARACTER,INPUT pParent CHARACTER,INPUT pNode CHARACTER pdf_text_fontwidth  ��(  PI �
     DECIMAL,INPUT pdfStream CHARACTER,INPUT pdfFont CHARACTER,INPUT pdfText CHARACTER   pdf_text_fontwidth2 <��  �J �
     DECIMAL,INPUT pdfStream CHARACTER,INPUT pdfFont CHARACTER,INPUT pdfFontSize DECIMAL,INPUT pdfText CHARACTER pdf_get_pdf_info    ��8  `K �
     CHARACTER,INPUT pdfSTREAM CHARACTER,INPUT pdfID CHARACTER,INPUT pInfo CHARACTER CompressBuffer  L��  �L �
     INTEGER,INPUT InputBuffer MEMPTR,INPUT-OUTPUT OutputBuffer MEMPTR,OUTPUT OutputSize INTEGER DeCompressBuffer    ��0   X M �
     INTEGER,INPUT InputBuffer MEMPTR,OUTPUT OutputBuffer MEMPTR,OUTPUT OutputSize INTEGER   CompressFile    D ��   � N      LOGICAL,INPUT InputFile CHARACTER,INPUT OutputFile CHARACTER    DeCompressFile  � �!  8!O      LOGICAL,INPUT InputFile CHARACTER,INPUT OutputFile CHARACTER    PDFendecrypt    $!�x!  �!P #     LOGICAL,INPUT BufferPtr MEMPTR,INPUT PasswordPtr MEMPTR �    ' 
     
     � ߱  "$ ��!���        L"/�"   $"0          3 ��8" 0"        3 ��<   D"        3 ��D�"/�d"   l"|          3 ��`   x"        3 ����"/��"   �"�          3 ����" �"        3 ����" �"        3 ���   �"        3 ���8#/��"   �"�          3 ���# #        3 �� $# #        3 ��   0#        3 ��l#/�P#   X#<          3 ��$   d#        3 ��H�#/��#   �#l          3 ��P�# �#        3 ��x�# �#        3 ���   �#        3 ���$$/��#   �#�          3 ����# �#        3 ���$ $        3 ���   $        3 ���X$/�<$   D$�          3 ���   P$        3 ���$/�p$   x$(          3 ��   �$        3 ��4�$/��$   �$X          3 ��<�$ �$        3 ��d�$ �$        3 ��l   �$        3 ��tD%/� %   %�          3 ���% %        3 ���0% (%        3 ���   <%        3 ���x%/�\%   d%�          3 ���   p%        3 ����%/��%   �%          3 ���   �%        3 �� &/��%   �%@          3 ��(�% �%        3 ��L�% �%        3 ��T    &        3 ��x<&/� &   (&�          3 ���   4&        3 ����&/�T&   \&�          3 ���p& h&        3 ����& |&        3 ���   �&        3 ����&/��&   �&          3 ���& �&        3 ��(�& �&        3 ��0   �&        3 ��T('/�'   '�          3 ��h    '        3 ����'/�@'   H'�          3 ���\' T'        3 ���p' h'        3 ���   |'        3 ����'/��'   �'�          3 ����' �'        3 �� �' �'        3 ��   �'        3 ��<(/ �'    (<          3 ��$( (        3 ��H((  (        3 ��P   4(        3 ��X�(/T(   \(�          3 ��lp( h(        3 ����( |(        3 ���   �(        3 ����(/�(   �(�          3 ���   �(        3 ���()/�(   �(�          3 ��� ) �(        3 ��) )        3 ��    )        3 ��0\)/@)   H)\          3 ��D   T)        3 ��h�)/t)   |)�          3 ��p   �)        3 ��� */�)   �)�          3 ���   �)        3 ���    *  �+  �2X+H+�2��             )h+     �|    �1 �)   $*\*�*                   7 ��   3    ��               �D+    �*            6     3 �* ��              �D+    �*                                             �*�*                       @          �* �*  J         4+  ��                                           �            (+        O ��  e�      O ��  R�      O ��  ��    �    '           � ߱  �+$ x+���        ,/�+   �+          3 ����+ �+        3 �� �+ �+        3 ��(   �+        3 ��<`,/,   $,h          3 ��P8, 0,        3 ��tL, D,        3 ��|   X,        3 ����,/x,   �,�          3 ����, �,        3 ����, �,        3 ���   �,        3 ���-/�,   �,          3 �� �, �,        3 ��$- �,        3 ��,   -        3 ��HL-/0-   8-t          3 ��\   D-        3 ���   X-�-    4 ���        �-          ��             (        $|       `-�-/�-   �-�          3 ���   �-        3 ���./�-   �-�          3 ���   .        3 ��h./$.   ,.(          3 ��@. 8.        3 ��4T. L.        3 ��<   `.        3 ��D�./�.   �.p          3 ��X�. �.        3 ��|�. �.        3 ���   �.        3 ����./�.   �.�          3 ���   �.        3 ���T///   /           3 ���,/ $/        3 ��@/ 8/        3 ��   L/        3 ���//l/   t/H          3 ��0�/ �/        3 ��T�/ �/        3 ��\   �/        3 ��d0/�/   �/�          3 ��x�/ �/        3 ����/ �/        3 ���   0        3 ���h0/ $0   ,0�          3 ���@0 80        3 ���T0 L0        3 ���   `0        3 ����0/!�0   �0           3 ��   �0        3 ��,�0/#�0   �0L          3 ��4�0 �0        3 ��X�0 �0        3 ��`   �0        3 ���,1/$1   1�          3 ���   $1        3 ���`1/%D1   L1�          3 ���   X1        3 ����1/&x1   �1          3 ���   �1        3 ��    '           � ߱    $ '�1���        �1/,�1   �1H          3 ��0   �1        3 ��T  Q .2    \            local-e4gl-options  42t       4 �    <                  8r      �   
state-less         �  �28 ��2 �28 ��2 �28 ��1 �28 ��1 �28 ��0 �28 ��0 �28 ��/ �28 ��/ �28 ��. �28 ��. �28 ��- �28 ��-   8 ��,   8 ��,   8 ��3   8 ��3     
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
�    %      Web-State = Timed-Out �8    " (  m�� F    " (     %              %       ����    T   %              � %              � K 0 P       " (          � M " (  �4    S         � M " (     �     }    �%                    � M " (  �  0 P       " (          � F " (  �4    S         � F " (     �     }    �%                    � F " (  �  " (     
�        �  � T	 % 	    ADM-ERROR �     }    �@ @   $    �    }    �%              %       Q    	 $    �    }    �%              %       8     %     dispatch ڔ
" "   
   %     show-errors % 	    ADM-ERROR %               " )     � � %               � � %      WEB1.0  � �	 " '     � �      " '     � � " '     � � %     get-time-remaining 
" "   
   
�    " )          " )     %      special-get-attribute �
�    " )      �     }    ��  %              " )         %              %                   " *     %                  " *     �     " *     T    " *     " *  �        " *     �  %               � & %      
       " *     %      
       � B �     }    �Az`       8 " *  �  %                      " *  ���  %              z`      8  " *  �           " *  ڔ�  %              %       ����    " *     � � ! " *     � �	 " *     � � " *     %      special-set-attribute �
�    " *     " *     %     local-e4gl-options 
�    " '     " '     " '     8    �    }    �� � � �	 %     output-header   
�    �     }    �%               8    �    }    �� � � �	 %     output-headers  
�    �     }    �%                A    " '  ڔ� � �	              " '  � � 
" '  
n�% 	    pdf_inc.p �
" '  
m��      �
  �@� T 
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
   
" '  
              � 0 ]      +  � 7 %      pdf_new 
" '  
   � <      � A " ' 
    %     pdf_new_Page    
" '  
   � S %     pdf_set_font    
" '  
   � S � X %           %     pdf_text_at 
" '  
   � S � g %              %     pdf_skip ڔ
" '  
   � S %     pdf_set_font    
" '  
   � S � 	 %           %     pdf_text_at 
" '  
   � S � � %       
       %     pdf_skip ڔ
" '  
   � S %     pdf_skip ڔ
" '  
   � S %     pdf_set_font    
" '  
   � S � � %           %     pdf_text_at 
" '  
   � S � � %       F       %     pdf_skip ڔ
" '  
   � S %     pdf_skip ڔ
" '  
   � S %     pdf_text_at 
" '  
   � S      � �     +  � �
 %       �       %     pdf_skip ڔ
" '  
   � S %     pdf_set_font    
" '  
   � S � 	 %            %     pdf_text_at 
" '  
   � S U    � � %       �       %       
       %     pdf_skip ڔ
" '  
   � S %     pdf_text_at 
" '  
   � S � � %       
       %     pdf_text_at 
" '  
   � S � � %              %     pdf_text_at 
" '  
   � S � � %       �       %     pdf_text_at 
" '  
   � S � � %       �       %     pdf_skip ڔ
" '  
   � S %     pdf_text_at 
" '  
   � S U    � � %       �       %       
       %     pdf_skip ڔ
" '  
   � S %     pdf_skip ڔ
" '  
   � S %     pdf_skip ڔ
" '  
   � S " 3          " '     %              %     pdf_text_at 
" '  
   � S      " 3     %       
       %     pdf_text_at 
" '  
   � S      " 3     %             %     pdf_text_at 
" '  
   � S     " 3     �  %       �       %     pdf_text_at 
" '  
   � S     " 3     �  %       �       %     pdf_skip ڔ
" '  
   � S     " '  n�%       1   	   %     pdf_new_Page    
" '  
   � S %     pdf_skip ڔ
" '  
   � S %     pdf_set_font    
" '  
   � S � 	 %            %     pdf_text_at 
" '  
   � S U    � � %       �       %       
       %     pdf_skip ڔ
" '  
   � S %     pdf_text_at 
" '  
   � S � � %       
       %     pdf_text_at 
" '  
   � S � � %              %     pdf_text_at 
" '  
   � S � � %       �       %     pdf_text_at 
" '  
   � S � � %       �       %     pdf_skip ڔ
" '  
   � S %     pdf_text_at 
" '  
   � S U    � � %       �       %       
       %     pdf_skip ڔ
" '  
   � S %     pdf_skip ڔ
" '  
   � S %     pdf_skip ڔ
" '  
   � S %               % 	    pdf_Close �
" '  
   � S  �     �     |     l     X     H     8     (         �   G %       {      � " � 2  � 3
 " ' 
 �� > � 2  � J � L           l     L <   ��            
\       �i�      O ��    e�      O ��    R�      O ��    ��       x �     4 ���  � �  ��                    ����                              l     L <   ��             \       �j�      O ��    e�      O ��    R�      O ��    ��      /�    � �          3 ���   �         3 ���  ��                    ����                              �     L <   ��            &e\      ���      O ��    e�      O ��    R�      O ��    ��    , (       l    �  7� �     4 ���  $ 8� ���            (           � ߱  L    (           � ߱  � $ 9� ���        | ; 8  4 ���  $ @���            (           � ߱     KDL    4 ��,  $ N`���        �    (           � ߱  �/	Q�     �          3 ���� T��    4 ���  O T��  ���  � V�    4 ��                  ��             Vb       ���       V�   [$h    4 ��         p          ��             ^a       �       ^,�/_�   ��          3 ���   �        3 ���  O `��  ���    O d��  ���    >��(        �,                                                     (     ��                    ����                              �     L <   ��            l�\      ܎�      O ��    e�      O ��    R�      O ��    ��    s )       l    �p y� ��  � �    $ z� ���        $    )           � ߱   �  8  $ {� ���        @    )           � ߱  8 T  $ |���        \    )           � ߱  p@ h  $ }T���        p    )           � ߱  �x �  $ ~����        �    )           � ߱    � �        �          ��             �       �L�       �l/�   �          3 ���(          3 ���   4<      3 ���  $ �P���               )           � ߱    $ �����        �    )           � ߱          �          ��             ��       @M�       ��/	��              3 ���           3 ��    � (X  4 ��,  $ �<���        @    )           � ߱    $ �l���        D    )           � ߱    O ���  ��X    >��)      �� �@                                                      0              0      )     ��                    ����                              �     L <   ��            ��\      DN�      O ��    e�      O ��    R�      O ��    ��    � *       l      �   � ,          ��      0       ��       @֕       ��   $ �� ���        d    *           � ߱  $$ ����        �    *           � ߱    4 ���\$ �@���        �    *           � ߱   �h�    4 ��        �          ��             ��       �֕       �p 	��                  �3 ��<�3 ��D�3 ��X�3 ��d�3 ��x  3 ���  O ��� ��    @$ �$���        �    *           � ߱  p$ �T���        �    *           � ߱    p �`�(�  �� l  $�����        t    '           � ߱  �� �  $ �����        �    '           � ߱    � �  $ ����        �    '           � ߱    /	�@   H�          3 ���\ T        3 ���   h        3 ���  >��*      �� �h                                                                               (   8   H   X          (   8   H   X          *     ��                    ����                                    L <   ��            FM\       �$|      O ��    e�      O ��    R�      O ��    ��    O 4  �    l    Y 4  �    �    c 4       �      >��4      �  � H              
    web-object  	    text/html �          4              4   �/
web-object	text/html   4     ��                    ����                    TXS WebStream GATEWAY_INTERFACE SERVER_SOFTWARE SERVER_PROTOCOL SERVER_NAME SERVER_PORT REQUEST_METHOD SCRIPT_NAME PATH_INFO PATH_TRANSLATED QUERY_STRING REMOTE_ADDR REMOTE_HOST REMOTE_IDENT REMOTE_USER AUTH_TYPE CONTENT_TYPE CONTENT_LENGTH HTTP_ACCEPT HTTP_COOKIE HTTP_REFERER HTTP_USER_AGENT HTTPS AppProgram AppURL SelfURL HostURL CookiePath RootURL useConnID CookieDomain SelDelim , output-content-type http-newline 
 utc-offset web-utilities-hdl debug-options debugging-enabled MiscVarList CONVERT-DATETIME FORMAT-DATETIME GET-CGI GET-FIELD GET-VALUE GET-USER-FIELD HIDDEN-FIELD HIDDEN-FIELD-LIST HTML-ENCODE OUTPUT-CONTENT-TYPE OUTPUT-HTTP-HEADER SET-USER-FIELD SET-WSEU-COOKIE URL-DECODE URL-ENCODE URL-FIELD URL-FIELD-LIST URL-FORMAT DELETE-COOKIE GET-COOKIE SET-COOKIE AVAILABLE-MESSAGES GET-MESSAGES GET-MESSAGE-GROUPS OUTPUT-MESSAGES QUEUE-MESSAGE CHECK-AGENT-MODE GET-CONFIG gscSessionId SETSESSION GETSESSION SETGLOBAL GETGLOBAL LOGNOTE adm-web-state adm-web-timeout adm-web-tohdlr adm-web-time-remaining ADM-DESTROY Web-State = Timed-Out ADM-TIMING-OUT p-method-name caller-name adm-   local- ADM-ERROR show-errors DISPATCH p_attr-name attr-value p_period Type  Version WEB1.0 Web-State Web-Timeout Web-Timeout-Handler Web-Time-Remaining GET-ATTRIBUTE p-attr-list cntr attr-name attr-entry = Invalid element in set-attribute call: in SET-ATTRIBUTE-LIST e4gl-version e4gl-options e4gl-content-type output-header PROCEDURE output-headers no-content-type Barcode numeroRubro nombreArchivoPdf renglon h_PDFinc TT_pdf_ext obj_stream pdf_id pdf_name TT_Font obj_id gen_id page_id desc_obj desc_gen enc_obj enc_gen uni_obj uni_gen descend_obj descend_gen file2_obj file2_gen file3_obj file3_gen font_name font_tag font_width font_base TT_Info info_name info_value info_extra TT_Object obj_ptr obj_seq obj_type Rotate obj_Media1 obj_Media2 obj_Media3 obj_Media4 obj_Crop1 obj_Crop2 obj_Crop3 obj_Crop4 TT_Resource par_obj par_gen res_type res_obj res_gen res_len res_text res_old new_obj new_gen TT_pdf_xml xml_parent xml_pnode xml_node xml_value xml_seq TT_Widget widget_type widget_name widget_rect widget_disp widget_page Persistent PDFinc PDF_FONT PDF_FONTTYPE PDF_IMAGEDIM PDF_TEXTX PDF_TEXTY PDF_VERTICALSPACE PDF_POINTSIZE PDF_TEXT_WIDTH PDF_TEXT_WIDTHDEC PDF_TEXT_WIDTHDEC2 PDF_TEXTRED PDF_TEXTGREEN PDF_TEXTBLUE PDF_FILLRED PDF_FILLGREEN PDF_FILLBLUE PDF_PAGE PDF_PAGEWIDTH PDF_PAGEHEIGHT PDF_PAGEROTATE PDF_ANGLE PDF_TOPMARGIN PDF_BOTTOMMARGIN PDF_GRAPHICX PDF_GRAPHICY PDF_GET_INFO PDF_LEFTMARGIN PDF_GETNUMFITTINGCHARS PDF_ORIENTATION PDF_PAPERTYPE PDF_RENDER PDF_GET_WRAP_LENGTH PDF_TOTALPAGES PDF_PAGEFOOTER PDF_PAGEHEADER PDF_LASTPROCEDURE PDF_GET_TOOL_PARAMETER PDF_GET_PARAMETER PDF_FONT_LOADED GETXMLNODEVALUE PDF_TEXT_FONTWIDTH PDF_TEXT_FONTWIDTH2 PDF_GET_PDF_INFO COMPRESSBUFFER DECOMPRESSBUFFER COMPRESSFILE DECOMPRESSFILE PDFENDECRYPT Rubros .pdf cons .\Documents\Drei\ Cons Helvetica-Bold Municipalidad de Perez  Helvetica Sarmiento 1198 - Perez Helvetica-bold Listado Rubros Listado actualizado al  99/99/9999 - Codigo Rubro Alicuota Monto Minimo Rubros >>9.99 ->>>,>>9.99 [ "nombreRubro":"  ","file":" ","error":" " }] p_version p_options p_content-type LOCAL-E4GL-OPTIONS default idx-idrubro �
 ��     �    4           (       adm-destroy  `           P       adm-timing-out     (    t      caller-name   (      �   p-method-name   8 �     d �   �       dispatch    789;@KNQTV[^_`abde)    �      attr-value    )         p_period      )      0  p_attr-name � d    �    T      get-attribute   yz{|}~������������*    �     cntr    �*    �     attr-name   �*    �     attr-value    *    �     attr-entry    *        p-attr-list <<    ��  (      set-attribute-list  ����������������x4      l  p_version   �4      �  p_options     4      �  p_content-type  �      \  �      local-e4gl-options  M  �`H    �  �        H TT_pdf_ext  (     4     <     obj_stream  pdf_id  pdf_name    �PX TT_Font                      $     ,     8     D     L     T     \     d     p     |     �     �     �     �     �     �     �     obj_stream  pdf_id  obj_id  gen_id  page_id desc_obj    desc_gen    enc_obj enc_gen uni_obj uni_gen descend_obj descend_gen file2_obj   file2_gen   file3_obj   file3_gen   font_name   font_tag    font_width  font_base   L�� TT_Info            (     4     @     obj_stream  pdf_id  info_name   info_value  info_extra  �T` TT_Object   �     �     �                         (     0     8     D     P     \     h     t     �     �     obj_stream  pdf_id  obj_ptr obj_id  gen_id  obj_seq obj_type    page_id Rotate  obj_Media1  obj_Media2  obj_Media3  obj_Media4  obj_Crop1   obj_Crop2   obj_Crop3   obj_Crop4   ��� TT_Resource            (     0     8     @     L     T     \     d     p     x     �     obj_stream  pdf_id  par_obj par_gen page_id res_type    res_obj res_gen res_len res_text    res_old new_obj new_gen �� TT_pdf_xml  �     �     �     �     �          obj_stream  xml_parent  xml_pnode   xml_node    xml_value   xml_seq   $ TT_Widget   \     h     p     |     �     �     �     obj_stream  pdf_id  widget_type widget_name widget_rect widget_disp widget_page �      �     GATEWAY_INTERFACE   �    �     SERVER_SOFTWARE 	     	     SERVER_PROTOCOL ,	     	     SERVER_NAME H	    <	     SERVER_PORT h	    X	     REQUEST_METHOD  �	    x	     SCRIPT_NAME �	    �	     PATH_INFO   �	    �	     PATH_TRANSLATED �		 	   �	     QUERY_STRING    �	
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
   web-utilities-hdl   �# #   �     debug-options   �$ $   �     debugging-enabled   % %        MiscVarList 4& &   $     gscSessionId    T' '  D     adm-web-state   t' '  d     adm-web-timeout �' '  �     adm-web-tohdlr  �' '  �     adm-web-time-remaining  �' '  �     e4gl-version    �' '  �     e4gl-options     ' '       e4gl-content-type   8+ (  0     Barcode T' ' 	 H     numeroRubro x' ' 
 d     nombreArchivoPdf    �' '  �     renglon   ' '  �  
   h_PDFinc    �) , ��  TT_pdf_ext  �* - ��  TT_Font �+ . ��  TT_Info , / ��  TT_Object   - 0 �  TT_Resource 4. 1 �(  TT_pdf_xml  L/ 2 �@  TT_Widget     0 3  X  Rubros  �������������!$'0���������������������  !#$%&'(),.  Q�   .\pdf_inc.i    �K$   .\pdf_func.i   �2   .\pdfglobal.i   �|   .\pdf_pre.i    8]r#   2C:\Program Files (x86)\PROGRESS91D\src\web\method\e4gl.i   P�"#   2C:\Program Files (x86)\PROGRESS91D\src\web\method\admweb.i ���#   2C:\Program Files (x86)\PROGRESS91D\src\web\method\cgidefs.i    �^�#   2C:\Program Files (x86)\PROGRESS91D\src\web\method\proto.i   �#   2C:\Program Files (x86)\PROGRESS91D\src\web\method\session.i    d��    0C:\xampp\htdocs\municipio2.0\services\Comercios\PrintRubrosServices.w  
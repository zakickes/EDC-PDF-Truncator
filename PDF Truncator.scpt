FasdUAS 1.101.10   ��   ��    k             l     ��  ��    n h Droplet type app, can be called by Firefox or user can manually 'drop' multiple files onto the app icon     � 	 	 �   D r o p l e t   t y p e   a p p ,   c a n   b e   c a l l e d   b y   F i r e f o x   o r   u s e r   c a n   m a n u a l l y   ' d r o p '   m u l t i p l e   f i l e s   o n t o   t h e   a p p   i c o n   
  
 l     ��������  ��  ��        l     ��  ��    #  This app handles two things:     �   :   T h i s   a p p   h a n d l e s   t w o   t h i n g s :      l     ��  ��    3 - 1. It renames generated PDFs to be shorter.      �   Z   1 .   I t   r e n a m e s   g e n e r a t e d   P D F s   t o   b e   s h o r t e r .        l     ��  ��    � � CHECKOUT-CK-78299-cameron_beattie-202101041604.pdf becomes PM 5.40 CK-78299-cameron_beattie. Note that the original timestamp is time of download.     �  &   C H E C K O U T - C K - 7 8 2 9 9 - c a m e r o n _ b e a t t i e - 2 0 2 1 0 1 0 4 1 6 0 4 . p d f   b e c o m e s   P M   5 . 4 0   C K - 7 8 2 9 9 - c a m e r o n _ b e a t t i e .   N o t e   t h a t   t h e   o r i g i n a l   t i m e s t a m p   i s   t i m e   o f   d o w n l o a d .      l     ��  ��    6 0 2. It moves the renamed PDF to the server path.     �   `   2 .   I t   m o v e s   t h e   r e n a m e d   P D F   t o   t h e   s e r v e r   p a t h .     !   l     ��������  ��  ��   !  " # " l     �� $ %��   $ � � I use a free app 'Skim' to convert the PDF into text and find the listed pickup time. No usee input is needed, everything is done below.    % � & &   I   u s e   a   f r e e   a p p   ' S k i m '   t o   c o n v e r t   t h e   P D F   i n t o   t e x t   a n d   f i n d   t h e   l i s t e d   p i c k u p   t i m e .   N o   u s e e   i n p u t   i s   n e e d e d ,   e v e r y t h i n g   i s   d o n e   b e l o w . #  ' ( ' l     ��������  ��  ��   (  ) * ) i      + , + I     �� -��
�� .aevtodocnull  �    alis - o      ���� "0 thedroppeditems theDroppedItems��   , X    S .�� / . k   N 0 0  1 2 1 r     3 4 3 n     5 6 5 1    ��
�� 
pcnt 6 o    ���� 0 afile aFile 4 o      ���� 0 afile aFile 2  7 8 7 l   �� 9 :��   9 e _ Use Skim app to open PDF as a text file, find the Reservation Start Time, and save it as a var    : � ; ; �   U s e   S k i m   a p p   t o   o p e n   P D F   a s   a   t e x t   f i l e ,   f i n d   t h e   R e s e r v a t i o n   S t a r t   T i m e ,   a n d   s a v e   i t   a s   a   v a r 8  < = < O    � > ? > l   � @ A B @ k    � C C  D E D l    F G H F I   �� I��
�� .aevtodocnull  �    alis I o    ���� 0 afile aFile��   G  	 Open PDF    H � J J    O p e n   P D F E  K L K O     � M N M k   ' � O O  P Q P r   ' < R S R c   ' : T U T J   ' 8 V V  W�� W N   ' 6 X X n   ' 5 Y Z Y 7  + 5�� [ \
�� 
cha  [ m   / 1����  \ m   2 4����� Z 4   ' +�� ]
�� 
Page ] m   ) *���� ��   U m   8 9��
�� 
TEXT S o      ���� 0 textselection textSelection Q  ^ _ ^ l  = H ` a b ` r   = H c d c I  = F���� e
�� .sysooffslong    ��� null��   e �� f g
�� 
psof f m   ? @ h h � i i  P i c k u p   T i m e g �� j��
�� 
psin j o   A B���� 0 textselection textSelection��   d o      ���� 0 fdash fDash a  
 keep time    b � k k    k e e p   t i m e _  l m l r   I V n o n I  I T���� p
�� .sysooffslong    ��� null��   p �� q r
�� 
psof q m   K N s s � t t  M , r �� u��
�� 
psin u o   O P���� 0 textselection textSelection��   o o      ���� 0 ldash lDash m  v w v r   W h x y x n   W f z { z 7 X f�� | }
�� 
ctxt | l  ^ b ~���� ~ \   ^ b  �  o   _ `���� 0 ldash lDash � m   ` a���� ��  ��   } l  c e ����� � o   c e���� 0 ldash lDash��  ��   { o   W X���� 0 textselection textSelection y o      ���� 0 ampm AmPm w  � � � r   i � � � � n   i ~ � � � 7 j ~�� � �
�� 
ctxt � l  p v ����� � [   p v � � � o   q r���� 0 fdash fDash � m   r u���� ��  ��   � l  w } ����� � \   w } � � � o   x y���� 0 ldash lDash � m   y |���� ��  ��   � o   i j���� 0 textselection textSelection � o      ���� 0 	timehours 	timeHours �  � � � r   � � � � � n   � � � � � 7 � ��� � �
�� 
ctxt � l  � � ����� � \   � � � � � o   � ����� 0 ldash lDash � m   � ����� ��  ��   � l  � � ����� � \   � � � � � o   � ����� 0 ldash lDash � m   � ����� ��  ��   � o   � ����� 0 textselection textSelection � o      ���� 0 timeminutes timeMinutes �  ��� � r   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � o   � ����� 0 ampm AmPm � m   � � � � � � �    � o   � ����� 0 	timehours 	timeHours � m   � � � � � � �  . � o   � ����� 0 timeminutes timeMinutes � o      ���� 0 
pickuptime 
pickupTime��   N 4     $�� �
�� 
docu � m   " #����  L  ��� � l  � � � � � � I  � ��� � �
�� .coreclosnull���     obj  � 4   � ��� �
�� 
docu � m   � �����  � �� ���
�� 
savo � m   � ���
�� savono  ��   � * $ Close and do not save Skim document    � � � � H   C l o s e   a n d   d o   n o t   s a v e   S k i m   d o c u m e n t��   A   Start Skim    B � � �    S t a r t   S k i m ? m     � �x                                                                                  SKim  alis      Macintosh HD                   BD ����Skim.app                                                       ����            ����  
 cu             Applications  /:Applications:Skim.app/    S k i m . a p p    M a c i n t o s h   H D  Applications/Skim.app   / ��   =  � � � l  � ��� � ���   � 7 1 Rename the PDF using the var generated with Skim    � � � � b   R e n a m e   t h e   P D F   u s i n g   t h e   v a r   g e n e r a t e d   w i t h   S k i m �  ��� � O   �N � � � k   �M � �  � � � r   � � � � � n  � � � � � 1   � ���
�� 
pnam � o   � ����� 0 afile aFile � o      ���� 0 filename fileName �  � � � l  � � � � � � r   � � � � � I  � ����� �
�� .sysooffslong    ��� null��   � �� � �
�� 
psof � m   � � � � � � �  - � �� ���
�� 
psin � o   � ����� 0 filename fileName��   � o      ���� 0 	firstdash 	firstDash � < 6 Remove RESERVATION or CHECKOUT should replace with CK    � � � � l   R e m o v e   R E S E R V A T I O N   o r   C H E C K O U T   s h o u l d   r e p l a c e   w i t h   C K �  � � � l  � � � � � � r   � � � � � I  � ����� �
�� .sysooffslong    ��� null��   � �� � �
�� 
psof � m   � � � � � � �  - 2 0 � �� ���
�� 
psin � o   � ����� 0 filename fileName��   � o      ���� 0 lastdash lastDash �    Remove download timestamp    � � � � 4   R e m o v e   d o w n l o a d   t i m e s t a m p �  � � � l  � � � � � r   � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � o   � ����� 0 
pickuptime 
pickupTime � m   � � � � � � �    � n   � � � � � 7 � ��� � �
�� 
ctxt � l  � � ����� � [   � � � � � o   � ����� 0 	firstdash 	firstDash � m   � ����� ��  ��   � l  � � ����� � \   � � � � � o   � ����� 0 lastdash lastDash � m   � ����� ��  ��   � o   � ����� 0 filename fileName � m   � � � � �    . � m   � � �  p d f � n      1   ��
�� 
pnam o   � ���� 0 afile aFile �   Compile filename    � � "   C o m p i l e   f i l e n a m e �  l 	
 r   m  ����  n       1  �
� 
labi o  �~�~ 0 afile aFile	   Set label to red on Mac   
 � 0   S e t   l a b e l   t o   r e d   o n   M a c  l �}�}   Q K Use server folder as destination if available, otherwise prompt for choice    � �   U s e   s e r v e r   f o l d e r   a s   d e s t i n a t i o n   i f   a v a i l a b l e ,   o t h e r w i s e   p r o m p t   f o r   c h o i c e  r   n   m  �|
�| 
ctnr o  �{�{ 0 afile aFile o      �z�z 0 sourcefolder sourceFolder �y Q  M l ) ! I )�x"#
�x .coremovenull���     obj " o  �w�w 0 afile aFile# �v$�u
�v 
insh$ 4  %�t%
�t 
alis% m  !$&& �'' > V o l u m e s : R E S E R V A T I O N S : N o t   P u l l e d�u    !  The filepath of the server   ! �(( 6   T h e   f i l e p a t h   o f   t h e   s e r v e r R      �s�r�q
�s .ascrerr ****      � ****�r  �q   k  1M)) *+* r  1>,-, I 1<�p�o.
�p .sysostflalis    ��� null�o  . �n/�m
�n 
prmp/ m  5800 �11 r N o t   c o n n e c t e d   t o   s e r v e r ,   p l e a s e   c h o o s e   w h e r e   t o   s a v e   P D F :�m  - o      �l�l "0 theoutputfolder theOutputFolder+ 232 l ??�k45�k  4 G A set theOutputFolder to "Macintosh HD:Users:  'user' :Downloads"    5 �66 �   s e t   t h e O u t p u t F o l d e r   t o   " M a c i n t o s h   H D : U s e r s :     ' u s e r '   : D o w n l o a d s "  3 7�j7 I ?M�i89
�i .coremovenull���     obj 8 o  ?@�h�h 0 afile aFile9 �g:�f
�g 
insh: 4  CI�e;
�e 
alis; o  GH�d�d "0 theoutputfolder theOutputFolder�f  �j  �y   � m   � �<<�                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  �� 0 afile aFile / o    �c�c "0 thedroppeditems theDroppedItems * =�b= l     �a�`�_�a  �`  �_  �b       �^>?�^  > �]
�] .aevtodocnull  �    alis? �\ ,�[�Z@A�Y
�\ .aevtodocnull  �    alis�[ "0 thedroppeditems theDroppedItems�Z  @ �X�W�V�U�T�S�R�Q�P�O�N�M�L�K�X "0 thedroppeditems theDroppedItems�W 0 afile aFile�V 0 textselection textSelection�U 0 fdash fDash�T 0 ldash lDash�S 0 ampm AmPm�R 0 	timehours 	timeHours�Q 0 timeminutes timeMinutes�P 0 
pickuptime 
pickupTime�O 0 filename fileName�N 0 	firstdash 	firstDash�M 0 lastdash lastDash�L 0 sourcefolder sourceFolder�K "0 theoutputfolder theOutputFolderA +�J�I�H�G ��F�E�D�C�B�A�@ h�?�>�= s�<�;�: � ��9�8�7<�6 � � � ��5�4�3�2&�1�0�/�.0�-
�J 
kocl
�I 
cobj
�H .corecnte****       ****
�G 
pcnt
�F .aevtodocnull  �    alis
�E 
docu
�D 
Page
�C 
cha �B�
�A 
TEXT
�@ 
psof
�? 
psin�> 
�= .sysooffslong    ��� null
�< 
ctxt�; �: 
�9 
savo
�8 savono  
�7 .coreclosnull���     obj 
�6 
pnam
�5 
labi
�4 
ctnr
�3 
insh
�2 
alis
�1 .coremovenull���     obj �0  �/  
�. 
prmp
�- .sysostflalis    ��� null�YTR�[��l kh ��,E�O� ��j O*�k/ *�k/[�\[Zk\Z�2kv�&E�O*����� E�O*�a ��� E�O�[a \[Z�k\Z�2E�O�[a \[Z�a \Z�a 2E�O�[a \[Z��\Z�m2E�O�a %�%a %�%E�UO*�k/a a l UOa  ��a ,E�O*�a ��� E�O*�a ��� E�O�a %�[a \[Z�k\Z�k2%a %a %�a ,FOl�a  ,FO�a !,E�O �a "*a #a $/l %W #X & '*a (a )l *E�O�a "*a #�/l %U[OY��ascr  ��ޭ
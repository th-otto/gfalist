 GfABASIC       �   �   �   �   �   �   �   �   �  b  b  b  P  �  �          <  <  <  <  <  l  l  l  �HNRRNRSNSDRM24X2Y2Z2VX2VY2VZ2NTSPRM1X1Y1VX1VY1Z1VZ1SF2TIMEM2IRRVTHITNRETT1IKJR1R2AXAVAZAYRRXCYCZCXX1YY1ZZ1XX2YY2ZZ2XPYPZPATR_DAT AXYVXVYZVZYVCEN_MASSCENTER_MASSPARTICLE_PUSHER
INPUT_DATASCREEN_DISPLAYINITIAL_COMPCNETER_MASS	INIT_DATAINIT_COMPUTEINITIAL_COMPUTEREQUEST_DATASTORED_DATA8 This program is from Astronomy Magazine December 19886 Article name: Galactic Collisions on Your Computer8. Authors: Michael C. Schroeder & Neil Comins* GFA conversion version by James Kajpust@ No program copyright listed, program offered free by magazine   Units used:.    G (universal gravitational constant = 1>    t (time unit T.U.)                  = 1.2 million yearsg8    d (distance D.U.)                   = 500 Parsecsy<                                        = 1630 light yearsD    m (mass unit M.U.)                  = 20 Billion solar massess@ The TARGET galaxy is a disk and the INTRUDER galaxy is point.  D ----------------------------------------------------------------s  J*� �zz   	 !��zz   	 !��zz   	 !��zz   	 !��zz   	 !��zz   	 FYF  The main program-,�Fm,�Fs,�Fb,�Fm6Y�!� "�*Press [Control]+[Shift]+[Enter] to escape "F+�FsYF ,Y�p   !�@    "�Galaxies in CollisionF"Y�    !�0    "�
Polar View"F"Y�X   !�0    "�	Edge View"F�!� %   !�    	!�%   Fe�     !�!�    !�4   Fe�!� 4   !�    	!�4   F 8 Initialize TARGET galaxy mass, position and velocity.�E�     F.�E�   F��E�HH   F��E�F�E�F�E�F�E�F�E�F6 Scale INTRUDER galaxy mass, position and velocity.y�E�F
�E��F
�E��F
�E��F
�E��F Set up initial loadH Place stars in concentric rings from R=10 to R=30 at intervals of dr. :�E�G� F�E�     #�� �Fi�EN�� F �E#�    ��� #�4   O F ���    JF�E�fffffi��FF  0�E�G�F�E#�� �4   �F�EO#�� �44   F 
�E��F Initialize star positions"� � E�*�� e.�1� �    Fz"�� E�)�� e.�1� � H   Fz
�� E�F�
�� E�F�D Initialize star velocities to place them in circular orbits about the TARGET galaxy�� E�)� F�� E�*� F�
	�F*
	��F*,�F .F +�F� 
��E�G�F 
�� E�G�F� 	N�E�G�F> Determine the force on a star due to the galactic centers. < SF2 below, called the softening factor is used to prevent@ overflows during force calculations.  SF2 is assigned a value< above.  Should be small as possible to better approximate a true 1/r**2 force.l>�!E�##� � � 	�#�� � 	�#�� � 	��� 	�@    Fs>�"E�##� � � 	�#�� � 	�#�� � 	��� 	�@    Fs& calculate stars x,y,z accelerations �#E�!#�� �  �"#�� �  F �&E�!#���  �"#���  F �%E�!#���  �"#���  F> Update star positions and velocities using a time centeredu leap-frog algorithm�� E�� �#F�� E�� �&F�� E�� �%F� � E� � �� F��� E�� �� F��� E�� �� F�
	t�F: Update positions and velocities of the galactic centers0�'E##�� 	�#�� 	�#�� 	�� 	�@    Ft�#E#�� �'F��&E#�� �'F��%E#�� �'F��E���#F �E���&F��E���%F��E���#F��	E�	��&F��
E�
��%F�
�E��F
�E��F
�E��F
�E��F
�E��	F
�E��
F
�E��F�
	f� F�,�FE
	X�F�.F +�F-J Calculate center of mass of system for use of center of output displays�(E#���� #�� F�)E#���� #�� F�*E#���� #�� F@ Calculate position of galactic centers and display on screent�+E#��( F�,E#��) F�-E#��* F�.E#��( F�/E#��) F�0E#��* F"�+�    !�,�     !�    Fz$�+�p   !��-�     !�    Fm"�.�    !�/�     !�    Fz$�.�p   !��0�     !�    Fm put stars on screen ��E�G�F�1E#� � �( Fe�2E#�� �) Fe�3E�#�� �* F�1�    !�2�     F��1�p   !�3�     F�
	v�F Y�@   !�H    "�Time = "F=��###.#!������ "F� millions of years"F.F : ------------------------------------------------------ +�Fe.:�%Do you wish to use stored data (y/n)?"� F- �� �n� �NJF ,�
F� �F ,�FFF .F +�FF� E�     F��E�     F�
�E� �F�E�     #� � F�E�     �F#�E�     F��E�     F��E�     F��E�F �	E�F�
E�F�E�   
F�.F +�
Fp@:�8Input the number of rings of stars in the TARGET galaxy "� F@:�7Input the number of stars per ring in the TARGET galaxy"�Fs
�E� �F�E�     #� � FF P:�HInput mass fraction of INTRUDER galaxy in unit of the taget galaxy mass "�FF P:�AInput the initial X, Y, and Z coordinates of the INTRUDER galaxy "�!�!�F F N:�@Input the initial X, Y, and Z velocities of the INTRUDER galaxy "�!�	!�
FF 4:�,Input the number of time steps for this run "�F.F �            6�m��      7��K[�hv��C��>`�^ ��e���q�   
    �m>H�e��;�E��e�}�����q�    @           H   !�E�9���U�0         "   4��d�   `        'ԟ�}�A�	��A�      q*o����XJ���Q�^^����L       � ����&� ��&�" Y ��B�&��&�"
�ftr�k��}`d�                   �  )r  @�  Xf  o�  �Z                J z 
�             l     ~ �
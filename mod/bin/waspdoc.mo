 ;_� � 
	    
	     �o� �
	  � � � �
	  � � �� � �%� � 
	    � � �B� � 
	 	 ��  �2����@
	 
 ��  ��
	  ��  �� ��� � �U� � 
	        
�� �  � � �q� ����e
	    ��   �k
	    
�� � � � ����
	  �� ��
	    	    
�� � ��
	  ��  	 � � ��� �
	  �� ��
	  �� � � 
�� � �
	  � �   ��
�� ��
	  � �  " ��
	 & 
��  '  ��
	 ( ��  � �  ��� �	 )�I� �
�� � � 
	  � �   * �
�� � �
	  � �  , ��
	 . �� �
��  + �H
	  � �   / �:
�� � �
	  � �  1 �#
	 2 �� �9
	  � �  3 �3
	 5 �� �9
��  0 �H
	  � �   6 �H
�� �H� �
 7�c��
	 8 
	 9 � �     �]��]
	 : � �  �n
� �	 
� �
 �  import waspdoc/check-source waspdoc/dump-source main make-tc exit error next-arg null? car cdr usage print* AUSAGE: waspdoc check source -- Check source for new and missing.
 ;       waspdoc dump source <src-file> -- View source info.
 ;       waspdoc dump module <mod-name> -- View module info.
 fail println* Did not understand  . Expected more. next-opt 	tc-empty? 	Expected  what tc-next! opt parse-global-options memq    -h !� --help # $ -r %� --root set-waspdoc-root! WaspDoc root path 
tc-append! perform-command +� check -� source check-source 0� dump -� dump-source 4� module dump-module�� 
catch-exit eq? 	error-key re-error
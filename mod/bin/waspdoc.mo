 :[� � 
	    
	     �w� �
	  � � � �
	  � � �� � �'��
	    � �  � � �:� � 
	 	 ��  �3��9
	 
 ��  � � �M� � 
	        
�� �  � � �n� �
	  � �  �^
	    �h
	    � �   
�� � � � ����
	 	 �� ��
	    	    
�� � ��
	 
 ��  	 � � ��� �
	 	 �� ��
	 
 �� � � ��� �
	  � �   ��
�� ��
	  � �    ��
	 $ 
��  %  ��
	 & ��  � �  ��� �	 '�R� �
�� � � 
	  � �   ( �
�� � �
	  � �  * ��
	 , 
	 - ��  �
��  ) �Q
	  � �   . �C
�� � �
	  � �  0 �'
	 1 
	 - ��  �B
	  � �  2 �<
	 4 
	 - ��  �B
��  / �Q
	  � �   5 �Q
�� �Q� �
 6�k��
	 7 
	 8 � �     �e�e
	 9 � �  �v
� �	 
� �
 �  import waspdoc/check-source waspdoc/dump-source main make-tc exit error next-arg 	tc-empty? tc-next! usage print* AUSAGE: waspdoc check source -- Check source for new and missing.
 ;       waspdoc dump source <src-file> -- View source info.
 ;       waspdoc dump module <mod-name> -- View module info.
 fail null? println* Expected more. Did not understand  . next-opt 	Expected  what opt parse-global-options memq   -h � --help ! " -r #� --root set-waspdoc-root! WaspDoc root path tc-add! perform-command )� check +� source check-source tc->list /� dump +� dump-source 3� module dump-module�� 
catch-exit eq? 	error-key re-error
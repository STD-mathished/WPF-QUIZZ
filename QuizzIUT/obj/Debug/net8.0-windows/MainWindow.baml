   M S B A M L   `   `   `  ����C  ?QuizzIUT, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:QuizzIUTQuizzIUT  5   	       QuizzIUT.MainWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:QuizzIUT     5   	   -   5          �Name$  WNDFenetrePrincipale��5   	    � Title$ 
MainWindow��5   	   $	��412��6   $	��800��6)   .��5	      �  � ColumnDefinitions 5
   
   �� 5      $
��433* �6   �� 5      $
��367* �6   .+�5   
   �� -   5         ��Name$ LBLTitle��5      $��Questions for a champion��6"   $
��Left=�6E   $��	47,10,0,0q�6`   $	��Top=�6s   $��56��6�   $	��365��6�   $��
Bauhaus 93)�6�   $��30(�6�   �� 5   
   -   5        $ LBLQuestion��5      $��Insert the question here��6%   $
��Left=�6H   $��	66,83,0,0q�6c   $	��Top=�6v   $	��212��6�   $��26��6�   �� 5   
   -   5         ��Name$ TBXResponse��5      $��Center=�6'   $��	0,133,0,0q�6D    �� TextWrapping$
 Wrap=�6W   $	��Top=�6k   $	��326��6�   $��18��6�   $��Answer there��6�   �� 5   
   -   5         ��Name$ 
BTNConfirm��5      $��Confirm��6%   $
��Left=�67   $��
20,132,0,0q�6R   $	��Top=�6f   $��20��6�   $��46��6�   $��1��6�   �� 5   
   -   5        $ LBLCorrectAnswers��5      $��Correct answers: ��6+   $
��Left=�6G   $��
82,198,0,0q�6b   $	��Top=�6v   $��26��6�   $	��100��6�   �� 5   
   -   5        $ LBLCorrectAnswersValue��5      $��0��60   $
��Left=�6<   $��187,198,0,0q�6W   $	��Top=�6l   $��26��6�   $��16��6�   �� 5   
   -   5        $ LBLIncorrectAnswers��5      $��Incorrect answers:��6-   $
��Left=�6J   $��
82,237,0,0q�6e   $	��Top=�6y   $��26��6�   $	��105��6�   �� 5   
   -	   5        $ LBLIncorrectAnswersValue��5      $��0��62   $
��Left=�6>   $��187,237,0,0q�6Y   $	��Top=�6n   $��26��6�   $��16��6�   �� 5   
   -
   5         ��Name$ 
GoodAnswer��5      $
��Left=�6)   $��	2,211,0,0q�6D   $
��Wrap=�6W   $��Congrats ! good answer��6k   $	��Top=�6�   $y�Hidden=�6�   $��16��6�   $	��126��6�   $��1��6�   �� 5   
   -   5        $ WrongAnswer��5      $��Center=�6*   $��	0,278,0,0q�6G   $
��Wrap=�6Z   $'��!Unfortunately it's a wrong answer��6n   $	��Top=�6�   $y�Hidden=�6�   $��1��6�   $��16��6�   $	��178��6�   � 5   
   $��1��6   $��Center=�6   $��50��6<   $��0,32,0,0q�6H   $	��Top=�6Z   $	��234��6r   .+�5      �� -   5         ��Name$ SDRNightMode��5      $��Center=�6+   $��Center=�6H   $	��120��6c   	 � Maximum$	 1Q�6o   $��18��6�   �� 5      -   5        
 ��Name$

 moon��5      $
��Left=�6"   $��50��6=   $��	184,0,0,0q�6I   $��Center=�6\   $��50��6w   $��	/moon.png��6�   �� 5      -   5        $	
 sun��5      $
��Left=�6!   $��50��6<   $��Center=�6H   $��50��6c   $��/sun.png��6n   5      5#      5$      
   M S B A M L   `   `   `  ����N  JHalı Saha Yönetim, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:haliSahaOdev.PageScreenshaliSahaOdev.PageScreens  5      '    !haliSahaOdev.PageScreens.Settings   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      8local&clr-namespace:haliSahaOdev.PageScreens     5        N� Title$  Settings��5	       N� 
Background
 �����.��5      � .+�5   
   &   System.Windows.Controls.DataGrid  -   5        $��dgsaha��5      $
��Left=�6!      AutoGenerateColumns .  $	��185��6X   $��	22,37,0,0q�6e   $	��Top=�6x   $	��296��6�      Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ SAHA ID��6<   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6%   �� *ID+6<     5      $ SAHA ADI��6B    6%   �� *
SAHA_ADI+6B     5      $ FİYAT��6?    6%   �� *FIYAT+6?     5      $ 	KAPASİTE��6B    6%   �� *
KAPASITE+6B   5      �� 5   
   -   5        $��txtid��5      $
��Left=�6   $��23��6:   $��
371,33,0,0q�6F    �� TextWrapping$
 Wrap=�6Z   $�� ��6n   $	��Top=�6v   $	��120��6�    J� RenderTransformOrigin$ 0.546,-1.119&�6�   �� 5   
   -   5        $��txtad��5      $
��Left=�6   $��23��6:   $��
371,61,0,0q�6F   $
 Wrap=�6Z   $�� ��6n   $	��Top=�6v   $	��120��6�   �� 5   
   -   5        $��txtfiyat��5      $
��Left=�6"   $��23��6=   $
 Wrap=�6I   $�� ��6]   $	��Top=�6e   $	��120��6}   $��
371,89,0,0q�6�   �� 5   
   -   5        $��txtkapasite��5      $
��Left=�6%   $��23��6@   $
 Wrap=�6L   $�� ��6`   $	��Top=�6h   $	��120��6�   $��371,117,0,0q�6�   �� 5   
   -   5        $��Kaydet��5      $
��Left=�6"   $��371,145,0,0q�6=   $	��Top=�6R   $	��120��6j   $��36��6v   6�   �� 5   
   -   5        $	��Sil��5      $
��Left=�6   $��36��6:   $��371,186,0,0q�6F   $	��Top=�6[   $	��120��6s   6�   5      5      
   M S B A M L   `   `   `  ����   WheelyGoodCars    WheelyGoodCars.MainWindow   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006       � Title$  Wheely Good Cars��$	��450��$	��800�� � 	Resources    TextBoxStyle �� 
TargetType �� Property �� Value3  -System.Windows.Media.Effects.DropShadowEffect   Color   	Direction   ShadowDepth   Opacity	   
BlurRadius  ButtonStyle  TabControlStyle  TabItemStyle��%k  &	        &	 `    &	 �    &	 u    �� " ��.���  � ��$ 10q���  � ��$	 350����  � ��$ 40����  � ��$ Center=���  � ��$ 10q���  � ��$ 16(���  � ��$
 Bold"���  � �� �#2c3e50��  � �� �#3498db��  � ��$ 2q���  � ��
 �������  �@J�Effect   $ Black��$	 320Q�$ 3Q�$	 0.5Q�$	 6Q��� " ��.���  � ��$ 10q���  � ��$	 350����  � ��$ 50����  � ��$ 18(���  � ��$
 Bold"���  � �� �#E74C3C��  � ��
 �������  � ��$ 15q���  � ��
 ���� ��  � ��$ 2q���  �@�Cursor$
 Hand����  �@J�Effect   $ Black��$	 320Q�$ 3Q�$	 0.7Q�$	 6Q��� " ��.���  � ��$ 20q���  � ��$ 20q���  � �� �#34495e��  � ��
 �������  � ��$ 18(���  � �� �#16a085��  � ��$ 2q��� " ��.���  � ��$ 20q���  � ��$
 Bold"���  � �� �#1abc9c��  � ��
 �������  � �� �#16a085��  � ��$ 1q���  � ��$ 16(���  � ��$
 0 10q�.��� ���#1a242f.+��� #��[ .@��� $��Auto Toevoegen��#��[ .��� ���#1a242f.+��� -   
 ��Name$
 Step1��$y�Visible=�$��Center=�$��Center=�.+��� $��Vul het kenteken in��$��18(�
��������� -    ��Name$ LicensePlateTextBox��$	��300��$��40��$��10q��� -   $��Volgende��$	��200���� -   $
 Step2��$y�	Collapsed=�$��Center=�$��Center=�.+��� $,��&Gegevens controleren en prijs invullen��$��18(�
�������$��0 0 0 20q���  �� Orientation$ 
Horizontal=�$
��Left=�$	��0 5q�.+��� $��Merk:��$	��100��$��16(�$��Center=�
��������� -   $ BrandTextBox��#��[  �� $ 
Horizontal=�$
��Left=�$	��0 5q�.+��� $��Model:��$	��100��$��16(�$��Center=�
��������� -   $ ModelTextBox��#��[  �� $ 
Horizontal=�$
��Left=�$	��0 5q�.+��� $��Prijs:��$	��100��$��16(�$��Center=�
��������� -   $ PriceTextBox��#��[  �� $ 
Horizontal=�$
��Left=�$	��0 5q�.+��� $��Foto:��$	��100��$��16(�$��Center=�
��������� -   $��Selecteer Afbeelding���� -	    ��Name$ SelectedImageTextBlock��
�������$��10,0,0,0q�$��Center=��� $ 
Horizontal=�$��Center=�$
��0 20q�.+��� -
   $��Vorige��$	��100��$��10q��� -   $��Volgende��$	��100��$��10q��� -   $
 Step3��$y�	Collapsed=�$��Center=�$��Center=�.+��� $��Vul een beschrijving in��$��18(�
�������$��0 0 0 20q��� $ 
Horizontal=�$
��Left=�$	��0 5q�.+��� $��Beschrijving:��$	��100��$��16(�$	��Top=�
��������� -   $ DescriptionTextBox��#��[  $��80���� $ 
Horizontal=�$��Center=�$
��0 20q�.+��� -   $��Vorige��$	��100��$��10q��� -   $��Auto Toevoegen��$	��200��$��10q��� $��Overzicht van Auto's��#��[ .���� -    ��Name$ CarsListView��$��10q� �� View �� .P��� $��ID�� �� Width$ 50�� �� DisplayMemberBinding �� *Id+�� $��Kenteken��$	 100�� �� *LicensePlate+�� $
��Merk��$	 100�� �� *Brand+�� $��Model��$	 100�� �� *Model+�� $��Prijs��$	 100�� �� *Price+�� $��Beschrijving��$	 200�� �� *Description+�� $��
Afbeelding��$	 100�� �� CellTemplate �� .R��� $��80��$��50������ *	ImagePath+�� $��Auto Verwijderen��#��[ .���� $��10q�.+��� $.��(Geef de ID van de te verwijderen auto in��$��5q�$��18(�
��������� -   $ CarIdToDeleteTextBox��#��[  �� -    ��Name$ DeleteCarButton��$��Verwijder auto��#��[ 
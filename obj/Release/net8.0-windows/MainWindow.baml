   M S B A M L   `   `   `  ����   WheelyGoodCars    WheelyGoodCars.MainWindow   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006       � Title$  Wheely Good Cars��$	��500��$	��900�� � WindowStartupLocation$ CenterScreen=� � 	Resources    TextBoxStyle �� 
TargetType �� Property �� Value3  -System.Windows.Media.Effects.DropShadowEffect   Color   	Direction   ShadowDepth	   Opacity
   
BlurRadius  ButtonStyle  TabControlStyle  TabItemStyle��%0  &	        &	 c    &	 �    &	 a    �� " ��.���  � ��$ 5q���  � ��$	 350����  � ��$ 40����  � ��$ Center=���  � ��$ 10q���  � ��$ 16(���  � ��$ SemiBold"���  � �� �#2c3e50��  � �� �#3498db��  � ��$ 2q���  � ��
 �������  �@J�Effect   $ Black��$	 320Q�$ 3Q�$		 0.4Q�$
 6Q��� " ��.���  � ��$ 5q���  � ��$	 180����  � ��$ 45����  � ��$ 16(���  � ��$
 Bold"���  � �� �#e74c3c��  � ��
 �������  �@�Cursor$
 Hand����  � ��
 ���� ��  � ��$ 0q���  �@J�Effect   $ Black��$	 320Q�$ 2Q�$		 0.6Q�$
 5Q��� " ��.���  � ��$ 20q���  � ��$ 20q���  � �� �#34495e��  � ��
 �������  � ��$ 18(���  � �� �#16a085��  � ��$ 2q��� " ��.���  � ��$
 10,5q���  � ��$
 Bold"���  � �� �#1abc9c��  � �� �#1a242f��  � �� �#16a085��  � ��$ 16(�.��� ���#1a242f.+��� #��[ .@��� $��Auto Toevoegen��#��[ .��� ���#1a242f.+��� $��20q�$	��Top=�.+��� $��	Voortgang��$��16(�
�������$��0 0 0 5q�� -    �Name$ StepProgressBar��$��20�� � Minimum$ 0Q� � Maximum$ 4Q� � Value$ 1Q����#1abc9c���#34495e�� -    ��Name$ Step1��$y�Visible=�$��Center=�$��Center=�.+��� $��Vul het kenteken in��$��18(�
�������$��10q��� -    ��Name$ LicensePlateTextBox��#��[  �� -   $��Volgende��#��[ �� -   $ Step2��$y�	Collapsed=�$��Center=�$��Center=�.+��� $,��&Gegevens controleren en prijs invullen��$��18(�
�������$��10q���  �� Orientation$ 
Horizontal=�$	��0 5q�.+��� $��Merk:��$	��100��$��16(�
�������$��Center=��� -   $ BrandTextBox��#��[  �� $ 
Horizontal=�$	��0 5q�.+��� $��Model:��$	��100��$��16(�
�������$��Center=��� -   $ ModelTextBox��#��[  �� $ 
Horizontal=�$	��0 5q�.+��� $��Prijs:��$	��100��$��16(�
�������$��Center=��� -   $ PriceTextBox��#��[  �� $ 
Horizontal=�$	��0 5q�.+��� $��Foto:��$	��100��$��16(�
�������$��Center=��� -	   $��Selecteer Afbeelding��#��[ $	��200���� -
    ��Name$ SelectedImageTextBlock��
�������$��10,0,0,0q�$��Center=��� $ 
Horizontal=�$��Center=�$
��0 20q�.+��� -   $��Vorige��#��[ �� -   $��Volgende��#��[ �� -   $ Step3��$y�	Collapsed=�$��Center=�$��Center=�.+��� $��Vul een beschrijving in��$��18(�
�������$��10q��� $ 
Horizontal=�$	��0 5q�.+��� $��Beschrijving:��$	��100��$��16(�
�������$	��Top=��� -   $ DescriptionTextBox��#��[  $	��100���� $ 
Horizontal=�$��Center=�$
��0 20q�.+��� -   $��Vorige��#��[ �� -   $��Auto Toevoegen��#��[ �� -   $ Step4��$y�	Collapsed=�$��Center=�$��Center=�.+��� $-��'Voeg tags toe (gescheiden door komma's)��$��18(�
�������$��10q��� $ 
Horizontal=�$	��0 5q�.+��� $��Tags:��$	��100��$��16(�
�������$��Center=��� -   $ TagsTextBox��#��[  $	��400���� $ 
Horizontal=�$��Center=�$
��0 20q�.+��� -   $��Vorige��#��[ �� -   $��Auto Toevoegen��#��[ �� $��Overzicht van Auto's��#��[ .���� -    ��Name$ CarsListView��$��10q� �� View �� .P��� $��ID�� �� Width$ 50�� �� DisplayMemberBinding �� *Id+�� $��Kenteken��$	 100�� �� *LicensePlate+�� $
��Merk��$	 100�� �� *Brand+�� $��Model��$	 100�� �� *Model+�� $��Prijs��$	 100�� �� *Price+�� $��Beschrijving��$	 200�� �� *Description+�� $
��Tags��$	 150�� �� *Tags+�� $��
Afbeelding��$	 100�� �� CellTemplate �� .R��� $��80��$��50������ *	ImagePath+�� $��Auto Verwijderen��#��[ .���� $��10q�$��Center=�.+��� $.��(Geef de ID van de te verwijderen auto in��$��5q�$��18(�
��������� -   $ CarIdToDeleteTextBox��#��[  �� -    ��Name$ DeleteCarButton��$��Verwijder auto��#��[ 
   M S B A M L   `   `   `  ���� C  ?Dragablz, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:DragablzDragablz  5clr-namespace:Dragablz.DockablzDragablz.Dockablz  9!clr-namespace:Dragablz.ConvertersDragablz.Converters  1clr-namespace:Dragablz.ThemesDragablz.Themes  \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089    BooleanToVisibilityConverter7    1Dragablz.Converters.EqualityToVisibilityConverter ! EqualityToVisibilityConverter9   3Dragablz.Converters.BooleanAndToVisibilityConverter # BooleanAndToVisibilityConverter4   .Dragablz.Converters.EqualityToBooleanConverter  EqualityToBooleanConverter  FocusVisual  �� Property �� Value J� SnapsToDevicePixels �� StrokeDashArray   Dragablz.DragablzIcon �� 
TargetType �� 
TargetType �� Stretch  CloseCommandHighlightColor  TabItem.Selected.Background �� Color  TabItem.Selected.Border  Button.Static.Background 	 Button.Static.Border 
 Button.MouseOver.Background  Button.MouseOver.Border  Button.Pressed.Background  Button.Pressed.Border  Button.Disabled.Background  Button.Disabled.Border  Button.Disabled.Foreground  TabItem.Static.Background �� EndPoint	 �� 
StartPoint
 � Color � Offset  TabItem.Static.Border   TabItem.MouseOver.Background  TabItem.MouseOver.Border  TabItem.Disabled.Background  TabItem.Disabled.Border  InvisibleThumbStyle'   !Dragablz.Themes.SystemCommandIcon F�Name �� StrokeStartLineCap �� StrokeEndLineCap �� Triggers P� Property P� Value �� 
TargetName  MenuCommandButtonStyle ��Name ��Name �� Triggers   Dragablz.DragablzColors   WindowGlassBrush  CloseMenuCommandButtonStyle �� BasedOn  CloseItemCommandButtonStyle  AddItemCommandButtonStyle J� RenderTransformOrigin J� Opacity �� RadiusX �� RadiusY �� ScaleY �� ScaleX �� AngleX  HideDisabledButtonStyle �� RelativeSource  �� Path! �� 	Converter  WindowTemplateKey   Dragablz.DragablzWindow" n�Name# ��Name$ ]� 
Conditions% �� Property& �� Value'   WindowInactiveBrush( J� IsHitTestVisible) ��Name* �� Orientation+   MinimizeWindowCommand,   SystemCommandType-   RestoreWindowCommand. �� 	Converter   System.Windows.WindowState/   	Maximized0 �� ConverterParameter1   MaximizeWindowCommand2   Normal3 ��Name4   CloseWindowCommand5   WindowGlassBalancedBrush    Dragablz.Dockablz.DropZone(	   "Dragablz.Dockablz.DropZoneLocation
6 	  Top7 E� 
StartPoint8 �� SweepDirection9 �� Size: �� Point; 	  Right< 	  Bottom= 	  Left> 	  Floating#
   Dragablz.DragablzItemsControl? K� IsItemsHost@ �� PaddingA � ActualWidthB � ActualHeightC 
  ItemsPresenterWidthD 
  ItemsPresenterHeight & "TabablzScrollViewerControlTemplateE �NameF � ColumnDefinitionsG � RowDefinitionsH ��NameI �� CanContentScrollJ �� CanHorizontallyScrollK �� CanVerticallyScrollL ��Name4  .System.Windows.Automation.AutomationPropertiesM   AutomationIdN � CursorO �� ScrollableHeightP � MaximumQ � Minimum*R �� #ComputedVerticalScrollBarVisibilityS �� ViewportHeightT �� ViewportSizeU � ValueV �� ModeW �� ScrollableWidthX �� Orientation,Y �� %ComputedHorizontalScrollBarVisibilityZ �� ViewportWidth $  TabablzDragablzItemsControlStyle   Dragablz.DragablzItem[ �� ContentStringFormat\ �� ContentStringFormat#   Dragablz.HeaderedDragablzItem] J� Effect3  -System.Windows.Media.Effects.DropShadowEffect^   
BlurRadius_   ShadowDepth`   	Directiona   Colorb   Opacityc   HeaderContentd   HeaderContentTemplate$e   HeaderContentTemplateSelector   ToolDragablzItemStyle   Dragablz.Dockablz.Layoutf   CloseFloatingItemg   UnfloatItemCommandh   MaximiseFloatingItemi   RestoreFloatingItemj   SizeGripk �� ConverterParameterl �� AncestorType +! 'SizableFromBottomRightDragablzItemStyle " FloatingDragablzItemStyle # StandardEmbeddedButtonStyle !$ TrapezoidDragableTabItemStyle   Dragablz.Trapezoidm  Namen   PenThickness   Dragablz.TabablzControlo   CloseItemCommand  % StandardDragablzTabItemStylep ^� 
Conditionsq �� Binding-  'System.Windows.Input.KeyboardNavigationr   TabNavigations ��Namet ��Nameu   DirectionalNavigationv   TabIndexw � 	Resourcesx ��Namey   HeaderPrefixContent&z   HeaderPrefixContentStringFormat*{   #HeaderPrefixContentTemplateSelector| 
 Name}   HeaderItemsOrganiser~ 
  ItemsOrganiser K� ZIndex�   CustomHeaderItemTemplate� `� 	Converter)   #Dragablz.TabablzHeaderSizeConverter�   Orientation� �� ElementName�   AddItemCommand�   HeaderSuffixContent&�   HeaderSuffixContentStringFormat*�   #HeaderSuffixContentTemplateSelector %& !FloatingDragablzItemsControlStyle   Dragablz.CanvasOrganiser4   .Dragablz.Dockablz.CouldBeHeaderedStyleSelector�   NonHeaderedStyle�   HeaderedStyle�  Name�   Location   Dragablz.Dockablz.Branch�   	FirstItem� �� ResizeDirection� �� ResizeBehavior�   
SecondItem�� D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml      localclr-namespace:Dragablz  ,dockablzclr-namespace:Dragablz.Dockablz  0
converters!clr-namespace:Dragablz.Converters  (themesclr-namespace:Dragablz.Themes  %�k  &	        &	      &	 
     &	      &	      '  b     &	 �    &	 �    &	 �    &	 �    &		 �    &	
      &	     &	 *    &	 ?    &	 T    &	 i    &	 ~    &	 �    &	 �    &	 �    &	 R    &	 e    &	 x    &	 �    '  �    &	 �    7  7  7  7  &	 �    7  7  &	 �    7  7  &	 7    7  &	 6    7   &	 �    7  '  �    7  7  7  7  7  7  7  7  7  7  '  �    7  7  7  7  7  '
  j    &	 x    &	 �    7  '  �    '  �     7  7  7  &	  �"    7  7  7  7  7  7  7  7  7  7  7  7  7  7  7  7  7  7  7  7  7  7  7  &	! !1    7  7  &	" 3    7  7  7  7  7  7  7  7  7  7  &	# �9    7  7  7 	 7 
 7  7  7  7  7  7  &	$ �<    7  7  7  7  7  7   7  7  &	% W@    7  7  7  7  7  7  7  7  7  7  7  7  7  7  7  7  7  7  7  7  7  7  '  EU    7  7  7 % 7 # 7  7  7   '  �_    7  7  &	& �`    '  �a    7 & 7 " 7   7   7   7   7   7  '  Ie    ��        �� .���   � �� �� .R��� $��2q� . #��� ��$��1��$	 1 2R��� "  .���   � ��$ 16����   � ��$ 16����   �@�ToolTip$ Dragablz����   � ��
 ���� ��   � �� �� "  .R��� #��z��#��z��#��z��._�F� ������r��_@��D�.=(��D�����D��y�]D7S킐�'����l/"� ����������y?F�H�х���,5��'���d6�.=(����p��\�&j$3P�b$3т�v $3Ѱ�y�4U���{�4U�bG�D���<7�D��wQ[ţ���jө��_05W|�]���5���ʧ�XI�ݺ��
�ݺV����ݺ>̆i����K�3vI%(ӝ1M��U@�~໋@@�_�S���ظ S��	#��z��$ Uniform=���#e04343���� $ #FFFFFF���� $ #ACACAC���� $ 	#FFDDDDDD���� $ 	#FF707070���� $ 	#FFBEE6FD���� $ 	#FF3C7FB1���� $ 	#FFC4E5F6���� $ 	#FF2C628B���� $ 	#FFF4F4F4���� $ 	#FFADB2B5���� $ 	#FF838383���� $	 0,1&�$		 0,0&�.��� $
 #F0F0F0��$	 0.0Q�� $
 #E5E5E5��$	 1.0Q��� $ #ACACAC���� $	 0,1&�$		 0,0&�.��� $
 #ECF4FC��$	 0.0Q�� $
 #DCECFC��$	 1.0Q��� $ #7EB4EA���� $ #F0F0F0���� $ #D9D9D9���� " n�.���   � ��
 ���� ��   � �� �� .R�� #��z���� "  .���   � ��$ 10����   � ��$ 10����   � ��$ 4 2 4 2q���   � �� �� "  .R�F� $
 Path��+���� � �_;р, � � � @B р,��3	$ Uniform=�#��z��$	��1.5��$ Square=�$ Square=� .  P�  �@ SystemCommandType$ MaximizeWindow=�. ��� $
 Path��  � ��+ ��%& �%& ����%& ��� �Ѡ%&  �	�� $
 Path��  � ��$
 1.25���� $
 Path��  �@��EdgeMode$ Aliased=�P�  �@ SystemCommandType$ MinimzeWindow=�. ��� $
 Path��  � �� ��@��	 ZbѠ/��Z	�� $
 Path��  �@��StrokeStartLineCap$
 Flat=��� $
 Path��  �@��StrokeEndLineCap$
 Flat=��� $
 Path��  � ��$
 1.25���� $
 Path��  �@��EdgeMode$ Aliased=�P�  �@ SystemCommandType$ RestoreWindow=�. ��� $
 Path��  � ��a ��%& @]� �@�n@]� �@�n@�Ѡ%& @��@�� �%& ����%& �����|�@�n��|�@�n@]� �@�� @]� 	�� $
 Path��  � ��$
 1.25���� $
 Path��  �@��EdgeMode$ Aliased=��� " ��.���   �@�FocusVisualStyle8   ��   � ��
 ���� ��   � ��
 ���� ��   � ��# � ����   � ��$ 0q���   � ��$ Center=���   � ��$ Center=���   � ��$ 1q���   �@J�Opacity$ .8Q���   � ��$ 24����   � ��$ 20����   � �� �� " ��.R��� $ border��#��z��#��z��#��z�� . ._��� $ contentPresenter��|�.  #��z��#��z����. # z #��z�� P�  �@��IsDefaulted . . ��� $ border��# � ��  � ��P�  � {� .  . ��� $ border��8    � ���� $ border��8    � ���� $ contentPresenter��8    � �� P�  �@J�IsMouseOver . . ���   � ��# Z ��   � ��# Z�P�  � �� . . ���   �@J�Opacity$ 1Q��� " ��8   .���   � �� �� # Z����   � ��$ 46����   � ��$ 0 0 4 0q���   � ��# Z� P�  �@J�IsMouseOver . . ���   � �� �� 8  ��   �@J�Opacity$ 1Q��� " ��8   .���   � �� �� .R�� .+�A� #��z��#��z��#��z��F� $
 Path��+���� � �_;р, � � � @B р,��3	$��6��$��6��$ Uniform=�#��z��$	��1.5��$ Square=�$ Square=� . ��   � �� �� # Z����   � ��$ 12����   � ��$ 12����   � ��$ 4 0 2 0q���   � ��# Z� P�  �@J�IsMouseOver . . ���   � �� �� 8  ��   �@J�Opacity$ 1Q��� " ��8   .���   � �� �� .R�� .+��� $��20��$	��190��
�������$��10 -11 -60 0q�$ Uniform=�#��z��$ 0.5,0.5&�$	 0.5Q�$ 3��$ 3�� . z�V� .~��� $ 0.906Q�$ 1.103Q��� $ 20Q���   � �� �� # Z����   � ��$ 12����   � ��$ 12����   � ��$ 4 0 2 0q���   � ��# Z� P�  �@J�IsMouseOver . . ���   �@J�Opacity$
 0.75Q���   � ��# Z ��   � ��# Z�P�  � �� . . ���   �@J�Opacity$ 1Q��� " ��.���   � y� ��  �� *TemplatedParent+$*  $(dockablz:Layout.IsFloatingInLayout)�8!    P�  � {� .  . ���   � y�$ 	Collapsed=��� "  .R��� #��z��#��z��#��z��._�� .+��� .u�� .+�n� $" PART_WindowRestoreThumb��8��  �� �� $# WindowResizeGrip��$��Right=���.  $y�	Collapsed=�$��Bottom=� P�  �@�WindowState$ 	Maximized=�. ��� $ PART_WindowRestoreThumb��  �@J�IsHitTestVisible . ]� $ �� % �@�
ResizeMode$& CanResizeWithGrip=��� % �@�WindowState$& Normal=�./��� $ WindowResizeGrip��  � y�$ Visible=��� "  .���   �@�WindowStyle$
 None=���   �@�AllowsTransparency . ��   � ��# � ����   � ��# Z' ��   � ��# Z���   � ��$ 1q���   �@�
ResizeMode$ 	CanResize=���   � �� �� "  .R�� .+��� #��z��#��z��#��z��._��� .u�� .+�n� $" PART_WindowRestoreThumb��8��  ( .  �� $��4q��� $) SystemCommandsPanel��$��Right=�$	��Top=�$* 
Horizontal=�.+��� #��Z+ 8�� .��  $, MinimzeWindow=��� #��Z- 8�� y��� *WindowState+8.  #0 Z/ .��  $, RestoreWindow=��� #��Z1 8�� y��� *WindowState+8.  #0 Z2 .��  $, MaximizeWindow=��� $3 CloseWindowCommandButton��#��Z4 8�� .��  $, CloseWindow=�n� $" PART_WindowResizeThumb��8��  P�  �@�WindowState$ 	Maximized=�. ��� $ PART_WindowRestoreThumb��  �@J�IsHitTestVisible . P�  �@ IsBeingDraggedByTab . . ��� $ SystemCommandsPanel��  � y�$ 	Collapsed=�P�  �@�IsActive . . ��� $ CloseWindowCommandButton��  � �� �� 8   P�  �@�
ResizeMode$ CanResizeWithGrip=�. ���   � ��8 	 P�  �@�IsActive . . ���   � ��# Z5 P�  �@ IsBeingDraggedByTab . . ���   � ��
 ���� ��   � ��
 ���� �� "  .���   �@J�Opacity$	 .25Q���   � �� �� "  .R�� .+�F� #��z��y��� *
Location+8.   #0 Z6 ��B� .��E� 
PathFigure��$7 160, 0&�.���� $8 	Clockwise=�$9 60,60��$
: 0, 0&�F� #��z��y��� *
Location+8.  #0 Z; ��B� .��E� $7 60, 160&�.���� $8 	Clockwise=�$9 60,60��$: 60, 0&�F� #��z��y��� *
Location+8.  #0 Z< ��B� .��E� $7 0, 60&�.���� $8 	Clockwise=�$9 60,60��$: 160, 60&�F� #��z��y��� *
Location+8.  #0 Z= ��B� .��E� $
7 0, 0&�.���� $8 	Clockwise=�$9 60,60��$: 0, 160&�A� #��z��$	��120��$	��120��y��� *
Location+8.  #0 Z>  P�  �@ 	IsOffered . . ���   �@J�Opacity$	 0.5Q��� " 
 .���   � ��$
 Left=���   � ��$	 Top=���   � �� �� .R��� ? . ��   � �� �� " 
 .R��� #��z��#@ z��#��z��#��z�� . ._��� $
��Auto=�$
��Auto=�#��zA #��zB ��Z� .���� # z $
��Left=�$	��Top=�#��zC #��zD �� " ��.R�� $
E Grid��#��z��F �� $��* ��� $
��Auto �G �� $��* ��� $
��Auto �.+��� $!H PART_ScrollContentPresenter��#I z��J .  K .  #��z��#��z��$��0��#��z��$��0���� $L PART_VerticalScrollBar��$M VerticalScrollBar��$N Arrow��$��0��#P zO $Q 0Q�$��1��#y�zR #T zS $��0 1 0 0q�U �� *VerticalOffset+$V OneWay=� �� *TemplatedParent+�� $L PART_HorizontalScrollBar��$M HorizontalScrollBar��$N Arrow��$��1��#P zW $Q 0Q�$X 
Horizontal=�$��0��#y�zY #T zZ $��1 0 0 0q�U �� *HorizontalOffset+$V OneWay=� �� *TemplatedParent+�� " 
 .���   � ��$
 Left=���   � ��$	 Top=���   � �� �� .R��� ? . ��   � �� �� " 
 .R��� #��z��#@ z��#��z��#��z�� . ._��� $
��Auto=�$
��Auto=�#��zA #��zB 8��  .���� # z $
��Left=�$	��Top=�#��zC #��zD �� "  ���   �@��Left �� *X+ �� *Self+��   �@��Top �� *Y+ �� *Self+��   � �� �� "  .R��� #��z��#@ z��#��z��#��z�� . ._�� F �� $
��Auto ��� $��* �.+�n� $" 
PART_Thumb��$��30��$��30��
��� ���$��Center=��� $��1��#��z��#��z��#\ z[ #��z��#��z��# z  P�  �@ 
IsDragging . . ���   �@J�Opacity$	 .95Q�P�  �@ IsSiblingDragging . . ���   �@J�Opacity$ .5Q��� "  ���   � ��$ 2q���   � ��8   ��   � ��$ 1q���   �@��Left �� *X+ �� *Self+��   �@��Top �� *Y+ �� *Self+��   � �� �� "  .R�� #��z��.+��� 
�������]   $^ 10Q�$_ 5Q�$	` 315Q�$a Black��$b .5Q��� #��z��#@ z��#��z��#��z�� . ._�]� .+�� $	��Top=�8�� .+��� #��zc #��zd #\ z[ #��z��#��ze #��z��# z #��z��n� $" 
PART_Thumb��$��Stretch=�$��Stretch=�8�� �� #��z��#��z��#\ z[ #��z��#��z��# z #��z���� "  ���   � ��8   ��   � ��$ 4q���   �@��Left �� *X+ �� *Self+��   �@��Top �� *Y+ �� *Self+��   � �� �� "  .R�� #��z��.+��� 
�������]   $^ 10Q�$_ 5Q�$	` 315Q�$a Black��$b .5Q��� #��z��#@ z��#��z��#��z�� . ._�]� .+�� $	��Top=�8�� .+�n� $" 
PART_Thumb��$��Stretch=�$��Stretch=�8�� ]� #��z��.+��� $��Right=�#��Zf $��1 0 0 0q�8�� ����  �� *TemplatedParent+.��  $��10��$��10��$, CloseWindow=��� $��Right=�#��Zg $��1 0 0 0q�8�� ����  �� *TemplatedParent+.��F� $��12��$��12��$ UniformToFill=����#000000�������!��!�@KL ��!�@KL @KL � � @KL � � ��- �@KL ��- �P[; ��- ��- `�; ��- @KL ���- ��!���- ��2P[; @o@@KL @o@���!@o@Ӡ�2@o@@o@��2@o@��!�@o@ � ���! � ���!��!���� ��- р�� @KL ��f@KL рhv �I� QP� =
ףp=0@���!�a ���!��� �@o@��� �@o@��- р�� ��- 	�� $��Right=�#��Zh $��1 0 0 0q�8�� ����  �� *TemplatedParent+.��  $��10��$��10��$, MaximizeWindow=��� $��Right=�#��Zi $��1 0 0 0q�8�� ����  �� *TemplatedParent+.��  $��10��$��10��$, RestoreWindow=��� #��zc #��zd #\ z[ #��z��#��ze # z ( .  �� #��z��#��z��#\ z[ #��z��#��z��# z #��z��n� 8�� $
j Left=�$
��Left=�$��Stretch=�$N SizeWE������  �� *TemplatedParent+$  BorderThickness.Left�{��� $)  #(dockablz:Layout.FloatingItemState)� �� *TemplatedParent+8!  #k Z2 n� 8��	 $	j Top=�$��Stretch=�$	��Top=�$N SizeNS������  �� *TemplatedParent+$  BorderThickness.Top�{��� $)  #(dockablz:Layout.FloatingItemState)� �� *TemplatedParent+8! 
 #k Z2 n� 8�� $j Right=�$��Right=�$��Stretch=�$N SizeWE������  �� *TemplatedParent+$  BorderThickness.Right�{��� $)  #(dockablz:Layout.FloatingItemState)� �� *TemplatedParent+8!  #k Z2 n� 8�� $j Bottom=�$��Stretch=�$��Bottom=�$N SizeNS������  �� *TemplatedParent+$  BorderThickness.Bottom�{��� $)  #(dockablz:Layout.FloatingItemState)� �� *TemplatedParent+8!  #k Z2 n� 8�� $j TopLeft=�$
��Left=�$	��Top=�$N SizeNWSE������  �� *TemplatedParent+$  BorderThickness.Right�����  �� *TemplatedParent+$  BorderThickness.Bottom�{��� $)  #(dockablz:Layout.FloatingItemState)� �� *TemplatedParent+8!  #k Z2 n� 8�� $j TopRight=�$��Right=�$	��Top=�$N SizeNESW������  �� *TemplatedParent+$  BorderThickness.Right�����  �� *TemplatedParent+$  BorderThickness.Bottom�{��� $)  #(dockablz:Layout.FloatingItemState)� �� *TemplatedParent+8!  #k Z2 n� 8�� $j BottomRight=�$��Right=�$��Bottom=�$N SizeNWSE������  �� *TemplatedParent+$  BorderThickness.Right�����  �� *TemplatedParent+$  BorderThickness.Bottom�{��� $)  #(dockablz:Layout.FloatingItemState)� �� *TemplatedParent+8!  #k Z2 n� 8�� $j 
BottomLeft=�$
��Left=�$��Bottom=�$N SizeNESW������  �� *TemplatedParent+$  BorderThickness.Right�����  �� *TemplatedParent+$  BorderThickness.Bottom�{��� $)  #(dockablz:Layout.FloatingItemState)� �� *TemplatedParent+8!  #k Z2  P�  �@ FloatingItemState$ 	Maximized=�. ���   � ��$ 1q���   �@��Left$ 0����   �@��Top$ 0����   � �� ��  �� *FindAncestor+"l  $  ActualWidth���   � �� ��  �� *FindAncestor+"l  $  ActualHeight��� "  ���   � ��8   ��   � ��$ 4q���   �@��Left �� *X+ �� *Self+��   �@��Top �� *Y+ �� *Self+��   � �� �� "  .R�� #��z��.+��� #��z��#@ z��#��z��#��z�� . ._��� #��z��#��z��#\ z[ #��z��#��z��# z #��z��n� 8�� $j BottomRight=�$��Right=�$��Bottom=�$N SizeNWSE������  �� *TemplatedParent+$  BorderThickness.Right�����  �� *TemplatedParent+$  BorderThickness.Bottom��� "  ���   � ��8   ��   � ��$ 4q���   �@��Left �� *X+ �� *Self+��   �@��Top �� *Y+ �� *Self+��   � �� �� "  .R�� #��z��.+��� 
�������]   $^ 10Q�$_ 5Q�$	` 315Q�$a Black��$b .5Q��� #��z��#@ z��#��z��#��z�� . ._�� $N 	ScrollAll��.+��� #��z��#��z��#\ z[ #��z��#��z��# z #��z��n� $" 
PART_Thumb��$��Stretch=�$��Stretch=�8�� n� 8�� $
j Left=�$
��Left=�$��Stretch=�$N SizeWE������  �� *TemplatedParent+$  BorderThickness.Left�n� 8�� $	j Top=�$��Stretch=�$	��Top=�$N SizeNS������  �� *TemplatedParent+$  BorderThickness.Top�n� 8�� $j Right=�$��Right=�$��Stretch=�$N SizeWE������  �� *TemplatedParent+$  BorderThickness.Right�n� 8�� $j Bottom=�$��Stretch=�$��Bottom=�$N SizeNS������  �� *TemplatedParent+$  BorderThickness.Bottom�n� 8�� $j TopLeft=�$
��Left=�$	��Top=�$N SizeNWSE������  �� *TemplatedParent+$  BorderThickness.Right�����  �� *TemplatedParent+$  BorderThickness.Bottom�n� 8�� $j TopRight=�$��Right=�$	��Top=�$N SizeNESW������  �� *TemplatedParent+$  BorderThickness.Right�����  �� *TemplatedParent+$  BorderThickness.Bottom�n� 8�� $j BottomRight=�$��Right=�$��Bottom=�$N SizeNWSE������  �� *TemplatedParent+$  BorderThickness.Right�����  �� *TemplatedParent+$  BorderThickness.Bottom�n� 8��	 $j 
BottomLeft=�$
��Left=�$��Bottom=�$N SizeNESW������  �� *TemplatedParent+$  BorderThickness.Right�����  �� *TemplatedParent+$  BorderThickness.Bottom��� " ��.���   �@�FocusVisualStyle8   ��   � ��8  ��   � ��8  ��   � ��# � ����   � ��$ 1q���   � ��$ Center=���   � ��$ Center=���   � ��$ 	1 -2 1 -2q���   � �� �� " ��.R��� $ border��#��z��#��z��#��z�� . ._��� $ contentPresenter��|�.  #��z��#��z����. # z #��z�� P�  �@��IsDefaulted . . ��� $ border��# � ��  � ��P�  �@J�IsMouseOver . . ��� $ border��8    � ���� $ border��8    � ��P�  � �� . . ��� $ border��8    � ���� $ border��8    � ��P�  � {� .  . ��� $ border��8    � ���� $ border��8    � ���� $ contentPresenter��8 	   � ���� "  .���   �@�FocusVisualStyle8   ��   � ��
 �   ���   � ��8  ��   � ��8  ��   � ��$ 0 0 0 0q���   � ��$ Stretch=���   � ��$ Stretch=���   � �� �� "  .R�� $E templateRoot�� . $��0 1 0 -1q�.+�  $m 	Trapezoid��#��z��#��z��$n 2Q�$��0 0 0 0q�.��� F �� $��* ��� $
��Auto �.+��� $ contentPresenter��#��z��#��z��#\ z[ #��z��#��z��# z n� $" 
PART_Thumb��$��0��$��Stretch=�$��Stretch=�8�� �� $��1��8�� #��Zo y���  �� *FindAncestor+$l local:TabablzControlL�$  ShowDefaultCloseButton�8!  ����  �� *TemplatedParent+ P�  �@ IsWrappingTabItem . . ��� $ contentPresenter�� ��  �� *TemplatedParent+$  DataContext.Header�  � ��P�  �@ 
IsSelected . . ��� 8  $ 	Trapezoid��  � ���� 8  $ 	Trapezoid��  �@ LongBasePenBrush�� "  .���   �@�FocusVisualStyle8   ��   � ��
 �   ���   � ��8  ��   � ��8  ��   � ��$ 0q���   � ��$ 6,2,6,2q���   � ��$ Stretch=���   � ��$ Stretch=���   � �� �� "  .R�� $E templateRoot�� . .+��� $ 
mainBorder��#��z��$��1,1,1,0q�#��z��$��0 0 0 1q�._��� $ innerBorder��8�� $��1,1,1,0q�8�� $��-1q�$ 0Q��� $ contentPresenter��#��z��#��z��#\ z[ #��z��#��z��# z $��6,2,6,2q�n� $" 
PART_Thumb��$��Stretch=�$��Stretch=�8��  P�  �@ IsWrappingTabItem . . ��� $ contentPresenter�� ��  �� *TemplatedParent+$  DataContext.Header�  � ��^� p �� q �� *IsMouseOver+ �� *Self+& true�� q �� *TabStripPlacement+ �� "l ��& Left.0��� $ 
mainBorder��8    � ���� $ 
mainBorder��8    � ���� $ innerBorder��  � ��$ 1,1,0,1q��� $ 
mainBorder��  � ��$ 1,1,0,1q�^� p �� q �� *IsMouseOver+ �� *Self+& true�� q �� *TabStripPlacement+ �� "l ��
& Bottom.0��� $ 
mainBorder��8    � ���� $ 
mainBorder��8 	   � ���� $ innerBorder��  � ��$ 1,0,1,1q��� $ 
mainBorder��  � ��$ 1,0,1,1q�^� p �� q �� *IsMouseOver+ �� *Self+& true�� q �� *TabStripPlacement+ �� "l ��	& Right.0��� $ 
mainBorder��8 
   � ���� $ 
mainBorder��8    � ���� $ innerBorder��  � ��$ 0,1,1,1q��� $ 
mainBorder��  � ��$ 0,1,1,1q�^� p �� q �� *IsMouseOver+ �� *Self+& true�� q �� *TabStripPlacement+ �� "l ��& Top.0��� $ 
mainBorder��8    � ���� $ 
mainBorder��8    � ���� $ innerBorder��  � ��$ 1,1,1,0q��� $ 
mainBorder��  � ��$ 1,1,1,0q�^� p �� q �� *	IsEnabled+ �� *Self+	& false�� q �� *TabStripPlacement+ �� "l ��& Left.0��� $ contentPresenter��  �@J�Opacity$
 0.56Q��� $ 
mainBorder��8    � ���� $ 
mainBorder��8    � ���� $ innerBorder��  � ��$ 1,1,0,1q��� $ 
mainBorder��  � ��$ 1,1,0,1q�^� p �� q �� *	IsEnabled+ �� *Self+	& false�� q �� *TabStripPlacement+ �� "l ��
& Bottom.0��� $ contentPresenter��  �@J�Opacity$
 0.56Q��� $ 
mainBorder��8    � ���� $ 
mainBorder��8    � ���� $ innerBorder��  � ��$ 1,0,1,1q��� $ 
mainBorder��  � ��$ 1,0,1,1q�^� p �� q �� *	IsEnabled+ �� *Self+	& false�� q �� *TabStripPlacement+ �� "l ��	& Right.0��� $ contentPresenter��  �@J�Opacity$
 0.56Q��� $ 
mainBorder��8    � ���� $ 
mainBorder��8    � ���� $ innerBorder��  � ��$ 0,1,1,1q��� $ 
mainBorder��  � ��$ 0,1,1,1q�^� p �� q �� *	IsEnabled+ �� *Self+	& false�� q �� *TabStripPlacement+ �� "l ��& Top.0��� $ contentPresenter��  �@J�Opacity$
 0.56Q��� $ 
mainBorder��8    � ���� $ 
mainBorder��8    � ���� $ innerBorder��  � ��$ 1,1,1,0q��� $ 
mainBorder��  � ��$ 1,1,1,0q�^� p �� q �� *
IsSelected+ �� *Self+	& false�� q �� *TabStripPlacement+ �� "l ��& Left.0��� $ innerBorder��  � ��$ 1,1,0,1q��� $ 
mainBorder��  � ��$ 1,1,0,1q�^� p �� q �� *
IsSelected+ �� *Self+& true�� q �� *TabStripPlacement+ �� "l ��& Left.0���   �@K�ZIndex$ 1����   � ��$ 
-2,-2,0,-2q��� $ innerBorder��  �@J�Opacity$ 1Q��� $ innerBorder��  � ��$ 1,1,0,1q��� $ 
mainBorder��  � ��$ 1,1,0,1q�^� p �� q �� *
IsSelected+ �� *Self+	& false�� q �� *TabStripPlacement+ �� "l ��
& Bottom.0��� $ innerBorder��  � ��$ 1,0,1,1q��� $ 
mainBorder��  � ��$ 1,0,1,1q�^� p �� q �� *
IsSelected+ �� *Self+& true�� q �� *TabStripPlacement+ �� "l ��
& Bottom.0���   �@K�ZIndex$ 1����   � ��$ 
-2,0,-2,-2q��� $ innerBorder��  �@J�Opacity$ 1Q��� $ innerBorder��  � ��$ 1,0,1,1q��� $ 
mainBorder��  � ��$ 1,0,1,1q�^� p �� q �� *
IsSelected+ �� *Self+	& false�� q �� *TabStripPlacement+ �� "l ��	& Right.0��� $ innerBorder��  � ��$ 0,1,1,1q��� $ 
mainBorder��  � ��$ 0,1,1,1q�^� p �� q �� *
IsSelected+ �� *Self+& true�� q �� *TabStripPlacement+ �� "l ��	& Right.0���   �@K�ZIndex$ 1����   � ��$ 
0,-2,-2,-2q��� $ innerBorder��  �@J�Opacity$ 1Q��� $ innerBorder��  � ��$ 0,1,1,1q��� $ 
mainBorder��  � ��$ 0,1,1,1q�^� p �� q �� *
IsSelected+ �� *Self+	& false�� q �� *TabStripPlacement+ �� "l ��& Top.0��� $ innerBorder��  � ��$ 1,1,1,0q��� $ 
mainBorder��  � ��$ 1,1,1,0q�^� p �� q �� *
IsSelected+ �� *Self+& True�� q �� *TabStripPlacement+ �� "l ��& Top.0���   �@K�ZIndex$ 1����   � ��$ 0,0,0,-2q��� $ innerBorder��  �@J�Opacity$ 1Q��� $ innerBorder��  � ��$ 1,1,1,0q��� $ 
mainBorder��  � ��$ 1,1,1,0q��� "  .���   � ��$ 2q���   � ��$ Center=���   � ��$ Center=���   � ��8   ��   � ��8  ��   � ��$ 1q���   � ��# � ����   � ��8  ��   � �� �� "  .R�� $E templateRoot��}�.  . $r Local=�F �� $s ColumnDefinition0���� $s ColumnDefinition1��$��0 �G �� $t RowDefinition0��$
��Auto ��� $t RowDefinition1��$��* �.+��� $ contentPanel��#��z��#��z��#��z��$��0��$u 	Contained=�$��1��$v 2��$r Local=�$��0 -1 0 0q�._�� $E PART_ItemsHolder��� $E HeaderContainerGrid��$��0��$��0��$��0,2,2,0q�w ���� '��       " ��8  F �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $��* �.+��� $x PrefixContentControl��$��0��#��zy #[ zz #��zz #��z{ 
  $| PART_HeaderItemsControl��$��1��#��z��#~ z} $v 1��$ 1��#��z� 8�� ����  �� *TemplatedParent+$  Items���`� �   $� 
Horizontal=�.1��� $  ActualWidth� �� *TemplatedParent+�� $  ItemsPresenterWidth� �� *Self+�� $� PrefixContentControl��$  ActualWidth��� $� SuffixContentControl��$  DesiredSize.Width��� $3 DefaultAddButton��8�� $��2��#��Z� y��� *ShowDefaultAddButton+8.  �� $x SuffixContentControl��$��3��#��z� #[ z� #��z� #��z� $
��Left=� P�  �@��TabStripPlacement$ Bottom=�. ��� $ PART_HeaderItemsControl��  � ��$ 1���� $ contentPanel��  � ��$ 0���� $ RowDefinition0��  � ��$ * ��� $ RowDefinition1��  � ��$
 Auto ��� $ PART_HeaderItemsControl��  � ��$ 2,0,2,2q�P�  �@��TabStripPlacement$
 Left=�. ��� $ PART_HeaderItemsControl��  � ��$ 0���� $ contentPanel��  � ��$ 0���� $ PART_HeaderItemsControl��  � ��$ 0���� $ contentPanel��  � ��$ 1���� $ ColumnDefinition0��  � ��$
 Auto ��� $ ColumnDefinition1��  � ��$ * ��� $ RowDefinition0��  � ��$ * ��� $ RowDefinition1��  � ��$ 0 ��� $ PART_HeaderItemsControl��  � ��$ 2,2,0,2q�P�  �@��TabStripPlacement$ Right=�. ��� $ PART_HeaderItemsControl��  � ��$ 0���� $ contentPanel��  � ��$ 0���� $ PART_HeaderItemsControl��  � ��$ 1���� $ contentPanel��  � ��$ 0���� $ ColumnDefinition0��  � ��$ * ��� $ ColumnDefinition1��  � ��$
 Auto ��� $ RowDefinition0��  � ��$ * ��� $ RowDefinition1��  � ��$ 0 ��� $ PART_HeaderItemsControl��  � ��$ 0,2,2,2q�P�  � {� .  . ��� $ templateRoot��# � ��  � ��P�  �@ IsDraggingWindow . . ��� $ DefaultAddButton��  � y�$ 	Collapsed=��� "  .���   � ��$
 Left=���   � ��$	 Top=���   � ��$ 2 2 2 2q���   � ��8   ��   �@ PenBrush8  ��   �@ PenThickness$ .5Q���   � �� �� "  .R��� $��Center=�$��Center=��� " 
 .���   � �� Z� ��   � ��$ Stretch=���   � ��$ Stretch=���   �@
 ItemsOrganiser   ��   � �� �� .R��� ? . }�. ��   � �� �� " 
 .R��� #��z��#@ z��#��z��#��z�� . ._��� # z $
��Left=�$	��Top=�#��zC #��zD �� "  .��� !  �@ FloatingItemsControlStyle8   �� *  �@ "FloatingItemContainerStyleSelector   8�  8�  ��   � �� �� "  .R��� #��z��#��z��#��z��._�� .+��� #��z��#��z��#\ z[ �� $  PART_FloatContentPresenter��  $� PART_TopDropZone��$	��Top=�$��Center=�$	� Top=�y��� *IsParticipatingInDrag+8.    $� PART_RightDropZone��$��Center=�$��Right=�$� Right=�y��� *IsParticipatingInDrag+8.    $� PART_BottomDropZone��$��Bottom=�$��Center=�$� Bottom=�y��� *IsParticipatingInDrag+8.    $� PART_LeftDropZone��$��Center=�$
��Left=�$
� Left=�y��� *IsParticipatingInDrag+8.    $� PART_FloatDropZone��$��Center=�$��Center=�$� Floating=�y�`� 8�  .1��� $  IsParticipatingInDrag� �� *TemplatedParent+�� $  IsFloatDropZoneEnabled� �� *TemplatedParent+�� "  .���   � �� �� "  .R��� #��z��#��z��#��z��._�� F �� $��0.99999* ��� $
��Auto ��� $��1.00001* �.+��� $  PART_FirstContentPresenter��#��z� �� $��1��$� Columns=�$� PreviousAndNext=�$��5���� $! PART_SecondContentPresenter��$��2��#��z�  P�  �@ Orientation$ Vertical=�. ���   � �� �� "  .R��� #��z��#��z��#��z��._�� G �� $��0.99999* ��� $
��Auto ��� $��1.00001* �.+��� $  PART_FirstContentPresenter��#��z� �� $��1��$
� Rows=�$� PreviousAndNext=�$��5��$��Stretch=��� $! PART_SecondContentPresenter��$��2��#��z� 
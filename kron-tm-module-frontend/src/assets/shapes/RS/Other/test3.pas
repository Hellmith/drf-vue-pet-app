object pnlTop: TPanel
  Left = 0
  Top = 23
  Width = 1649
  Height = 182
  Align = alTop
  BevelOuter = bvNone
  Color = clWhite
  ParentBackground = False
  TabOrder = 4
  StyleElements = [seFont, seBorder]
  ExplicitWidth = 991
  object KRON4Image: TKRON4Image
    Left = 0
    Top = 0
    Width = 104
    Height = 109
    Transparent = True
    Images = MainModule.ImageList96
    ImageIndex = 14
    Center = False
    Stretched = False
    Hue = 0
  end
  object Label11: TLabel
    Left = 132
    Top = 90
    Width = 108
    Height = 13
    Caption = #1052#1086#1090#1086#1095#1072#1089#1099', '#1087#1086#1089#1083#1077' '#1058#1054':'
  end
  object edtMotorHourLocal: TcxTextEdit
    Left = 271
    Top = 86
    ParentFont = False
    Properties.Alignment.Horz = taRightJustify
    Properties.ReadOnly = True
    Style.Color = clWhite
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 0
    Text = '157.65'
    Width = 45
  end
  object btnResetMotorHour: TcxButton
    Left = 379
    Top = 86
    Width = 50
    Height = 20
    Caption = #1057#1073#1088#1086#1089
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    TabOrder = 1
  end
  object btnSetMotorHours: TcxButton
    Left = 319
    Top = 86
    Width = 55
    Height = 20
    Caption = #1047#1072#1087#1080#1089#1072#1090#1100
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    TabOrder = 2
  end
  object cxLabel22: TcxLabel
    Left = 145
    Top = 121
    Caption = #1053#1072#1088#1072#1073#1086#1090#1082#1072' '#1076#1086' '#1058#1054
    ParentColor = False
    ParentFont = False
    Style.LookAndFeel.SkinName = ''
    Style.TransparentBorder = False
    StyleDisabled.LookAndFeel.SkinName = ''
    StyleFocused.LookAndFeel.SkinName = ''
    StyleHot.LookAndFeel.SkinName = ''
    Transparent = True
  end
  object btnSetReglamentHours: TcxButton
    Left = 355
    Top = 119
    Width = 62
    Height = 22
    Caption = #1047#1072#1087#1080#1089#1072#1090#1100
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    TabOrder = 4
  end
  object edtReglamentHours: TcxTextEdit
    Left = 300
    Top = 120
    ParentFont = False
    Properties.Alignment.Horz = taRightJustify
    Style.Color = clWhite
    TabOrder = 5
    Width = 50
  end  
end
object chbAllProperties: TcxCheckBox
  Left = 0
  Top = 226
  Align = alBottom
  Anchors = [akLeft, akTop, akRight]
  Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1074#1089#1077' '#1089#1074#1086#1081#1089#1090#1074#1072
  ParentBackground = False
  ParentColor = False
  ParentFont = False
  Properties.OnChange = chbAllPropertiesPropertiesChange
  Style.BorderColor = clWindowFrame
  Style.Color = clGradientActiveCaption
  Style.Font.Charset = DEFAULT_CHARSET
  Style.Font.Color = clWindow
  Style.Font.Height = -12
  Style.Font.Name = 'Tahoma'
  Style.Font.Style = [fsBold]
  Style.IsFontAssigned = True
  StyleFocused.TextColor = clWindowText
  StyleHot.Color = clGradientActiveCaption
  TabOrder = 5
  ExplicitTop = 693
  ExplicitWidth = 991
end
object Panel: TPanel
  Left = 0
  Top = 205
  Width = 1649
  Height = 309
  Align = alTop
  TabOrder = 7
  ExplicitWidth = 991
  object lblOut: TLabel
    Left = 7
    Top = 75
    Width = 33
    Height = 13
    Caption = #1042#1099#1093#1086#1076
  end
  object Label2: TLabel
    Left = 11
    Top = 242
    Width = 25
    Height = 13
    Caption = #1042#1093#1086#1076
  end
  object Label1: TLabel
    Left = 51
    Top = 273
    Width = 50
    Height = 13
    Caption = #1058' '#1075#1072#1079#1072' '#1074#1093':'
  end
  object Label3: TLabel
    Left = 81
    Top = 220
    Width = 16
    Height = 13
    Caption = 'P1:'
  end
  object Label4: TLabel
    Left = 77
    Top = 50
    Width = 16
    Height = 13
    Caption = 'P4:'
  end
  object Label5: TLabel
    Left = 263
    Top = 29
    Width = 16
    Height = 13
    Caption = 'P3:'
  end
  object Label6: TLabel
    Left = 265
    Top = 98
    Width = 55
    Height = 13
    Caption = #1058' '#1075#1072#1079#1072' 2'#1089#1090':'
  end
  object Label7: TLabel
    Left = 264
    Top = 117
    Width = 58
    Height = 13
    Caption = #1058' '#1075#1072#1079#1072' 3 '#1089#1090':'
  end
  object Label8: TLabel
    Left = 522
    Top = 47
    Width = 42
    Height = 13
    Caption = #1058' '#1084#1072#1089#1083#1072':'
  end
  object Label9: TLabel
    Left = 505
    Top = 190
    Width = 42
    Height = 13
    Caption = #1058' '#1084#1072#1089#1083#1072':'
  end
  object Label10: TLabel
    Left = 504
    Top = 214
    Width = 58
    Height = 13
    Caption = #1058' '#1075#1072#1079#1072' 1 '#1089#1090':'
  end
  object KRONResourceImage1: TKRONResourceImage
    Left = 89
    Top = 72
    Width = 523
    Height = 20
    DrawStrategy = dsStretched
    Scale = 50
    Transparent = True
    ImageRepository = ImageRepository
    ResourceName = #1058#1088#1091#1073#1099'\'#1044#1083#1080#1085#1085#1099#1081' '#1075#1086#1088#1080#1079#1086#1085#1090#1072#1083#1100#1085#1099#1081' '#1075#1072#1079#1086#1087#1088#1086#1074#1086#1076
    Animate = False
    AnimationSpeed = 150
  end
  object KRONResourceImage2: TKRONResourceImage
    Left = 88
    Top = 241
    Width = 524
    Height = 20
    DrawStrategy = dsStretched
    Transparent = True
    ImageRepository = ImageRepository
    ResourceName = #1058#1088#1091#1073#1099'\'#1044#1083#1080#1085#1085#1099#1081' '#1075#1086#1088#1080#1079#1086#1085#1090#1072#1083#1100#1085#1099#1081' '#1075#1072#1079#1086#1087#1088#1086#1074#1086#1076
    Animate = False
    AnimationSpeed = 150
  end
  object KRONResourceImage3: TKRONResourceImage
    Left = 593
    Top = 73
    Width = 27
    Height = 27
    DrawStrategy = dsProportional
    Transparent = True
    ImageRepository = ImageRepository
    ResourceName = #1058#1088#1091#1073#1099'\'#1043#1072#1079#1086#1074#1072#1103' '#1090#1088#1091#1073#1072' 90-'#1075#1088#1072#1076#1091#1089#1085#1072#1103' '#1082#1088#1080#1074#1072#1103' 4'
    Animate = False
    AnimationSpeed = 150
  end
  object KRONResourceImage4: TKRONResourceImage
    Left = 593
    Top = 233
    Width = 27
    Height = 27
    DrawStrategy = dsProportional
    Transparent = True
    ImageRepository = ImageRepository
    ResourceName = #1058#1088#1091#1073#1099'\'#1043#1072#1079#1086#1074#1072#1103' '#1090#1088#1091#1073#1072' 90-'#1075#1088#1072#1076#1091#1089#1085#1072#1103' '#1082#1088#1080#1074#1072#1103' 2'
    Animate = False
    AnimationSpeed = 150
  end
  object KRONResourceImage5: TKRONResourceImage
    Left = 602
    Top = 90
    Width = 20
    Height = 156
    DrawStrategy = dsStretched
    Transparent = True
    ImageRepository = ImageRepository
    ResourceName = #1058#1088#1091#1073#1099'\'#1044#1083#1080#1085#1085#1099#1077' '#1074#1077#1088#1090#1080#1082#1072#1083#1100#1085#1099#1077' '#1075#1072#1079#1086#1074#1099#1077' '#1090#1088#1091#1073#1099
    Animate = False
    AnimationSpeed = 150
  end
  object KRONResourceImage6: TKRONResourceImage
    Left = 142
    Top = 22
    Width = 45
    Height = 60
    DrawStrategy = dsProportional
    Transparent = True
    ImageRepository = ImageRepository
    ResourceName = #1044#1072#1090#1095#1080#1082#1080'\'#1040#1085#1072#1083#1086#1075#1086#1074#1099#1081' '#1076#1072#1090#1095#1080#1082
    Animate = False
    AnimationSpeed = 150
  end
  object KRONResourceImage7: TKRONResourceImage
    Left = 322
    Top = 22
    Width = 45
    Height = 60
    DrawStrategy = dsProportional
    Transparent = True
    ImageRepository = ImageRepository
    ResourceName = #1044#1072#1090#1095#1080#1082#1080'\'#1040#1085#1072#1083#1086#1075#1086#1074#1099#1081' '#1076#1072#1090#1095#1080#1082
    Animate = False
    AnimationSpeed = 150
  end
  object KRONResourceImage8: TKRONResourceImage
    Left = 150
    Top = 189
    Width = 45
    Height = 60
    DrawStrategy = dsProportional
    Transparent = True
    ImageRepository = ImageRepository
    ResourceName = #1044#1072#1090#1095#1080#1082#1080'\'#1040#1085#1072#1083#1086#1075#1086#1074#1099#1081' '#1076#1072#1090#1095#1080#1082
    Animate = False
    AnimationSpeed = 150
  end
  object imgValveNotWorking2: TKRONResourceImage
    Left = 197
    Top = 52
    Width = 60
    Height = 45
    DrawStrategy = dsProportional
    Transparent = True
    ImageRepository = ImageRepository
    ResourceName = #1050#1083#1072#1087#1072#1085#1099'\'#1056#1091#1095#1085#1086#1081' '#1082#1083#1072#1087#1072#1085' 3 '#1046#1077#1083#1090#1099#1081
    Animate = False
    AnimationSpeed = 150
  end
  object imgValveWorking2: TKRONResourceImage
    Left = 197
    Top = 51
    Width = 60
    Height = 45
    DrawStrategy = dsProportional
    Transparent = True
    Visible = False
    ImageRepository = ImageRepository
    ResourceName = #1050#1083#1072#1087#1072#1085#1099'\'#1056#1091#1095#1085#1086#1081' '#1082#1083#1072#1087#1072#1085' 3 '#1047#1077#1083#1077#1085#1099#1081
    Animate = False
    AnimationSpeed = 150
  end
  object imgValveNotWorking1: TKRONResourceImage
    Left = 202
    Top = 221
    Width = 60
    Height = 45
    DrawStrategy = dsProportional
    Transparent = True
    ImageRepository = ImageRepository
    ResourceName = #1050#1083#1072#1087#1072#1085#1099'\'#1056#1091#1095#1085#1086#1081' '#1082#1083#1072#1087#1072#1085' 3 '#1046#1077#1083#1090#1099#1081
    Animate = False
    AnimationSpeed = 150
  end
  object imgValveWorking1: TKRONResourceImage
    Left = 202
    Top = 221
    Width = 60
    Height = 45
    DrawStrategy = dsProportional
    Transparent = True
    Visible = False
    ImageRepository = ImageRepository
    ResourceName = #1050#1083#1072#1087#1072#1085#1099'\'#1056#1091#1095#1085#1086#1081' '#1082#1083#1072#1087#1072#1085' 3 '#1047#1077#1083#1077#1085#1099#1081
    Animate = False
    AnimationSpeed = 150
  end
  object imgPumpNotWorkingK2: TKRONResourceImage
    Left = 445
    Top = 50
    Width = 60
    Height = 60
    DrawStrategy = dsProportional
    Transparent = True
    ImageRepository = ImageRepository
    ResourceName = #1053#1072#1089#1086#1089#1099'\'#1053#1072#1089#1086#1089' 6 '#1078#1077#1083#1090#1099#1081
    Animate = False
    AnimationSpeed = 150
  end
  object imgPumpWorkingK2: TKRONResourceImage
    Left = 444
    Top = 50
    Width = 60
    Height = 60
    DrawStrategy = dsProportional
    Transparent = True
    Visible = False
    ImageRepository = ImageRepository
    ResourceName = #1053#1072#1089#1086#1089#1099'\'#1053#1072#1089#1086#1089' 6 '#1079#1077#1083#1077#1085#1099#1081
    Animate = False
    AnimationSpeed = 150
  end
  object imgPumpAlarmK2: TKRONResourceImage
    Left = 444
    Top = 50
    Width = 60
    Height = 60
    DrawStrategy = dsProportional
    Transparent = True
    Visible = False
    ImageRepository = ImageRepository
    ResourceName = #1053#1072#1089#1086#1089#1099'\'#1053#1072#1089#1086#1089' 6 '#1082#1088#1072#1089#1085#1099#1081
    Animate = False
    AnimationSpeed = 150
  end
  object imgPumpWorkingK1: TKRONResourceImage
    Left = 433
    Top = 222
    Width = 60
    Height = 60
    DrawStrategy = dsProportional
    Transparent = True
    Visible = False
    ImageRepository = ImageRepository
    ResourceName = #1053#1072#1089#1086#1089#1099'\'#1053#1072#1089#1086#1089' 6 '#1079#1077#1083#1077#1085#1099#1081
    Animate = False
    AnimationSpeed = 150
  end
  object imgPumpAlarmK1: TKRONResourceImage
    Left = 432
    Top = 221
    Width = 60
    Height = 60
    DrawStrategy = dsProportional
    Transparent = True
    Visible = False
    ImageRepository = ImageRepository
    ResourceName = #1053#1072#1089#1086#1089#1099'\'#1053#1072#1089#1086#1089' 6 '#1082#1088#1072#1089#1085#1099#1081
    Animate = False
    AnimationSpeed = 150
  end
  object imgPumpNotWorkingK1: TKRONResourceImage
    Left = 432
    Top = 221
    Width = 60
    Height = 60
    DrawStrategy = dsProportional
    Transparent = True
    ImageRepository = ImageRepository
    ResourceName = #1053#1072#1089#1086#1089#1099'\'#1053#1072#1089#1086#1089' 6 '#1078#1077#1083#1090#1099#1081
    Animate = False
    AnimationSpeed = 150
  end
  object KRONResourceImage9: TKRONResourceImage
    Left = 58
    Top = 240
    Width = 32
    Height = 20
    DrawStrategy = dsProportional
    Transparent = True
    ImageRepository = ImageRepository
    ResourceName = #1057#1090#1088#1077#1083#1082#1080'\'#1057#1090#1088#1077#1083#1082#1072' '#1074#1087#1088#1072#1074#1086
    Animate = False
    AnimationSpeed = 150
  end
  object KRONResourceImage10: TKRONResourceImage
    Left = 52
    Top = 68
    Width = 35
    Height = 23
    DrawStrategy = dsProportional
    ImageRepository = ImageRepository
    ResourceName = #1057#1090#1088#1077#1083#1082#1080'\'#1057#1090#1088#1077#1083#1082#1072' '#1074#1083#1077#1074#1086
    Animate = False
    AnimationSpeed = 150
  end
  object KRONResourceImage11: TKRONResourceImage
    Left = 464
    Top = 100
    Width = 12
    Height = 129
    DrawStrategy = dsStretched
    Transparent = True
    ImageRepository = ImageRepository
    ResourceName = #1058#1088#1091#1073#1099'\'#1050#1086#1088#1086#1090#1082#1072#1103' '#1074#1077#1088#1090#1080#1082#1072#1083#1100#1085#1072#1103' '#1084#1077#1076#1085#1072#1103' '#1090#1088#1091#1073#1072
    Animate = False
    AnimationSpeed = 150
  end
  object KRONResourceImage12: TKRONResourceImage
    Left = 414
    Top = 152
    Width = 56
    Height = 13
    DrawStrategy = dsStretched
    Transparent = True
    ImageRepository = ImageRepository
    ResourceName = #1058#1088#1091#1073#1099'\'#1050#1086#1088#1086#1090#1082#1072#1103' '#1075#1086#1088#1080#1079#1086#1085#1090#1072#1083#1100#1085#1072#1103' '#1084#1077#1076#1085#1072#1103' '#1090#1088#1091#1073#1072
    Animate = False
    AnimationSpeed = 150
  end
  object KRONResourceImage13: TKRONResourceImage
    Left = 461
    Top = 148
    Width = 15
    Height = 22
    DrawStrategy = dsStretched
    Transparent = True
    ImageRepository = ImageRepository
    ResourceName = #1058#1088#1091#1073#1099'\'#1052#1077#1076#1085#1099#1081' '#1090#1088#1086#1081#1085#1080#1082' 2'
    Animate = False
    AnimationSpeed = 150
  end
  object KRONResourceImage14: TKRONResourceImage
    Left = 470
    Top = 165
    Width = 57
    Height = 16
    DrawStrategy = dsStretched
    Transparent = True
    ImageRepository = ImageRepository
    ResourceName = #1058#1088#1091#1073#1099'\'#1044#1083#1080#1085#1085#1099#1077' '#1075#1086#1088#1080#1079#1086#1085#1090#1072#1083#1100#1085#1099#1077' '#1084#1077#1076#1085#1099#1077' '#1090#1088#1091#1073#1099
    Animate = False
    AnimationSpeed = 150
  end
  object KRONResourceImage15: TKRONResourceImage
    Left = 295
    Top = 194
    Width = 46
    Height = 52
    DrawStrategy = dsStretched
    Transparent = True
    ImageRepository = ImageRepository
    ResourceName = #1044#1072#1090#1095#1080#1082#1080'\'#1040#1085#1072#1083#1086#1075#1086#1074#1099#1081' '#1076#1072#1090#1095#1080#1082
    Animate = False
    AnimationSpeed = 150
  end
  object KRONResourceImage16: TKRONResourceImage
    Left = 489
    Top = 134
    Width = 35
    Height = 36
    DrawStrategy = dsStretched
    Transparent = True
    ImageRepository = ImageRepository
    ResourceName = #1044#1072#1090#1095#1080#1082#1080'\'#1040#1085#1072#1083#1086#1075#1086#1074#1099#1081' '#1076#1072#1090#1095#1080#1082
    Animate = False
    AnimationSpeed = 150
  end
  object KRONResourceImage17: TKRONResourceImage
    Left = 415
    Top = 118
    Width = 34
    Height = 39
    DrawStrategy = dsStretched
    Transparent = True
    ImageRepository = ImageRepository
    ResourceName = #1044#1072#1090#1095#1080#1082#1080'\'#1040#1085#1072#1083#1086#1075#1086#1074#1099#1081' '#1076#1072#1090#1095#1080#1082
    Animate = False
    AnimationSpeed = 150
  end
  object edtP4: TcxTextEdit
    Left = 103
    Top = 46
    Hint = #1060#1083' 3'
    ParentFont = False
    Properties.Alignment.Horz = taRightJustify
    Properties.ReadOnly = True
    Style.Color = clWhite
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 0
    Text = '7.07'
    Width = 40
  end
  object edtP1: TcxTextEdit
    Left = 103
    Top = 216
    Hint = #1060#1083' 1'
    ParentFont = False
    Properties.Alignment.Horz = taRightJustify
    Properties.ReadOnly = True
    Style.Color = clWhite
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 1
    Text = '0.1'
    Width = 40
  end
  object edtP3: TcxTextEdit
    Left = 282
    Top = 27
    Hint = #1060#1083' 3'
    ParentFont = False
    Properties.Alignment.Horz = taRightJustify
    Properties.ReadOnly = True
    Style.Color = clWhite
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 2
    Text = '0'
    Width = 40
  end
  object edtTempOilPump1: TcxTextEdit
    Left = 562
    Top = 187
    Hint = #1060#1083' 1'
    ParentFont = False
    Properties.Alignment.Horz = taRightJustify
    Properties.ReadOnly = True
    Style.Color = clWhite
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 3
    Text = '22.51'
    Width = 40
  end
  object edtTempOilPump2: TcxTextEdit
    Left = 568
    Top = 45
    Hint = #1060#1083' 2'
    ParentFont = False
    Properties.Alignment.Horz = taRightJustify
    Properties.ReadOnly = True
    Style.Color = clWhite
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 4
    Text = '22.32'
    Width = 40
  end
  object lblK1: TcxLabel
    Left = 463
    Top = 233
    Caption = '1'
    ParentColor = False
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clDefault
    Style.Font.Height = -20
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.LookAndFeel.SkinName = ''
    Style.TransparentBorder = False
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.SkinName = ''
    StyleFocused.LookAndFeel.SkinName = ''
    StyleHot.LookAndFeel.SkinName = ''
    Transparent = True
  end
  object cxLabel1: TcxLabel
    Left = 476
    Top = 66
    Caption = '2'
    ParentColor = False
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clDefault
    Style.Font.Height = -20
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.LookAndFeel.SkinName = ''
    Style.TransparentBorder = False
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.SkinName = ''
    StyleFocused.LookAndFeel.SkinName = ''
    StyleHot.LookAndFeel.SkinName = ''
    Transparent = True
  end
  object edtTempGasIn: TcxTextEdit
    Left = 103
    Top = 268
    Hint = #1060#1083' 6'
    ParentFont = False
    Properties.Alignment.Horz = taRightJustify
    Properties.ReadOnly = True
    Style.Color = clWhite
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 7
    Text = '0'
    Width = 40
  end
  object edtTempGasS1: TcxTextEdit
    Left = 562
    Top = 210
    Hint = #1060#1083' 3'
    ParentFont = False
    Properties.Alignment.Horz = taRightJustify
    Properties.ReadOnly = True
    Style.Color = clWhite
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 8
    Text = '22.33'
    Width = 40
  end
  object edtTempGasS2: TcxTextEdit
    Left = 323
    Top = 93
    Hint = #1060#1083' 4'
    ParentFont = False
    Properties.Alignment.Horz = taRightJustify
    Properties.ReadOnly = True
    Style.Color = clWhite
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 9
    Text = '21.87'
    Width = 40
  end
  object edtTempGasS3: TcxTextEdit
    Left = 323
    Top = 115
    Hint = #1060#1083' 5'
    ParentFont = False
    Properties.Alignment.Horz = taRightJustify
    Properties.ReadOnly = True
    Style.Color = clWhite
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 10
    Text = '21.5'
    Width = 40
  end
  object edtK1State: TcxTextEdit
    Left = 423
    Top = 281
    Hint = #1060#1083' 1'
    ParentFont = False
    Properties.Alignment.Horz = taCenter
    Properties.ReadOnly = True
    Style.Color = 10025724
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 11
    Text = #1042#1099#1082#1083#1102#1095#1077#1085
    Width = 75
  end
  object edtK2State: TcxTextEdit
    Left = 443
    Top = 25
    Hint = #1060#1083' 2'
    ParentFont = False
    Properties.Alignment.Horz = taCenter
    Properties.ReadOnly = True
    Style.Color = 10025724
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 12
    Text = #1042#1099#1082#1083#1102#1095#1077#1085
    Width = 75
  end
  object edtValve1: TcxTextEdit
    Left = 184
    Top = 97
    Hint = #1060#1083' 1'
    ParentFont = False
    Properties.Alignment.Horz = taCenter
    Properties.ReadOnly = True
    Style.Color = 10025724
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 13
    Text = #1047#1072#1082#1088#1099#1090
    Width = 75
  end
  object edtValve2: TcxTextEdit
    Left = 189
    Top = 266
    Hint = #1060#1083' 2'
    ParentFont = False
    Properties.Alignment.Horz = taCenter
    Properties.ReadOnly = True
    Style.Color = 10025724
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 14
    Text = #1047#1072#1082#1088#1099#1090
    Width = 75
  end
  object pnlRight: TPanel
    Left = 657
    Top = 11
    Width = 224
    Height = 285
    Color = clSilver
    ParentBackground = False
    TabOrder = 15
    object lbl: TLabel
      Left = 15
      Top = 8
      Width = 79
      Height = 13
      Caption = #1059#1088#1086#1074#1077#1085#1100' '#1084#1072#1089#1083#1072':'
    end
    object lblCondLevel: TLabel
      Left = 15
      Top = 32
      Width = 110
      Height = 13
      Caption = #1059#1088#1086#1074#1077#1085#1100' '#1082#1086#1085#1076#1077#1085#1089#1072#1090#1072':'
    end
    object lblPower: TLabel
      Left = 15
      Top = 58
      Width = 92
      Height = 13
      Caption = #1053#1072#1083#1080#1095#1080#1077' '#1087#1080#1090#1072#1085#1080#1103':'
    end
    object lblGasHeater: TLabel
      Left = 15
      Top = 84
      Width = 103
      Height = 13
      Caption = #1054#1073#1086#1075#1088#1077#1074' '#1075#1072#1079'. '#1083#1080#1085#1080#1081':'
    end
    object lblUVSHeater: TLabel
      Left = 15
      Top = 107
      Width = 70
      Height = 13
      Caption = #1054#1073#1086#1075#1088#1077#1074' '#1059#1042#1057':'
    end
    object lblVenState: TLabel
      Left = 15
      Top = 204
      Width = 87
      Height = 13
      Caption = #1042#1077#1085#1090#1080#1083#1103#1094#1080#1103' '#1059#1042#1057':'
    end
    object lblReleAlarm1: TLabel
      Left = 15
      Top = 226
      Width = 114
      Height = 13
      Caption = #1056#1077#1083#1077' '#1079#1072#1097#1080#1090#1099' '#1076#1074#1080#1075' '#1050'1:'
    end
    object lblReleAlarm2: TLabel
      Left = 15
      Top = 250
      Width = 114
      Height = 13
      Caption = #1056#1077#1083#1077' '#1079#1072#1097#1080#1090#1099' '#1076#1074#1080#1075' '#1050'2:'
    end
    object Label12: TLabel
      Left = 15
      Top = 130
      Width = 119
      Height = 13
      Caption = #1040#1074#1090'.'#1074#1099#1082#1083'. '#1086#1073#1086#1075#1088'.'#1083#1080#1085#1080#1080
    end
    object Label13: TLabel
      Left = 15
      Top = 155
      Width = 109
      Height = 13
      Caption = #1040#1074#1090'.'#1074#1099#1082#1083'. '#1086#1073#1086#1075#1088'.'#1059#1042#1057
    end
    object Label14: TLabel
      Left = 15
      Top = 180
      Width = 116
      Height = 13
      Caption = #1040#1074#1090'.'#1074#1099#1082#1083'. '#1074#1077#1085#1090#1080#1083#1103#1094#1080#1080
    end
    object edtOilLevel: TcxTextEdit
      Left = 145
      Top = 4
      Hint = #1060#1083' 1'
      ParentFont = False
      Properties.ReadOnly = True
      Style.Color = clMoneyGreen
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      Text = #1042' '#1085#1086#1088#1084#1077
      Width = 70
    end
    object edtCondLevel: TcxTextEdit
      Left = 145
      Top = 29
      Hint = #1060#1083' 2'
      ParentFont = False
      Properties.ReadOnly = True
      Style.Color = clMoneyGreen
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      Text = #1042' '#1085#1086#1088#1084#1077
      Width = 70
    end
    object edtPower: TcxTextEdit
      Left = 145
      Top = 53
      Hint = #1060#1083' 1'
      ParentFont = False
      Properties.ReadOnly = True
      Style.Color = clMoneyGreen
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      Text = #1053#1072#1083#1080#1095#1080#1077
      Width = 70
    end
    object edtGasHeater: TcxTextEdit
      Left = 145
      Top = 78
      Hint = #1060#1083' 1'
      ParentFont = False
      Properties.ReadOnly = True
      Style.Color = clMoneyGreen
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      Text = #1042#1099#1082#1083#1102#1095#1077#1085
      Width = 70
    end
    object edtUVSHeater: TcxTextEdit
      Left = 145
      Top = 102
      Hint = #1060#1083' 2'
      ParentFont = False
      Properties.ReadOnly = True
      Style.Color = clMoneyGreen
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 4
      Text = #1042#1099#1082#1083#1102#1095#1077#1085
      Width = 70
    end
    object edtReleAlarm1: TcxTextEdit
      Left = 145
      Top = 222
      Hint = #1060#1083' 1'
      ParentFont = False
      Properties.ReadOnly = True
      Style.Color = clMoneyGreen
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 5
      Text = #1053#1086#1088#1084#1072
      Width = 70
    end
    object edtVenState: TcxTextEdit
      Left = 145
      Top = 199
      Hint = #1060#1083' 1'
      ParentFont = False
      Properties.ReadOnly = True
      Style.Color = clMoneyGreen
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 6
      Text = #1042#1099#1082#1083#1102#1095#1077#1085#1072
      Width = 70
    end
    object edtReleAlarm2: TcxTextEdit
      Left = 145
      Top = 245
      Hint = #1060#1083' 2'
      ParentFont = False
      Properties.ReadOnly = True
      Style.Color = clMoneyGreen
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 7
      Text = #1053#1086#1088#1084#1072
      Width = 70
    end
    object edtAutoSwitchPipe: TcxTextEdit
      Left = 145
      Top = 126
      ParentFont = False
      Style.Color = clMoneyGreen
      TabOrder = 8
      Text = #1042#1082#1083#1102#1095#1077#1085
      Width = 70
    end
    object edtAutoSwitchUVS: TcxTextEdit
      Left = 145
      Top = 150
      ParentFont = False
      Style.Color = clMoneyGreen
      TabOrder = 9
      Text = #1042#1082#1083#1102#1095#1077#1085
      Width = 70
    end
    object edtAutoSwitchVent: TcxTextEdit
      Left = 145
      Top = 175
      ParentFont = False
      Style.Color = clMoneyGreen
      TabOrder = 10
      Text = #1042#1082#1083#1102#1095#1077#1085
      Width = 70
    end
  end
  object Panel1: TPanel
    Left = 889
    Top = 10
    Width = 150
    Height = 99
    Color = clSilver
    ParentBackground = False
    TabOrder = 16
    object cxLabel5: TcxLabel
      Left = 9
      Top = 5
      Caption = #1044#1074#1080#1075#1072#1090#1077#1083#1100' 1'
      ParentColor = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clDefault
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.SkinName = ''
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.SkinName = ''
      StyleFocused.LookAndFeel.SkinName = ''
      StyleHot.LookAndFeel.SkinName = ''
      Transparent = True
    end
    object cxLabel7: TcxLabel
      Left = 15
      Top = 28
      Caption = #1058#1086#1082' '#1092#1072#1079#1072' '#1040':'
      ParentColor = False
      ParentFont = False
      Style.LookAndFeel.SkinName = ''
      Style.TransparentBorder = False
      StyleDisabled.LookAndFeel.SkinName = ''
      StyleFocused.LookAndFeel.SkinName = ''
      StyleHot.LookAndFeel.SkinName = ''
      Transparent = True
    end
    object cxLabel8: TcxLabel
      Left = 15
      Top = 50
      Caption = #1058#1086#1082' '#1092#1072#1079#1072' B:'
      ParentColor = False
      ParentFont = False
      Style.LookAndFeel.SkinName = ''
      Style.TransparentBorder = False
      StyleDisabled.LookAndFeel.SkinName = ''
      StyleFocused.LookAndFeel.SkinName = ''
      StyleHot.LookAndFeel.SkinName = ''
      Transparent = True
    end
    object cxLabel11: TcxLabel
      Left = 15
      Top = 71
      Caption = #1058#1086#1082' '#1092#1072#1079#1072' C:'
      ParentColor = False
      ParentFont = False
      Style.LookAndFeel.SkinName = ''
      Style.TransparentBorder = False
      StyleDisabled.LookAndFeel.SkinName = ''
      StyleFocused.LookAndFeel.SkinName = ''
      StyleHot.LookAndFeel.SkinName = ''
      Transparent = True
    end
    object edtAmperage1A: TcxTextEdit
      Left = 95
      Top = 26
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Style.Color = clWhite
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 4
      Text = '0'
      Width = 50
    end
    object edtAmperage1B: TcxTextEdit
      Left = 95
      Top = 48
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Style.Color = clWhite
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 5
      Text = '0'
      Width = 50
    end
    object edtAmperage1C: TcxTextEdit
      Left = 95
      Top = 70
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Style.Color = clWhite
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 6
      Text = '0'
      Width = 50
    end
  end
  object Panel2: TPanel
    Left = 889
    Top = 113
    Width = 150
    Height = 109
    Color = clSilver
    ParentBackground = False
    TabOrder = 17
    object cxLabel6: TcxLabel
      Left = 12
      Top = 6
      Caption = #1044#1074#1080#1075#1072#1090#1077#1083#1100' 2'
      ParentColor = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clDefault
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.SkinName = ''
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.SkinName = ''
      StyleFocused.LookAndFeel.SkinName = ''
      StyleHot.LookAndFeel.SkinName = ''
      Transparent = True
    end
    object cxLabel9: TcxLabel
      Left = 15
      Top = 29
      Caption = #1058#1086#1082' '#1092#1072#1079#1072' '#1040':'
      ParentColor = False
      ParentFont = False
      Style.LookAndFeel.SkinName = ''
      Style.TransparentBorder = False
      StyleDisabled.LookAndFeel.SkinName = ''
      StyleFocused.LookAndFeel.SkinName = ''
      StyleHot.LookAndFeel.SkinName = ''
      Transparent = True
    end
    object cxLabel10: TcxLabel
      Left = 15
      Top = 53
      Caption = #1058#1086#1082' '#1092#1072#1079#1072' B:'
      ParentColor = False
      ParentFont = False
      Style.LookAndFeel.SkinName = ''
      Style.TransparentBorder = False
      StyleDisabled.LookAndFeel.SkinName = ''
      StyleFocused.LookAndFeel.SkinName = ''
      StyleHot.LookAndFeel.SkinName = ''
      Transparent = True
    end
    object cxLabel12: TcxLabel
      Left = 16
      Top = 77
      Caption = #1058#1086#1082' '#1092#1072#1079#1072' C:'
      ParentColor = False
      ParentFont = False
      Style.LookAndFeel.SkinName = ''
      Style.TransparentBorder = False
      StyleDisabled.LookAndFeel.SkinName = ''
      StyleFocused.LookAndFeel.SkinName = ''
      StyleHot.LookAndFeel.SkinName = ''
      Transparent = True
    end
    object edtAmperage2A: TcxTextEdit
      Left = 95
      Top = 25
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Style.Color = clWhite
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 4
      Text = '0'
      Width = 50
    end
    object edtAmperage2B: TcxTextEdit
      Left = 95
      Top = 49
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Style.Color = clWhite
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 5
      Text = '0'
      Width = 50
    end
    object edtAmperage2C: TcxTextEdit
      Left = 95
      Top = 73
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Style.Color = clWhite
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 6
      Text = '0'
      Width = 50
    end
  end
  object edtPressPK: TcxTextEdit
    Left = 553
    Top = 115
    ParentFont = False
    Properties.Alignment.Horz = taRightJustify
    Properties.ReadOnly = True
    Style.Color = clWhite
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 18
    Text = '-1.08'
    Width = 40
  end
  object edtPressCarter: TcxTextEdit
    Left = 411
    Top = 166
    ParentFont = False
    Properties.Alignment.Horz = taRightJustify
    Properties.ReadOnly = True
    Style.Color = clWhite
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 19
    Text = '-1.08'
    Width = 40
  end
  object cxLabel3: TcxLabel
    Left = 351
    Top = 167
    Caption = 'P '#1082#1072#1088#1090#1077#1088#1072':'
    ParentColor = False
    ParentFont = False
    Style.LookAndFeel.SkinName = ''
    Style.TransparentBorder = False
    StyleDisabled.LookAndFeel.SkinName = ''
    StyleFocused.LookAndFeel.SkinName = ''
    StyleHot.LookAndFeel.SkinName = ''
    Transparent = True
  end
  object cxLabel4: TcxLabel
    Left = 491
    Top = 117
    Caption = 'P '#1087#1086#1089#1083#1077' '#1055#1050':'
    ParentColor = False
    ParentFont = False
    Style.LookAndFeel.SkinName = ''
    Style.TransparentBorder = False
    StyleDisabled.LookAndFeel.SkinName = ''
    StyleFocused.LookAndFeel.SkinName = ''
    StyleHot.LookAndFeel.SkinName = ''
    Transparent = True
  end
  object cxLabel2: TcxLabel
    Left = 244
    Top = 184
    Caption = 'P2:'
    ParentColor = False
    ParentFont = False
    Style.LookAndFeel.SkinName = ''
    Style.TransparentBorder = False
    StyleDisabled.LookAndFeel.SkinName = ''
    StyleFocused.LookAndFeel.SkinName = ''
    StyleHot.LookAndFeel.SkinName = ''
    Transparent = True
  end
  object edtP2: TcxTextEdit
    Left = 264
    Top = 184
    Hint = #1060#1083' 2'
    ParentFont = False
    Properties.Alignment.Horz = taRightJustify
    Properties.ReadOnly = True
    Style.Color = clWhite
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 23
    Text = '-0.01'
    Width = 40
  end
end
object lblGasConcentrationSensor: TcxLabel
  Left = 130
  Top = 56
  Caption = #1044#1072#1090#1095#1080#1082' '#1079#1072#1075#1072#1079#1086#1074#1072#1085#1085#1086#1089#1090#1080':'
  ParentColor = False
  ParentFont = False
  Style.LookAndFeel.SkinName = ''
  Style.TransparentBorder = False
  StyleDisabled.LookAndFeel.SkinName = ''
  StyleFocused.LookAndFeel.SkinName = ''
  StyleHot.LookAndFeel.SkinName = ''
  Transparent = True
end
object lblGasConcPercent: TcxLabel
  Left = 435
  Top = 135
  Caption = #1047#1072#1075#1072#1079#1086#1074#1072#1085#1085#1086#1089#1090#1100', %:'
  ParentColor = False
  ParentFont = False
  Style.LookAndFeel.SkinName = ''
  Style.TransparentBorder = False
  StyleDisabled.LookAndFeel.SkinName = ''
  StyleFocused.LookAndFeel.SkinName = ''
  StyleHot.LookAndFeel.SkinName = ''
  Transparent = True
end
object lblMachineHours: TcxLabel
  Left = 130
  Top = 87
  Caption = #1052#1086#1090#1086#1095#1072#1089#1099':'
  ParentColor = False
  ParentFont = False
  Style.LookAndFeel.SkinName = ''
  Style.TransparentBorder = False
  StyleDisabled.LookAndFeel.SkinName = ''
  StyleFocused.LookAndFeel.SkinName = ''
  StyleHot.LookAndFeel.SkinName = ''
  Transparent = True
end
object lblVacuumMode: TcxLabel
  Left = 435
  Top = 33
  Caption = #1056#1077#1078#1080#1084' '#1091#1087#1088#1072#1074#1083#1077#1085#1080#1103':'
  ParentColor = False
  ParentFont = False
  Style.LookAndFeel.SkinName = ''
  Style.TransparentBorder = False
  StyleDisabled.LookAndFeel.SkinName = ''
  StyleFocused.LookAndFeel.SkinName = ''
  StyleHot.LookAndFeel.SkinName = ''
  Transparent = True
end
object lblVacuumState: TcxLabel
  Left = 435
  Top = 57
  Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077' '#1091#1089#1090#1072#1085#1086#1074#1082#1080':'
  ParentColor = False
  ParentFont = False
  Style.LookAndFeel.SkinName = ''
  Style.TransparentBorder = False
  StyleDisabled.LookAndFeel.SkinName = ''
  StyleFocused.LookAndFeel.SkinName = ''
  StyleHot.LookAndFeel.SkinName = ''
  Transparent = True
end
object lblTemperatureAir: TcxLabel
  Left = 435
  Top = 84
  Caption = #1058#1077#1084#1087#1077#1088#1072#1090#1091#1088#1072' '#1074#1086#1079#1076#1091#1093#1072':'
  ParentColor = False
  ParentFont = False
  Style.LookAndFeel.SkinName = ''
  Style.TransparentBorder = False
  StyleDisabled.LookAndFeel.SkinName = ''
  StyleFocused.LookAndFeel.SkinName = ''
  StyleHot.LookAndFeel.SkinName = ''
  Transparent = True
end
object lblTemperatureVCM: TcxLabel
  Left = 435
  Top = 111
  Caption = #1058#1077#1084#1087#1077#1088#1072#1090#1091#1088#1072' '#1091#1089#1090#1072#1085#1086#1074#1082#1080':'
  ParentColor = False
  ParentFont = False
  Style.LookAndFeel.SkinName = ''
  Style.TransparentBorder = False
  StyleDisabled.LookAndFeel.SkinName = ''
  StyleFocused.LookAndFeel.SkinName = ''
  StyleHot.LookAndFeel.SkinName = ''
  Transparent = True
end
object lblEvent: TcxLabel
  Left = 130
  Top = 159
  Caption = #1057#1086#1073#1099#1090#1080#1077':'
  ParentColor = False
  ParentFont = False
  Style.LookAndFeel.SkinName = ''
  Style.TransparentBorder = False
  StyleDisabled.LookAndFeel.SkinName = ''
  StyleFocused.LookAndFeel.SkinName = ''
  StyleHot.LookAndFeel.SkinName = ''
  Transparent = True
end
object edtFacilityName: TcxTextEdit
  Left = 270
  Top = 30
  ParentFont = False
  Properties.ReadOnly = True
  Style.Color = clWhite
  Style.LookAndFeel.NativeStyle = False
  StyleDisabled.LookAndFeel.NativeStyle = False
  StyleFocused.LookAndFeel.NativeStyle = False
  StyleHot.LookAndFeel.NativeStyle = False
  TabOrder = 16
  Text = #1050#1054#1043#1057' '#1047#1072#1074#8470'36'
  Width = 110
end
object edtGasConcentrationSensor: TcxTextEdit
  Left = 271
  Top = 56
  Hint = #1060#1083' 0'
  ParentFont = False
  Properties.ReadOnly = True
  Style.Color = clMoneyGreen
  Style.LookAndFeel.NativeStyle = False
  StyleDisabled.LookAndFeel.NativeStyle = False
  StyleFocused.LookAndFeel.NativeStyle = False
  StyleHot.LookAndFeel.NativeStyle = False
  TabOrder = 17
  Text = #1053#1086#1088#1084#1072
  Width = 110
end
object edtGasConcPercent: TcxTextEdit
  Left = 565
  Top = 134
  Hint = #1060#1083' 0'
  ParentFont = False
  Properties.Alignment.Horz = taRightJustify
  Properties.ReadOnly = True
  Style.Color = clWhite
  Style.LookAndFeel.NativeStyle = False
  StyleDisabled.LookAndFeel.NativeStyle = False
  StyleFocused.LookAndFeel.NativeStyle = False
  StyleHot.LookAndFeel.NativeStyle = False
  TabOrder = 18
  Text = '0'
  Width = 50
end
object edtMachineHours: TcxTextEdit
  Left = 271
  Top = 83
  Hint = #1060#1083' 0'
  ParentFont = False
  Properties.Alignment.Horz = taRightJustify
  Properties.ReadOnly = True
  Style.Color = clWhite
  Style.LookAndFeel.NativeStyle = False
  StyleDisabled.LookAndFeel.NativeStyle = False
  StyleFocused.LookAndFeel.NativeStyle = False
  StyleHot.LookAndFeel.NativeStyle = False
  TabOrder = 19
  Text = '1011.08'
  Width = 45
end
object edtVacuumMode: TcxTextEdit
  Left = 565
  Top = 30
  Hint = #1060#1083' 0'
  ParentFont = False
  Properties.ReadOnly = True
  Style.Color = clMoneyGreen
  Style.LookAndFeel.NativeStyle = False
  StyleDisabled.LookAndFeel.NativeStyle = False
  StyleFocused.LookAndFeel.NativeStyle = False
  StyleHot.LookAndFeel.NativeStyle = False
  TabOrder = 20
  Text = #1040#1074#1090#1086#1084#1072#1090' ('#1044#1072#1074#1083#1077#1085#1080#1077')'
  Width = 140
end
object edtVacuumState: TcxTextEdit
  Left = 565
  Top = 57
  Hint = #1060#1083' 0'
  ParentFont = False
  Properties.ReadOnly = True
  Style.Color = clMoneyGreen
  Style.LookAndFeel.NativeStyle = False
  StyleDisabled.LookAndFeel.NativeStyle = False
  StyleFocused.LookAndFeel.NativeStyle = False
  StyleHot.LookAndFeel.NativeStyle = False
  TabOrder = 21
  Text = #1043#1086#1090#1086#1074#1085#1086#1089#1090#1100
  Width = 138
end
object edtTemperatureAir: TcxTextEdit
  Left = 565
  Top = 84
  Hint = #1060#1083' 7'
  ParentFont = False
  Properties.Alignment.Horz = taRightJustify
  Properties.ReadOnly = True
  Style.Color = clWhite
  Style.LookAndFeel.NativeStyle = False
  StyleDisabled.LookAndFeel.NativeStyle = False
  StyleFocused.LookAndFeel.NativeStyle = False
  StyleHot.LookAndFeel.NativeStyle = False
  TabOrder = 22
  Text = '22.4'
  Width = 50
end
object edtTemperatureVCM: TcxTextEdit
  Left = 565
  Top = 109
  Hint = #1060#1083' 8'
  ParentFont = False
  Properties.Alignment.Horz = taRightJustify
  Properties.ReadOnly = True
  Style.Color = clWhite
  Style.LookAndFeel.NativeStyle = False
  StyleDisabled.LookAndFeel.NativeStyle = False
  StyleFocused.LookAndFeel.NativeStyle = False
  StyleHot.LookAndFeel.NativeStyle = False
  TabOrder = 23
  Text = '22.82'
  Width = 50
end
object edtEvent: TcxTextEdit
  Left = 271
  Top = 159
  Hint = 
    #1074' '#1085#1086#1088#1084#1077' ('#1055#1080#1090#1072#1085#1080#1077'); 16.06.2020 13:56:46; '#1040#1074#1072#1088#1080#1103' '#1050#1054#1043#1057#13#1053#1086#1088#1084#1072' ('#1057#1086#1089#1090#1086 +
    #1103#1085#1080#1077' '#1050#1054#1043#1057'); 16.06.2020 13:56:46; '#1057#1086#1089#1090#1086#1103#1085#1080#1077' '#1050#1054#1043#1057#13#1074' '#1085#1086#1088#1084#1077' ('#1056'4 '#1084#1080#1085#1080 +
    #1084#1072#1083#1100#1085#1086#1077'); 16.06.2020 0:08:30; '#1040#1074#1072#1088#1080#1103' '#1050#1054#1043#1057#13#1074' '#1085#1086#1088#1084#1077' ('#1056'5 '#1084#1072#1082#1089#1080#1084#1072#1083#1100#1085 +
    #1086#1077'); 16.06.2020 0:08:30; '#1040#1074#1072#1088#1080#1103' '#1050#1054#1043#1057#13#1074' '#1085#1086#1088#1084#1077' ('#1056'6 '#1084#1072#1082#1089#1080#1084#1072#1083#1100#1085#1086#1077'); ' +
    '16.06.2020 0:08:30; '#1040#1074#1072#1088#1080#1103' '#1050#1054#1043#1057#13#1074' '#1085#1086#1088#1084#1077' ('#1052#1072#1082#1089#1080#1084#1072#1083#1100#1085#1086#1077' '#1076#1072#1074#1083#1077#1085#1080#1077' '#1056 +
    '4); 16.06.2020 0:08:30; '#1040#1074#1072#1088#1080#1103' '#1050#1054#1043#1057#13#1074' '#1085#1086#1088#1084#1077' ('#1058' '#1084#1072#1089#1083#1072' '#1082#1086#1084#1087#1088#1077#1089#1089#1086#1088#1072 +
    ' 2); 16.06.2020 0:08:30; '#1040#1074#1072#1088#1080#1103' '#1050#1054#1043#1057#13#1074' '#1085#1086#1088#1084#1077' ('#1058' '#1050#1054#1043#1057'); 16.06.202' +
    '0 0:08:30; '#1040#1074#1072#1088#1080#1103' '#1050#1054#1043#1057#13#1074' '#1085#1086#1088#1084#1077' ('#1053#1077' '#1074#1082#1083#1102#1095#1080#1083#1089#1103'  '#1082#1086#1084#1087#1088#1077#1089#1089#1086#1088#1086#1074'); 16.' +
    '06.2020 0:08:30; '#1040#1074#1072#1088#1080#1103' '#1050#1054#1043#1057#13#1074' '#1085#1086#1088#1084#1077' ('#1052#1072#1082#1089' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1087#1086#1087#1099#1090#1086#1082' '#1079#1072 +
    ' 5 '#1084#1080#1085#1091#1090'); 16.06.2020 0:08:30; '#1040#1074#1072#1088#1080#1103' '#1050#1054#1043#1057#13#1074' '#1085#1086#1088#1084#1077' ('#1056#1077#1083#1077' '#1092#1072#1079'); 1' +
    '6.06.2020 0:08:30; '#1040#1074#1072#1088#1080#1103' '#1050#1054#1043#1057#13#1074' '#1085#1086#1088#1084#1077' ('#1055#1077#1088#1077#1087#1072#1076' '#1076#1072#1074#1083#1077#1085#1080#1081' P2 '#1080' P3' +
    '); 16.06.2020 0:08:30; '#1040#1074#1072#1088#1080#1103' '#1050#1054#1043#1057' '#1044#1077#1083#1100#1090#1072' '#1056#13#1074' '#1085#1086#1088#1084#1077' ('#1040#1074#1072#1088#1080#1103' '#1084#1072#1082#1089 +
    ' '#1074#1088#1077#1084#1103' '#1088#1072#1073#1086#1090#1099' '#1085#1072' '#1079#1072#1082#1088#1099#1090'. '#1079#1072#1076#1074'); 16.06.2020 0:08:30; '#1040#1074#1072#1088#1080#1103' '#1050#1054#1043#1057#13 +
    #1074' '#1085#1086#1088#1084#1077' ('#1056'2 '#1084#1072#1082#1089#1080#1084#1072#1083#1100#1085#1086#1077'); 16.06.2020 0:08:30; '#1040#1074#1072#1088#1080#1103' '#1050#1054#1043#1057#13#1074' '#1085#1086#1088 +
    #1084#1077' ('#1058#1077#1087#1083#1086#1074#1086#1077' '#1088#1077#1083#1077' '#1069#1083'.'#1076#1074#1080#1075#1072#1090#1077#1083#1103' 1); 16.06.2020 0:08:30; '#1040#1074#1072#1088#1080#1103' '#1050#1054 +
    #1043#1057#13#1074' '#1085#1086#1088#1084#1077' ('#1058#1077#1087#1083#1086#1074#1086#1077' '#1088#1077#1083#1077' '#1069#1083'.'#1076#1074#1080#1075#1072#1090#1077#1083#1103' 2); 16.06.2020 0:08:30; '#1040 +
    #1074#1072#1088#1080#1103' '#1050#1054#1043#1057#13#1074' '#1085#1086#1088#1084#1077' ('#1058' '#1084#1072#1089#1083#1072' '#1082#1086#1084#1087#1088#1077#1089#1089#1086#1088#1072' 1); 16.06.2020 0:08:30; ' +
    #1040#1074#1072#1088#1080#1103' '#1050#1054#1043#1057#13#1074' '#1085#1086#1088#1084#1077' ('#1044#1072#1074#1083#1077#1085#1080#1077' '#1085#1072' '#1074#1099#1093' '#1082#1086#1084#1087#1088#1077#1089#1089#1086#1088#1072'); 16.06.2020 0:' +
    '08:30; '#1040#1074#1072#1088#1080#1103' '#1050#1054#1043#1057#13#1074' '#1085#1086#1088#1084#1077' ('#1044#1072#1074#1083#1077#1085#1080#1077' '#1085#1072' '#1074#1099#1093' '#1050#1054#1043#1057'); 16.06.2020 0:' +
    '08:30; '#1040#1074#1072#1088#1080#1103' '#1050#1054#1043#1057#13#1074' '#1085#1086#1088#1084#1077' ('#1056#1077#1083#1077' '#1082#1086#1085#1090#1088#1086#1083#1103' '#1092#1072#1079' '#1082#1086#1084#1087#1088#1077#1089#1089#1086#1088' 1); 16.' +
    '06.2020 0:08:30; '#1040#1074#1072#1088#1080#1103' '#1050#1054#1043#1057#13#1074' '#1085#1086#1088#1084#1077' ('#1055#1077#1088#1077#1087#1072#1076' '#1076#1072#1074#1083#1077#1085#1080#1081' P2 '#1080' P3);' +
    ' 16.06.2020 0:08:30; '#1040#1074#1072#1088#1080#1103' '#1050#1054#1043#1057#13#1074' '#1085#1086#1088#1084#1077' ('#1042#1099#1093#1086#1076#1085#1072#1103' '#1079#1072#1076#1074#1080#1078#1082#1072'); 16' +
    '.06.2020 0:08:30; '#1040#1074#1072#1088#1080#1103' '#1050#1054#1043#1057#13#1074' '#1085#1086#1088#1084#1077' ('#1042#1093#1086#1076#1085#1072#1103' '#1079#1072#1076#1074#1080#1078#1082#1072'); 16.06.' +
    '2020 0:08:30; '#1040#1074#1072#1088#1080#1103' '#1050#1054#1043#1057#13#1074' '#1085#1086#1088#1084#1077' ('#1044#1072#1074#1083#1077#1085#1080#1077' '#1085#1072' '#1074#1093#1086#1076#1077'); 16.06.202' +
    '0 0:08:30; '#1040#1074#1072#1088#1080#1103' '#1050#1054#1043#1057#13#1074' '#1085#1086#1088#1084#1077' ('#1052#1072#1082#1089#1080#1084#1072#1083#1100#1085#1086#1077' '#1074#1088#1077#1084#1103' '#1088#1072#1073#1086#1090#1099'); 16.0' +
    '6.2020 0:08:30; '#1040#1074#1072#1088#1080#1103' '#1050#1054#1043#1057#13#1074' '#1085#1086#1088#1084#1077' ('#1058' '#1075#1072#1079#1072' '#1085#1072' '#1074#1099#1093#1086#1076#1077' 1 '#1089#1090#1091#1087#1077#1085#1100')' +
    '; 16.06.2020 0:08:30; '#1040#1074#1072#1088#1080#1103' '#1050#1054#1043#1057#13#1074' '#1085#1086#1088#1084#1077' ('#1058' '#1075#1072#1079#1072' '#1085#1072' '#1074#1093#1086#1076#1077'); 16.' +
    '06.2020 0:08:30; '#1040#1074#1072#1088#1080#1103' '#1050#1054#1043#1057#13#1074' '#1085#1086#1088#1084#1077' ('#1058' '#1075#1072#1079#1072' '#1085#1072' '#1074#1099#1093#1086#1076#1077' 3 '#1089#1090#1091#1087#1077#1085#1100 +
    '); 16.06.2020 0:08:30; '#1040#1074#1072#1088#1080#1103' '#1050#1054#1043#1057#13#1074' '#1085#1086#1088#1084#1077' ('#1058' '#1075#1072#1079#1072' '#1085#1072' '#1074#1099#1093#1086#1076#1077' 2 '#1089 +
    #1090#1091#1087#1077#1085#1100'); 16.06.2020 0:08:30; '#1040#1074#1072#1088#1080#1103' '#1050#1054#1043#1057#13#1074' '#1085#1086#1088#1084#1077' ('#1056#1077#1083#1077' '#1082#1086#1085#1090#1088#1086#1083#1103' ' +
    #1092#1072#1079' '#1082#1086#1084#1087#1088#1077#1089#1089#1086#1088#1072' 2); 16.06.2020 0:08:30; '#1040#1074#1072#1088#1080#1103' '#1050#1054#1043#1057#13#1074' '#1085#1086#1088#1084#1077' ('#1059#1088#1086 +
    #1074#1077#1085#1100' '#1084#1072#1089#1083#1072'); 16.06.2020 0:08:30; '#1040#1074#1072#1088#1080#1103' '#1050#1054#1043#1057#13#1074' '#1085#1086#1088#1084#1077' ('#1047#1072#1075#1072#1079#1086#1074#1072#1085#1085 +
    #1086#1089#1090#1100'); 16.06.2020 0:08:30; '#1040#1074#1072#1088#1080#1103' '#1050#1054#1043#1057#13#1074' '#1085#1086#1088#1084#1077' ('#1059#1088#1086#1074#1077#1085#1100' '#1082#1086#1085#1076#1077#1085#1089#1072 +
    #1090#1072'); 16.06.2020 0:08:30; '#1040#1074#1072#1088#1080#1103' '#1050#1054#1043#1057#13#1054#1073#1086#1075#1088#1077#1074' '#1074#1099#1082#1083#1102#1095#1077#1085' ('#1054#1073#1086#1075#1088#1077#1074');' +
    ' 16.06.2020 0:08:30; '#1054#1073#1086#1075#1088#1077#1074' '#1075#1072'. '#1083#1080#1085#1080#1081'; '#1092#1083'-1'#13#1047#1072#1075#1072#1079#1086#1074#1072#1085#1085#1086#1089#1090#1100' '#1074' '#1085#1086 +
    #1088#1084#1077' ('#1047#1072#1075#1072#1079#1086#1074#1072#1085#1085#1086#1089#1090#1100'); 16.06.2020 0:08:30; '#1048#1085#1076#1080#1082#1072#1090#1086#1088' '#1089#1088#1072#1073#1086#1090#1082#1080' '#1076#1072#1090 +
    #1095#1080#1082#1072' '#1079#1072#1075#1072#1079#1086#1074#1072#1085#1085#1086#1089#1090#1080#13#1054#1073#1086#1075#1088#1077#1074' '#1074#1099#1082#1083#1102#1095#1077#1085' ('#1054#1073#1086#1075#1088#1077#1074'); 16.06.2020 0:08:' +
    '30; '#1054#1073#1086#1075#1088#1077#1074' '#1059#1042#1057'; '#1092#1083'-2'#13#1059#1089#1090#1072#1085#1086#1074#1083#1077#1085#1072' '#1089#1074#1103#1079#1100' ('#1057#1086#1089#1090#1086#1103#1085#1080#1077' '#1089#1074#1103#1079#1080'); 16.06' +
    '.2020 15:51:13'
  ParentFont = False
  Properties.ReadOnly = True
  Style.Color = clMoneyGreen
  Style.LookAndFeel.NativeStyle = False
  StyleDisabled.LookAndFeel.NativeStyle = False
  StyleFocused.LookAndFeel.NativeStyle = False
  StyleHot.LookAndFeel.NativeStyle = False
  TabOrder = 24
  Text = #1074' '#1085#1086#1088#1084#1077' ('#1055#1080#1090#1072#1085#1080#1077'); 16.06.2020 13:56:46; '#1040#1074#1072#1088#1080#1103' '#1050#1054#1043#1057
  Width = 428
end
object lblFacilityName: TcxLabel
  Left = 130
  Top = 32
  Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077':'
  ParentColor = False
  ParentFont = False
  Style.LookAndFeel.SkinName = ''
  Style.TransparentBorder = False
  StyleDisabled.LookAndFeel.SkinName = ''
  StyleFocused.LookAndFeel.SkinName = ''
  StyleHot.LookAndFeel.SkinName = ''
  Transparent = True
end
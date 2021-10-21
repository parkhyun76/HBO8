object fTimeSpread: TfTimeSpread
  Left = 0
  Top = 0
  Caption = #53440#51076#49828#54532#47112#46300
  ClientHeight = 224
  ClientWidth = 939
  Color = clBtnFace
  DefaultMonitor = dmMainForm
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  Position = poDesigned
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  DesignSize = (
    939
    224)
  TextHeight = 13
  object GroupBox13: TGroupBox
    Left = 0
    Top = 0
    Width = 1553
    Height = 781
    Anchors = [akLeft, akTop, akRight]
    Color = cl3DDkShadow
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    DesignSize = (
      1553
      781)
    object Label41: TLabel
      Left = 482
      Top = 73
      Width = 33
      Height = 16
      Caption = #52509#49688#47049
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label39: TLabel
      Left = 478
      Top = 119
      Width = 39
      Height = 13
      Caption = '1'#54924#45800#50948
    end
    object SpeedButton1: TSpeedButton
      Left = 351
      Top = 60
      Width = 50
      Height = 21
      Caption = #44592#48376#51077#47141
      OnClick = SpeedButton1Click
    end
    object Label5: TLabel
      Left = 3
      Top = 9
      Width = 26
      Height = 19
      Caption = 'Call'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clFuchsia
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
    object SpeedButton3: TSpeedButton
      Left = 351
      Top = 166
      Width = 50
      Height = 21
      Caption = #44592#48376#51077#47141
      OnClick = SpeedButton3Click
    end
    object Label6: TLabel
      Left = 6
      Top = 110
      Width = 23
      Height = 19
      Caption = 'Put'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
    object Label10: TLabel
      Left = 539
      Top = 38
      Width = 66
      Height = 16
      Caption = #54788#51116#54840#44032#48708#50857
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
    object Label11: TLabel
      Left = 540
      Top = 177
      Width = 66
      Height = 16
      Caption = #54788#51116#54840#44032#48708#50857
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
    object Label19: TLabel
      Left = 477
      Top = 9
      Width = 40
      Height = 14
      Caption = #44144#47000#49884#51089
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton2: TSpeedButton
      Left = 351
      Top = 10
      Width = 50
      Height = 21
      Caption = #49444#51221#51201#50857
      OnClick = SpeedButton2Click
    end
    object SpeedButton4: TSpeedButton
      Left = 351
      Top = 114
      Width = 50
      Height = 21
      Caption = #49444#51221#51201#50857
      OnClick = SpeedButton4Click
    end
    object imgTSCallJinIp: TImage
      Left = 408
      Top = -6
      Width = 8
      Height = 22
      Picture.Data = {
        07544269746D6170DE000000424DDE0000000000000036000000280000000900
        0000060000000100180000000000A8000000C40E0000C40E0000000000000000
        0000004C13004C13004C13004C13004C13004C13004C13004C13004C1300004C
        13004C13004C13004C13004C13004C13004C13004C13004C1300004C13004C13
        004C13004C13004C13004C13004C13004C13004C1300004C13004C13004C1300
        4C13004C13004C13004C13004C13004C1300004C13004C13004C13004C13004C
        13004C13004C13004C13004C130000350D00350D00350D00350D00350D00350D
        00350D00350D00350D00}
      Stretch = True
      Visible = False
    end
    object imgTSCallCS: TImage
      Left = 408
      Top = 30
      Width = 8
      Height = 22
      Picture.Data = {
        07544269746D6170DE000000424DDE0000000000000036000000280000000900
        0000060000000100180000000000A8000000C40E0000C40E0000000000000000
        0000004C13004C13004C13004C13004C13004C13004C13004C13004C1300004C
        13004C13004C13004C13004C13004C13004C13004C13004C1300004C13004C13
        004C13004C13004C13004C13004C13004C13004C1300004C13004C13004C1300
        4C13004C13004C13004C13004C13004C1300004C13004C13004C13004C13004C
        13004C13004C13004C13004C130000350D00350D00350D00350D00350D00350D
        00350D00350D00350D00}
      Stretch = True
    end
    object imgTSPutJinIp: TImage
      Left = 408
      Top = 101
      Width = 8
      Height = 22
      Picture.Data = {
        07544269746D6170DE000000424DDE0000000000000036000000280000000900
        0000060000000100180000000000A8000000C40E0000C40E0000000000000000
        0000004C13004C13004C13004C13004C13004C13004C13004C13004C1300004C
        13004C13004C13004C13004C13004C13004C13004C13004C1300004C13004C13
        004C13004C13004C13004C13004C13004C13004C1300004C13004C13004C1300
        4C13004C13004C13004C13004C13004C1300004C13004C13004C13004C13004C
        13004C13004C13004C13004C130000350D00350D00350D00350D00350D00350D
        00350D00350D00350D00}
      Stretch = True
      Visible = False
    end
    object imgTSPutCS: TImage
      Left = 408
      Top = 137
      Width = 8
      Height = 22
      Picture.Data = {
        07544269746D6170DE000000424DDE0000000000000036000000280000000900
        0000060000000100180000000000A8000000C40E0000C40E0000000000000000
        0000004C13004C13004C13004C13004C13004C13004C13004C13004C1300004C
        13004C13004C13004C13004C13004C13004C13004C13004C1300004C13004C13
        004C13004C13004C13004C13004C13004C13004C1300004C13004C13004C1300
        4C13004C13004C13004C13004C13004C1300004C13004C13004C13004C13004C
        13004C13004C13004C13004C130000350D00350D00350D00350D00350D00350D
        00350D00350D00350D00}
      Stretch = True
    end
    object mmoLog: TMemo
      Left = 706
      Top = 8
      Width = 230
      Height = 212
      Anchors = [akLeft, akTop, akRight]
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      Lines.Strings = (
        '*** '#44396#52629'= '#54840#44032#47196' '#44228#49328
        '')
      ParentFont = False
      ScrollBars = ssBoth
      TabOrder = 8
    end
    object btnCallJinIp: TButton
      Left = 417
      Top = -11
      Width = 50
      Height = 30
      Caption = #53084#51652#51077
      TabOrder = 7
      Visible = False
      OnClick = btnCallJinIpClick
    end
    object StringGrid4: TStringGrid
      AlignWithMargins = True
      Left = 31
      Top = 8
      Width = 318
      Height = 24
      ParentCustomHint = False
      BevelInner = bvLowered
      BiDiMode = bdLeftToRight
      Color = clCream
      ColCount = 6
      Ctl3D = False
      DefaultColWidth = 50
      DefaultRowHeight = 20
      DoubleBuffered = False
      FixedColor = clHighlight
      FixedCols = 0
      RowCount = 1
      FixedRows = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing, goEditing, goTabs]
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentDoubleBuffered = False
      ParentFont = False
      ParentShowHint = False
      ScrollBars = ssNone
      ShowHint = False
      TabOrder = 1
      OnExit = StringGrid4Exit
      OnMouseLeave = StringGrid4MouseLeave
      OnMouseWheelDown = StringGrid4MouseWheelDown
      OnMouseWheelUp = StringGrid4MouseWheelUp
    end
    object stgTSCallList: TStringGrid
      AlignWithMargins = True
      Left = 31
      Top = 31
      Width = 318
      Height = 80
      ParentCustomHint = False
      BevelInner = bvLowered
      BiDiMode = bdLeftToRight
      Color = cl3DDkShadow
      ColCount = 6
      Ctl3D = False
      DefaultColWidth = 50
      DefaultRowHeight = 38
      DoubleBuffered = False
      FixedColor = clWindow
      FixedCols = 0
      RowCount = 2
      FixedRows = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goTabs]
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentDoubleBuffered = False
      ParentFont = False
      ParentShowHint = False
      ScrollBars = ssNone
      ShowHint = False
      TabOrder = 0
      OnDrawCell = stgTSCallListDrawCell
      OnExit = stgTSCallListExit
      OnMouseLeave = stgTSCallListMouseLeave
      OnMouseWheelDown = stgTSCallListMouseWheelDown
      OnMouseWheelUp = stgTSCallListMouseWheelUp
    end
    object edtTSCallTotalQtn: TEdit
      Left = 479
      Top = 90
      Width = 38
      Height = 22
      Alignment = taCenter
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      Text = '10'
      StyleElements = [seClient, seBorder]
    end
    object Button52: TButton
      Left = 1401
      Top = 12
      Width = 40
      Height = 22
      Caption = #51200#51109
      TabOrder = 3
      OnClick = Button52Click
    end
    object Button55: TButton
      Left = 1447
      Top = 12
      Width = 40
      Height = 22
      Caption = #49325#51228
      TabOrder = 4
      OnClick = Button55Click
    end
    object Button1: TButton
      Left = 645
      Top = 6
      Width = 63
      Height = 24
      Caption = #52264#53944#49884#51089
      TabOrder = 5
      Visible = False
      OnClick = Button1Click
    end
    object edtTSCallUnit: TEdit
      Left = 479
      Top = 134
      Width = 38
      Height = 21
      Alignment = taCenter
      Color = clCream
      TabOrder = 6
      Text = '3'
    end
    object SpinButton5: TSpinButton
      Left = 10
      Top = 32
      Width = 22
      Height = 36
      DownGlyph.Data = {
        0E010000424D0E01000000000000360000002800000009000000060000000100
        200000000000D800000000000000000000000000000000000000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000000000000080800000808000008080000080
        8000008080000080800000808000000000000000000000000000008080000080
        8000008080000080800000808000000000000000000000000000000000000000
        0000008080000080800000808000000000000000000000000000000000000000
        0000000000000000000000808000008080000080800000808000008080000080
        800000808000008080000080800000808000}
      TabOrder = 9
      UpGlyph.Data = {
        0E010000424D0E01000000000000360000002800000009000000060000000100
        200000000000D800000000000000000000000000000000000000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000000000000000000000000000000000000000000000000000000000000080
        8000008080000080800000000000000000000000000000000000000000000080
        8000008080000080800000808000008080000000000000000000000000000080
        8000008080000080800000808000008080000080800000808000000000000080
        8000008080000080800000808000008080000080800000808000008080000080
        800000808000008080000080800000808000}
      OnDownClick = SpinButton5DownClick
      OnUpClick = SpinButton5UpClick
    end
    object SpinButton6: TSpinButton
      Left = 10
      Top = 72
      Width = 22
      Height = 36
      DownGlyph.Data = {
        0E010000424D0E01000000000000360000002800000009000000060000000100
        200000000000D800000000000000000000000000000000000000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000000000000080800000808000008080000080
        8000008080000080800000808000000000000000000000000000008080000080
        8000008080000080800000808000000000000000000000000000000000000000
        0000008080000080800000808000000000000000000000000000000000000000
        0000000000000000000000808000008080000080800000808000008080000080
        800000808000008080000080800000808000}
      TabOrder = 10
      UpGlyph.Data = {
        0E010000424D0E01000000000000360000002800000009000000060000000100
        200000000000D800000000000000000000000000000000000000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000000000000000000000000000000000000000000000000000000000000080
        8000008080000080800000000000000000000000000000000000000000000080
        8000008080000080800000808000008080000000000000000000000000000080
        8000008080000080800000808000008080000080800000808000000000000080
        8000008080000080800000808000008080000080800000808000008080000080
        800000808000008080000080800000808000}
      OnDownClick = SpinButton6DownClick
      OnUpClick = SpinButton6UpClick
    end
    object stgTSPutList: TStringGrid
      AlignWithMargins = True
      Left = 31
      Top = 137
      Width = 318
      Height = 80
      ParentCustomHint = False
      BevelInner = bvLowered
      BiDiMode = bdLeftToRight
      Color = cl3DDkShadow
      ColCount = 6
      Ctl3D = False
      DefaultColWidth = 50
      DefaultRowHeight = 38
      DoubleBuffered = False
      FixedColor = clWindow
      FixedCols = 0
      RowCount = 2
      FixedRows = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goTabs]
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentDoubleBuffered = False
      ParentFont = False
      ParentShowHint = False
      ScrollBars = ssNone
      ShowHint = False
      TabOrder = 11
      OnDrawCell = stgTSPutListDrawCell
      OnExit = stgTSPutListExit
      OnMouseLeave = stgTSPutListMouseLeave
      OnMouseWheelDown = stgTSPutListMouseWheelDown
      OnMouseWheelUp = stgTSPutListMouseWheelUp
    end
    object SpinButton9: TSpinButton
      Left = 10
      Top = 137
      Width = 22
      Height = 36
      DownGlyph.Data = {
        0E010000424D0E01000000000000360000002800000009000000060000000100
        200000000000D800000000000000000000000000000000000000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000000000000080800000808000008080000080
        8000008080000080800000808000000000000000000000000000008080000080
        8000008080000080800000808000000000000000000000000000000000000000
        0000008080000080800000808000000000000000000000000000000000000000
        0000000000000000000000808000008080000080800000808000008080000080
        800000808000008080000080800000808000}
      TabOrder = 12
      UpGlyph.Data = {
        0E010000424D0E01000000000000360000002800000009000000060000000100
        200000000000D800000000000000000000000000000000000000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000000000000000000000000000000000000000000000000000000000000080
        8000008080000080800000000000000000000000000000000000000000000080
        8000008080000080800000808000008080000000000000000000000000000080
        8000008080000080800000808000008080000080800000808000000000000080
        8000008080000080800000808000008080000080800000808000008080000080
        800000808000008080000080800000808000}
      OnDownClick = SpinButton9DownClick
      OnUpClick = SpinButton9UpClick
    end
    object SpinButton10: TSpinButton
      Left = 10
      Top = 178
      Width = 22
      Height = 36
      DownGlyph.Data = {
        0E010000424D0E01000000000000360000002800000009000000060000000100
        200000000000D800000000000000000000000000000000000000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000000000000080800000808000008080000080
        8000008080000080800000808000000000000000000000000000008080000080
        8000008080000080800000808000000000000000000000000000000000000000
        0000008080000080800000808000000000000000000000000000000000000000
        0000000000000000000000808000008080000080800000808000008080000080
        800000808000008080000080800000808000}
      TabOrder = 13
      UpGlyph.Data = {
        0E010000424D0E01000000000000360000002800000009000000060000000100
        200000000000D800000000000000000000000000000000000000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000000000000000000000000000000000000000000000000000000000000080
        8000008080000080800000000000000000000000000000000000000000000080
        8000008080000080800000808000008080000000000000000000000000000080
        8000008080000080800000808000008080000080800000808000000000000080
        8000008080000080800000808000008080000080800000808000008080000080
        800000808000008080000080800000808000}
      OnDownClick = SpinButton10DownClick
      OnUpClick = SpinButton10UpClick
    end
    object Button58: TButton
      Left = 351
      Top = 38
      Width = 26
      Height = 20
      Caption = '<--'
      TabOrder = 14
      OnClick = Button58Click
    end
    object Button59: TButton
      Left = 375
      Top = 38
      Width = 26
      Height = 20
      Caption = '-->'
      TabOrder = 15
      OnClick = Button59Click
    end
    object Button5: TButton
      Left = 375
      Top = 144
      Width = 26
      Height = 20
      Caption = '-->'
      TabOrder = 16
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 351
      Top = 144
      Width = 26
      Height = 20
      Caption = '<--'
      TabOrder = 17
      OnClick = Button6Click
    end
    object btnCallCS: TButton
      Left = 417
      Top = 25
      Width = 50
      Height = 30
      Caption = #53084#49884#51089
      TabOrder = 18
      OnClick = btnCallCSClick
    end
    object SpinButton2: TSpinButton
      Left = 684
      Top = 55
      Width = 20
      Height = 24
      DownGlyph.Data = {
        0E010000424D0E01000000000000360000002800000009000000060000000100
        200000000000D800000000000000000000000000000000000000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000000000000080800000808000008080000080
        8000008080000080800000808000000000000000000000000000008080000080
        8000008080000080800000808000000000000000000000000000000000000000
        0000008080000080800000808000000000000000000000000000000000000000
        0000000000000000000000808000008080000080800000808000008080000080
        800000808000008080000080800000808000}
      TabOrder = 19
      UpGlyph.Data = {
        0E010000424D0E01000000000000360000002800000009000000060000000100
        200000000000D800000000000000000000000000000000000000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000000000000000000000000000000000000000000000000000000000000080
        8000008080000080800000000000000000000000000000000000000000000080
        8000008080000080800000808000008080000000000000000000000000000080
        8000008080000080800000808000008080000080800000808000000000000080
        8000008080000080800000808000008080000080800000808000008080000080
        800000808000008080000080800000808000}
      OnDownClick = SpinButton2DownClick
      OnUpClick = SpinButton2UpClick
    end
    object ldtTSCallSJJiSu: TLabeledEdit
      Left = 632
      Top = 55
      Width = 53
      Height = 24
      Alignment = taCenter
      Color = clBlack
      EditLabel.Width = 65
      EditLabel.Height = 18
      EditLabel.Caption = #53084#49552#51208#51648#49688
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -15
      EditLabel.Font.Name = 'Tahoma'
      EditLabel.Font.Style = [fsBold]
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      LabelSpacing = 0
      ParentFont = False
      TabOrder = 20
      Text = '280'
      StyleElements = [seClient, seBorder]
      OnChange = ldtTSCallSJJiSuChange
    end
    object ldtTSPutSJJiSu: TLabeledEdit
      Left = 632
      Top = 147
      Width = 53
      Height = 24
      Alignment = taCenter
      Color = clBlack
      EditLabel.Width = 65
      EditLabel.Height = 18
      EditLabel.Caption = #54411#49552#51208#51648#49688
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -15
      EditLabel.Font.Name = 'Tahoma'
      EditLabel.Font.Style = [fsBold]
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clAqua
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      LabelSpacing = 0
      ParentFont = False
      TabOrder = 21
      Text = '270'
      StyleElements = [seClient, seBorder]
      OnChange = ldtTSPutSJJiSuChange
    end
    object SpinButton3: TSpinButton
      Left = 684
      Top = 147
      Width = 20
      Height = 24
      DownGlyph.Data = {
        0E010000424D0E01000000000000360000002800000009000000060000000100
        200000000000D800000000000000000000000000000000000000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000000000000080800000808000008080000080
        8000008080000080800000808000000000000000000000000000008080000080
        8000008080000080800000808000000000000000000000000000000000000000
        0000008080000080800000808000000000000000000000000000000000000000
        0000000000000000000000808000008080000080800000808000008080000080
        800000808000008080000080800000808000}
      TabOrder = 22
      UpGlyph.Data = {
        0E010000424D0E01000000000000360000002800000009000000060000000100
        200000000000D800000000000000000000000000000000000000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000000000000000000000000000000000000000000000000000000000000080
        8000008080000080800000000000000000000000000000000000000000000080
        8000008080000080800000808000008080000000000000000000000000000080
        8000008080000080800000808000008080000080800000808000000000000080
        8000008080000080800000808000008080000080800000808000008080000080
        800000808000008080000080800000808000}
      OnDownClick = SpinButton3DownClick
      OnUpClick = SpinButton3UpClick
    end
    object lbeCallEJBY: TLabeledEdit
      Left = 543
      Top = 99
      Width = 53
      Height = 24
      Alignment = taCenter
      Color = clBlack
      EditLabel.Width = 77
      EditLabel.Height = 13
      EditLabel.Caption = #53084#51061#51208#48708#50857#47112#48296
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -11
      EditLabel.Font.Name = 'Tahoma'
      EditLabel.Font.Style = [fsBold]
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      LabelSpacing = 0
      ParentFont = False
      TabOrder = 23
      Text = '3.70'
      StyleElements = [seClient, seBorder]
      OnChange = lbeCallEJBYChange
    end
    object SpinButton13: TSpinButton
      Left = 595
      Top = 99
      Width = 20
      Height = 24
      DownGlyph.Data = {
        0E010000424D0E01000000000000360000002800000009000000060000000100
        200000000000D800000000000000000000000000000000000000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000000000000080800000808000008080000080
        8000008080000080800000808000000000000000000000000000008080000080
        8000008080000080800000808000000000000000000000000000000000000000
        0000008080000080800000808000000000000000000000000000000000000000
        0000000000000000000000808000008080000080800000808000008080000080
        800000808000008080000080800000808000}
      TabOrder = 24
      UpGlyph.Data = {
        0E010000424D0E01000000000000360000002800000009000000060000000100
        200000000000D800000000000000000000000000000000000000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000000000000000000000000000000000000000000000000000000000000080
        8000008080000080800000000000000000000000000000000000000000000080
        8000008080000080800000808000008080000000000000000000000000000080
        8000008080000080800000808000008080000080800000808000000000000080
        8000008080000080800000808000008080000080800000808000008080000080
        800000808000008080000080800000808000}
      OnDownClick = SpinButton13DownClick
      OnUpClick = SpinButton13UpClick
    end
    object ldtTSCallEJJiSu: TLabeledEdit
      Left = 632
      Top = 99
      Width = 53
      Height = 24
      Alignment = taCenter
      Color = clBlack
      EditLabel.Width = 65
      EditLabel.Height = 18
      EditLabel.Caption = #53084#51061#51208#51648#49688
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -15
      EditLabel.Font.Name = 'Tahoma'
      EditLabel.Font.Style = [fsBold]
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      LabelSpacing = 0
      ParentFont = False
      TabOrder = 25
      Text = '270'
      StyleElements = [seClient, seBorder]
      OnChange = ldtTSCallEJJiSuChange
    end
    object SpinButton14: TSpinButton
      Left = 684
      Top = 99
      Width = 20
      Height = 24
      DownGlyph.Data = {
        0E010000424D0E01000000000000360000002800000009000000060000000100
        200000000000D800000000000000000000000000000000000000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000000000000080800000808000008080000080
        8000008080000080800000808000000000000000000000000000008080000080
        8000008080000080800000808000000000000000000000000000000000000000
        0000008080000080800000808000000000000000000000000000000000000000
        0000000000000000000000808000008080000080800000808000008080000080
        800000808000008080000080800000808000}
      TabOrder = 26
      UpGlyph.Data = {
        0E010000424D0E01000000000000360000002800000009000000060000000100
        200000000000D800000000000000000000000000000000000000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000000000000000000000000000000000000000000000000000000000000080
        8000008080000080800000000000000000000000000000000000000000000080
        8000008080000080800000808000008080000000000000000000000000000080
        8000008080000080800000808000008080000080800000808000000000000080
        8000008080000080800000808000008080000080800000808000008080000080
        800000808000008080000080800000808000}
      OnDownClick = SpinButton14DownClick
      OnUpClick = SpinButton14UpClick
    end
    object edtTSCallHGBY: TEdit
      Left = 543
      Top = 55
      Width = 57
      Height = 24
      Alignment = taCenter
      Color = clCream
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 27
      Text = '-00.15'
      StyleElements = [seClient, seBorder]
    end
    object ldtTSPutEJJiSu: TLabeledEdit
      Left = 632
      Top = 194
      Width = 53
      Height = 24
      Alignment = taCenter
      Color = clBlack
      EditLabel.Width = 65
      EditLabel.Height = 18
      EditLabel.Caption = #54411#51061#51208#51648#49688
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -15
      EditLabel.Font.Name = 'Tahoma'
      EditLabel.Font.Style = [fsBold]
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clAqua
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      LabelSpacing = 0
      ParentFont = False
      TabOrder = 28
      Text = '280'
      StyleElements = [seClient, seBorder]
      OnChange = ldtTSPutEJJiSuChange
    end
    object SpinButton15: TSpinButton
      Left = 684
      Top = 194
      Width = 20
      Height = 24
      DownGlyph.Data = {
        0E010000424D0E01000000000000360000002800000009000000060000000100
        200000000000D800000000000000000000000000000000000000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000000000000080800000808000008080000080
        8000008080000080800000808000000000000000000000000000008080000080
        8000008080000080800000808000000000000000000000000000000000000000
        0000008080000080800000808000000000000000000000000000000000000000
        0000000000000000000000808000008080000080800000808000008080000080
        800000808000008080000080800000808000}
      TabOrder = 29
      UpGlyph.Data = {
        0E010000424D0E01000000000000360000002800000009000000060000000100
        200000000000D800000000000000000000000000000000000000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000000000000000000000000000000000000000000000000000000000000080
        8000008080000080800000000000000000000000000000000000000000000080
        8000008080000080800000808000008080000000000000000000000000000080
        8000008080000080800000808000008080000080800000808000000000000080
        8000008080000080800000808000008080000080800000808000008080000080
        800000808000008080000080800000808000}
      OnDownClick = SpinButton15DownClick
      OnUpClick = SpinButton15UpClick
    end
    object lbePutEJBY: TLabeledEdit
      Left = 543
      Top = 147
      Width = 53
      Height = 24
      Alignment = taCenter
      Color = clBlack
      EditLabel.Width = 77
      EditLabel.Height = 13
      EditLabel.Caption = #54411#51061#51208#48708#50857#47112#48296
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -11
      EditLabel.Font.Name = 'Tahoma'
      EditLabel.Font.Style = [fsBold]
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      LabelSpacing = 0
      ParentFont = False
      TabOrder = 30
      Text = '3.70'
      StyleElements = [seClient, seBorder]
      OnChange = lbePutEJBYChange
    end
    object SpinButton16: TSpinButton
      Left = 595
      Top = 147
      Width = 20
      Height = 24
      DownGlyph.Data = {
        0E010000424D0E01000000000000360000002800000009000000060000000100
        200000000000D800000000000000000000000000000000000000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000000000000080800000808000008080000080
        8000008080000080800000808000000000000000000000000000008080000080
        8000008080000080800000808000000000000000000000000000000000000000
        0000008080000080800000808000000000000000000000000000000000000000
        0000000000000000000000808000008080000080800000808000008080000080
        800000808000008080000080800000808000}
      TabOrder = 31
      UpGlyph.Data = {
        0E010000424D0E01000000000000360000002800000009000000060000000100
        200000000000D800000000000000000000000000000000000000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000000000000000000000000000000000000000000000000000000000000080
        8000008080000080800000000000000000000000000000000000000000000080
        8000008080000080800000808000008080000000000000000000000000000080
        8000008080000080800000808000008080000080800000808000000000000080
        8000008080000080800000808000008080000080800000808000008080000080
        800000808000008080000080800000808000}
      OnDownClick = SpinButton16DownClick
      OnUpClick = SpinButton16UpClick
    end
    object edtTSPutHGBY: TEdit
      Left = 544
      Top = 194
      Width = 57
      Height = 24
      Alignment = taCenter
      Color = clCream
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 32
      Text = '-00.15'
      StyleElements = [seClient, seBorder]
    end
    object Button15: TButton
      Left = 417
      Top = 60
      Width = 50
      Height = 25
      Caption = #53084#51473#51648
      TabOrder = 33
      OnClick = Button15Click
    end
    object btnPutJinIp: TButton
      Left = 417
      Top = 97
      Width = 50
      Height = 30
      Caption = #54411#51652#51077
      TabOrder = 34
      Visible = False
      OnClick = btnPutJinIpClick
    end
    object Button3: TButton
      Left = 375
      Top = 84
      Width = 26
      Height = 20
      Caption = '-->'
      TabOrder = 35
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 351
      Top = 84
      Width = 26
      Height = 20
      Caption = '<--'
      TabOrder = 36
      OnClick = Button4Click
    end
    object Button7: TButton
      Left = 375
      Top = 190
      Width = 26
      Height = 20
      Caption = '-->'
      TabOrder = 37
      OnClick = Button7Click
    end
    object Button8: TButton
      Left = 351
      Top = 190
      Width = 26
      Height = 20
      Caption = '<--'
      TabOrder = 38
      OnClick = Button8Click
    end
    object edtAutoMMStart: TEdit
      Left = 523
      Top = 6
      Width = 55
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 39
      Text = '90100'
      OnChange = edtAutoMMStartChange
    end
    object edtAutoMMStop: TEdit
      Left = 580
      Top = 6
      Width = 55
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 40
      Text = '151000'
      OnChange = edtAutoMMStopChange
    end
    object btPutCS: TButton
      Left = 417
      Top = 133
      Width = 50
      Height = 30
      Caption = #54411#49884#51089
      TabOrder = 41
      OnClick = btPutCSClick
    end
    object StringGrid1: TStringGrid
      AlignWithMargins = True
      Left = 31
      Top = 114
      Width = 318
      Height = 24
      ParentCustomHint = False
      BevelInner = bvLowered
      BiDiMode = bdLeftToRight
      Color = clCream
      ColCount = 6
      Ctl3D = False
      DefaultColWidth = 50
      DefaultRowHeight = 20
      DoubleBuffered = False
      FixedColor = clHighlight
      FixedCols = 0
      RowCount = 1
      FixedRows = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing, goEditing, goTabs]
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentDoubleBuffered = False
      ParentFont = False
      ParentShowHint = False
      ScrollBars = ssNone
      ShowHint = False
      TabOrder = 42
      OnExit = StringGrid1Exit
      OnMouseLeave = StringGrid1MouseLeave
      OnMouseWheelDown = StringGrid1MouseWheelDown
      OnMouseWheelUp = StringGrid1MouseWheelUp
    end
    object mmoSaveUIValue: TMemo
      Left = -300
      Top = 83
      Width = 185
      Height = 89
      ScrollBars = ssBoth
      TabOrder = 43
    end
    object Button2: TButton
      Left = 476
      Top = 43
      Width = 43
      Height = 24
      Caption = #53084#51201#50857
      TabOrder = 44
      OnClick = Button2Click
    end
    object Button9: TButton
      Left = 477
      Top = 164
      Width = 43
      Height = 24
      Caption = #54411#51201#50857
      TabOrder = 45
      OnClick = Button9Click
    end
    object Button10: TButton
      Left = 417
      Top = 169
      Width = 50
      Height = 25
      Caption = #54411#51473#51648
      TabOrder = 46
      OnClick = Button10Click
    end
    object Button72: TButton
      Left = 667
      Top = 7
      Width = 36
      Height = 22
      Caption = #49444#47749
      TabOrder = 47
      OnClick = Button72Click
    end
    object Button70: TButton
      Left = 638
      Top = 7
      Width = 28
      Height = 22
      Caption = #49325#51228
      TabOrder = 48
      OnClick = Button70Click
    end
  end
  object tmrTSCallPrice: TTimer
    Enabled = False
    Interval = 50
    OnTimer = tmrTSCallPriceTimer
    Left = 264
    Top = 56
  end
  object tmrTSMessage: TTimer
    Interval = 10
    OnTimer = tmrTSMessageTimer
    Left = 200
    Top = 152
  end
  object tmrTSPutPrice: TTimer
    Enabled = False
    Interval = 1
    OnTimer = tmrTSPutPriceTimer
    Left = 280
    Top = 136
  end
  object tmrCallFind: TTimer
    Enabled = False
    Interval = 1
    OnTimer = tmrCallFindTimer
    Left = 104
    Top = 48
  end
  object tmrCallOrder: TTimer
    Enabled = False
    Interval = 1
    OnTimer = tmrCallOrderTimer
    Left = 176
    Top = 48
  end
  object tmrPutFind: TTimer
    Enabled = False
    Interval = 1
    OnTimer = tmrPutFindTimer
    Left = 64
    Top = 152
  end
  object tmrPutOrder: TTimer
    Enabled = False
    Interval = 1
    OnTimer = tmrPutOrderTimer
    Left = 120
    Top = 144
  end
  object tmrTSCallPrice2: TTimer
    Interval = 50
    OnTimer = tmrTSCallPrice2Timer
    Left = 312
    Top = 9
  end
  object tmrTSPutPrice2: TTimer
    Interval = 50
    OnTimer = tmrTSPutPrice2Timer
    Left = 312
    Top = 121
  end
end

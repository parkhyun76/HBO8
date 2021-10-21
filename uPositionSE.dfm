object fPositionSE: TfPositionSE
  Left = 0
  Top = 0
  Caption = #54252#49884#49496#47564#44592#49552#51061#48516#49437
  ClientHeight = 984
  ClientWidth = 1684
  Color = clBtnFace
  DefaultMonitor = dmMainForm
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  DesignSize = (
    1684
    984)
  PixelsPerInch = 96
  TextHeight = 13
  object stg포지션LCall: TStringGrid
    AlignWithMargins = True
    Left = 3
    Top = 45
    Width = 286
    Height = 396
    BevelInner = bvLowered
    Color = clAqua
    Ctl3D = False
    DefaultColWidth = 47
    DefaultRowHeight = 13
    FixedColor = clHighlight
    FixedCols = 0
    RowCount = 25
    FixedRows = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing, goEditing, goTabs]
    ParentCtl3D = False
    ParentFont = False
    ScrollBars = ssHorizontal
    TabOrder = 0
    OnDrawCell = stg포지션LCallDrawCell
  end
  object stg포지션LTop: TStringGrid
    AlignWithMargins = True
    Left = 3
    Top = 30
    Width = 286
    Height = 16
    BevelInner = bvLowered
    Color = clAqua
    Ctl3D = False
    DefaultColWidth = 47
    DefaultRowHeight = 15
    FixedColor = clHighlight
    FixedCols = 0
    RowCount = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing, goEditing, goTabs]
    ParentCtl3D = False
    ParentFont = False
    ScrollBars = ssHorizontal
    TabOrder = 1
    ColWidths = (
      47
      47
      47
      47
      47)
  end
  object stg포지션LPut: TStringGrid
    AlignWithMargins = True
    Left = 3
    Top = 395
    Width = 286
    Height = 525
    BevelInner = bvLowered
    Color = clAqua
    Ctl3D = False
    DefaultColWidth = 47
    DefaultRowHeight = 13
    FixedColor = clHighlight
    FixedCols = 0
    RowCount = 36
    FixedRows = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing, goEditing, goTabs]
    ParentCtl3D = False
    ParentFont = False
    ScrollBars = ssHorizontal
    TabOrder = 2
    OnDrawCell = stg포지션LPutDrawCell
  end
  object Button1: TButton
    Left = 3
    Top = 3
    Width = 54
    Height = 25
    Caption = #51092#44256#51312#54924
    TabOrder = 3
  end
  object Button2: TButton
    Left = 58
    Top = 3
    Width = 53
    Height = 25
    Caption = #54788#51116#44032
    TabOrder = 4
  end
  object Button20: TButton
    Left = 117
    Top = 3
    Width = 31
    Height = 25
    Caption = #51221#47148
    TabOrder = 5
  end
  object stg포지션RTop: TStringGrid
    AlignWithMargins = True
    Left = 239
    Top = 30
    Width = 1869
    Height = 39
    Anchors = [akLeft, akTop, akRight]
    BevelInner = bvLowered
    Color = clAqua
    ColCount = 150
    Ctl3D = False
    DefaultColWidth = 45
    DefaultRowHeight = 15
    FixedColor = clHighlight
    FixedCols = 0
    RowCount = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing, goEditing, goTabs]
    ParentCtl3D = False
    ParentFont = False
    ScrollBars = ssNone
    TabOrder = 6
  end
  object stg포지션RCall: TStringGrid
    AlignWithMargins = True
    Left = 239
    Top = 45
    Width = 1869
    Height = 367
    Anchors = [akLeft, akTop, akRight]
    BevelInner = bvLowered
    Color = clAqua
    ColCount = 150
    Ctl3D = False
    DefaultColWidth = 45
    DefaultRowHeight = 13
    FixedColor = clHighlight
    FixedCols = 0
    RowCount = 25
    FixedRows = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing, goEditing, goTabs]
    ParentCtl3D = False
    ParentFont = False
    ScrollBars = ssNone
    TabOrder = 7
  end
  object stg포지션RPut: TStringGrid
    AlignWithMargins = True
    Left = 239
    Top = 395
    Width = 1869
    Height = 525
    Anchors = [akLeft, akTop, akRight]
    BevelInner = bvLowered
    Color = clAqua
    ColCount = 150
    Ctl3D = False
    DefaultColWidth = 45
    DefaultRowHeight = 13
    FixedColor = clHighlight
    FixedCols = 0
    RowCount = 36
    FixedRows = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing, goEditing, goTabs]
    ParentCtl3D = False
    ParentFont = False
    ScrollBars = ssNone
    TabOrder = 8
  end
  object stg포지션LBottom: TStringGrid
    AlignWithMargins = True
    Left = 3
    Top = 896
    Width = 529
    Height = 88
    Anchors = [akLeft, akTop, akRight]
    BevelInner = bvLowered
    Color = clAqua
    Ctl3D = False
    DefaultColWidth = 47
    DefaultRowHeight = 13
    FixedColor = clHighlight
    FixedCols = 0
    FixedRows = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing, goEditing, goTabs]
    ParentCtl3D = False
    ParentFont = False
    ScrollBars = ssHorizontal
    TabOrder = 9
    OnDrawCell = stg포지션LBottomDrawCell
  end
  object stg포지션RBottom: TStringGrid
    AlignWithMargins = True
    Left = 239
    Top = 896
    Width = 1869
    Height = 88
    Anchors = [akLeft, akTop, akRight]
    BevelInner = bvLowered
    Color = clAqua
    ColCount = 150
    Ctl3D = False
    DefaultColWidth = 45
    DefaultRowHeight = 13
    FixedColor = clHighlight
    FixedCols = 0
    FixedRows = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing, goEditing, goTabs]
    ParentCtl3D = False
    ParentFont = False
    ScrollBars = ssHorizontal
    TabOrder = 10
  end
  object grbPositionChart: TGroupBox
    Left = 484
    Top = 192
    Width = 909
    Height = 362
    TabOrder = 11
    Visible = False
    object Chart2: TChart
      Left = 5
      Top = 31
      Width = 901
      Height = 313
      BackWall.Pen.Color = clGray
      BackWall.Pen.Width = 0
      Border.Color = clGray
      Border.Width = 0
      BottomWall.Pen.Width = 0
      Gradient.EndColor = clGray
      Gradient.StartColor = clBlack
      Gradient.Visible = True
      LeftWall.Pen.Color = clGray
      LeftWall.Pen.Width = 0
      Legend.Alignment = laBottom
      Legend.Brush.Gradient.Colors = <
        item
          Color = 8947848
        end
        item
          Color = clWhite
          Offset = 0.440119760479041900
          Transparency = 53
        end
        item
          Color = 2631720
          Offset = 1.000000000000000000
        end>
      Legend.Brush.Gradient.Direction = gdTopBottom
      Legend.Brush.Gradient.EndColor = 2631720
      Legend.Brush.Gradient.MidColor = clWhite
      Legend.Brush.Gradient.StartColor = 8947848
      Legend.Brush.Gradient.Visible = True
      Legend.ColorWidth = 0
      Legend.Font.Charset = ANSI_CHARSET
      Legend.Font.Color = clWhite
      Legend.Font.Name = #47569#51008' '#44256#46357
      Legend.Frame.Visible = False
      Legend.Shadow.Visible = False
      Legend.Symbol.Height = 55
      Legend.Symbol.Pen.Visible = False
      Legend.Symbol.Width = 0
      Legend.TopPos = 13
      Legend.Visible = False
      RightWall.Pen.Width = 0
      Title.Font.Style = [fsBold]
      Title.Text.Strings = (
        '')
      AxisBehind = False
      BottomAxis.Axis.Color = clGray
      BottomAxis.Axis.Width = 0
      BottomAxis.AxisValuesFormat = '0.#'
      BottomAxis.Grid.Style = psDot
      BottomAxis.LabelsAngle = 270
      BottomAxis.LabelsExponent = True
      BottomAxis.LabelsFormat.Font.Color = clWhite
      Chart3DPercent = 1
      Frame.Color = clGray
      Frame.Width = 0
      LeftAxis.Axis.Color = clGray
      LeftAxis.Axis.Width = 0
      LeftAxis.Grid.Style = psDot
      LeftAxis.LabelsFormat.Font.Color = clWhite
      LeftAxis.LabelsFormat.Font.Height = -13
      RightAxis.Axis.Color = clGray
      RightAxis.Axis.Width = 0
      RightAxis.Grid.Style = psDot
      RightAxis.LabelsFormat.Font.Color = clWhite
      RightAxis.LabelsFormat.Font.Height = -13
      TopAxis.Axis.Color = clGray
      TopAxis.Axis.Width = 0
      View3D = False
      View3DOptions.Orthogonal = False
      View3DOptions.Perspective = 19
      BevelOuter = bvNone
      TabOrder = 0
      DefaultCanvas = 'TGDIPlusCanvas'
      PrintMargins = (
        15
        27
        15
        27)
      ColorPaletteIndex = 13
      object Label6: TLabel
        Left = 320
        Top = 7
        Width = 168
        Height = 13
        Caption = 'Ctl + '#50812#51901#47560#50864#49828#47196' '#52264#53944' '#51060#46041' '#44032#45733
      end
      object Edit1: TEdit
        Left = 30
        Top = 7
        Width = 35
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Text = '350'
      end
      object Edit2: TEdit
        Left = 30
        Top = 250
        Width = 35
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Text = '200'
      end
      object Button68: TButton
        Left = 71
        Top = 7
        Width = 36
        Height = 18
        Hint = #49892#49884#44036#45936#51060#53552#51077#45768#45796'.'
        Caption = #51201#50857
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object CheckBox3: TCheckBox
        Left = 109
        Top = 7
        Width = 50
        Height = 18
        Caption = 'Auto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        StyleElements = [seClient, seBorder]
      end
      object Series2: TLineSeries
        Marks.Callout.Length = 20
        SeriesColor = clRed
        Brush.BackColor = clDefault
        LinePen.Width = 3
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        XValues.Name = 'X'
        XValues.Order = loAscending
        YValues.Name = 'Y'
        YValues.Order = loNone
      end
      object Series1: TLineSeries
        SeriesColor = clLime
        Brush.BackColor = clDefault
        LinePen.Style = psDashDot
        LinePen.Width = 2
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        XValues.Name = 'X'
        XValues.Order = loAscending
        YValues.Name = 'Y'
        YValues.Order = loNone
      end
    end
    object Button29: TButton
      Left = 199
      Top = 3
      Width = 101
      Height = 25
      Caption = #44536#47000#54532' '#44048#52628#44592
      TabOrder = 1
    end
    object btnChartCal: TButton
      Left = 626
      Top = 3
      Width = 75
      Height = 25
      Caption = #52264#53944#51201#50857
      TabOrder = 2
    end
  end
end

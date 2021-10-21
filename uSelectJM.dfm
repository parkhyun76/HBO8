object fSelectJM: TfSelectJM
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'fSelectJM'
  ClientHeight = 797
  ClientWidth = 788
  Color = clBtnFace
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
  PixelsPerInch = 96
  TextHeight = 13
  object 당월: TLabel
    Left = 266
    Top = 8
    Width = 22
    Height = 13
    Caption = #45817#50900
  end
  object Label1: TLabel
    Left = 238
    Top = 8
    Width = 22
    Height = 13
    Caption = #52264#50900
  end
  object Label2: TLabel
    Left = 199
    Top = 8
    Width = 33
    Height = 13
    Caption = #52264#52264#50900
  end
  object ScrollBox1: TScrollBox
    Left = 8
    Top = 24
    Width = 619
    Height = 737
    BevelInner = bvNone
    BevelOuter = bvNone
    TabOrder = 0
    object GroupBox2: TGroupBox
      Left = 3
      Top = 3
      Width = 394
      Height = 1198
      TabOrder = 0
      object stg전광: TStringGrid
        AlignWithMargins = True
        Left = 88
        Top = 0
        Width = 49
        Height = 1190
        ParentCustomHint = False
        BevelInner = bvLowered
        BiDiMode = bdLeftToRight
        Color = clAqua
        ColCount = 1
        Ctl3D = False
        DefaultColWidth = 50
        DefaultRowHeight = 17
        DoubleBuffered = False
        FixedColor = clHighlight
        FixedCols = 0
        RowCount = 66
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
        ScrollBars = ssVertical
        ShowHint = False
        TabOrder = 0
      end
      object CheckBox1: TCheckBox
        Left = 380
        Top = 83
        Width = 14
        Height = 17
        TabOrder = 1
      end
    end
  end
  object Button1: TButton
    Left = 656
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
end

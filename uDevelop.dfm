object fDevelop: TfDevelop
  Left = 0
  Top = 0
  Caption = #44060#48156#51221#48372' '#48143' '#47700#47784
  ClientHeight = 877
  ClientWidth = 1232
  Color = clBtnFace
  DefaultMonitor = dmMainForm
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 296
    Top = 8
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object Label2: TLabel
    Left = 296
    Top = 27
    Width = 31
    Height = 13
    Caption = 'Label2'
  end
  object Label3: TLabel
    Left = 296
    Top = 46
    Width = 31
    Height = 13
    Caption = 'Label3'
  end
  object Label4: TLabel
    Left = 984
    Top = 77
    Width = 44
    Height = 13
    Caption = #49440#47932#51648#49688
  end
  object Label5: TLabel
    Left = 1177
    Top = 27
    Width = 44
    Height = 13
    Caption = #49440#47932#51648#49688
  end
  object Memo1: TMemo
    Left = 16
    Top = 96
    Width = 529
    Height = 729
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 0
  end
  object Button52: TButton
    Left = 8
    Top = 8
    Width = 40
    Height = 22
    Caption = #51200#51109
    TabOrder = 1
    OnClick = Button52Click
  end
  object Button55: TButton
    Left = 577
    Top = 8
    Width = 40
    Height = 22
    Caption = #49325#51228
    TabOrder = 2
    OnClick = Button55Click
  end
  object Button1: TButton
    Left = 54
    Top = 8
    Width = 40
    Height = 22
    Caption = #50676#44592
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 152
    Top = 68
    Width = 120
    Height = 22
    Caption = #51452#47928
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 160
    Top = 8
    Width = 40
    Height = 22
    Caption = #51456#48708
    TabOrder = 5
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 206
    Top = 36
    Width = 66
    Height = 22
    Caption = 'int'#53580#49828#53944
    TabOrder = 6
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 16
    Top = 64
    Width = 105
    Height = 26
    Caption = #52404#44208#47532#49828#53944' '#44081#49888
    TabOrder = 7
  end
  object Memo2: TMemo
    Left = 585
    Top = 96
    Width = 282
    Height = 729
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 8
  end
  object Button6: TButton
    Left = 585
    Top = 64
    Width = 105
    Height = 26
    Caption = #54788#51116#44032' '#44081#49888
    TabOrder = 9
  end
  object Edit1: TEdit
    Left = 1032
    Top = 61
    Width = 65
    Height = 21
    TabOrder = 10
    Text = '276.2'
  end
  object Button7: TButton
    Left = 873
    Top = 64
    Width = 88
    Height = 26
    Caption = #51333#47785#49373#49457
    TabOrder = 11
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 737
    Top = 64
    Width = 88
    Height = 26
    Caption = #51333#47785' '#48520#47084#50724#44592
    TabOrder = 12
    OnClick = Button8Click
  end
  object Memo3: TMemo
    Left = 873
    Top = 96
    Width = 144
    Height = 729
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 13
  end
  object Button9: TButton
    Left = 1065
    Top = 29
    Width = 88
    Height = 26
    Caption = #54788#51116#44032#48372#44592
    TabOrder = 14
    OnClick = Button9Click
  end
  object Button10: TButton
    Left = 392
    Top = 68
    Width = 81
    Height = 22
    Caption = #50416#47112#46300#53580#49828#53944
    TabOrder = 15
    OnClick = Button10Click
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 2000
    Left = 424
    Top = 16
  end
  object Timer2: TTimer
    OnTimer = Timer2Timer
    Left = 376
    Top = 8
  end
end

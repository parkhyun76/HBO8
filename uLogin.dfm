object fLogin: TfLogin
  Left = 0
  Top = 0
  Caption = #47196#44536#51064
  ClientHeight = 434
  ClientWidth = 707
  Color = clBtnFace
  DoubleBuffered = True
  DragMode = dmAutomatic
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  PopupMode = pmAuto
  Position = poOwnerFormCenter
  Visible = True
  OnClose = FormClose
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 569
    Height = 401
    TabOrder = 0
    OnMouseDown = GroupBox1MouseDown
    object Label50: TLabel
      Left = 55
      Top = 359
      Width = 66
      Height = 13
      Caption = #47928#51088#49688#49888#48264#54840
    end
    object Label29: TLabel
      Left = 140
      Top = 314
      Width = 44
      Height = 13
      Caption = #47928#51088#51092#47049
    end
    object Label3: TLabel
      Left = 55
      Top = 337
      Width = 66
      Height = 13
      Caption = #47928#51088#49688#49888#48264#54840
    end
    object Label5: TLabel
      Left = 133
      Top = 147
      Width = 63
      Height = 13
      Caption = #50948#53364#47532' '#51452' No'
    end
    object Label6: TLabel
      Left = 38
      Top = 295
      Width = 44
      Height = 13
      Caption = #47928#51088#51092#47049
    end
    object pgbLogin: TProgressBar
      Left = 24
      Top = 272
      Width = 272
      Height = 17
      TabOrder = 0
    end
    object cbbName: TComboBox
      Left = 138
      Top = 22
      Width = 92
      Height = 21
      TabOrder = 1
      Text = #48149#54788'('#47784')'
      OnChange = cbbNameChange
      Items.Strings = (
        #48149#54788'('#47784')'
        #48149#54788'(A)'
        #48149#54788'(B)')
    end
    object edtRecPhoneNo2: TEdit
      Left = 141
      Top = 356
      Width = 93
      Height = 21
      Alignment = taCenter
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Text = '01029442279'
    end
    object edtGongInPW: TComboBox
      Left = 213
      Top = 52
      Width = 94
      Height = 21
      TabOrder = 3
      Text = 'qkrgus*2002'
      Items.Strings = (
        'qkrgus*2002')
    end
    object edtPW: TComboBox
      Left = 114
      Top = 52
      Width = 94
      Height = 21
      TabOrder = 4
      Text = 'qkrgus*2028'
      Items.Strings = (
        'qkrgus*2028')
    end
    object edtID: TComboBox
      Left = 38
      Top = 52
      Width = 70
      Height = 21
      TabOrder = 5
      Text = 'wolf02'
      Items.Strings = (
        'wolf02'
        'hyunpa')
    end
    object edtSMSQnt: TEdit
      Left = 193
      Top = 312
      Width = 41
      Height = 21
      Alignment = taCenter
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      Text = '1'
    end
    object edtRecPhoneNo: TEdit
      Left = 141
      Top = 334
      Width = 93
      Height = 21
      Alignment = taCenter
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      Text = '01044197624'
    end
    object Button15: TButton
      Left = 133
      Top = 188
      Width = 56
      Height = 54
      Caption = #47196#44536#50500#50883
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = Button15Click
    end
    object edtMultiName: TEdit
      Left = 121
      Top = 79
      Width = 76
      Height = 21
      TabOrder = 9
      Text = 'OpenHeart'
    end
    object chkMultiLogin: TCheckBox
      Left = 40
      Top = 79
      Width = 75
      Height = 17
      Caption = #45796#51473#47196#44536#51064
      TabOrder = 10
    end
    object Button14: TButton
      Left = 40
      Top = 188
      Width = 73
      Height = 54
      Caption = #50976#50504#53440#47196#44536#51064
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 11
      OnClick = Button14Click
    end
    object cbAutoLogin: TCheckBox
      Left = 45
      Top = 25
      Width = 89
      Height = 17
      Caption = #51088#46041#47196#44536#51064
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 12
    end
    object mmoSaveUIValue: TMemo
      Left = 71
      Top = 428
      Width = 185
      Height = 129
      TabOrder = 13
    end
    object Button1: TButton
      Left = 208
      Top = 188
      Width = 73
      Height = 54
      Caption = #44032#44201#51221#48372
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 14
      OnClick = Button1Click
    end
    object edtWeeklyNo: TEdit
      Left = 133
      Top = 161
      Width = 53
      Height = 21
      Alignment = taCenter
      TabOrder = 15
      Text = '13'
      OnChange = edtWeeklyNoChange
    end
    object SpinButton11: TSpinButton
      Left = 186
      Top = 161
      Width = 20
      Height = 21
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
      TabOrder = 16
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
      OnDownClick = SpinButton11DownClick
      OnUpClick = SpinButton11UpClick
    end
    object GroupBox2: TGroupBox
      Left = 259
      Top = 106
      Width = 253
      Height = 84
      TabOrder = 17
      Visible = False
      object Label1: TLabel
        Left = 10
        Top = 12
        Width = 44
        Height = 13
        Caption = #52572#49548#51060#54217
        Visible = False
      end
      object Label2: TLabel
        Left = 10
        Top = 39
        Width = 44
        Height = 13
        Caption = #51473#44036#51060#54217
        Visible = False
      end
      object Label4: TLabel
        Left = 10
        Top = 66
        Width = 44
        Height = 13
        Caption = #52572#45824#51060#54217
        Visible = False
      end
      object edtEPyMin1: TEdit
        Left = 63
        Top = 8
        Width = 41
        Height = 21
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Text = '90'
        Visible = False
      end
      object edtEPyMin2: TEdit
        Left = 110
        Top = 8
        Width = 41
        Height = 21
        Alignment = taCenter
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Text = '100'
        Visible = False
      end
      object edtEPyMin3: TEdit
        Left = 157
        Top = 8
        Width = 41
        Height = 21
        Alignment = taCenter
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Text = '110'
        Visible = False
      end
      object edtEPyMid1: TEdit
        Left = 63
        Top = 35
        Width = 41
        Height = 21
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        Text = '900'
        Visible = False
      end
      object edtEPyMid2: TEdit
        Left = 110
        Top = 35
        Width = 41
        Height = 21
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        Text = '1000'
        Visible = False
      end
      object edtEPyMid3: TEdit
        Left = 157
        Top = 35
        Width = 41
        Height = 21
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        Text = '1100'
        Visible = False
      end
      object edtEPyMax1: TEdit
        Left = 63
        Top = 62
        Width = 41
        Height = 21
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        Text = '4100'
        Visible = False
      end
      object edtEPyMax2: TEdit
        Left = 110
        Top = 62
        Width = 41
        Height = 21
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        Text = '4400'
        Visible = False
      end
      object edtEPyMax3: TEdit
        Left = 157
        Top = 62
        Width = 41
        Height = 21
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        Text = '4700'
        Visible = False
      end
      object edtEPyMin4: TEdit
        Left = 204
        Top = 8
        Width = 41
        Height = 21
        Alignment = taCenter
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        Text = '120'
        Visible = False
      end
      object edtEPyMid4: TEdit
        Left = 204
        Top = 35
        Width = 41
        Height = 21
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
        Text = '1200'
        Visible = False
      end
      object edtEPyMax4: TEdit
        Left = 204
        Top = 62
        Width = 41
        Height = 21
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        Text = '5000'
        Visible = False
      end
    end
    object Button2: TButton
      Left = 337
      Top = 196
      Width = 73
      Height = 29
      Caption = #50741#49496#54788#51116#44032
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 18
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 337
      Top = 231
      Width = 73
      Height = 29
      Caption = #49892#49884#44036#50836#52397
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 19
      OnClick = Button3Click
    end
    object ckbSimul: TCheckBox
      Left = 45
      Top = 161
      Width = 82
      Height = 17
      Caption = #47784#51032#53804#51088
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 20
    end
  end
end

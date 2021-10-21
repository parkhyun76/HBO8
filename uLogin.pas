unit uLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.Samples.Spin;

type
  TfLogin = class(TForm)
    GroupBox1: TGroupBox;
    pgbLogin: TProgressBar;
    cbbName: TComboBox;
    edtRecPhoneNo2: TEdit;
    edtGongInPW: TComboBox;
    edtPW: TComboBox;
    edtID: TComboBox;
    edtSMSQnt: TEdit;
    edtRecPhoneNo: TEdit;
    Button15: TButton;
    edtMultiName: TEdit;
    chkMultiLogin: TCheckBox;
    Button14: TButton;
    cbAutoLogin: TCheckBox;
    mmoSaveUIValue: TMemo;
    Label50: TLabel;
    Label29: TLabel;
    Label3: TLabel;
    Button1: TButton;
    edtWeeklyNo: TEdit;
    SpinButton11: TSpinButton;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    edtEPyMin1: TEdit;
    edtEPyMin2: TEdit;
    edtEPyMin3: TEdit;
    edtEPyMid1: TEdit;
    edtEPyMid2: TEdit;
    edtEPyMid3: TEdit;
    edtEPyMax1: TEdit;
    edtEPyMax2: TEdit;
    edtEPyMax3: TEdit;
    edtEPyMin4: TEdit;
    edtEPyMid4: TEdit;
    edtEPyMax4: TEdit;
    Label5: TLabel;
    Button2: TButton;
    Label6: TLabel;
    Button3: TButton;
    ckbSimul: TCheckBox;
    procedure Button14Click(Sender: TObject);
    procedure DongBu_LogIN;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button15Click(Sender: TObject);
    procedure Button45Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure GroupBox1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure edtWeeklyNoChange(Sender: TObject);
    procedure SpinButton11DownClick(Sender: TObject);
    procedure SpinButton11UpClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure cbbNameChange(Sender: TObject);
  private
    procedure BSOpenUIValue;
    procedure BSSaveUIValue;
    procedure SunMulPrice;
    procedure btnMultiNP;
    procedure DongBuRealDyungRok;
    procedure pSunmulNowManki;
    procedure PyungGaChongEak;
    procedure DongBuSunOpPyungGaJango;
    procedure DongBuRTCheaGeal;
    procedure DongBuRTJango;
    procedure JMListCreate;
    procedure EPyValueInput;
    procedure WeeklyPriceNow;
    procedure WeeklyRealRequest;
    procedure Yoanta_LogIN;
    { Private declarations }
  public
    { Public declarations }
    procedure VisibleChanging; override;
  end;

var
  fLogin: TfLogin;
    _SunMulJonmokCode : string;

implementation
uses uHBO2_Main;
{$R *.dfm}

function pYearCode(s: string): string;
var sDate : string;
begin
  sDate := s;//
  if StrToFloat(sDate) > 2036 then ShowMessage('���α׷� ��� ������ �������ϴ�.');
  if sDate = '2016' then YearCode := 'L'
  else if sDate = '2017' then YearCode := 'M'
  else if sDate = '2018' then YearCode := 'N'
  else if sDate = '2019' then YearCode := 'P'
  else if sDate = '2020' then YearCode := 'Q'
  else if sDate = '2021' then YearCode := 'R'
  else if sDate = '2022' then YearCode := 'S'
  else if sDate = '2023' then YearCode := 'T'
  else if sDate = '2024' then YearCode := 'V'
  else if sDate = '2025' then YearCode := 'W'
  else if sDate = '2026' then YearCode := '6'
  else if sDate = '2027' then YearCode := '7'
  else if sDate = '2028' then YearCode := '8'
  else if sDate = '2029' then YearCode := '9'
  else if sDate = '2030' then YearCode := '0'
  else if sDate = '2031' then YearCode := '1'
  else if sDate = '2032' then YearCode := '2'
  else if sDate = '2033' then YearCode := '3'
  else if sDate = '2034' then YearCode := '4'
  else if sDate = '2035' then YearCode := '5'
  else if sDate = '2036' then YearCode := 'A';
  Result := YearCode;
end;


procedure delay(TickTime: Integer);
var Past, Now: Integer;
begin
  Past := GetTickCount;
  repeat
    if delay_stop_flg then Break;
    Now := GetTickCount;
    Application.ProcessMessages;
  until Now > Past + TickTime;
end;

procedure TfLogin.Button15Click(Sender: TObject);
begin
  if HandleDongbuApi > 0 then begin
    try
      with fHBOMain do begin
        YuantaApi1.YOA_UnRegistAllAuto; // �ǽð� ��� ����
        if YuantaApi1.YOA_UnInitial = 1000 then statusbar1.Panels[4].Text := 'Yuanta-Uninitail ����'
        else statusbar1.Panels[4].Text := 'Yuanta-Uninitial ����';
      end;
    except

    end;
  end;
end;

procedure TfLogin.Button1Click(Sender: TObject);
begin
  Screen.Cursor:=crHourGlass; // �𷡽ð�� �ٲ۴�. Screen.Cursor �� �Ϳ� ����
  pgbLogin.Position := 20;
  btnMultiNP;// ���簡 �ҷ�����
  delay(50);
  DongBuRealDyungRok; // ���� �ǽð� ��û
  pgbLogin.Position := 100;
  Screen.Cursor:=crDefault;

  fLogin.Close;
end;

procedure TfLogin.Button2Click(Sender: TObject);
begin
  btnMultiNP;// ���簡 �ҷ�����
end;

procedure TfLogin.Button3Click(Sender: TObject);
begin
  DongBuRealDyungRok; // ���� �ǽð� ��û
end;

procedure TfLogin.SpinButton11DownClick(Sender: TObject);
var intMonthCode : integer;
begin
  intMonthCode := strTointDef(edtWeeklyNo.Text,0) -1;
  _WeeklyMonthCode := intTostr(intMonthCode);;
  edtWeeklyNo.Text := _WeeklyMonthCode;
end;

procedure TfLogin.SpinButton11UpClick(Sender: TObject);
var intMonthCode : integer;
begin
  intMonthCode := strTointDef(edtWeeklyNo.Text,0)+1;
  _WeeklyMonthCode := intTostr(intMonthCode);;
  edtWeeklyNo.Text := _WeeklyMonthCode;
end;

procedure TfLogin.WeeklyRealRequest;
var nString, nYearNow, nMonthCode : string;
    i, ID_ADVICE_RT : integer;
begin
  nString := '';
  for I := 10 to 45 do begin// 0~50, 51~101
     nString := nString + '209' + _WeeklyMonthCode + copy(formatfloat('#0.0',_MaxHSG-i*2.5),1,3) + ',';
  end;

  for I := 10 to 45 do begin// 0~50, 51~101
     nString := nString + '309' +  _WeeklyMonthCode + copy(formatfloat('#0.0',_MaxHSG-i*2.5),1,3) + ',';
  end;

  nString := copy(nString,1,length(nString) -1);

  ID_ADVICE_RT := -73; //�ǽð����
//  with fHBOMain do begin
//    DongbuAPI1.ReqRealtimeData(ID_ADVICE_RT, 'OC0', nString) ;  // �������ǿ��� ó��
//    delay(100);
//    DongbuAPI1.ReqRealtimeData(ID_ADVICE_RT, 'OH0', nString) ;  // �������ǿ��� ó��  �ɼ� ȣ��
//  end;
end;

procedure TfLogin.WeeklyPriceNow ;//���簡 �ҷ�����
var i, Time_Out : integer;
    nWeeklyCode : string;
begin
//  if HandleDongbuApi = 0 then begin
//    showmessage('�α��� �ȵ�');
//    exit;
//  end;
//  Screen.Cursor:=crHourGlass; // �𷡽ð�� �ٲ۴�. Screen.Cursor �� �Ϳ� ����
//
//  with fHBOMain do begin
//    for I := 10 to 45 do  begin
//      _WeeklyNowPriceCode := '209' + _WeeklyMonthCode + copy(formatfloat('#0.0',_MaxHSG-i*2.5),1,3); // �� �ɼ�
//      DongbuAPI1.ReqOptionHoga(_WeeklyNowPriceCode);
//      Time_Out := 0;
//      repeat
//        if (Time_Out > 300) then break;
//        delay(10);
//        inc(Time_Out);
//      until _WeeklyNowPriceCode = '-';
//
////      stg����.Cells[0,i] := formatfloat('0.0#',_WeeklyPriceListInfo[0,i]);
//
//      _WeeklyNowPriceCode :=  '309' + _WeeklyMonthCode + copy(formatfloat('#0.0',_MaxHSG-i*2.5),1,3);
//      DongbuAPI1.ReqOptionHoga(_WeeklyNowPriceCode);
//      Time_Out := 0;
//      repeat
//        if (Time_Out > 300) then break;
//        delay(10);
//        inc(Time_Out);
//      until _WeeklyNowPriceCode = '-';
////      stg����.Cells[2,i] := formatfloat('0.0#',_WeeklyPriceListInfo[2,i]);
////      pgbWeekly.Position := Round(I * 2.23);
//    end;
//  end;
//  Screen.Cursor:=crDefault;
end;

procedure TfLogin.SunMulPrice;
var sDate, sTemp : string;
    nMankiMonth, nReturn, Time_Out : integer;
begin
  sDate := ManKiDate;//Label8.Caption;// FormatDateTime('yyyymmdd',now);     //yyyy-mm-dd

  sTemp := '101' + YearCode;         //101NC000

  if StrToInt(Copy(sDate,6,2)) < 4 then nMankiMonth := 3
  else if StrToInt(Copy(sDate,6,2)) < 7 then  nMankiMonth := 6
  else if StrToInt(Copy(sDate,6,2)) < 10 then nMankiMonth := 9
  else nMankiMonth := 12;

  if nMankiMonth =  3 then sTemp := sTemp + '3000'
  else if nMankiMonth = 6 then sTemp := sTemp + '6000'
  else if nMankiMonth = 9 then sTemp := sTemp + '9000'
  else sTemp := sTemp + 'C000';
  _DongBuSunMulCode := sTemp;
  with fHBOMain do begin
    YuantaAPI1.YOA_SetTRInfo( '350001', 'InBlock1' );			// TR����(TR��, Block��)�� �����մϴ�.
    YuantaAPI1.YOA_SetFieldString( 'code', '101RC000', 0 );		// �����ڵ� ���� �����մϴ�.
    nReturn := YuantaAPI1.YOA_Request('350001', true, -1);
    if nReturn > 999 then begin
      delay(500);
    end else begin
      showmessage('���� ���簡 �б� ����');
      exit;
    end;
    YuantaAPI1.YOA_SetTRInfo( '41', 'InBlock1' );			// TR����(TR��, Block��)�� �����մϴ�.
    YuantaAPI1.YOA_SetFieldString( 'jongcode',  _DongBuSunMulCode, 0 );		// �����ڵ� ���� �����մϴ�.
    nReturn := YuantaAPI1.YOA_RegistAuto('41');
    if nReturn > 999 then begin
      delay(500);
    end else begin
      showmessage('���� �ǽð� ��� ����');
      exit;
    end;
    YuantaAPI1.YOA_SetTRInfo( '71', 'InBlock1' );			// TR����(TR��, Block��)�� �����մϴ�.
    nReturn := YuantaAPI1.YOA_RegistAuto('71');
    if nReturn > 999 then begin
      delay(500);
    end else begin
      showmessage('���� �ǽð� ä�� ��� ����');
      exit;
    end;
  end;
end;

procedure TfLogin.BSSaveUIValue; // ȭ���� �������� �����Ѵ�.
var nString : string;
begin
  mmoSaveUIValue.clear;
  nString := '�̸�:' + cbbName.Text;
  mmoSaveUIValue.Lines.Add(nString);
  nString := 'ID:' + edtID.Text;
  mmoSaveUIValue.Lines.Add(nString);
  nString := 'IDPW:' + edtPW.Text;
  mmoSaveUIValue.Lines.Add(nString);
  nString := 'GongInPW:' + edtGongInPW.Text;
  mmoSaveUIValue.Lines.Add(nString);
  nString := 'MultiName:' + edtMultiName.Text;
  mmoSaveUIValue.Lines.Add(nString);
  nString := '��Ŭ����ȣ:' + edtWeeklyno.Text;
  mmoSaveUIValue.Lines.Add(nString);
  nString := '�����ּ�1:' + edtEPyMin1.Text;
  mmoSaveUIValue.Lines.Add(nString);
  nString := '�����ּ�2:' + edtEPyMin2.Text;
  mmoSaveUIValue.Lines.Add(nString);
  nString := '�����ּ�3:' + edtEPyMin3.Text;
  mmoSaveUIValue.Lines.Add(nString);
  nString := '�����ּ�4:' + edtEPyMin4.Text;
  mmoSaveUIValue.Lines.Add(nString);

  nString := '�����߰�1:' + edtEPyMid1.Text;
  mmoSaveUIValue.Lines.Add(nString);
  nString := '�����߰�2:' + edtEPyMid2.Text;
  mmoSaveUIValue.Lines.Add(nString);
  nString := '�����߰�3:' + edtEPyMid3.Text;
  mmoSaveUIValue.Lines.Add(nString);
  nString := '�����߰�4:' + edtEPyMid4.Text;
  mmoSaveUIValue.Lines.Add(nString);

  nString := '�����ִ�1:' + edtEPyMax1.Text;
  mmoSaveUIValue.Lines.Add(nString);
  nString := '�����ִ�2:' + edtEPyMax2.Text;
  mmoSaveUIValue.Lines.Add(nString);
  nString := '�����ִ�3:' + edtEPyMax3.Text;
  mmoSaveUIValue.Lines.Add(nString);
  nString := '�����ִ�4:' + edtEPyMax4.Text;
  mmoSaveUIValue.Lines.Add(nString);
//  if ckbSMSSend.Checked then  nString := '����:True'
//  else nString := '����:False';
//  mmoSaveUIValue.Lines.Add(nString);
//  nString := '�ְ����:' + edtMaxHSG.Text;
//  mmoSaveUIValue.Lines.Add(nString);
  nString := ExtractFilePath(paramstr(0)) + 'Login_UIValue.ini';
  mmoSaveUIValue.Lines.SaveToFile(nString);
end;

procedure TfLogin.BSOpenUIValue; // ȭ���� �������� �ҷ������Ѵ�.
var nString : string;
    i : integer;
//    nSingle : single;
begin
  mmoSaveUIValue.Clear;
  nString := ExtractFilePath(paramstr(0)) + 'Login_UIValue.ini';
  mmoSaveUIValue.Lines.LoadFromFile(nString);

  for I := 0 to mmoSaveUIValue.Lines.Count -1 do
  begin
    nString := mmoSaveUIValue.Lines.Strings[i];
    if pos('�̸�:',nString) > 0 then cbbName.Text := copy(nString,4,Length(nString) - 3)
    else if pos('ID:',nString) > 0 then  edtID.Text := copy(nString,4,Length(nString) - 3)
    else if pos('IDPW:',nString) > 0 then  edtPW.Text := copy(nString,6,Length(nString) - 4)
    else if pos('GongInPW:',nString) > 0 then  edtGongInPW.Text := copy(nString,10,Length(nString) - 9)
    else if pos('MultiName:',nString) > 0 then  edtMultiName.Text := copy(nString,11,Length(nString) - 10)
    else if pos('��Ŭ����ȣ:',nString) > 0 then  edtWeeklyno.Text := copy(nString,7,Length(nString) - 5)
    else if pos('�����ּ�1:',nString) > 0 then  edtEPyMin1.Text := copy(nString,7,Length(nString) - 5)
    else if pos('�����ּ�2:',nString) > 0 then  edtEPyMin2.Text := copy(nString,7,Length(nString) - 5)
    else if pos('�����ּ�3:',nString) > 0 then  edtEPyMin3.Text := copy(nString,7,Length(nString) - 5)
    else if pos('�����ּ�4:',nString) > 0 then  edtEPyMin4.Text := copy(nString,7,Length(nString) - 5)
    else if pos('�����߰�1:',nString) > 0 then  edtEPyMid1.Text := copy(nString,7,Length(nString) - 5)
    else if pos('�����߰�2:',nString) > 0 then  edtEPyMid2.Text := copy(nString,7,Length(nString) - 5)
    else if pos('�����߰�3:',nString) > 0 then  edtEPyMid3.Text := copy(nString,7,Length(nString) - 5)
    else if pos('�����߰�4:',nString) > 0 then  edtEPyMid4.Text := copy(nString,7,Length(nString) - 5)
    else if pos('�����ִ�1:',nString) > 0 then  edtEPyMax1.Text := copy(nString,7,Length(nString) - 5)
    else if pos('�����ִ�2:',nString) > 0 then  edtEPyMax2.Text := copy(nString,7,Length(nString) - 5)
    else if pos('�����ִ�3:',nString) > 0 then  edtEPyMax3.Text := copy(nString,7,Length(nString) - 5)
    else if pos('�����ִ�4:',nString) > 0 then  edtEPyMax4.Text := copy(nString,7,Length(nString) - 5);
  end;
end;

procedure TfLogin.Button45Click(Sender: TObject);
begin
  BSSaveUIValue;
end;

procedure TfLogin.cbbNameChange(Sender: TObject);
begin
  if cbbName.Text = '����(��)' then begin
    edtID.ItemIndex := 0;
    edtPW.ItemIndex := 0;
    edtGongInPW.ItemIndex := 0;
    ckbSimul.Checked := True;
  end else if cbbName.Text = '����(A)' then begin
    edtID.ItemIndex := 1;
    edtPW.ItemIndex := 1;
    edtGongInPW.ItemIndex := 0;
    ckbSimul.Checked := False;
  end else if cbbName.Text = '����(B)' then begin
    edtID.ItemIndex := 2;
    edtPW.ItemIndex := 2;
    edtGongInPW.ItemIndex := 0;
    ckbSimul.Checked := False;
  end;
end;

procedure TfLogin.btnMultiNP;
var i, Time_Out, nReturn : integer;
    nMonthCode, nYearNow : string;
begin
  if HandleDongbuApi = 0 then begin
    showmessage('�α��� �ȵ�');
    exit;
  end;
  Screen.Cursor:=crHourGlass; // �𷡽ð�� �ٲ۴�. Screen.Cursor �� �Ϳ� ����
//
  if copy(ManKi,5,2) = '10' then nMonthCode := 'A'
  else if copy(ManKi,5,2) = '11' then nMonthCode := 'B'
  else if copy(ManKi,5,2) = '12' then nMonthCode := 'C'
  else nMonthCode := copy(ManKi,6,1);
  nYearNow := copy(ManKi,1,4);

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//	����Ÿ���� Open API �Է��ڵ� �����Դϴ�.
//	[360001] �ɼ����簡 - �Էº��
//	m_iYuantaAPI.YOA_SetTRInfo( "360001", "InBlock1" );			// TR����(TR��, Block��)�� �����մϴ�.
//	m_iYuantaAPI.YOA_SetFieldString( "code",                     "�Է°�", 0 );		// �ɼ��ڵ� ���� �����մϴ�.

  with fHBOMain do begin
    for I := 20 to 45 do  begin
      _DongBuNowPriceCode := '201' + _DCode + copy(formatfloat('#0.0',_MaxHSG-i*2.5),1,3); // �� �ɼ�
      YuantaAPI1.YOA_SetTRInfo( '360001', 'InBlock1' );			// TR����(TR��, Block��)�� �����մϴ�.
      YuantaAPI1.YOA_SetFieldString( 'code',_DongBuNowPriceCode, 0 );		// �ɼ��ڵ� ���� �����մϴ�.
      nReturn := YuantaAPI1.YOA_Request('360001', true, -1);
      Label6.Caption := _DongBuNowPriceCode;
      if nReturn > 999 then begin
        delay(500);
      end else begin
        showmessage('�ɼ� ���簡 �б� ����');
      end;

      _DongBuNowPriceCode :=  '301' + _DCode + copy(formatfloat('#0.0',_MaxHSG-i*2.5),1,3);
      YuantaAPI1.YOA_SetTRInfo( '360001', 'InBlock1' );			// TR����(TR��, Block��)�� �����մϴ�.
      YuantaAPI1.YOA_SetFieldString( 'code',_DongBuNowPriceCode, 0 );		// �ɼ��ڵ� ���� �����մϴ�.
      nReturn := YuantaAPI1.YOA_Request('360001', true, -1);
      Label6.Caption := _DongBuNowPriceCode;
      if nReturn > 999 then begin
        delay(500);
      end else begin
        showmessage('�ɼ� ���簡 �б� ����');
      end;

      pgbLogin.Position := Round(20 + I * 0.25);
    end;
  end;
  Screen.Cursor:=crDefault;
end;

procedure TfLogin.pSunmulNowManki;
var sTemp, sDate : string;
    nMankiMonth : Integer;
begin
  //1. 3��,6��,9��,12���̸� ���Ⱑ �������� Ȯ��
  sDate := ManKiDate;//Label8.Caption;// FormatDateTime('yyyymmdd',now);     //yyyy-mm-dd
  sTemp := '101' + YearCode;

  if StrToInt(Copy(sDate,6,2)) < 4 then nMankiMonth := 3
  else if StrToInt(Copy(sDate,6,2)) < 7 then  nMankiMonth := 6
  else if StrToInt(Copy(sDate,6,2)) < 10 then nMankiMonth := 9
  else nMankiMonth := 12;

  if nMankiMonth =  3 then sTemp := sTemp + '3000'
  else if nMankiMonth = 6 then sTemp := sTemp + '6000'
  else if nMankiMonth = 9 then sTemp := sTemp + '9000'
  else sTemp := sTemp + 'C000';
  _SunMulJonmokCode := sTemp;
end;

procedure TfLogin.DongBuRealDyungRok;
var nString, nYearNow, nMonthCode : string;
    i, Time_Out, nReturn : integer;
begin
  if copy(ManKi,5,2) = '10' then nMonthCode := 'A'
  else if copy(ManKi,5,2) = '11' then nMonthCode := 'B'
  else if copy(ManKi,5,2) = '12' then nMonthCode := 'C'
  else nMonthCode := copy(ManKi,6,1);
  nYearNow := copy(ManKi,1,4);

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//	����Ÿ���� Open API �Է��ڵ� �����Դϴ�.

  with fHBOMain do begin

    for I := 20 to 45 do  begin
      _DongBuNowPriceCode := '201' + _DCode + copy(formatfloat('#0.0',_MaxHSG-i*2.5),1,3); // �� �ɼ�
      YuantaAPI1.YOA_SetTRInfo( '42', 'InBlock1' );			// TR����(TR��, Block��)�� �����մϴ�.
    	YuantaAPI1.YOA_SetFieldString( 'jongcode',  _DongBuNowPriceCode, 0 );		// �����ڵ� ���� �����մϴ�.
      nReturn := YuantaAPI1.YOA_RegistAuto('42');
      Label6.Caption := _DongBuNowPriceCode;
      if nReturn > 999 then begin
        delay(500);
      end else begin
        showmessage('�ɼ� �ǽð� ��� ����');
        exit;
      end;
      delay(510);
      _DongBuNowPriceCode :=  '301' + _DCode + copy(formatfloat('#0.0',_MaxHSG-i*2.5),1,3);
      YuantaAPI1.YOA_SetTRInfo( '42', 'InBlock1' );			// TR����(TR��, Block��)�� �����մϴ�.
    	YuantaAPI1.YOA_SetFieldString( 'jongcode',  _DongBuNowPriceCode, 0 );		// �����ڵ� ���� �����մϴ�.
      nReturn := YuantaAPI1.YOA_RegistAuto('42');
      Label6.Caption := _DongBuNowPriceCode;
      if nReturn > 999 then begin
        delay(500);
      end else begin
        showmessage('�ɼ� �ǽð� ��� ����');
        exit;
      end;
      pgbLogin.Position := Round(20 + I * 0.25);
    end;
  end;
end;

procedure TfLogin.PyungGaChongEak;
var nDate : string;
begin
//  DongbuRecieve_Type := 2;
//  nDate := FormatDateTime('YYYYMMDD',now);
//  fHBOMain.DongbuAPI1.ReqFeeNAbleMoney(fHBOMain.cbbDongBuAcc.Text, fHBOMain.edtDongBuPW.Text, nDate);
end;

procedure TfLogin.DongBuSunOpPyungGaJango;
var nDate : string;
begin
//  DongbuRecieve_Type := 2;
//  nDate := FormatDateTime('YYYYMMDD',now);
//  fHBOMain.DongbuAPI1.ReqEval(fHBOMain.cbbDongBuAcc.Text, fHBOMain.edtDongBuPW.Text, nDate);
end;

procedure TfLogin.JMListCreate;
var j : integer;
    nSingle, nSunMul : single;
//    nString : string;
begin
// ���⼭ ���� ��簡 ���� �ʱ�ȭ
    nSunMul := strTofloatDef(SunMul,280);
    nSingle :=nSunMul - 2.5 * Trunc(nSunMul/2.5) ;
    if nSingle < 1.25 then  nSingle := (nSunMul - nSingle)
      else  nSingle := (nSunMul - nSingle) + 2.5;
    _MaxHSG := nSingle + 75;
    _PriceInfoDGPosition := Trunc((_MaxHSG - nSunMul)/2.5);
    nSingle := ( _MaxHSG - _PriceInfoDGPosition * 2.5)  - nSunMul ;//
    if nSingle > 1.25 then _PriceInfoDGPosition := _PriceInfoDGPosition + 1;
    _PriceInfoWPosition := 3; // �⺻ �ܰ� ������

    for j := 0 to 65 do begin
      nSingle := _MaxHSG - j*2.5;
      _HeangSaGaList[j] := Formatfloat('#0.#',nSingle);  // ��簡 ����Ʈ�� ��� �ֱ�...
//      _WWHSGListInfo[3,j] := strTofloatDef(_HeangSaGaList[j],0); //��簡
//      _CCWHSGListInfo[3,j] := strTofloatDef(_HeangSaGaList[j],0); //��簡
//      _CWHSGListInfo[3,j] := strTofloatDef(_HeangSaGaList[j],0); //��簡
      _DWHSGListInfo[3,j] := strTofloatDef(_HeangSaGaList[j],0); //��簡
//      _WeeklyPriceListInfo[1,j] := strTofloatDef(_HeangSaGaList[j],0); //���
    end;

//    for I := 0 to 65 do begin
//      nString := '201' + _DCode + formatfloat('0.#',_MaxHSG - i*2.5);
//      nString := copy(nString,1,8);
//      _DWJMList[i*2] := nString;
//      nString := '301' + _DCode + formatfloat('0.#',_MaxHSG - i*2.5);
//      nString := copy(nString,1,8);
//      _DWJMList[i*2 + 1] := nString;
//
//      nString := '201' + _CWCode + formatfloat('0.#',_MaxHSG - i*2.5);
//      nString := copy(nString,1,8);
//      _CWJMList[i*2] := nString;
//      nString := '301' + _CWCode + formatfloat('0.#',_MaxHSG - i*2.5);
//      nString := copy(nString,1,8);
//      _CWJMList[i*2 + 1] := nString;
//
//      nString := '201' + _CCWCode + formatfloat('0.#',_MaxHSG - i*2.5);
//      nString := copy(nString,1,8);
//      _CCWJMList[i*2] := nString;
//      nString := '301' + _CCWCode + formatfloat('0.#',_MaxHSG - i*2.5);
//      nString := copy(nString,1,8);
//      _CCWJMList[i*2 + 1] := nString;
//
//      nString := '201' + _WWCode + formatfloat('0.#',_MaxHSG - i*2.5);
//      nString := copy(nString,1,8);
//      _WWJMList[i*2] := nString;
//      nString := '301' + _WWCode + formatfloat('0.#',_MaxHSG - i*2.5);
//      nString := copy(nString,1,8);
//      _WWJMList[i*2 + 1] := nString;
//    end;

end;

procedure TfLogin.DongBu_LogIN;
var nID,nPW,nGonginPW,nMultiName : widestring;
  nWin : THandle;
  nAccList : widestring;
  nListNo, Time_Out : integer;
  nLogin_flg : boolean;
begin
//  if HandleDongbuApi = 0 then begin
//    Screen.Cursor:=crHourGlass; // �𷡽ð�� �ٲ۴�. Screen.Cursor �� �Ϳ� ����
//    nID := edtID.Text;
//    nPW := edtPW.Text;
//    nGonginPW := edtGonginPW.Text;
//    nMultiName := edtMultiName.Text;
//    nWin := GetCurrentProcess();
//    with fHBOMain do begin
//      nLogin_flg := false;
//      DongbuAPI1.Visible := true;
//      DongbuAPI1.CreateDongbuAPICtrl(nID,1,nWin);  //ID, ��Ƽ�α���, �������α׷� �ڵ�
//      DongbuAPI1.Show;
//      nLogin_flg := DongbuAPI1.Login(nID,nPW,nGonginPW,1);
//      if nLogin_flg then begin
//        // ���¹�ȣ ��� 3,1,11,17,1,11,17
////        frMainTop1.cbbDongBuAcc.Clear;
////        nAccList := DongbuAPI1.GetAccountList(1);
////        nListNo := Length(nAccList) - 3;
////        nListNo := Round(nListNo / 29);
////        for I := 0 to nListNo do
////          frMainTop1.cbbDongBuAcc.Items.Add(copy(nAccList,(29*i+5), 11));
////
////        frMainTop1.cbbDongBuAcc.Text := frMainTop1.cbbDongBuAcc.Items[0];
////        frMainTop1.edtDongBuPW.Text := '0000';
//
//        StatusBar1.Panels[4].Text := '����-�α��μ���';
//        pgbLogin.Position := 10;
//        SunMul := '';
//        SunMulPrice;
//        Time_Out := 0;
//        repeat
//          if (Time_Out > 300) or (nLogin_flg = False) then break;
//          delay(10);
//          inc(Time_Out);
//        until Length(SunMul) > 0;
//        pgbLogin.Position := 15;
//        JMListCreate; // ���� ����(���, ����, ������, ����)
//        pgbLogin.Position := 20;
//        btnMultiNP;// ���簡 �ҷ�����
//        delay(50);
//        DongBuRealDyungRok; // ���� �ǽð� ��û
//        pgbLogin.Position := 85;
//        delay(200);
//        PyungGaChongEak; // �򰡿�Ź���Ѿ�
//        delay(200);
//        DongBuSunOpPyungGaJango; // ���� �������ܰ�
//        delay(200);
////        clbJGListAll.Items.Clear;  // �ܰ���Ʈ Ŭ����
//        _JangoJMQtn := 0; // ���� ���� �ʱ�ȭ
//        DongbuAPI1.ReqJango(Acnt); // ���� �����ܰ�
//        delay(200);
//        DongBuRTCheaGeal; // ���� �ǽð� ü�� ���
//        pgbLogin.Position := 95;
//        delay(200);
//        DongBuRTJango; // ���� �ǽð� �ܰ� ���
//        delay(200);
//        WeeklyPriceNow;  // ��Ŭ�����簡 �ҷ�����
//        delay(200);      //
//        WeeklyRealRequest; // ��Ŭ�� �ǽð� ���
//        Screen.Cursor:=crDefault;
//        pgbLogin.Position := 100;
//      end else begin
//        StatusBar1.Panels[4].Text := '����-�α��ν���';
//        Screen.Cursor:=crDefault;
//      end;
//      DongbuAPI1.Visible := false;
//    end;
//
//  end;
end;

procedure TfLogin.Yoanta_LogIN;
var nID,nPW,nGonginPW,nMultiName : widestring;
  nWin : THandle;
  nAccList : widestring;
  nListNo, Time_Out : integer;
  nLogin_flg : boolean;
begin
  if HandleDongbuApi = 0 then begin
    Screen.Cursor:=crHourGlass; // �𷡽ð�� �ٲ۴�. Screen.Cursor �� �Ϳ� ����
    nID := edtID.Text;
    nPW := edtPW.Text;
    nGonginPW := edtGonginPW.Text;
    nMultiName := edtMultiName.Text;
    nWin := GetCurrentProcess();
    with fHBOMain do begin
      nLogin_flg := false;
      if ckbSimul.Checked then begin
        if YuantaAPI1.YOA_Initial('simul.tradar.api.com','C:\YuantaAPI') = 1000 then begin       //����=simul.tradar.api.com, ����=real.tradar.api.com, �ؿܼ����ɼ�=simul.tradarglobal.api.com
  //        showmessage('����Ÿ �ʱ�ȭ ����');
        end else begin
          showmessage('����Ÿ �ʱ�ȭ ����');
          exit;
        end;
      end else begin
        if YuantaAPI1.YOA_Initial('real.tradar.api.com','C:\YuantaAPI') = 1000 then begin       //����=simul.tradar.api.com, ����=real.tradar.api.com, �ؿܼ����ɼ�=simul.tradarglobal.api.com
  //        showmessage('����Ÿ �ʱ�ȭ ����');
        end else begin
          showmessage('����Ÿ �ʱ�ȭ ����');
          exit;
        end;
      end;

      if YuantaAPI1.YOA_Login(nID, nPW, nGonginPW) = 1000 then begin       //����=simul.tradar.api.com, ����=real.tradar.api.com, �ؿܼ����ɼ�=simul.tradarglobal.api.com
//        showmessage('����Ÿ �α��� ����');
        nLogin_flg := true;
        delay(2000);
      end else begin
        showmessage('����Ÿ �α��� ����');
      end;

      if nLogin_flg then begin
        StatusBar1.Panels[4].Text := '����Ÿ-�α��μ���';
        pgbLogin.Position := 10;
        SunMul := '';
        SunMulPrice;
        Time_Out := 0;
        repeat
          if (Time_Out > 300) or (nLogin_flg = False) then break;
          delay(10);
          inc(Time_Out);
        until Length(SunMul) > 0;
        pgbLogin.Position := 15;
        JMListCreate; // ���� ����(���, ����, ������, ����)
        pgbLogin.Position := 20;
//        btnMultiNP;// ���簡 �ҷ�����
//        delay(50);
//        DongBuRealDyungRok; // ���� �ǽð� ��û
//        pgbLogin.Position := 85;
//        delay(200);
//        PyungGaChongEak; // �򰡿�Ź���Ѿ�
//        delay(200);
//        DongBuSunOpPyungGaJango; // ���� �������ܰ�
//        delay(200);
////        clbJGListAll.Items.Clear;  // �ܰ���Ʈ Ŭ����
//        _JangoJMQtn := 0; // ���� ���� �ʱ�ȭ
//        DongbuAPI1.ReqJango(Acnt); // ���� �����ܰ�
//        delay(200);
//        DongBuRTCheaGeal; // ���� �ǽð� ü�� ���
//        pgbLogin.Position := 95;
//        delay(200);
//        DongBuRTJango; // ���� �ǽð� �ܰ� ���
//        delay(200);
//        WeeklyPriceNow;  // ��Ŭ�����簡 �ҷ�����
//        delay(200);      //
//        WeeklyRealRequest; // ��Ŭ�� �ǽð� ���
//        Screen.Cursor:=crDefault;
//        pgbLogin.Position := 100;
      end else begin
        StatusBar1.Panels[4].Text := '����Ÿ-�α��ν���';
        Screen.Cursor:=crDefault;
      end;
    end;
  end;
  Screen.Cursor:=crDefault;
end;

procedure TfLogin.edtWeeklyNoChange(Sender: TObject);
var intMonthCode : integer;
begin
  intMonthCode := strTointDef(edtWeeklyNo.Text,0);
  _WeeklyMonthCode := intTostr(intMonthCode);;
  edtWeeklyNo.Text := _WeeklyMonthCode;
end;

procedure TfLogin.DongBuRTJango;
var ID_ADVICE_RT : integer;
begin
//  ID_ADVICE_RT := -73; //�ǽð����
//  fHBOMain.DongbuAPI1.ReqRealtimeData(ID_ADVICE_RT, 'XF3', edtID.Text) ;
end;

procedure TfLogin.DongBuRTCheaGeal;
var ID_ADVICE_RT : integer;
begin
//  ID_ADVICE_RT := -73; //�ǽð����
//  fHBOMain.DongbuAPI1.ReqRealtimeData(ID_ADVICE_RT, 'XF2', edtID.Text) ;     // ���� �ǽð�ü��
end;

procedure TfLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  BSSaveUIValue;
  action := Cafree;
//  action := CaHide;
end;

procedure TfLogin.FormResize(Sender: TObject);
begin
//  Groupbox1.Left := Round(fLogin.Width * 0.5 - 150);
//  Groupbox1.Top :=  Round(fLogin.Height * 0.5 - 300);
end;

procedure TfLogin.VisibleChanging;
begin
 // inherited;
end;

procedure TfLogin.FormShow(Sender: TObject);
//var i : integer;
//    nSingle : single;
begin
//  BSOpenUIValue;
//  cbbNameChange(Sender);
end;

procedure TfLogin.GroupBox1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  (sender As TWincontrol).Perform( WM_SysCommand, $F012, 0 );
end;

procedure TfLogin.EPyValueInput;
begin
  _ema_aMin1 := 2/(strTofloatDef(edtEpyMin1.Text,0) + 1) ;
  _ema_aMin2 := 2/(strTofloatDef(edtEpyMin2.Text,0) + 1) ;
  _ema_aMin3 := 2/(strTofloatDef(edtEpyMin3.Text,0) + 1) ;
  _ema_aMin4 := 2/(strTofloatDef(edtEpyMin4.Text,0) + 1) ;

  _ema_aMid1 := 2/(strTofloatDef(edtEpyMid1.Text,0) + 1) ;
  _ema_aMid2 := 2/(strTofloatDef(edtEpyMid2.Text,0) + 1) ;
  _ema_aMid3 := 2/(strTofloatDef(edtEpyMid3.Text,0) + 1) ;
  _ema_aMid4 := 2/(strTofloatDef(edtEpyMid4.Text,0) + 1) ;

  _ema_aMax1 := 2/(strTofloatDef(edtEpyMax1.Text,0) + 1) ;
  _ema_aMax2 := 2/(strTofloatDef(edtEpyMax2.Text,0) + 1) ;
  _ema_aMax3 := 2/(strTofloatDef(edtEpyMax3.Text,0) + 1) ;
  _ema_aMax4 := 2/(strTofloatDef(edtEpyMax4.Text,0) + 1) ;
end;

procedure TfLogin.Button14Click(Sender: TObject);
begin
  EPyValueInput;
  edtWeeklyNoChange(sender);
//  DongBu_LogIN;
  Yoanta_LogIN;
  if Pos('����',fHBOMain.StatusBar1.Panels[4].Text) > 0 then begin
    fHBOMain.BasicFrameOpen;
    fLogin.Close;
  end;
end;

end.

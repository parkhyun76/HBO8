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
  if StrToFloat(sDate) > 2036 then ShowMessage('프로그램 사용 연도가 지났습니다.');
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
        YuantaApi1.YOA_UnRegistAllAuto; // 실시간 등록 해지
        if YuantaApi1.YOA_UnInitial = 1000 then statusbar1.Panels[4].Text := 'Yuanta-Uninitail 성공'
        else statusbar1.Panels[4].Text := 'Yuanta-Uninitial 실패';
      end;
    except

    end;
  end;
end;

procedure TfLogin.Button1Click(Sender: TObject);
begin
  Screen.Cursor:=crHourGlass; // 모래시계로 바꾼다. Screen.Cursor 인 것에 주의
  pgbLogin.Position := 20;
  btnMultiNP;// 현재가 불러오기
  delay(50);
  DongBuRealDyungRok; // 전략 실시간 요청
  pgbLogin.Position := 100;
  Screen.Cursor:=crDefault;

  fLogin.Close;
end;

procedure TfLogin.Button2Click(Sender: TObject);
begin
  btnMultiNP;// 현재가 불러오기
end;

procedure TfLogin.Button3Click(Sender: TObject);
begin
  DongBuRealDyungRok; // 전략 실시간 요청
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

  ID_ADVICE_RT := -73; //실시간등록
//  with fHBOMain do begin
//    DongbuAPI1.ReqRealtimeData(ID_ADVICE_RT, 'OC0', nString) ;  // 동부증권에서 처리
//    delay(100);
//    DongbuAPI1.ReqRealtimeData(ID_ADVICE_RT, 'OH0', nString) ;  // 동부증권에서 처리  옵션 호가
//  end;
end;

procedure TfLogin.WeeklyPriceNow ;//현재가 불러오기
var i, Time_Out : integer;
    nWeeklyCode : string;
begin
//  if HandleDongbuApi = 0 then begin
//    showmessage('로그인 안됨');
//    exit;
//  end;
//  Screen.Cursor:=crHourGlass; // 모래시계로 바꾼다. Screen.Cursor 인 것에 주의
//
//  with fHBOMain do begin
//    for I := 10 to 45 do  begin
//      _WeeklyNowPriceCode := '209' + _WeeklyMonthCode + copy(formatfloat('#0.0',_MaxHSG-i*2.5),1,3); // 콜 옵션
//      DongbuAPI1.ReqOptionHoga(_WeeklyNowPriceCode);
//      Time_Out := 0;
//      repeat
//        if (Time_Out > 300) then break;
//        delay(10);
//        inc(Time_Out);
//      until _WeeklyNowPriceCode = '-';
//
////      stg전광.Cells[0,i] := formatfloat('0.0#',_WeeklyPriceListInfo[0,i]);
//
//      _WeeklyNowPriceCode :=  '309' + _WeeklyMonthCode + copy(formatfloat('#0.0',_MaxHSG-i*2.5),1,3);
//      DongbuAPI1.ReqOptionHoga(_WeeklyNowPriceCode);
//      Time_Out := 0;
//      repeat
//        if (Time_Out > 300) then break;
//        delay(10);
//        inc(Time_Out);
//      until _WeeklyNowPriceCode = '-';
////      stg전광.Cells[2,i] := formatfloat('0.0#',_WeeklyPriceListInfo[2,i]);
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
    YuantaAPI1.YOA_SetTRInfo( '350001', 'InBlock1' );			// TR정보(TR명, Block명)를 설정합니다.
    YuantaAPI1.YOA_SetFieldString( 'code', '101RC000', 0 );		// 선물코드 값을 설정합니다.
    nReturn := YuantaAPI1.YOA_Request('350001', true, -1);
    if nReturn > 999 then begin
      delay(500);
    end else begin
      showmessage('선물 현재가 읽기 실패');
      exit;
    end;
    YuantaAPI1.YOA_SetTRInfo( '41', 'InBlock1' );			// TR정보(TR명, Block명)를 설정합니다.
    YuantaAPI1.YOA_SetFieldString( 'jongcode',  _DongBuSunMulCode, 0 );		// 종목코드 값을 설정합니다.
    nReturn := YuantaAPI1.YOA_RegistAuto('41');
    if nReturn > 999 then begin
      delay(500);
    end else begin
      showmessage('선물 실시간 등록 실패');
      exit;
    end;
    YuantaAPI1.YOA_SetTRInfo( '71', 'InBlock1' );			// TR정보(TR명, Block명)를 설정합니다.
    nReturn := YuantaAPI1.YOA_RegistAuto('71');
    if nReturn > 999 then begin
      delay(500);
    end else begin
      showmessage('선옵 실시간 채결 등록 실패');
      exit;
    end;
  end;
end;

procedure TfLogin.BSSaveUIValue; // 화면의 최종값을 저장한다.
var nString : string;
begin
  mmoSaveUIValue.clear;
  nString := '이름:' + cbbName.Text;
  mmoSaveUIValue.Lines.Add(nString);
  nString := 'ID:' + edtID.Text;
  mmoSaveUIValue.Lines.Add(nString);
  nString := 'IDPW:' + edtPW.Text;
  mmoSaveUIValue.Lines.Add(nString);
  nString := 'GongInPW:' + edtGongInPW.Text;
  mmoSaveUIValue.Lines.Add(nString);
  nString := 'MultiName:' + edtMultiName.Text;
  mmoSaveUIValue.Lines.Add(nString);
  nString := '위클리번호:' + edtWeeklyno.Text;
  mmoSaveUIValue.Lines.Add(nString);
  nString := '이평최소1:' + edtEPyMin1.Text;
  mmoSaveUIValue.Lines.Add(nString);
  nString := '이평최소2:' + edtEPyMin2.Text;
  mmoSaveUIValue.Lines.Add(nString);
  nString := '이평최소3:' + edtEPyMin3.Text;
  mmoSaveUIValue.Lines.Add(nString);
  nString := '이평최소4:' + edtEPyMin4.Text;
  mmoSaveUIValue.Lines.Add(nString);

  nString := '이평중간1:' + edtEPyMid1.Text;
  mmoSaveUIValue.Lines.Add(nString);
  nString := '이평중간2:' + edtEPyMid2.Text;
  mmoSaveUIValue.Lines.Add(nString);
  nString := '이평중간3:' + edtEPyMid3.Text;
  mmoSaveUIValue.Lines.Add(nString);
  nString := '이평중간4:' + edtEPyMid4.Text;
  mmoSaveUIValue.Lines.Add(nString);

  nString := '이평최대1:' + edtEPyMax1.Text;
  mmoSaveUIValue.Lines.Add(nString);
  nString := '이평최대2:' + edtEPyMax2.Text;
  mmoSaveUIValue.Lines.Add(nString);
  nString := '이평최대3:' + edtEPyMax3.Text;
  mmoSaveUIValue.Lines.Add(nString);
  nString := '이평최대4:' + edtEPyMax4.Text;
  mmoSaveUIValue.Lines.Add(nString);
//  if ckbSMSSend.Checked then  nString := '문자:True'
//  else nString := '문자:False';
//  mmoSaveUIValue.Lines.Add(nString);
//  nString := '최고행사:' + edtMaxHSG.Text;
//  mmoSaveUIValue.Lines.Add(nString);
  nString := ExtractFilePath(paramstr(0)) + 'Login_UIValue.ini';
  mmoSaveUIValue.Lines.SaveToFile(nString);
end;

procedure TfLogin.BSOpenUIValue; // 화면의 최종값을 불러오기한다.
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
    if pos('이름:',nString) > 0 then cbbName.Text := copy(nString,4,Length(nString) - 3)
    else if pos('ID:',nString) > 0 then  edtID.Text := copy(nString,4,Length(nString) - 3)
    else if pos('IDPW:',nString) > 0 then  edtPW.Text := copy(nString,6,Length(nString) - 4)
    else if pos('GongInPW:',nString) > 0 then  edtGongInPW.Text := copy(nString,10,Length(nString) - 9)
    else if pos('MultiName:',nString) > 0 then  edtMultiName.Text := copy(nString,11,Length(nString) - 10)
    else if pos('위클리번호:',nString) > 0 then  edtWeeklyno.Text := copy(nString,7,Length(nString) - 5)
    else if pos('이평최소1:',nString) > 0 then  edtEPyMin1.Text := copy(nString,7,Length(nString) - 5)
    else if pos('이평최소2:',nString) > 0 then  edtEPyMin2.Text := copy(nString,7,Length(nString) - 5)
    else if pos('이평최소3:',nString) > 0 then  edtEPyMin3.Text := copy(nString,7,Length(nString) - 5)
    else if pos('이평최소4:',nString) > 0 then  edtEPyMin4.Text := copy(nString,7,Length(nString) - 5)
    else if pos('이평중간1:',nString) > 0 then  edtEPyMid1.Text := copy(nString,7,Length(nString) - 5)
    else if pos('이평중간2:',nString) > 0 then  edtEPyMid2.Text := copy(nString,7,Length(nString) - 5)
    else if pos('이평중간3:',nString) > 0 then  edtEPyMid3.Text := copy(nString,7,Length(nString) - 5)
    else if pos('이평중간4:',nString) > 0 then  edtEPyMid4.Text := copy(nString,7,Length(nString) - 5)
    else if pos('이평최대1:',nString) > 0 then  edtEPyMax1.Text := copy(nString,7,Length(nString) - 5)
    else if pos('이평최대2:',nString) > 0 then  edtEPyMax2.Text := copy(nString,7,Length(nString) - 5)
    else if pos('이평최대3:',nString) > 0 then  edtEPyMax3.Text := copy(nString,7,Length(nString) - 5)
    else if pos('이평최대4:',nString) > 0 then  edtEPyMax4.Text := copy(nString,7,Length(nString) - 5);
  end;
end;

procedure TfLogin.Button45Click(Sender: TObject);
begin
  BSSaveUIValue;
end;

procedure TfLogin.cbbNameChange(Sender: TObject);
begin
  if cbbName.Text = '박현(모)' then begin
    edtID.ItemIndex := 0;
    edtPW.ItemIndex := 0;
    edtGongInPW.ItemIndex := 0;
    ckbSimul.Checked := True;
  end else if cbbName.Text = '박현(A)' then begin
    edtID.ItemIndex := 1;
    edtPW.ItemIndex := 1;
    edtGongInPW.ItemIndex := 0;
    ckbSimul.Checked := False;
  end else if cbbName.Text = '박현(B)' then begin
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
    showmessage('로그인 안됨');
    exit;
  end;
  Screen.Cursor:=crHourGlass; // 모래시계로 바꾼다. Screen.Cursor 인 것에 주의
//
  if copy(ManKi,5,2) = '10' then nMonthCode := 'A'
  else if copy(ManKi,5,2) = '11' then nMonthCode := 'B'
  else if copy(ManKi,5,2) = '12' then nMonthCode := 'C'
  else nMonthCode := copy(ManKi,6,1);
  nYearNow := copy(ManKi,1,4);

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//	유안타증권 Open API 입력코드 예제입니다.
//	[360001] 옵션현재가 - 입력블록
//	m_iYuantaAPI.YOA_SetTRInfo( "360001", "InBlock1" );			// TR정보(TR명, Block명)를 설정합니다.
//	m_iYuantaAPI.YOA_SetFieldString( "code",                     "입력값", 0 );		// 옵션코드 값을 설정합니다.

  with fHBOMain do begin
    for I := 20 to 45 do  begin
      _DongBuNowPriceCode := '201' + _DCode + copy(formatfloat('#0.0',_MaxHSG-i*2.5),1,3); // 콜 옵션
      YuantaAPI1.YOA_SetTRInfo( '360001', 'InBlock1' );			// TR정보(TR명, Block명)를 설정합니다.
      YuantaAPI1.YOA_SetFieldString( 'code',_DongBuNowPriceCode, 0 );		// 옵션코드 값을 설정합니다.
      nReturn := YuantaAPI1.YOA_Request('360001', true, -1);
      Label6.Caption := _DongBuNowPriceCode;
      if nReturn > 999 then begin
        delay(500);
      end else begin
        showmessage('옵션 현재가 읽기 실패');
      end;

      _DongBuNowPriceCode :=  '301' + _DCode + copy(formatfloat('#0.0',_MaxHSG-i*2.5),1,3);
      YuantaAPI1.YOA_SetTRInfo( '360001', 'InBlock1' );			// TR정보(TR명, Block명)를 설정합니다.
      YuantaAPI1.YOA_SetFieldString( 'code',_DongBuNowPriceCode, 0 );		// 옵션코드 값을 설정합니다.
      nReturn := YuantaAPI1.YOA_Request('360001', true, -1);
      Label6.Caption := _DongBuNowPriceCode;
      if nReturn > 999 then begin
        delay(500);
      end else begin
        showmessage('옵션 현재가 읽기 실패');
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
  //1. 3월,6월,9월,12월이면 만기가 지났는지 확인
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
//	유안타증권 Open API 입력코드 예제입니다.

  with fHBOMain do begin

    for I := 20 to 45 do  begin
      _DongBuNowPriceCode := '201' + _DCode + copy(formatfloat('#0.0',_MaxHSG-i*2.5),1,3); // 콜 옵션
      YuantaAPI1.YOA_SetTRInfo( '42', 'InBlock1' );			// TR정보(TR명, Block명)를 설정합니다.
    	YuantaAPI1.YOA_SetFieldString( 'jongcode',  _DongBuNowPriceCode, 0 );		// 종목코드 값을 설정합니다.
      nReturn := YuantaAPI1.YOA_RegistAuto('42');
      Label6.Caption := _DongBuNowPriceCode;
      if nReturn > 999 then begin
        delay(500);
      end else begin
        showmessage('옵션 실시간 등록 실패');
        exit;
      end;
      delay(510);
      _DongBuNowPriceCode :=  '301' + _DCode + copy(formatfloat('#0.0',_MaxHSG-i*2.5),1,3);
      YuantaAPI1.YOA_SetTRInfo( '42', 'InBlock1' );			// TR정보(TR명, Block명)를 설정합니다.
    	YuantaAPI1.YOA_SetFieldString( 'jongcode',  _DongBuNowPriceCode, 0 );		// 종목코드 값을 설정합니다.
      nReturn := YuantaAPI1.YOA_RegistAuto('42');
      Label6.Caption := _DongBuNowPriceCode;
      if nReturn > 999 then begin
        delay(500);
      end else begin
        showmessage('옵션 실시간 등록 실패');
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
// 여기서 부터 행사가 종목 초기화
    nSunMul := strTofloatDef(SunMul,280);
    nSingle :=nSunMul - 2.5 * Trunc(nSunMul/2.5) ;
    if nSingle < 1.25 then  nSingle := (nSunMul - nSingle)
      else  nSingle := (nSunMul - nSingle) + 2.5;
    _MaxHSG := nSingle + 75;
    _PriceInfoDGPosition := Trunc((_MaxHSG - nSunMul)/2.5);
    nSingle := ( _MaxHSG - _PriceInfoDGPosition * 2.5)  - nSunMul ;//
    if nSingle > 1.25 then _PriceInfoDGPosition := _PriceInfoDGPosition + 1;
    _PriceInfoWPosition := 3; // 기본 외가 포지션

    for j := 0 to 65 do begin
      nSingle := _MaxHSG - j*2.5;
      _HeangSaGaList[j] := Formatfloat('#0.#',nSingle);  // 행사가 리스트에 목록 넣기...
//      _WWHSGListInfo[3,j] := strTofloatDef(_HeangSaGaList[j],0); //행사가
//      _CCWHSGListInfo[3,j] := strTofloatDef(_HeangSaGaList[j],0); //행사가
//      _CWHSGListInfo[3,j] := strTofloatDef(_HeangSaGaList[j],0); //행사가
      _DWHSGListInfo[3,j] := strTofloatDef(_HeangSaGaList[j],0); //행사가
//      _WeeklyPriceListInfo[1,j] := strTofloatDef(_HeangSaGaList[j],0); //행사
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
//    Screen.Cursor:=crHourGlass; // 모래시계로 바꾼다. Screen.Cursor 인 것에 주의
//    nID := edtID.Text;
//    nPW := edtPW.Text;
//    nGonginPW := edtGonginPW.Text;
//    nMultiName := edtMultiName.Text;
//    nWin := GetCurrentProcess();
//    with fHBOMain do begin
//      nLogin_flg := false;
//      DongbuAPI1.Visible := true;
//      DongbuAPI1.CreateDongbuAPICtrl(nID,1,nWin);  //ID, 멀티로그인, 실행프로그램 핸들
//      DongbuAPI1.Show;
//      nLogin_flg := DongbuAPI1.Login(nID,nPW,nGonginPW,1);
//      if nLogin_flg then begin
//        // 계좌번호 얻기 3,1,11,17,1,11,17
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
//        StatusBar1.Panels[4].Text := '동부-로그인성공';
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
//        JMListCreate; // 종목 생성(당월, 차월, 차차월, 원월)
//        pgbLogin.Position := 20;
//        btnMultiNP;// 현재가 불러오기
//        delay(50);
//        DongBuRealDyungRok; // 전략 실시간 요청
//        pgbLogin.Position := 85;
//        delay(200);
//        PyungGaChongEak; // 평가예탁금총액
//        delay(200);
//        DongBuSunOpPyungGaJango; // 동부 선옵평가잔고
//        delay(200);
////        clbJGListAll.Items.Clear;  // 잔고리스트 클리어
//        _JangoJMQtn := 0; // 종목 개수 초기화
//        DongbuAPI1.ReqJango(Acnt); // 동부 선옵잔고
//        delay(200);
//        DongBuRTCheaGeal; // 동부 실시간 체결 등록
//        pgbLogin.Position := 95;
//        delay(200);
//        DongBuRTJango; // 동부 실시간 잔고 등록
//        delay(200);
//        WeeklyPriceNow;  // 위클리현재가 불러오기
//        delay(200);      //
//        WeeklyRealRequest; // 위클리 실시간 등록
//        Screen.Cursor:=crDefault;
//        pgbLogin.Position := 100;
//      end else begin
//        StatusBar1.Panels[4].Text := '동부-로그인실패';
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
    Screen.Cursor:=crHourGlass; // 모래시계로 바꾼다. Screen.Cursor 인 것에 주의
    nID := edtID.Text;
    nPW := edtPW.Text;
    nGonginPW := edtGonginPW.Text;
    nMultiName := edtMultiName.Text;
    nWin := GetCurrentProcess();
    with fHBOMain do begin
      nLogin_flg := false;
      if ckbSimul.Checked then begin
        if YuantaAPI1.YOA_Initial('simul.tradar.api.com','C:\YuantaAPI') = 1000 then begin       //모의=simul.tradar.api.com, 실제=real.tradar.api.com, 해외선물옵션=simul.tradarglobal.api.com
  //        showmessage('유안타 초기화 성공');
        end else begin
          showmessage('유안타 초기화 실패');
          exit;
        end;
      end else begin
        if YuantaAPI1.YOA_Initial('real.tradar.api.com','C:\YuantaAPI') = 1000 then begin       //모의=simul.tradar.api.com, 실제=real.tradar.api.com, 해외선물옵션=simul.tradarglobal.api.com
  //        showmessage('유안타 초기화 성공');
        end else begin
          showmessage('유안타 초기화 실패');
          exit;
        end;
      end;

      if YuantaAPI1.YOA_Login(nID, nPW, nGonginPW) = 1000 then begin       //모의=simul.tradar.api.com, 실제=real.tradar.api.com, 해외선물옵션=simul.tradarglobal.api.com
//        showmessage('유안타 로그인 성공');
        nLogin_flg := true;
        delay(2000);
      end else begin
        showmessage('유안타 로그인 실패');
      end;

      if nLogin_flg then begin
        StatusBar1.Panels[4].Text := '유안타-로그인성공';
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
        JMListCreate; // 종목 생성(당월, 차월, 차차월, 원월)
        pgbLogin.Position := 20;
//        btnMultiNP;// 현재가 불러오기
//        delay(50);
//        DongBuRealDyungRok; // 전략 실시간 요청
//        pgbLogin.Position := 85;
//        delay(200);
//        PyungGaChongEak; // 평가예탁금총액
//        delay(200);
//        DongBuSunOpPyungGaJango; // 동부 선옵평가잔고
//        delay(200);
////        clbJGListAll.Items.Clear;  // 잔고리스트 클리어
//        _JangoJMQtn := 0; // 종목 개수 초기화
//        DongbuAPI1.ReqJango(Acnt); // 동부 선옵잔고
//        delay(200);
//        DongBuRTCheaGeal; // 동부 실시간 체결 등록
//        pgbLogin.Position := 95;
//        delay(200);
//        DongBuRTJango; // 동부 실시간 잔고 등록
//        delay(200);
//        WeeklyPriceNow;  // 위클리현재가 불러오기
//        delay(200);      //
//        WeeklyRealRequest; // 위클리 실시간 등록
//        Screen.Cursor:=crDefault;
//        pgbLogin.Position := 100;
      end else begin
        StatusBar1.Panels[4].Text := '유안타-로그인실패';
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
//  ID_ADVICE_RT := -73; //실시간등록
//  fHBOMain.DongbuAPI1.ReqRealtimeData(ID_ADVICE_RT, 'XF3', edtID.Text) ;
end;

procedure TfLogin.DongBuRTCheaGeal;
var ID_ADVICE_RT : integer;
begin
//  ID_ADVICE_RT := -73; //실시간등록
//  fHBOMain.DongbuAPI1.ReqRealtimeData(ID_ADVICE_RT, 'XF2', edtID.Text) ;     // 선옵 실시간체결
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
  if Pos('성공',fHBOMain.StatusBar1.Panels[4].Text) > 0 then begin
    fHBOMain.BasicFrameOpen;
    fLogin.Close;
  end;
end;

end.

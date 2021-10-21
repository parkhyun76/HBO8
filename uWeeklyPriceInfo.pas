unit uWeeklyPriceInfo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.Grids,
  Vcl.ExtCtrls, Vcl.Samples.Spin, Vcl.CheckLst, Vcl.ComCtrls;

type

  TfWeeklyPriceInfo = class(TForm)
    StringGrid1: TStringGrid;
    stg전광: TStringGrid;
    btnPreparation: TSpeedButton;
    edtMonthCode: TEdit;
    SpinButton11: TSpinButton;
    pgbWeekly: TProgressBar;
    Timer1: TTimer;
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure StringGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure stg전광Exit(Sender: TObject);
    procedure stg전광MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure stg전광DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure SpinButton11DownClick(Sender: TObject);
    procedure SpinButton11UpClick(Sender: TObject);
    procedure btnPreparationClick(Sender: TObject);
    procedure edtMonthCodeChange(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure StringGrid1MouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure StringGrid1MouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure stg전광MouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure stg전광MouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
  private
    procedure InPrice;
    procedure WeeklyPriceNow;
    procedure WeeklyRealRequest;

    { Private declarations }
  public
    { Public declarations }
    procedure VisibleChanging; override;
  end;

var
  fWeeklyPriceInfo: TfWeeklyPriceInfo;
    First_Activate : boolean; //화면 정렬용

implementation
uses uHBO2_Main;
{$R *.dfm}

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

procedure TfWeeklyPriceInfo.btnPreparationClick(Sender: TObject);
begin
  WeeklyPriceNow;
  WeeklyRealRequest;
end;

procedure TfWeeklyPriceInfo.WeeklyRealRequest;
var nString, nYearNow, nMonthCode : string;
    i, ID_ADVICE_RT : integer;
begin
//  nString := '';
//  for I := 10 to 45 do begin// 0~50, 51~101
//     nString := nString + '209' + _WeeklyMonthCode + copy(formatfloat('#0.0',_MaxHSG-i*2.5),1,3) + ',';
//  end;
//
//  for I := 10 to 45 do begin// 0~50, 51~101
//     nString := nString + '309' +  _WeeklyMonthCode + copy(formatfloat('#0.0',_MaxHSG-i*2.5),1,3) + ',';
//  end;
//
//  nString := copy(nString,1,length(nString) -1);
//
//  ID_ADVICE_RT := -73; //실시간등록
//  with fHBOMain do begin
//    DongbuAPI1.ReqRealtimeData(ID_ADVICE_RT, 'OC0', nString) ;  // 동부증권에서 처리
//    delay(100);
//    DongbuAPI1.ReqRealtimeData(ID_ADVICE_RT, 'OH0', nString) ;  // 동부증권에서 처리  옵션 호가
//  end;
end;

procedure TfWeeklyPriceInfo.WeeklyPriceNow ;//현재가 불러오기
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
//      stg전광.Cells[0,i] := formatfloat('0.0#',_WeeklyPriceListInfo[0,i]);
//
//      _WeeklyNowPriceCode :=  '309' + _WeeklyMonthCode + copy(formatfloat('#0.0',_MaxHSG-i*2.5),1,3);
//      DongbuAPI1.ReqOptionHoga(_WeeklyNowPriceCode);
//      Time_Out := 0;
//      repeat
//        if (Time_Out > 300) then break;
//        delay(10);
//        inc(Time_Out);
//      until _WeeklyNowPriceCode = '-';
//      stg전광.Cells[2,i] := formatfloat('0.0#',_WeeklyPriceListInfo[2,i]);
//      pgbWeekly.Position := Round(I * 2.23);
//    end;
//  end;
//  Screen.Cursor:=crDefault;
end;

procedure TfWeeklyPriceInfo.edtMonthCodeChange(Sender: TObject);
var intMonthCode : integer;
begin
  intMonthCode := strTointDef(edtMonthCode.Text,0);
  _WeeklyMonthCode := intTostr(intMonthCode);;
  edtMonthCode.Text := _WeeklyMonthCode;
end;

procedure TfWeeklyPriceInfo.FormActivate(Sender: TObject);
begin
  if First_Activate then begin
    Left := 945+447;//+740;
    Top := 520-3;//0;
    First_Activate := False;
  end;
end;

procedure TfWeeklyPriceInfo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := Cafree;
end;

procedure TfWeeklyPriceInfo.FormShow(Sender: TObject);
var i : integer;
begin
  First_Activate := True;
  StringGrid1.Cells[0,0] := '현재가';
  StringGrid1.Cells[1,0] := '행사가';
  StringGrid1.Cells[2,0] := ' 현재가';

  if (_PriceInfoDGPosition - 14) > 0 then begin
    stg전광.TopRow := _PriceInfoDGPosition - 10;
  end;

  edtMonthCode.Text := _WeeklyMonthCode;

  InPrice; // 가격정보 삽입

  StringGrid1.Selection := TGridRect(Rect(-1, -1, -1, -1));
  stg전광.Selection := TGridRect(Rect(-1, -1, -1, -1));
end;

procedure TfWeeklyPriceInfo.InPrice;
var i : integer;
    snValue : single;
begin
 try
//  Timer1.Enabled := False;
  for I := 0 to 65 do begin
    stg전광.Cells[0,i] := formatfloat('#0.00',_WeeklyPriceListInfo[0,i]);
    stg전광.Cells[1,i] := copy(floatTostr(_WeeklyPriceListInfo[1,i]),1,3);
    stg전광.Cells[2,i] := formatfloat('#0.00',_WeeklyPriceListInfo[2,i]);
  end;
//  Timer1.Enabled := True;
 except

 end;
end;

procedure TfWeeklyPriceInfo.SpinButton11DownClick(Sender: TObject);
var intMonthCode : integer;
begin
  intMonthCode := strTointDef(edtMonthCode.Text,0) -1;
  _WeeklyMonthCode := intTostr(intMonthCode);;
  edtMonthCode.Text := _WeeklyMonthCode;
end;

procedure TfWeeklyPriceInfo.SpinButton11UpClick(Sender: TObject);
var intMonthCode : integer;
begin
  intMonthCode := strTointDef(edtMonthCode.Text,0) +1;
  _WeeklyMonthCode := intTostr(intMonthCode);;
  edtMonthCode.Text := _WeeklyMonthCode;
end;

procedure TfWeeklyPriceInfo.stg전광DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var iX, iY : integer;
begin
  with stg전광 do
  begin
      iY := Rect.Top + 2;
    // 셀 별 어브젝트가 설정되었는지 확인
    if Assigned(Objects[ACol, ARow]) then
    begin
      // 색을 셀에 채우기
      Canvas.Brush.Color := TColor(Objects[ACol, ARow]);
      Canvas.FillRect(Rect);
    end;

    if (ACol = 1) then begin
      Canvas.Brush.Color := $343434;
      Canvas.FillRect(Rect);
      Canvas.Font.Color := clWhite;
      Canvas.Font.Style := Canvas.Font.Style + [fsBold];
    end;

    if ARow = (_PriceInfoDGPosition- _PriceInfoWPosition) then begin
      Canvas.Font.Color := clYellow;
      Canvas.Font.Style := Canvas.Font.Style + [fsBold];
    end else if ARow = _PriceInfoDGPosition then begin
      Canvas.Font.Color := clYellow;
      Canvas.Font.Style := Canvas.Font.Style + [fsBold];
    end else if ARow = (_PriceInfoDGPosition+ _PriceInfoWPosition) then begin
      Canvas.Font.Color := clYellow;
      Canvas.Font.Style := Canvas.Font.Style + [fsBold];
    end else begin
//      if (ACol  = 0) or (ACol =6) then Canvas.Font.Color := clAqua;
//      if (ACol  = 1) or (ACol =5) then Canvas.Font.Color := clLime;
      if (ACol  = 0) or (ACol =2) then Canvas.Font.Color := $0066FF;
//      if (ACol = 7) then Canvas.Font.Color := clFuchsia;
//      if (ACol = 8) then Canvas.Font.Color := clBlue;
    end;
    iX := (Rect.Left + Rect.Right) div 2;
    SetTextAlign(Canvas.Handle, TA_CENTER);
    Canvas.TextRect(Rect, iX, iY, Cells[Acol,Arow]);
  end;
end;

procedure TfWeeklyPriceInfo.stg전광Exit(Sender: TObject);
begin
  stg전광.Selection := TGridRect(Rect(-1, -1, -1, -1));
end;

procedure TfWeeklyPriceInfo.stg전광MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  stg전광.Selection := TGridRect(Rect(-1, -1, -1, -1));
end;

procedure TfWeeklyPriceInfo.stg전광MouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  Handled := True;
end;

procedure TfWeeklyPriceInfo.stg전광MouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  Handled := True;
end;

procedure TfWeeklyPriceInfo.StringGrid1DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
  with StringGrid1 do
  begin
    // 셀 별 어브젝트가 설정되었는지 확인
    if Assigned(Objects[ACol, ARow]) then
    begin
      // 색을 셀에 채우기
      Canvas.Brush.Color := TColor(Objects[ACol, ARow]);
      Canvas.FillRect(Rect);
    end;
//    if (ACol  = 0) or (ACol =6) then Canvas.Font.Color := clAqua;
//    if (ACol  = 1) or (ACol =5) then Canvas.Font.Color := clLime; //clGreen
    if (ACol  = 0) or (ACol =2) then Canvas.Font.Color := $0066FF;
    if (ACol = 1) then Canvas.Font.Color := clWhite;
//    if (ACol = 7) then Canvas.Font.Color := clFuchsia;
//    if (ACol = 8) then Canvas.Font.Color := clBlue;
    if ARow = 0 then Canvas.Font.Style := Canvas.Font.Style + [fsBold];
// 글자 표시
    Canvas.TextOut(Rect.Left+2, Rect.Top, Cells[ACol, ARow]);
  end;
end;

procedure TfWeeklyPriceInfo.StringGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  StringGrid1.Selection := TGridRect(Rect(-1, -1, -1, -1));
end;

procedure TfWeeklyPriceInfo.StringGrid1MouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  Handled := True;
end;

procedure TfWeeklyPriceInfo.StringGrid1MouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  Handled := True;
end;

procedure TfWeeklyPriceInfo.Timer1Timer(Sender: TObject);
var snValue : single;
    i : integer;
begin
  try
    for I := 0 to 65 do begin
      if _WeeklyRTIndex[i] then begin  // 실시간 호가 받을 경우
        stg전광.Cells[0,i] := formatfloat('#0.00',_WeeklyPriceListInfo[0,i]); //
        stg전광.Cells[2,i] := formatfloat('#0.00',_WeeklyPriceListInfo[2,i]);
        stg전광.Cells[1,i] := copy(floatTostr(_WeeklyPriceListInfo[1,i]),1,3);
        _WeeklyRTIndex[i] := False;
      end;
    end;
  except
  end;
end;

procedure TfWeeklyPriceInfo.VisibleChanging;
begin

end;

end.

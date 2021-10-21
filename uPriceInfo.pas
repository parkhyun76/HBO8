unit uPriceInfo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.Grids,
  Vcl.ExtCtrls, Vcl.Samples.Spin, Vcl.CheckLst;

type

  TfPriceInfo = class(TForm)
    StringGrid1: TStringGrid;
    stg����: TStringGrid;
    Button25: TButton;
    btnPreparation: TSpeedButton;
    Timer1: TTimer;
    edtWPosition: TEdit;
    stgCW����: TStringGrid;
    StringGrid3: TStringGrid;
    stgCCW����: TStringGrid;
    StringGrid5: TStringGrid;
    Button2: TButton;
    stgWW����: TStringGrid;
    StringGrid7: TStringGrid;
    Button3: TButton;
    lblDW: TLabel;
    lblCW: TLabel;
    lblCCW: TLabel;
    lblWW: TLabel;
    Timer2: TTimer;
    Timer3: TTimer;
    Timer4: TTimer;
    Button1: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure stg����DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure Timer1Timer(Sender: TObject);
    procedure stg����Exit(Sender: TObject);
    procedure edtWPositionChange(Sender: TObject);
    procedure btnPreparationClick(Sender: TObject);
    procedure stgCW����DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure stgCCW����DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure stgWW����DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure StringGrid3DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure StringGrid5DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure StringGrid7DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure Timer4Timer(Sender: TObject);
    procedure stg����MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure stgCW����MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure stgCCW����MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure stgWW����MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure StringGrid7MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure StringGrid5MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure StringGrid3MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure StringGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormActivate(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure StringGrid1MouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure StringGrid1MouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure stg����MouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure stg����MouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure stgCW����MouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure stgCW����MouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure StringGrid3MouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure StringGrid3MouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure stgCCW����MouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure stgCCW����MouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure stgWW����MouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure stgWW����MouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure StringGrid7MouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure StringGrid7MouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure StringGrid5MouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure StringGrid5MouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    procedure InPrice;

    { Private declarations }
  public
    { Public declarations }
    procedure VisibleChanging; override;
    procedure WCaptionshow;
  end;

var
  fPriceInfo: TfPriceInfo;
    First_Activate, janGo_Stop_flg : boolean; //ȭ�� ���Ŀ�

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

procedure TfPriceInfo.stgCCW����DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var iX, iY : integer;
begin
  with stgCCW���� do
  begin
    // �� �� �����Ʈ�� �����Ǿ����� Ȯ��
    if Assigned(Objects[ACol, ARow]) then
    begin
      // ���� ���� ä���
      Canvas.Brush.Color := TColor(Objects[ACol, ARow]);
      Canvas.FillRect(Rect);
    end;

    if (ACol = 3) then begin
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
      if (ACol  = 0) or (ACol =6) then Canvas.Font.Color := clAqua;
      if (ACol  = 1) or (ACol =5) then Canvas.Font.Color := clLime;
      if (ACol  = 2) or (ACol =4) then Canvas.Font.Color := $0066FF;
      if (ACol = 7) then Canvas.Font.Color := clFuchsia;
      if (ACol = 8) then Canvas.Font.Color := clBlue;
    end;
    iY := Rect.Top + 2;
    iX := (Rect.Left + Rect.Right) div 2;
    SetTextAlign(Canvas.Handle, TA_CENTER);
    Canvas.TextRect(Rect, iX, iY, Cells[Acol,Arow]);
  end;
end;

procedure TfPriceInfo.stgCCW����MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  stgCCW����.Selection := TGridRect(Rect(-1, -1, -1, -1));
end;

procedure TfPriceInfo.stgCCW����MouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  Handled := True;
end;

procedure TfPriceInfo.stgCCW����MouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  Handled := True;
end;

procedure TfPriceInfo.stgCW����DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var iX, iY : integer;
begin
  with stgCW���� do
  begin
      iY := Rect.Top + 2;
    // �� �� �����Ʈ�� �����Ǿ����� Ȯ��
    if Assigned(Objects[ACol, ARow]) then
    begin
      // ���� ���� ä���
      Canvas.Brush.Color := TColor(Objects[ACol, ARow]);
      Canvas.FillRect(Rect);
    end;

    if (ACol = 3) then begin
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
      if (ACol  = 0) or (ACol =6) then Canvas.Font.Color := clAqua;
      if (ACol  = 1) or (ACol =5) then Canvas.Font.Color := clLime;
      if (ACol  = 2) or (ACol =4) then Canvas.Font.Color := $0066FF;
      if (ACol = 7) then Canvas.Font.Color := clFuchsia;
      if (ACol = 8) then Canvas.Font.Color := clBlue;
    end;
    iX := (Rect.Left + Rect.Right) div 2;
    SetTextAlign(Canvas.Handle, TA_CENTER);
    Canvas.TextRect(Rect, iX, iY, Cells[Acol,Arow]);
  end;
end;

procedure TfPriceInfo.stgCW����MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  stgCW����.Selection := TGridRect(Rect(-1, -1, -1, -1));
end;

procedure TfPriceInfo.stgCW����MouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  Handled := True;
end;

procedure TfPriceInfo.stgCW����MouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  Handled := True;
end;

procedure TfPriceInfo.stgWW����DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var iX, iY : integer;
begin
  with stgWW���� do
  begin
      iY := Rect.Top + 2;
    // �� �� �����Ʈ�� �����Ǿ����� Ȯ��
    if Assigned(Objects[ACol, ARow]) then
    begin
      // ���� ���� ä���
      Canvas.Brush.Color := TColor(Objects[ACol, ARow]);
      Canvas.FillRect(Rect);
    end;

    if (ACol = 3) then begin
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
      if (ACol  = 0) or (ACol =6) then Canvas.Font.Color := clAqua;
      if (ACol  = 1) or (ACol =5) then Canvas.Font.Color := clLime;
      if (ACol  = 2) or (ACol =4) then Canvas.Font.Color := $0066FF;
      if (ACol = 7) then Canvas.Font.Color := clFuchsia;
      if (ACol = 8) then Canvas.Font.Color := clBlue;
    end;
    iX := (Rect.Left + Rect.Right) div 2;
    SetTextAlign(Canvas.Handle, TA_CENTER);
    Canvas.TextRect(Rect, iX, iY, Cells[Acol,Arow]);
  end;
end;

procedure TfPriceInfo.stgWW����MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  stgWW����.Selection := TGridRect(Rect(-1, -1, -1, -1));
end;

procedure TfPriceInfo.stgWW����MouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  Handled := True;
end;

procedure TfPriceInfo.stgWW����MouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  Handled := True;
end;

procedure TfPriceInfo.stg����DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var iX, iY : integer;
begin
  with stg���� do
  begin
      iY := Rect.Top + 2;
    // �� �� �����Ʈ�� �����Ǿ����� Ȯ��
    if Assigned(Objects[ACol, ARow]) then
    begin
      // ���� ���� ä���
      Canvas.Brush.Color := TColor(Objects[ACol, ARow]);
      Canvas.FillRect(Rect);
    end;

    if (ACol = 3) then begin
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
      if (ACol  = 0) or (ACol =6) then Canvas.Font.Color := clAqua;
      if (ACol  = 1) or (ACol =5) then Canvas.Font.Color := clLime;
      if (ACol  = 2) or (ACol =4) then Canvas.Font.Color := $0066FF;
      if (ACol = 7) then Canvas.Font.Color := clFuchsia;
      if (ACol = 8) then Canvas.Font.Color := clBlue;
    end;
    iX := (Rect.Left + Rect.Right) div 2;
    SetTextAlign(Canvas.Handle, TA_CENTER);
    Canvas.TextRect(Rect, iX, iY, Cells[Acol,Arow]);
  end;
end;

procedure TfPriceInfo.stg����Exit(Sender: TObject);
begin
  stg����.Selection := TGridRect(Rect(-1, -1, -1, -1));
end;

procedure TfPriceInfo.stg����MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  stg����.Selection := TGridRect(Rect(-1, -1, -1, -1));
end;

procedure TfPriceInfo.stg����MouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  Handled := True;
end;

procedure TfPriceInfo.stg����MouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  Handled := True;
end;

procedure TfPriceInfo.StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
  with StringGrid1 do
  begin
    // �� �� �����Ʈ�� �����Ǿ����� Ȯ��
    if Assigned(Objects[ACol, ARow]) then
    begin
      // ���� ���� ä���
      Canvas.Brush.Color := TColor(Objects[ACol, ARow]);
      Canvas.FillRect(Rect);
    end;
    if (ACol  = 0) or (ACol =6) then Canvas.Font.Color := clAqua;
    if (ACol  = 1) or (ACol =5) then Canvas.Font.Color := clLime; //clGreen
    if (ACol  = 2) or (ACol =4) then Canvas.Font.Color := $0066FF;
    if (ACol = 3) then Canvas.Font.Color := clWhite;
    if (ACol = 7) then Canvas.Font.Color := clFuchsia;
    if (ACol = 8) then Canvas.Font.Color := clBlue;
    if ARow = 0 then Canvas.Font.Style := Canvas.Font.Style + [fsBold];
// ���� ǥ��
    Canvas.TextOut(Rect.Left+2, Rect.Top, Cells[ACol, ARow]);
  end;
end;

procedure TfPriceInfo.StringGrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  StringGrid1.Selection := TGridRect(Rect(-1, -1, -1, -1));
end;

procedure TfPriceInfo.StringGrid1MouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  Handled := True;
end;

procedure TfPriceInfo.StringGrid1MouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  Handled := True;
end;

procedure TfPriceInfo.StringGrid3DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
  with StringGrid3 do
  begin
    // �� �� �����Ʈ�� �����Ǿ����� Ȯ��
    if Assigned(Objects[ACol, ARow]) then
    begin
      // ���� ���� ä���
      Canvas.Brush.Color := TColor(Objects[ACol, ARow]);
      Canvas.FillRect(Rect);
    end;

    if (ACol  = 0) or (ACol =6) then Canvas.Font.Color := clAqua;
    if (ACol  = 1) or (ACol =5) then Canvas.Font.Color := clLime; //clGreen
    if (ACol  = 2) or (ACol =4) then Canvas.Font.Color := $0066FF;
    if (ACol = 3) then Canvas.Font.Color := clWhite;
    if (ACol = 7) then Canvas.Font.Color := clFuchsia;
    if ARow = 0 then Canvas.Font.Style := Canvas.Font.Style + [fsBold];
// ���� ǥ��
    Canvas.TextOut(Rect.Left+2, Rect.Top, Cells[ACol, ARow]);
  end;
end;

procedure TfPriceInfo.StringGrid3MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  StringGrid3.Selection := TGridRect(Rect(-1, -1, -1, -1));
end;

procedure TfPriceInfo.StringGrid3MouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  Handled := True;
end;

procedure TfPriceInfo.StringGrid3MouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  Handled := True;
end;

procedure TfPriceInfo.StringGrid5DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
  with StringGrid5 do
  begin
    // �� �� �����Ʈ�� �����Ǿ����� Ȯ��
    if Assigned(Objects[ACol, ARow]) then
    begin
      // ���� ���� ä���
      Canvas.Brush.Color := TColor(Objects[ACol, ARow]);
      Canvas.FillRect(Rect);
    end;

    if (ACol  = 0) or (ACol =6) then Canvas.Font.Color := clAqua;
    if (ACol  = 1) or (ACol =5) then Canvas.Font.Color := clLime; //clGreen
    if (ACol  = 2) or (ACol =4) then Canvas.Font.Color := $0066FF;
    if (ACol = 3) then Canvas.Font.Color := clWhite;
    if (ACol = 7) then Canvas.Font.Color := clFuchsia;
    if ARow = 0 then Canvas.Font.Style := Canvas.Font.Style + [fsBold];
// ���� ǥ��
    Canvas.TextOut(Rect.Left+2, Rect.Top, Cells[ACol, ARow]);
  end;
end;

procedure TfPriceInfo.StringGrid5MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  StringGrid5.Selection := TGridRect(Rect(-1, -1, -1, -1));
end;

procedure TfPriceInfo.StringGrid5MouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  Handled := True;
end;

procedure TfPriceInfo.StringGrid5MouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  Handled := True;
end;

procedure TfPriceInfo.StringGrid7DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
  with StringGrid7 do
  begin
    // �� �� �����Ʈ�� �����Ǿ����� Ȯ��
    if Assigned(Objects[ACol, ARow]) then
    begin
      // ���� ���� ä���
      Canvas.Brush.Color := TColor(Objects[ACol, ARow]);
      Canvas.FillRect(Rect);
    end;

    if (ACol  = 0) or (ACol =6) then Canvas.Font.Color := clAqua;
    if (ACol  = 1) or (ACol =5) then Canvas.Font.Color := clLime; //clGreen
    if (ACol  = 2) or (ACol =4) then Canvas.Font.Color := $0066FF;
    if (ACol = 3) then Canvas.Font.Color := clWhite;
    if (ACol = 7) then Canvas.Font.Color := clFuchsia;
    if ARow = 0 then Canvas.Font.Style := Canvas.Font.Style + [fsBold];
// ���� ǥ��
    Canvas.TextOut(Rect.Left+2, Rect.Top, Cells[ACol, ARow]);
  end;
end;

procedure TfPriceInfo.StringGrid7MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  StringGrid7.Selection := TGridRect(Rect(-1, -1, -1, -1));
end;

procedure TfPriceInfo.StringGrid7MouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  Handled := True;
end;

procedure TfPriceInfo.StringGrid7MouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  Handled := True;
end;

procedure TfPriceInfo.Timer1Timer(Sender: TObject);
var snValue : single;
    i : integer;
begin
  try
    for I := 0 to 65 do begin
      if _DWRTIndex[i] then begin  // �ǽð� ȣ�� ���� ���
        stg����.Cells[0,i] := formatfloat('#0.00',_DWHSGListInfo[0,i]); //�� �ŵ�ȣ��
        stg����.Cells[1,i] := formatfloat('#0.00',_DWHSGListInfo[1,i]);
        stg����.Cells[3,i] := copy(floatTostr(_DWHSGListInfo[3,i]),1,3);
        stg����.Cells[5,i] := formatfloat('#0.00',_DWHSGListInfo[5,i]); // ǲ �ż� ȣ��
        stg����.Cells[6,i] := formatfloat('#0.00',_DWHSGListInfo[6,i]);
        stg����.Cells[2,i] := formatfloat('#0.00',_DWHSGListInfo[2,i]); //�� ���簡
        stg����.Cells[4,i] := formatfloat('#0.00',_DWHSGListInfo[4,i]); //put ���簡
        if i in [5..60] then begin
          snValue := _DWHSGListInfo[2,i] + _DWHSGListInfo[4,i] -  _DWHSGListInfo[2,i-_PriceInfoWPosition] -  _DWHSGListInfo[4,i+_PriceInfoWPosition];
          _DWHSGListInfo[7,i] := snValue;
          stg����.Cells[7,i] := formatfloat('#0.00',_DWHSGListInfo[7,i]);
        end;
        _DWRTIndex[i] := False;
      end;
    end;
  except
  end;
end;

procedure TfPriceInfo.Timer2Timer(Sender: TObject);
var i : integer;
    snValue : single;
begin
  try
    for I := 0 to 65 do  begin
      if _CWRTIndex[i] then begin  // �ǽð� ȣ�� ���� ���
        stgCW����.Cells[0,i] := formatfloat('#0.00',_CWHSGListInfo[0,i]); //�� �ŵ�ȣ��
        stgCW����.Cells[1,i] := formatfloat('#0.00',_CWHSGListInfo[1,i]);
        stgCW����.Cells[3,i] := copy(floatTostr(_CWHSGListInfo[3,i]),1,3);
        stgCW����.Cells[5,i] := formatfloat('#0.00',_CWHSGListInfo[5,i]); // ǲ �ż� ȣ��
        stgCW����.Cells[6,i] := formatfloat('#0.00',_CWHSGListInfo[6,i]);
        stgCW����.Cells[2,i] := formatfloat('#0.00',_CWHSGListInfo[2,i]); //�� ���簡
        stgCW����.Cells[4,i] := formatfloat('#0.00',_CWHSGListInfo[4,i]); //put ���簡
        if i in [5..60] then begin
          snValue := _CWHSGListInfo[2,i] + _CWHSGListInfo[4,i] -  _CWHSGListInfo[2,i-_PriceInfoWPosition] -  _CWHSGListInfo[4,i+_PriceInfoWPosition];
          _CWHSGListInfo[7,i] := snValue;
          stgCW����.Cells[7,i] := formatfloat('#0.00',_CWHSGListInfo[7,i]);
        end;
        _CWRTIndex[i] := False;
      end;
    end;
  except
  end;
end;

procedure TfPriceInfo.Timer3Timer(Sender: TObject);
var i : integer;
begin
  try
    for I := 0 to 65 do  begin
      if _CCWRTIndex[i] then begin  // �ǽð� ȣ�� ���� ���
        stgCCW����.Cells[0,i] := formatfloat('#0.00',_CCWHSGListInfo[0,i]); //�� �ŵ�ȣ��
        stgCCW����.Cells[1,i] := formatfloat('#0.00',_CCWHSGListInfo[1,i]);
        stgCCW����.Cells[3,i] := copy(floatTostr(_CCWHSGListInfo[3,i]),1,3);
        stgCCW����.Cells[5,i] := formatfloat('#0.00',_CCWHSGListInfo[5,i]); // ǲ �ż� ȣ��
        stgCCW����.Cells[6,i] := formatfloat('#0.00',_CCWHSGListInfo[6,i]);
        stgCCW����.Cells[2,i] := formatfloat('#0.00',_CCWHSGListInfo[2,i]); //�� ���簡
        stgCCW����.Cells[4,i] := formatfloat('#0.00',_CCWHSGListInfo[4,i]); //put ���簡
        _CCWRTIndex[i] := False;
      end;
    end;
  except
  end;
end;

procedure TfPriceInfo.Timer4Timer(Sender: TObject);
var i : integer;
begin
  try
    for I := 0 to 65 do begin
      if _WWRTIndex[i] then begin  // �ǽð� ȣ�� ���� ���
        stgWW����.Cells[0,i] := formatfloat('#0.00',_WWHSGListInfo[0,i]); //�� �ŵ�ȣ��
        stgWW����.Cells[1,i] := formatfloat('#0.00',_WWHSGListInfo[1,i]);
        stgWW����.Cells[3,i] := copy(floatTostr(_WWHSGListInfo[3,i]),1,3);
        stgWW����.Cells[5,i] := formatfloat('#0.00',_WWHSGListInfo[5,i]); // ǲ �ż� ȣ��
        stgWW����.Cells[6,i] := formatfloat('#0.00',_WWHSGListInfo[6,i]);
        stgWW����.Cells[2,i] := formatfloat('#0.00',_WWHSGListInfo[2,i]); //�� ���簡
        stgWW����.Cells[4,i] := formatfloat('#0.00',_WWHSGListInfo[4,i]); //put ���簡
        _WWRTIndex[i] := False;
      end;
    end;
  except

  end;
end;

procedure TfPriceInfo.InPrice;
var i : integer;
    snValue : single;
begin
 try
  Timer1.Enabled := False;
  Timer2.Enabled := False;
  Timer3.Enabled := False;
  Timer4.Enabled := False;
  for I := 0 to 65 do begin
    stg����.Cells[0,i] := formatfloat('#0.00',_DWHSGListInfo[0,i]);
    stg����.Cells[1,i] := formatfloat('#0.00',_DWHSGListInfo[1,i]);
    stg����.Cells[2,i] := formatfloat('#0.00',_DWHSGListInfo[2,i]);
    stg����.Cells[3,i] := copy(floatTostr(_DWHSGListInfo[3,i]),1,3);
    stg����.Cells[4,i] := formatfloat('#0.00',_DWHSGListInfo[4,i]);
    stg����.Cells[5,i] := formatfloat('#0.00',_DWHSGListInfo[5,i]);
    stg����.Cells[6,i] := formatfloat('#0.00',_DWHSGListInfo[6,i]);

    if I in [5..60] then begin
      snValue := _DWHSGListInfo[2,i] + _DWHSGListInfo[4,i] -  _DWHSGListInfo[2,i-_PriceInfoWPosition] -  _DWHSGListInfo[4,i+_PriceInfoWPosition];
      _DWHSGListInfo[7,i] := snValue;
      stg����.Cells[7,i] := formatfloat('#0.00',_DWHSGListInfo[7,i]);
    end;

//    stgCW����.Cells[0,i] := formatfloat('#0.00',_CWHSGListInfo[0,i]);
//    stgCW����.Cells[1,i] := formatfloat('#0.00',_CWHSGListInfo[1,i]);
//    stgCW����.Cells[2,i] := formatfloat('#0.00',_CWHSGListInfo[2,i]);
//    stgCW����.Cells[3,i] := copy(floatTostr(_CWHSGListInfo[3,i]),1,3);
//    stgCW����.Cells[4,i] := formatfloat('#0.00',_CWHSGListInfo[4,i]);
//    stgCW����.Cells[5,i] := formatfloat('#0.00',_CWHSGListInfo[5,i]);
//    stgCW����.Cells[6,i] := formatfloat('#0.00',_CWHSGListInfo[6,i]);
//    if i in [5..60] then begin
//      snValue := _CWHSGListInfo[2,i] + _CWHSGListInfo[4,i] -  _CWHSGListInfo[2,i-_PriceInfoWPosition] -  _CWHSGListInfo[4,i+_PriceInfoWPosition];
//      _CWHSGListInfo[7,i] := snValue;
//      stgCW����.Cells[7,i] := formatfloat('#0.00',_CWHSGListInfo[7,i]);
//    end;
//
//    stgCCW����.Cells[0,i] := formatfloat('#0.00',_CCWHSGListInfo[0,i]);
//    stgCCW����.Cells[1,i] := formatfloat('#0.00',_CCWHSGListInfo[1,i]);
//    stgCCW����.Cells[2,i] := formatfloat('#0.00',_CCWHSGListInfo[2,i]);
//    stgCCW����.Cells[3,i] := copy(floatTostr(_CCWHSGListInfo[3,i]),1,3);
//    stgCCW����.Cells[4,i] := formatfloat('#0.00',_CCWHSGListInfo[4,i]);
//    stgCCW����.Cells[5,i] := formatfloat('#0.00',_CCWHSGListInfo[5,i]);
//    stgCCW����.Cells[6,i] := formatfloat('#0.00',_CCWHSGListInfo[6,i]);
//
//    stgWW����.Cells[0,i] := formatfloat('#0.00',_WWHSGListInfo[0,i]);
//    stgWW����.Cells[1,i] := formatfloat('#0.00',_WWHSGListInfo[1,i]);
//    stgWW����.Cells[2,i] := formatfloat('#0.00',_WWHSGListInfo[2,i]);
//    stgWW����.Cells[3,i] := copy(floatTostr(_WWHSGListInfo[3,i]),1,3);
//    stgWW����.Cells[4,i] := formatfloat('#0.00',_WWHSGListInfo[4,i]);
//    stgWW����.Cells[5,i] := formatfloat('#0.00',_WWHSGListInfo[5,i]);
//    stgWW����.Cells[6,i] := formatfloat('#0.00',_WWHSGListInfo[6,i]);

  end;
  Timer1.Enabled := True;
//  Timer2.Enabled := True;
//  Timer3.Enabled := True;
//  Timer4.Enabled := True;
 except

 end;
end;

procedure TfPriceInfo.btnPreparationClick(Sender: TObject);
begin
  InPrice;
end;

procedure TfPriceInfo.Button1Click(Sender: TObject);
var nString, nYearNow, nMonthCode : string;
    i, Time_Out, nReturn : integer;
begin
  janGo_Stop_flg := False;
  if copy(ManKi,5,2) = '10' then nMonthCode := 'A'
  else if copy(ManKi,5,2) = '11' then nMonthCode := 'B'
  else if copy(ManKi,5,2) = '12' then nMonthCode := 'C'
  else nMonthCode := copy(ManKi,6,1);
  nYearNow := copy(ManKi,1,4);

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//	����Ÿ���� Open API �Է��ڵ� �����Դϴ�.

  with fHBOMain do begin
    for I := 20 to 45 do  begin
      if janGo_Stop_flg = True then exit;
      _DongBuNowPriceCode := '201' + _DCode + copy(formatfloat('#0.0',_MaxHSG-i*2.5),1,3); // �� �ɼ�
      YuantaAPI1.YOA_SetTRInfo( '42', 'InBlock1' );			// TR����(TR��, Block��)�� �����մϴ�.
    	YuantaAPI1.YOA_SetFieldString( 'jongcode',  _DongBuNowPriceCode, 0 );		// �����ڵ� ���� �����մϴ�.
      nReturn := YuantaAPI1.YOA_RegistAuto('42');
      lblDW.Caption := _DongBuNowPriceCode + ': ' + intTostr((i-20) * 4 ) + '%' ;;
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
      lblDW.Caption := _DongBuNowPriceCode + ': ' + intTostr(((i+1)-20) * 4) + '%' ;;
      if nReturn > 999 then begin
        delay(500);
      end else begin
        showmessage('�ɼ� �ǽð� ��� ����');
        exit;
      end;
    end;
  end;
//  Height := 520;
//  Width := 1647;
//  Left := 0;//+740;
//  Top := 520-3;//0;
end;

procedure TfPriceInfo.Button4Click(Sender: TObject);
begin
  janGo_Stop_flg := True;
//  Height := 520;
//  Width := 447;
//  Left := 945;//+740;
//  Top := 520-3;//0;
end;

procedure TfPriceInfo.Button5Click(Sender: TObject);
var i, Time_Out, nReturn : integer;
    nMonthCode, nYearNow : string;
begin
  janGo_Stop_flg := False;
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
      if janGo_Stop_flg = True then exit;

      _DongBuNowPriceCode := '201' + _DCode + copy(formatfloat('#0.0',_MaxHSG-i*2.5),1,3); // �� �ɼ�
      YuantaAPI1.YOA_SetTRInfo( '360001', 'InBlock1' );			// TR����(TR��, Block��)�� �����մϴ�.
      YuantaAPI1.YOA_SetFieldString( 'code',_DongBuNowPriceCode, 0 );		// �ɼ��ڵ� ���� �����մϴ�.
      nReturn := YuantaAPI1.YOA_Request('360001', true, -1);
      lblDW.Caption := _DongBuNowPriceCode + ': ' + intTostr((i-20) * 4) + '%' ;;
      if nReturn > 999 then begin
        delay(500);
      end else begin
        showmessage('�ɼ� ���簡 �б� ����');
      end;

      _DongBuNowPriceCode :=  '301' + _DCode + copy(formatfloat('#0.0',_MaxHSG-i*2.5),1,3);
      YuantaAPI1.YOA_SetTRInfo( '360001', 'InBlock1' );			// TR����(TR��, Block��)�� �����մϴ�.
      YuantaAPI1.YOA_SetFieldString( 'code',_DongBuNowPriceCode, 0 );		// �ɼ��ڵ� ���� �����մϴ�.
      nReturn := YuantaAPI1.YOA_Request('360001', true, -1);
      lblDW.Caption := _DongBuNowPriceCode + ': ' + intTostr(((i+1)-20) * 4) + '%' ;;
      if nReturn > 999 then begin
        delay(500);
      end else begin
        showmessage('�ɼ� ���簡 �б� ����');
      end;

//      pgbLogin.Position := Round(20 + I * 0.25);
    end;
  end;
  Screen.Cursor:=crDefault;
end;

procedure TfPriceInfo.Button6Click(Sender: TObject);
var nString, nYearNow, nMonthCode : string;
    i, Time_Out, nReturn : integer;
begin
  janGo_Stop_flg := False;
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
      if janGo_Stop_flg = True then exit;
      _DongBuNowPriceCode := '201' + _DCode + copy(formatfloat('#0.0',_MaxHSG-i*2.5),1,3); // �� �ɼ�
      YuantaAPI1.YOA_SetTRInfo( '41', 'InBlock1' );			// TR����(TR��, Block��)�� �����մϴ�.
    	YuantaAPI1.YOA_SetFieldString( 'jongcode',  _DongBuNowPriceCode, 0 );		// �����ڵ� ���� �����մϴ�.
      nReturn := YuantaAPI1.YOA_RegistAuto('41');
      lblDW.Caption := _DongBuNowPriceCode + ': ' + intTostr((i-20) * 4) + '%' ;;
      if nReturn > 999 then begin
        delay(500);
      end else begin
        showmessage('�ɼ� �ǽð� ��� ����');
        exit;
      end;
      delay(510);
      _DongBuNowPriceCode :=  '301' + _DCode + copy(formatfloat('#0.0',_MaxHSG-i*2.5),1,3);
      YuantaAPI1.YOA_SetTRInfo( '41', 'InBlock1' );			// TR����(TR��, Block��)�� �����մϴ�.
    	YuantaAPI1.YOA_SetFieldString( 'jongcode',  _DongBuNowPriceCode, 0 );		// �����ڵ� ���� �����մϴ�.
      nReturn := YuantaAPI1.YOA_RegistAuto('41');
      lblDW.Caption := _DongBuNowPriceCode + ': ' + intTostr(((i+1)-20) * 4) + '%' ;;
      if nReturn > 999 then begin
        delay(500);
      end else begin
        showmessage('�ɼ� �ǽð� ��� ����');
        exit;
      end;
//      pgbLogin.Position := Round(20 + I * 0.25);
    end;
  end;
end;

procedure TfPriceInfo.edtWPositionChange(Sender: TObject);
begin
  _PriceInfoWPosition  := strTointDef(edtWPosition.Text,0);
end;

procedure TfPriceInfo.FormActivate(Sender: TObject);
begin
  if First_Activate then begin
    Left := 0;//945;//+740;
    Top := 520-3;//0;
    First_Activate := False;
  end;
end;

procedure TfPriceInfo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Timer1.Enabled := False;
  Timer2.Enabled := False;
  Timer3.Enabled := False;
  Timer4.Enabled := False;
  action := Cafree;
end;

procedure TfPriceInfo.VisibleChanging;
begin

end;

procedure TfPriceInfo.WCaptionshow;
begin
  if copy(_DCode,2,1) = 'A' then
    lblDW.Caption := '10������'
  else if copy(_DCode,2,1) = 'B' then
    lblDW.Caption := '11������'
  else if copy(_DCode,2,1) = 'C' then
    lblDW.Caption := '12������'
  else lblDW.Caption := copy(_DCode,2,1) + '������' ;

  if copy(_CWCode,2,1) = 'A' then
    lblCW.Caption := '10������'
  else if copy(_CWCode,2,1) = 'B' then
    lblCW.Caption := '11������'
  else if copy(_CWCode,2,1) = 'C' then
    lblCW.Caption := '12������'
  else lblCW.Caption := copy(_CWCode,2,1) + '������' ;

  if copy(_CCWCode,2,1) = 'A' then
    lblCCW.Caption := '10������'
  else if copy(_CCWCode,2,1) = 'B' then
    lblCCW.Caption := '11������'
  else if copy(_CCWCode,2,1) = 'C' then
    lblCCW.Caption := '12������'
  else lblCCW.Caption := copy(_CCWCode,2,1) + '������' ;

  if copy(_WWCode,2,1) = 'A' then
    lblWW.Caption := '10������'
  else if copy(_WWCode,2,1) = 'B' then
    lblWW.Caption := '11������'
  else if copy(_WWCode,2,1) = 'C' then
    lblWW.Caption := '12������'
  else lblWW.Caption := copy(_WWCode,2,1) + '������' ;
end;

procedure TfPriceInfo.FormShow(Sender: TObject);
var i : integer;
    nReal : Real;
begin
  First_Activate := True;

  WCaptionshow;
  StringGrid1.Cells[0,0] := '�ŵ�ȣ��';
  StringGrid1.Cells[1,0] := '�ż�ȣ��';
  StringGrid1.Cells[2,0] := ' ���簡';
  StringGrid1.Cells[3,0] := '��簡';
  StringGrid1.Cells[4,0] := ' ���簡';
  StringGrid1.Cells[5,0] := '�ż�ȣ��';
  StringGrid1.Cells[6,0] := '�ŵ�ȣ��';
  StringGrid1.Cells[7,0] := '���簡���';

  StringGrid3.Cells[0,0] := '�ŵ�ȣ��';
  StringGrid3.Cells[1,0] := '�ż�ȣ��';
  StringGrid3.Cells[2,0] := ' ���簡';
  StringGrid3.Cells[3,0] := '��簡';
  StringGrid3.Cells[4,0] := ' ���簡';
  StringGrid3.Cells[5,0] := '�ż�ȣ��';
  StringGrid3.Cells[6,0] := '�ŵ�ȣ��';
  StringGrid3.Cells[7,0] := '���簡���';

  StringGrid5.Cells[0,0] := '�ŵ�ȣ��';
  StringGrid5.Cells[1,0] := '�ż�ȣ��';
  StringGrid5.Cells[2,0] := ' ���簡';
  StringGrid5.Cells[3,0] := '��簡';
  StringGrid5.Cells[4,0] := ' ���簡';
  StringGrid5.Cells[5,0] := '�ż�ȣ��';
  StringGrid5.Cells[6,0] := '�ŵ�ȣ��';

  StringGrid7.Cells[0,0] := '�ŵ�ȣ��';
  StringGrid7.Cells[1,0] := '�ż�ȣ��';
  StringGrid7.Cells[2,0] := ' ���簡';
  StringGrid7.Cells[3,0] := '��簡';
  StringGrid7.Cells[4,0] := ' ���簡';
  StringGrid7.Cells[5,0] := '�ż�ȣ��';
  StringGrid7.Cells[6,0] := '�ŵ�ȣ��';

  _PriceInfoWPosition  := strTointDef(edtWPosition.Text,0);
  if (_PriceInfoDGPosition - 14) > 0 then begin
    stg����.TopRow := _PriceInfoDGPosition - 10;
    stgCW����.TopRow := _PriceInfoDGPosition - 10;
    stgCCW����.TopRow := _PriceInfoDGPosition - 10;
    stgWW����.TopRow := _PriceInfoDGPosition - 10;
  end;

  InPrice; // �������� ����

  StringGrid1.Selection := TGridRect(Rect(-1, -1, -1, -1));
  stg����.Selection := TGridRect(Rect(-1, -1, -1, -1));
  StringGrid3.Selection := TGridRect(Rect(-1, -1, -1, -1));
  stgCW����.Selection := TGridRect(Rect(-1, -1, -1, -1));
  StringGrid5.Selection := TGridRect(Rect(-1, -1, -1, -1));
  stgCCW����.Selection := TGridRect(Rect(-1, -1, -1, -1));
  StringGrid7.Selection := TGridRect(Rect(-1, -1, -1, -1));
  stgWW����.Selection := TGridRect(Rect(-1, -1, -1, -1));
end;

end.

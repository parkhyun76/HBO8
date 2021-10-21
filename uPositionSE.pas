unit uPositionSE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids,
  VclTee.TeeGDIPlus, VCLTee.TeEngine, VCLTee.Series, Vcl.ExtCtrls,
  VCLTee.TeeProcs, VCLTee.Chart;

type
  TfPositionSE = class(TForm)
    stg포지션LCall: TStringGrid;
    stg포지션LTop: TStringGrid;
    stg포지션LPut: TStringGrid;
    Button1: TButton;
    Button2: TButton;
    Button20: TButton;
    stg포지션RTop: TStringGrid;
    stg포지션RCall: TStringGrid;
    stg포지션RPut: TStringGrid;
    stg포지션LBottom: TStringGrid;
    stg포지션RBottom: TStringGrid;
    grbPositionChart: TGroupBox;
    Chart2: TChart;
    Label6: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button68: TButton;
    CheckBox3: TCheckBox;
    Series2: TLineSeries;
    Series1: TLineSeries;
    Button29: TButton;
    btnChartCal: TButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure stg포지션LCallDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure stg포지션LPutDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure stg포지션LBottomDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure VisibleChanging; override;
  end;

var
  fPositionSE: TfPositionSE;
    _Position행사가: array[0..99] of single; // 행사가 리스트 160부터 407.5까지

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

procedure TfPositionSE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := Cafree;
//  action := CaHide;
end;

procedure TfPositionSE.VisibleChanging;
begin
 // inherited;
end;

procedure TfPositionSE.FormShow(Sender: TObject);
var i : integer;
begin
//  for I := 0 to 99 do begin
//    _Position행사가[i] := 160 + 2.5 * i;
//  end;

  for I := 0 to 99 do begin
    stg포지션RTop.Cells[i,0] := formatfloat('#0.#',_Position행사가[i]);
  end;
  stg포지션LTop.Cells[0,0] := '종 목';
  stg포지션LTop.ColWidths[0] := 70;
  stg포지션LTop.Cells[1,0] := '가격';
  stg포지션LTop.Cells[2,0] := '수량';
  stg포지션LTop.ColWidths[2] := 35;
  stg포지션LTop.Cells[3,0] := ' 비용';

  stg포지션LCall.Cells[0,24] := ' 합  계';
  stg포지션LCall.ColWidths[0] := 70;
  stg포지션LCall.ColWidths[2] := 35;

  stg포지션LPut.Cells[0,0] := '종 목';
  stg포지션LPut.Cells[1,0] := '가격';
  stg포지션LPut.Cells[2,0] := '수량';
  stg포지션LPut.Cells[3,0] := ' 비용';
  stg포지션LPut.Cells[0,35] := ' 합  계';
  stg포지션LPut.ColWidths[0] := 70;
  stg포지션LPut.ColWidths[2] := 35;

  stg포지션LBottom.ColWidths[0] := 70;
  stg포지션LBottom.ColWidths[2] := 35;
  stg포지션LBottom.Cells[0,0] := ' 총합계';
  stg포지션LBottom.Cells[0,1] := ' 차 이';
  stg포지션LBottom.Cells[0,2] := '환산금액';
  stg포지션LBottom.Cells[0,3] := ' 평가액';
  stg포지션LBottom.Cells[0,4] := ' 시작금';

  stg포지션RTop.LeftCol := 40;
  stg포지션RCall.LeftCol := 40;
  stg포지션RPut.LeftCol := 40;
  stg포지션RBottom.LeftCol := 40;

  stg포지션LTop.Selection := TGridRect(Rect(-1, -1, -1, -1));
  stg포지션LCall.Selection := TGridRect(Rect(-1, -1, -1, -1));
  stg포지션LPut.Selection := TGridRect(Rect(-1, -1, -1, -1));
  stg포지션LBottom.Selection := TGridRect(Rect(-1, -1, -1, -1));
  stg포지션RTop.Selection := TGridRect(Rect(-1, -1, -1, -1));
  stg포지션RCall.Selection := TGridRect(Rect(-1, -1, -1, -1));
  stg포지션RBottom.Selection := TGridRect(Rect(-1, -1, -1, -1));
end;

procedure TfPositionSE.stg포지션LBottomDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
  with stg포지션LBottom do
  begin

    // 셀 별 어브젝트가 설정되었는지 확인
    if Assigned(Objects[ACol, ARow]) then
    begin
      // 색을 셀에 채우기
      Canvas.Brush.Color := TColor(Objects[ACol, ARow]);
      Canvas.FillRect(Rect);
    end;

    if ARow = 3 then begin
      Canvas.Font.Color := clLime;
      Canvas.Font.Style := Canvas.Font.Style + [fsBold];
    end else if ARow = 4 then begin
      Canvas.Font.Color := $0066FF;
      Canvas.Font.Style := Canvas.Font.Style + [fsBold];
    end;
    Canvas.TextOut(Rect.Left+2, Rect.Top, Cells[ACol, ARow]);
  end;
end;

procedure TfPositionSE.stg포지션LCallDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var nMonthCode, nYearNow, nCMonth, nCCMonth, nWMonth : string;
begin
  if copy(_CManKi,5,2) = '10' then nMonthCode := 'A'
  else if copy(_CManKi,5,2) = '11' then nMonthCode := 'B'
  else if copy(_CManKi,5,2) = '12' then nMonthCode := 'C'
  else nMonthCode := copy(_CManKi,6,1);
  nYearNow := copy(_CManKi,1,4);
  nCMonth := '201' + pYearCode(nYearNow) + nMonthCode;

  if copy(_CCManKi,5,2) = '10' then nMonthCode := 'A'
  else if copy(_CCManKi,5,2) = '11' then nMonthCode := 'B'
  else if copy(_CCManKi,5,2) = '12' then nMonthCode := 'C'
  else nMonthCode := copy(_CCManKi,6,1);
  nYearNow := copy(_CCManKi,1,4);
  nCCMonth := '201' + pYearCode(nYearNow) + nMonthCode;

  if copy(_WManKi,5,2) = '10' then nMonthCode := 'A'
  else if copy(_WManKi,5,2) = '11' then nMonthCode := 'B'
  else if copy(_WManKi,5,2) = '12' then nMonthCode := 'C'
  else nMonthCode := copy(_WManKi,6,1);
  nYearNow := copy(_WManKi,1,4);
  nWMonth := '201' + pYearCode(nYearNow) + nMonthCode;           //201P1265

  // 여기서 부터 차월물, 차차월, 원월물 판단하여 변수 저장.

  with stg포지션LCall do
  begin

    // 셀 별 어브젝트가 설정되었는지 확인
    if Assigned(Objects[ACol, ARow]) then
    begin
      // 색을 셀에 채우기
      Canvas.Brush.Color := TColor(Objects[ACol, ARow]);
      Canvas.FillRect(Rect);
    end;

    if copy(Cells[0,ARow],1,5) = nCMonth then begin // 차월물이면
      Canvas.Font.Color := clLime; //clFuchsia
    end else if copy(Cells[0,ARow],1,5) = nCCMonth then begin
      Canvas.Font.Color := clAqua;
    end else if copy(Cells[0,ARow],1,5) = nWMonth then begin
      Canvas.Font.Color := $0066FF;//clRed;
    end else if pos('합',Cells[0,ARow]) > 0 then begin
      Canvas.Font.Color := clRed;
      Canvas.Font.Style := Canvas.Font.Style + [fsBold];
    end else begin
       Canvas.Font.Color := clWhite;
    end;
    Canvas.TextOut(Rect.Left+2, Rect.Top, Cells[ACol, ARow]);
  end;

end;

procedure TfPositionSE.stg포지션LPutDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var nMonthCode, nYearNow, nCMonth, nCCMonth, nWMonth : string;
begin
  if copy(_CManKi,5,2) = '10' then nMonthCode := 'A'
  else if copy(_CManKi,5,2) = '11' then nMonthCode := 'B'
  else if copy(_CManKi,5,2) = '12' then nMonthCode := 'C'
  else nMonthCode := copy(_CManKi,6,1);
  nYearNow := copy(_CManKi,1,4);
  nCMonth := '301' + pYearCode(nYearNow) + nMonthCode;

  if copy(_CCManKi,5,2) = '10' then nMonthCode := 'A'
  else if copy(_CCManKi,5,2) = '11' then nMonthCode := 'B'
  else if copy(_CCManKi,5,2) = '12' then nMonthCode := 'C'
  else nMonthCode := copy(_CCManKi,6,1);
  nYearNow := copy(_CCManKi,1,4);
  nCCMonth := '301' + pYearCode(nYearNow) + nMonthCode;

  if copy(_WManKi,5,2) = '10' then nMonthCode := 'A'
  else if copy(_WManKi,5,2) = '11' then nMonthCode := 'B'
  else if copy(_WManKi,5,2) = '12' then nMonthCode := 'C'
  else nMonthCode := copy(_WManKi,6,1);
  nYearNow := copy(_WManKi,1,4);
  nWMonth := '301' + pYearCode(nYearNow) + nMonthCode;           //201P1265

  // 여기서 부터 차월물, 차차월, 원월물 판단하여 변수 저장.

  with stg포지션LPut do
  begin

    // 셀 별 어브젝트가 설정되었는지 확인
    if Assigned(Objects[ACol, ARow]) then
    begin
      // 색을 셀에 채우기
      Canvas.Brush.Color := TColor(Objects[ACol, ARow]);
      Canvas.FillRect(Rect);
    end;

    if copy(Cells[0,ARow],1,5) = nCMonth then begin // 차월물이면
      Canvas.Font.Color := clLime;//clFuchsia;
    end else if copy(Cells[0,ARow],1,5) = nCCMonth then begin
      Canvas.Font.Color := clAqua;
    end else if copy(Cells[0,ARow],1,5) = nWMonth then begin
      Canvas.Font.Color := $0066ff;//clRed;
    end else if pos('합',Cells[0,ARow]) > 0 then begin
      Canvas.Font.Color := clRed;
      Canvas.Font.Style := Canvas.Font.Style + [fsBold];
    end else Canvas.Font.Color := clWhite;
    Canvas.TextOut(Rect.Left+2, Rect.Top, Cells[ACol, ARow]);
  end;
end;

end.

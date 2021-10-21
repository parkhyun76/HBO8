unit uPositionSE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids,
  VclTee.TeeGDIPlus, VCLTee.TeEngine, VCLTee.Series, Vcl.ExtCtrls,
  VCLTee.TeeProcs, VCLTee.Chart;

type
  TfPositionSE = class(TForm)
    stg������LCall: TStringGrid;
    stg������LTop: TStringGrid;
    stg������LPut: TStringGrid;
    Button1: TButton;
    Button2: TButton;
    Button20: TButton;
    stg������RTop: TStringGrid;
    stg������RCall: TStringGrid;
    stg������RPut: TStringGrid;
    stg������LBottom: TStringGrid;
    stg������RBottom: TStringGrid;
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
    procedure stg������LCallDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure stg������LPutDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure stg������LBottomDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure VisibleChanging; override;
  end;

var
  fPositionSE: TfPositionSE;
    _Position��簡: array[0..99] of single; // ��簡 ����Ʈ 160���� 407.5����

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
//    _Position��簡[i] := 160 + 2.5 * i;
//  end;

  for I := 0 to 99 do begin
    stg������RTop.Cells[i,0] := formatfloat('#0.#',_Position��簡[i]);
  end;
  stg������LTop.Cells[0,0] := '�� ��';
  stg������LTop.ColWidths[0] := 70;
  stg������LTop.Cells[1,0] := '����';
  stg������LTop.Cells[2,0] := '����';
  stg������LTop.ColWidths[2] := 35;
  stg������LTop.Cells[3,0] := ' ���';

  stg������LCall.Cells[0,24] := ' ��  ��';
  stg������LCall.ColWidths[0] := 70;
  stg������LCall.ColWidths[2] := 35;

  stg������LPut.Cells[0,0] := '�� ��';
  stg������LPut.Cells[1,0] := '����';
  stg������LPut.Cells[2,0] := '����';
  stg������LPut.Cells[3,0] := ' ���';
  stg������LPut.Cells[0,35] := ' ��  ��';
  stg������LPut.ColWidths[0] := 70;
  stg������LPut.ColWidths[2] := 35;

  stg������LBottom.ColWidths[0] := 70;
  stg������LBottom.ColWidths[2] := 35;
  stg������LBottom.Cells[0,0] := ' ���հ�';
  stg������LBottom.Cells[0,1] := ' �� ��';
  stg������LBottom.Cells[0,2] := 'ȯ��ݾ�';
  stg������LBottom.Cells[0,3] := ' �򰡾�';
  stg������LBottom.Cells[0,4] := ' ���۱�';

  stg������RTop.LeftCol := 40;
  stg������RCall.LeftCol := 40;
  stg������RPut.LeftCol := 40;
  stg������RBottom.LeftCol := 40;

  stg������LTop.Selection := TGridRect(Rect(-1, -1, -1, -1));
  stg������LCall.Selection := TGridRect(Rect(-1, -1, -1, -1));
  stg������LPut.Selection := TGridRect(Rect(-1, -1, -1, -1));
  stg������LBottom.Selection := TGridRect(Rect(-1, -1, -1, -1));
  stg������RTop.Selection := TGridRect(Rect(-1, -1, -1, -1));
  stg������RCall.Selection := TGridRect(Rect(-1, -1, -1, -1));
  stg������RBottom.Selection := TGridRect(Rect(-1, -1, -1, -1));
end;

procedure TfPositionSE.stg������LBottomDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
  with stg������LBottom do
  begin

    // �� �� �����Ʈ�� �����Ǿ����� Ȯ��
    if Assigned(Objects[ACol, ARow]) then
    begin
      // ���� ���� ä���
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

procedure TfPositionSE.stg������LCallDrawCell(Sender: TObject; ACol,
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

  // ���⼭ ���� ������, ������, ������ �Ǵ��Ͽ� ���� ����.

  with stg������LCall do
  begin

    // �� �� �����Ʈ�� �����Ǿ����� Ȯ��
    if Assigned(Objects[ACol, ARow]) then
    begin
      // ���� ���� ä���
      Canvas.Brush.Color := TColor(Objects[ACol, ARow]);
      Canvas.FillRect(Rect);
    end;

    if copy(Cells[0,ARow],1,5) = nCMonth then begin // �������̸�
      Canvas.Font.Color := clLime; //clFuchsia
    end else if copy(Cells[0,ARow],1,5) = nCCMonth then begin
      Canvas.Font.Color := clAqua;
    end else if copy(Cells[0,ARow],1,5) = nWMonth then begin
      Canvas.Font.Color := $0066FF;//clRed;
    end else if pos('��',Cells[0,ARow]) > 0 then begin
      Canvas.Font.Color := clRed;
      Canvas.Font.Style := Canvas.Font.Style + [fsBold];
    end else begin
       Canvas.Font.Color := clWhite;
    end;
    Canvas.TextOut(Rect.Left+2, Rect.Top, Cells[ACol, ARow]);
  end;

end;

procedure TfPositionSE.stg������LPutDrawCell(Sender: TObject; ACol,
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

  // ���⼭ ���� ������, ������, ������ �Ǵ��Ͽ� ���� ����.

  with stg������LPut do
  begin

    // �� �� �����Ʈ�� �����Ǿ����� Ȯ��
    if Assigned(Objects[ACol, ARow]) then
    begin
      // ���� ���� ä���
      Canvas.Brush.Color := TColor(Objects[ACol, ARow]);
      Canvas.FillRect(Rect);
    end;

    if copy(Cells[0,ARow],1,5) = nCMonth then begin // �������̸�
      Canvas.Font.Color := clLime;//clFuchsia;
    end else if copy(Cells[0,ARow],1,5) = nCCMonth then begin
      Canvas.Font.Color := clAqua;
    end else if copy(Cells[0,ARow],1,5) = nWMonth then begin
      Canvas.Font.Color := $0066ff;//clRed;
    end else if pos('��',Cells[0,ARow]) > 0 then begin
      Canvas.Font.Color := clRed;
      Canvas.Font.Style := Canvas.Font.Style + [fsBold];
    end else Canvas.Font.Color := clWhite;
    Canvas.TextOut(Rect.Left+2, Rect.Top, Cells[ACol, ARow]);
  end;
end;

end.

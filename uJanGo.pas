unit uJanGo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.Grids;

type
  TfJango = class(TForm)
    stgJango: TStringGrid;
    stgJangoTop: TStringGrid;
    Button1: TButton;
    tmrJangoInput: TTimer;
    tmrJGPrice: TTimer;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure tmrJangoInputTimer(Sender: TObject);
    procedure stgJangoExit(Sender: TObject);
    procedure stgJangoDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure stgJangoMouseLeave(Sender: TObject);
    procedure stgJangoTopMouseLeave(Sender: TObject);
    procedure tmrJGPriceTimer(Sender: TObject);
    procedure stgJangoMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure stgJangoMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure stgJangoTopMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure stgJangoTopMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormCreate(Sender: TObject);
  private
//    procedure CustomExceptionHandler(Sender: TObject; E: Exception);
    { Private declarations }
  public
    { Public declarations }
    procedure VisibleChanging; override;
  end;

var
  fJango: TfJango;
    First_Activate : boolean;

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

procedure TfJango.VisibleChanging;
begin
 // inherited;
end;

procedure TfJango.Button1Click(Sender: TObject);
var i,j, Time_Out, nReturn : integer;
begin
  for I := 0 to 49 do begin
    for j := 0 to 5 do begin
      _JangoList[j,i] := '';
      stgJango.Cells[j,i] := '';
    end;
  end;

  _JangoJMQtn := 0; // ���� ���� �ʱ�ȭ

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//	����Ÿ���� Open API �Է��ڵ� �����Դϴ�.
//	[251002] �����ɼǴ����� - �Էº��
  with fHBOMain do begin
    YuantaAPI1.YOA_SetTRInfo( '251002', 'InBlock1' );			// TR����(TR��, Block��)�� �����մϴ�.
    YuantaAPI1.YOA_SetFieldString( 'acnt_aid', Acnt, 0 );		// ���� ���� �����մϴ�.
    YuantaAPI1.YOA_SetFieldString( 'passwd', Acntpwd, 0 );		// ���º�й�ȣ ���� �����մϴ�.
    nReturn := YuantaAPI1.YOA_Request('251002', true, -1);
    if nReturn < 1000 then begin
      showmessage('���� �ɼ� ���� �� �б� ����');
      exit;
    end;
  end;
end;

procedure TfJango.FormActivate(Sender: TObject);
begin
  if First_Activate then begin
    Left := 447;//1564;//687+740;
    Top := 520-3;
    First_Activate := False;
  end;
end;

procedure TfJango.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := Cafree;
//  action := CaHide;
end;

procedure TfJango.FormCreate(Sender: TObject);
begin
end;

//type
//  EInvalidBalance = class(Exception);
//
//procedure TfJango.CustomExceptionHandler(Sender: TObject; E: Exception);
//begin
//  if E is EInvalidBalance then
//    showmessage('Handling Invalid Balance Execption')
//  else
//    Application.ShowException(E);
//end;
//
//procedure TfJango.FormCreate(Sender: TObject);
//begin
//  Application.OnException := CustomExceptionHandler;
//
//end;

procedure TfJango.FormShow(Sender: TObject);
begin
  First_Activate := True;
  stgJangoTop.Cells[0,0] := '  �� ��';
  stgJangoTop.ColWidths[0] := 80;
  stgJangoTop.Cells[1,0] := ' ����';
  stgJangoTop.Cells[2,0] := '�ŸŰ�';
  stgJangoTop.ColWidths[2] := 55;
  stgJangoTop.Cells[3,0] := '���簡';
  stgJangoTop.ColWidths[3] := 45;
  stgJangoTop.Cells[4,0] := ' ����';
  stgJangoTop.ColWidths[4] := 45;
  stgJangoTop.Cells[5,0] := '��ü��';
  stgJangoTop.Selection := TGridRect(Rect(-1, -1, -1, -1));

  stgJango.ColWidths[0] := 80;
  stgJango.ColWidths[2] := 55;
  stgJango.ColWidths[3] := 45;
  stgJango.ColWidths[4] := 45;
  stgJango.Selection := TGridRect(Rect(-1, -1, -1, -1));
end;

procedure TfJango.stgJangoDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var iX, iY : integer;
begin
  with stgJango do
  begin
    iY := Rect.Top + 2;
    // �� �� �����Ʈ�� �����Ǿ����� Ȯ��
    if Assigned(Objects[ACol, ARow]) then
    begin
      // ���� ���� ä���
      Canvas.Brush.Color := TColor(Objects[ACol, ARow]);
      Canvas.FillRect(Rect);
    end;

    if copy(Cells[0,ARow],4,2) = _DCode then begin // �������̸�
      Canvas.Font.Color := clLime; //clFuchsia
//      Canvas.Font.Style := Canvas.Font.Style + [fsBold];
    end else if copy(Cells[0,ARow],4,2) = _CWCode then begin
      Canvas.Font.Color := clAqua;
    end else if copy(Cells[0,ARow],4,2) = _CCWCode then begin
      Canvas.Font.Color := $0066FF;//clRed;
    end else if copy(Cells[0,ARow],4,2) = _WWCode then begin
      Canvas.Font.Color := clRed;
    end else begin
       Canvas.Font.Color := clWhite;
    end;
//    Canvas.TextOut(Rect.Left+2, Rect.Top, Cells[ACol, ARow]);
    iX := (Rect.Left + Rect.Right) div 2;
    SetTextAlign(Canvas.Handle, TA_CENTER);
    Canvas.TextRect(Rect, iX, iY, Cells[Acol,Arow]);
  end;
end;

procedure TfJango.stgJangoExit(Sender: TObject);
begin
  stgJango.Selection := TGridRect(Rect(-1, -1, -1, -1));
end;

procedure TfJango.stgJangoMouseLeave(Sender: TObject);
begin
  stgJango.Selection := TGridRect(Rect(-1, -1, -1, -1));
end;

procedure TfJango.stgJangoMouseWheelDown(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  Handled := True;
end;

procedure TfJango.stgJangoMouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  Handled := True;
end;

procedure TfJango.stgJangoTopMouseLeave(Sender: TObject);
begin
  stgJangoTop.Selection := TGridRect(Rect(-1, -1, -1, -1));
end;

procedure TfJango.stgJangoTopMouseWheelDown(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  Handled := True;
end;

procedure TfJango.stgJangoTopMouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  Handled := True;
end;

procedure TfJango.tmrJangoInputTimer(Sender: TObject);
var i, j : integer;
begin
  if _JGIndex > -1 then begin
    _JGIndex := -1;
    if _JGRTflg = 0 then begin
      for I := 0 to 5 do begin
        for j := 0 to 49 do begin
          if _JangoList[0,j] <> '' then begin
            stgJango.Cells[i,j] := _JangoList[i,j];
          end;
        end;
      end;
    end else if _JGIndex > 0 then begin
      stgJango.Cells[0,_JGIndex] := _JangoList[0,_JGIndex];
      stgJango.Cells[1,_JGIndex] := _JangoList[1,_JGIndex];
      stgJango.Cells[2,_JGIndex] := _JangoList[2,_JGIndex];
      stgJango.Cells[3,_JGIndex] := _JangoList[3,_JGIndex];
      stgJango.Cells[4,_JGIndex] := _JangoList[4,_JGIndex];
      stgJango.Cells[5,_JGIndex] := _JangoList[5,_JGIndex];
    end;
  end;
end;

procedure TfJango.tmrJGPriceTimer(Sender: TObject);
var i, nRowNo : integer;
    strJMCode, strYMonthCode, strOldHoga, strNewHoga, strT : string;
    nMMType : string; // �ż� �ŵ� Ȯ��
    snValue : single;
begin
  tmrJGPrice.Enabled := False;
  ///  1. ���� Ȯ��
  for i := 0 to 49 do begin
    strJMCode := _JangoList[0,i];
    if strJMCode <> '' then begin
      strYMonthCode := copy(strJMCode, 4,2); ///  2. ���� �� ���� Ȯ��
      strT := strJMCode;
      if (copy(strT,8,1) = '2') or (copy(strT,8,1) = '7') then  strT := copy(strT,6,3) + '.5'
      else strT := copy(strT,6,3);
      nRowNo := Round((_MaxHSG - strTofloatDef(strT,0)) / 2.5);
      nMMType := _JangoList[4,i];   ///  4. �ż�, �ŵ� Ȯ�� - �̰ų� �����̰ų�.
      strOldHoga := _JangoList[3,i]; // ���� ���簡 Ȯ��

      if strYMonthCode = _DCode then begin
        if copy(strJMCode, 1,3) = '201' then
          strNewHoga := formatfloat('#0.00',_DWHSGListInfo[2,nRowNo])
        else if copy(strJMCode, 1,3) = '301' then
          strNewHoga := formatfloat('#0.00',_DWHSGListInfo[4,nRowNo]);
      end else if strYMonthCode = _CWCode then begin//���� �ڵ��̸�
        if copy(strJMCode, 1,3) = '201' then
          strNewHoga := formatfloat('#0.00',_CWHSGListInfo[2,nRowNo])
        else if copy(strJMCode, 1,3) = '301' then
          strNewHoga := formatfloat('#0.00',_CWHSGListInfo[4,nRowNo]);
      end else if strYMonthCode = _CCWCode then begin//������ �ڵ��̸�
        if copy(strJMCode, 1,3) = '201' then
          strNewHoga := formatfloat('#0.00',_CCWHSGListInfo[2,nRowNo])
        else if copy(strJMCode, 1,3) = '301' then
          strNewHoga := formatfloat('#0.00',_CCWHSGListInfo[4,nRowNo]);
      end else if strYMonthCode = _WWCode then begin //���� �ڵ��̸�
        if copy(strJMCode, 1,3) = '201' then
          strNewHoga := formatfloat('#0.00',_WWHSGListInfo[2,nRowNo])
        else if copy(strJMCode, 1,3) = '301' then
          strNewHoga := formatfloat('#0.00',_WWHSGListInfo[2,nRowNo]);
      end else if strYMonthCode = _WeeklyMonthCode then begin //���� �ڵ��̸�
        if copy(strJMCode, 1,3) = '209' then
          strNewHoga := formatfloat('#0.00',_WeeklyPriceListInfo[0,nRowNo])
        else if copy(strJMCode, 1,3) = '309' then
          strNewHoga := formatfloat('#0.00',_WeeklyPriceListInfo[2,nRowNo]);
      end else strNewHoga := strOldHoga;

      if (strOldHoga <> strNewHoga) then begin
        _JangoList[3,i] := strNewHoga;   ///  5. �ٸ��� ǥ��
        stgJango.Cells[3,i] := strNewHoga;
      end;
    end;
  end;
  tmrJGPrice.Enabled := True;
end;

end.

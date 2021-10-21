unit uTimeSpread;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.Buttons, VclTee.TeeGDIPlus, VCLTee.TeEngine,
  VCLTee.Series, VCLTee.TeeProcs, VCLTee.Chart, Vcl.Mask;

type
  TfTimeSpread = class(TForm)
    GroupBox13: TGroupBox;
    Label41: TLabel;
    stgTSCallList: TStringGrid;
    StringGrid4: TStringGrid;
    edtTSCallTotalQtn: TEdit;
    Button52: TButton;
    Button55: TButton;
    Button1: TButton;
    Label39: TLabel;
    edtTSCallUnit: TEdit;
    btnCallJinIp: TButton;
    SpeedButton1: TSpeedButton;
    tmrTSCallPrice: TTimer;
    mmoLog: TMemo;
    SpinButton5: TSpinButton;
    SpinButton6: TSpinButton;
    Label5: TLabel;
    SpeedButton3: TSpeedButton;
    stgTSPutList: TStringGrid;
    SpinButton9: TSpinButton;
    SpinButton10: TSpinButton;
    Label6: TLabel;
    Button58: TButton;
    Button59: TButton;
    Button5: TButton;
    Button6: TButton;
    btnCallCS: TButton;
    SpinButton2: TSpinButton;
    ldtTSCallSJJiSu: TLabeledEdit;
    ldtTSPutSJJiSu: TLabeledEdit;
    SpinButton3: TSpinButton;
    lbeCallEJBY: TLabeledEdit;
    SpinButton13: TSpinButton;
    ldtTSCallEJJiSu: TLabeledEdit;
    SpinButton14: TSpinButton;
    edtTSCallHGBY: TEdit;
    Label10: TLabel;
    ldtTSPutEJJiSu: TLabeledEdit;
    SpinButton15: TSpinButton;
    lbePutEJBY: TLabeledEdit;
    SpinButton16: TSpinButton;
    edtTSPutHGBY: TEdit;
    Label11: TLabel;
    tmrTSMessage: TTimer;
    Button15: TButton;
    btnPutJinIp: TButton;
    Button3: TButton;
    Button4: TButton;
    Button7: TButton;
    Button8: TButton;
    edtAutoMMStart: TEdit;
    edtAutoMMStop: TEdit;
    Label19: TLabel;
    tmrTSPutPrice: TTimer;
    btPutCS: TButton;
    StringGrid1: TStringGrid;
    SpeedButton2: TSpeedButton;
    SpeedButton4: TSpeedButton;
    mmoSaveUIValue: TMemo;
    Button2: TButton;
    Button9: TButton;
    imgTSCallJinIp: TImage;
    imgTSCallCS: TImage;
    imgTSPutJinIp: TImage;
    imgTSPutCS: TImage;
    tmrCallFind: TTimer;
    tmrCallOrder: TTimer;
    Button10: TButton;
    tmrPutFind: TTimer;
    tmrPutOrder: TTimer;
    tmrTSCallPrice2: TTimer;
    tmrTSPutPrice2: TTimer;
    Button72: TButton;
    Button70: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure stgTSCallListDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure stgTSCallListExit(Sender: TObject);
    procedure Button52Click(Sender: TObject);
    procedure Button55Click(Sender: TObject);
    procedure edtAutoMMStartChange(Sender: TObject);
    procedure edtAutoMMStopChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure stgTSPutListDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure stgTSPutListExit(Sender: TObject);
    procedure Button59Click(Sender: TObject);
    procedure Button58Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure SpinButton5UpClick(Sender: TObject);
    procedure SpinButton5DownClick(Sender: TObject);
    procedure SpinButton6DownClick(Sender: TObject);
    procedure SpinButton6UpClick(Sender: TObject);
    procedure SpinButton9DownClick(Sender: TObject);
    procedure SpinButton9UpClick(Sender: TObject);
    procedure SpinButton10UpClick(Sender: TObject);
    procedure SpinButton10DownClick(Sender: TObject);
    procedure btnCallJinIpClick(Sender: TObject);
    procedure tmrTSCallPriceTimer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure tmrTSMessageTimer(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure tmrTSPutPriceTimer(Sender: TObject);
    procedure btnCallCSClick(Sender: TObject);
    procedure ldtTSCallSJJiSuChange(Sender: TObject);
    procedure ldtTSCallEJJiSuChange(Sender: TObject);
    procedure lbeCallEJBYChange(Sender: TObject);
    procedure ldtTSPutSJJiSuChange(Sender: TObject);
    procedure ldtTSPutEJJiSuChange(Sender: TObject);
    procedure lbePutEJBYChange(Sender: TObject);
    procedure btnPutJinIpClick(Sender: TObject);
    procedure btPutCSClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure StringGrid1Exit(Sender: TObject);
    procedure StringGrid4Exit(Sender: TObject);
    procedure SpinButton2DownClick(Sender: TObject);
    procedure SpinButton2UpClick(Sender: TObject);
    procedure SpinButton14UpClick(Sender: TObject);
    procedure SpinButton14DownClick(Sender: TObject);
    procedure SpinButton3DownClick(Sender: TObject);
    procedure SpinButton3UpClick(Sender: TObject);
    procedure SpinButton15UpClick(Sender: TObject);
    procedure SpinButton15DownClick(Sender: TObject);
    procedure SpinButton13DownClick(Sender: TObject);
    procedure SpinButton13UpClick(Sender: TObject);
    procedure SpinButton16DownClick(Sender: TObject);
    procedure SpinButton16UpClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure tmrCallFindTimer(Sender: TObject);
    procedure tmrCallOrderTimer(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure tmrPutFindTimer(Sender: TObject);
    procedure tmrPutOrderTimer(Sender: TObject);
    procedure stgTSCallListMouseLeave(Sender: TObject);
    procedure StringGrid4MouseLeave(Sender: TObject);
    procedure StringGrid1MouseLeave(Sender: TObject);
    procedure stgTSPutListMouseLeave(Sender: TObject);
    procedure tmrTSCallPrice2Timer(Sender: TObject);
    procedure tmrTSPutPrice2Timer(Sender: TObject);
    procedure Button72Click(Sender: TObject);
    procedure Button70Click(Sender: TObject);
    procedure StringGrid4MouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure StringGrid4MouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure stgTSCallListMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure stgTSCallListMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure StringGrid1MouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure StringGrid1MouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure stgTSPutListMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure stgTSPutListMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
  private
    procedure TimeSpreadCallBasicSetting(nDGPos, nWGPos, nInsertNo: integer; nTotalQtn,
      nUnitQtn: string);
    procedure TimeSpreadPutBasicSetting(nDGPos, nWGPos, nInsertNo: integer; nTotalQtn,
      nUnitQtn: string);
    procedure stgCallUpDownChange(stgRow, nUpDownNo: integer);
    procedure stgPutUpDownChange(stgRow, nUpDownNo: integer);
    procedure TSCallNewInsert;
    procedure ChangeMonthCall(stgRow, nUpDown: integer);
    procedure ChangeMonthPut(stgRow, nUpDown: integer);
    procedure TSPutNewInsert;
//    procedure TSOpenUIValue;
//    procedure TSSaveUIValue;
    procedure _CallMCGCancleOrder;
    procedure _MCGCancleOrder;
    procedure _PutMCGCancleOrder;

  public
    { Public declarations }
    procedure VisibleChanging; override;
    procedure TSOpenUIValue;
    procedure TSSaveUIValue;
  end;

var
  fTimeSpread: TfTimeSpread;
    First_Activate : boolean; //ȭ�� ���Ŀ�
    ListSelectNo : integer;
    _StartTime, _EndTime, _GCRepeatCNT : integer; // ���۽ð�, ����ð� , �������Ӱ���(�ð�)
    _TSCallNewList, _TSPutNewList : array[0..5,0..11] of string;  // ��ż� �ֹ� ����Ʈ���� [  �����ڵ�[0], ���簡[1], ���ֹ�����[2], 1ȸ����[3], PT[4], Row[5]  ]

    _TSCallNowPrice1, _TSCallMDHG1, _TSCallMSHG1, _TSCallNowPrice2, _TSCallMDHG2, _TSCallMSHG2  : single;
    _TSPutNowPrice1, _TSPutMDHG1, _TSPutMSHG1, _TSPutNowPrice2, _TSPutMDHG2, _TSPutMSHG2  : single;
    _ClientKeyCall1, _ClientKeyCall2, _TSOrderIndexCall1, _TSOrderIndexCall2  : integer; // �ֹ�Ȯ�� ��, Ŭ���̾�ƮŰ, ���â�� �ֹ������߿� �ֹ���ư� �ε�����ȣ(����)
    _ClientKeyPut1, _ClientKeyPut2, _TSOrderIndexPut1, _TSOrderIndexPut2  : integer; //
    _CallJMNo1, _CallJMNo2, _PutJMNo1, _PutJMNo2 : integer;// �ֹ�����

    _FirstCallOrder_flg1, _FirstCallOrder_flg2, _TSCallFindPrice_flg1, _TSCallFindPrice_flg2 : boolean;   // ��ó�� �ֹ��� �� ��.
    _FirstPutOrder_flg1, _FirstPutOrder_flg2, _TSPutFindPrice_flg1, _TSPutFindPrice_flg2 : boolean;   // ��ó�� �ֹ��� �� ��.
    _FirstMainCallOrder_flg1, _FirstMainCallOrder_flg2 : boolean; // �����ֹ�
    _FirstMainPutOrder_flg1, _FirstMainPutOrder_flg2 : boolean; // �����ֹ�
//    _ClientKeyMainCall1, _ClientKeyMainCall2, _TSOrderIndexMainCall1, _TSOrderIndexMainCall2  : integer; //���� �ֹ�
//    _ClientKeyMainPut1, _ClientKeyMainPut2, _TSOrderIndexMainPut1, _TSOrderIndexMainPut2  : integer; //���� �ֹ�
    _TSCFPTQtn1, _TSCFPTQtn2, _TSPFPTQtn1, _TSPFPTQtn2, _CallOrderDelay1_CNT, _CallOrderDelay2_CNT, _PutOrderDelay1_CNT, _PutOrderDelay2_CNT : integer; //_TSCallFindPriceTotalQtn1
    _TSCallOrderedQtn1,_TSCallOrderedQtn2 : integer;  // ���ֹ��� ���� ��
    _TSPutOrderedQtn1,_TSPutOrderedQtn2 : integer;  // ���ֹ��� ���� put
    _TSMessage : array[0..19] of string; // ��ż� ������ ���۽� ���� �޼����� ȭ�鿡 ǥ���ϱ� ����.
    _TSMessage_flg : array[0..19] of boolean; // ���°�� �޽����� ��� �ִ��� Ȯ��
    _TSMessageStep : integer; // �޼����� �� �ڸ� Ȯ��
    _TSCallStop_flg, _TSPutStop_flg, _TSCallCSStart_flg, _TSPutCSStart_flg : boolean; // Ÿ�� ���� �÷���, Ÿ��û�� ���� �÷���
    _TSCallSJJiSu,  _TSCallEJJiSu, _TSCallEJBY : single; // �� ���� ����, �� ���� ����, �� ���� ���
    _TSPutSJJiSu,  _TSPutEJJiSu, _TSPutEJBY : single; // ǲ ���� ����, ǲ ���� ����, ǲ ���� ���
    _CallUnitOrderQtn, _CallUnitOrderedQtn1, _CallUnitOrderedQtn2 : integer; // 2�� �� ���� 1ȸ �ֹ����� �ֹ��� ����
    _PutUnitOrderQtn, _PutUnitOrderedQtn1, _PutUnitOrderedQtn2 : integer; // 2�� ǲ ���� 1ȸ �ֹ����� �ֹ��� ����

    _TSCallJinIp_flg , _TSPutJinIp_flg : boolean; // �ѹ������ϸ� ������ ��

    _TSCallCGBY1, _TSCallCGBY2, _TSPutCGBY1, _TSPutCGBY2 : single; //ü�� ���
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

procedure TfTimeSpread.TSPutNewInsert;
var i,j, nRow : integer;
    nQtn1, nQtn2 : integer;
    strT : string;
begin
  // ������ ����
  // �ŵ��� ù��° ������ �����Ѵ�.
  _TSPutSJJiSu := strTofloatDef(ldtTSPutSJJiSu.Text, 999);
  _TSPutEJJiSu := strTofloatDef(ldtTSPutEJJiSu.Text, 999);
  _TSPutEJBY := strTofloatDef(lbePutEJBY.Text, 999);

  nQtn1 :=  strTointDef(stgTSPutList.Cells[2,0],0);    // ��
  nQtn2 :=  strTointDef(stgTSPutList.Cells[3,0],0);    // 1ȸ

  if (ABS(nQtn1) -3) / ABS(nQtn2) > 100 then begin
    showmessage('ǲ ù��° ������ ���� ���ÿ��� 1ȸ ������ �ʹ� �۽��ϴ�.');
    exit;
  end;

  nQtn1 :=  strTointDef(stgTSPutList.Cells[2,1],0);    // ��
  nQtn2 :=  strTointDef(stgTSPutList.Cells[3,1],0);    // 1ȸ

  if (ABS(nQtn1) -3) / ABS(nQtn2) > 100 then begin
    showmessage('ǲ �ι�° ������ ���� ���ÿ��� 1ȸ ������ �ʹ� �۽��ϴ�.');
    exit;
  end;

  nQtn1 :=  strTointDef(stgTSPutList.Cells[2,0],0);
  nQtn2 :=  strTointDef(stgTSPutList.Cells[2,1],0);

  if (nQtn1 < 0) and (nQtn2 > 0) then begin
    for i := 0 to 5 do begin
      _TSPutNewList[i,0] := stgTSPutList.Cells[i,0];
      _TSPutNewList[i,1] := stgTSPutList.Cells[i,1];
    end;

    if (stgTSPutList.Cells[0,0] <> '') then begin
      strT := stgTSPutList.Cells[0,0];
      if (copy(strT,8,1) = '2') or (copy(strT,8,1) = '7') then  strT := copy(strT,6,3) + '.5'
      else strT := copy(strT,6,3);
      nRow := Round((_MaxHSG - strTofloatDef(strT,0)) / 2.5);
      _TSPutNewList[5,0] := intTostr(nRow);
      stgTSPutList.Cells[5,0] := _TSPutNewList[5,0];
    end;

    if (stgTSPutList.Cells[0,1] <> '') then begin
      strT := stgTSPutList.Cells[0,1];
      if (copy(strT,8,1) = '2') or (copy(strT,8,1) = '7') then  strT := copy(strT,6,3) + '.5'
      else strT := copy(strT,6,3);
      nRow := Round((_MaxHSG - strTofloatDef(strT,0)) / 2.5);
      _TSPutNewList[5,1] := intTostr(nRow);
      stgTSPutList.Cells[5,1] := _TSPutNewList[5,1];
    end;

  end else if (nQtn1 > 0) and (nQtn2 < 0) then begin
    for i := 0 to 5 do begin
      _TSPutNewList[i,1] := stgTSPutList.Cells[i,0];
      _TSPutNewList[i,0] := stgTSPutList.Cells[i,1];
      stgTSPutList.Cells[i,0] := _TSPutNewList[i,0];
      stgTSPutList.Cells[i,1] := _TSPutNewList[i,1];
    end;

    if (stgTSPutList.Cells[0,0] <> '') then begin
      strT := stgTSPutList.Cells[0,0];
      if (copy(strT,8,1) = '2') or (copy(strT,8,1) = '7') then  strT := copy(strT,6,3) + '.5'
      else strT := copy(strT,6,3);
      nRow := Round((_MaxHSG - strTofloatDef(strT,0)) / 2.5);
      _TSPutNewList[5,0] := intTostr(nRow);
      stgTSPutList.Cells[5,0] := _TSPutNewList[5,0];
    end;

    if (stgTSPutList.Cells[0,1] <> '') then begin
      strT := stgTSPutList.Cells[0,1];
      if (copy(strT,8,1) = '2') or (copy(strT,8,1) = '7') then  strT := copy(strT,6,3) + '.5'
      else strT := copy(strT,6,3);
      nRow := Round((_MaxHSG - strTofloatDef(strT,0)) / 2.5);
      _TSPutNewList[5,1] := intTostr(nRow);
      stgTSPutList.Cells[5,1] := _TSPutNewList[5,1];
    end;
  end else showmessage('Ÿ�ӽ������� ���� ������ �߸��Ǿ����ϴ�.:�ŵ�, �ż� ����' );
end;

procedure TfTimeSpread.TSCallNewInsert;
var i,j, nRow : integer;
    nQtn1, nQtn2 : integer;
    strT : string;
begin
  // ������ ����
  // �ŵ��� ù��° ������ �����Ѵ�.
  _TSCallSJJiSu := strTofloatDef(ldtTSCallSJJiSu.Text, 999);
  _TSCallEJJiSu := strTofloatDef(ldtTSCallEJJiSu.Text, 999);
  _TSCallEJBY := strTofloatDef(lbeCallEJBY.Text, 999);

  nQtn1 :=  strTointDef(stgTSCallList.Cells[2,0],0);    // ��
  nQtn2 :=  strTointDef(stgTSCallList.Cells[3,0],0);    // 1ȸ

  if (ABS(nQtn1) -3) / ABS(nQtn2) > 100 then begin
    showmessage('�� ù��° ������ ���� ���ÿ��� 1ȸ ������ �ʹ� �۽��ϴ�.');
    exit;
  end;

  nQtn1 :=  strTointDef(stgTSCallList.Cells[2,1],0);    // ��
  nQtn2 :=  strTointDef(stgTSCallList.Cells[3,1],0);    // 1ȸ

  if (ABS(nQtn1) -3) / ABS(nQtn2) > 100 then begin
    showmessage('�� �ι�° ������ ���� ���ÿ��� 1ȸ ������ �ʹ� �۽��ϴ�.');
    exit;
  end;


  nQtn1 :=  strTointDef(stgTSCallList.Cells[2,0],0);
  nQtn2 :=  strTointDef(stgTSCallList.Cells[2,1],0);

  if (nQtn1 < 0) and (nQtn2 > 0) then begin
    for i := 0 to 4 do begin
      _TSCallNewList[i,0] := stgTSCallList.Cells[i,0];
      _TSCallNewList[i,1] := stgTSCallList.Cells[i,1];
    end;

    if (stgTSCallList.Cells[0,0] <> '') then begin
      strT := stgTSCallList.Cells[0,0];
      if (copy(strT,8,1) = '2') or (copy(strT,8,1) = '7') then  strT := copy(strT,6,3) + '.5'
      else strT := copy(strT,6,3);
      nRow := Round((_MaxHSG - strTofloatDef(strT,0)) / 2.5);
      _TSCallNewList[5,0] := intTostr(nRow);
      stgTSCallList.Cells[5,0] := _TSCallNewList[5,0];
    end;

    if (stgTSCallList.Cells[0,1] <> '') then begin
      strT := stgTSCallList.Cells[0,1];
      if (copy(strT,8,1) = '2') or (copy(strT,8,1) = '7') then  strT := copy(strT,6,3) + '.5'
      else strT := copy(strT,6,3);
      nRow := Round((_MaxHSG - strTofloatDef(strT,0)) / 2.5);
      _TSCallNewList[5,1] := intTostr(nRow);
      stgTSCallList.Cells[5,1] := _TSCallNewList[5,1];
    end;

  end else if (nQtn1 > 0) and (nQtn2 < 0) then begin
    for i := 0 to 4 do begin
      _TSCallNewList[i,1] := stgTSCallList.Cells[i,0];
      _TSCallNewList[i,0] := stgTSCallList.Cells[i,1];
      stgTSCallList.Cells[i,0] := _TSCallNewList[i,0];
      stgTSCallList.Cells[i,1] := _TSCallNewList[i,1];
    end;


    if (stgTSCallList.Cells[0,0] <> '') then begin
      strT := stgTSCallList.Cells[0,0];
      if (copy(strT,8,1) = '2') or (copy(strT,8,1) = '7') then  strT := copy(strT,6,3) + '.5'
      else strT := copy(strT,6,3);
      nRow := Round((_MaxHSG - strTofloatDef(strT,0)) / 2.5);
      _TSCallNewList[5,0] := intTostr(nRow);
      stgTSCallList.Cells[5,0] := _TSCallNewList[5,0];
    end;

    if (stgTSCallList.Cells[0,1] <> '') then begin
      strT := stgTSCallList.Cells[0,1];
      if (copy(strT,8,1) = '2') or (copy(strT,8,1) = '7') then  strT := copy(strT,6,3) + '.5'
      else strT := copy(strT,6,3);
      nRow := Round((_MaxHSG - strTofloatDef(strT,0)) / 2.5);
      _TSCallNewList[5,1] := intTostr(nRow);
      stgTSCallList.Cells[5,1] := _TSCallNewList[5,1];
    end;

  end else showmessage('Ÿ�ӽ������� ���� ������ �߸��Ǿ����ϴ�.:�ŵ�, �ż� ����' );
end;

procedure TfTimeSpread.VisibleChanging;
begin
 // inherited;
end;

procedure TfTimeSpread.btnPutJinIpClick(Sender: TObject);
var nString : string;
    i : integer;
begin
  nString :=  formatdatetime('hhmmsszzz',now) + ' ǲ Ÿ�ӽ������� ���� ����';
  imgTSPutJinIp.Picture.LoadFromFile(ExtractFilePath(paramstr(0)) + 'On.bmp');
  _TSMessage[_TSMessageStep] := nString;
  _TSMessage_flg[_TSMessageStep] := True;
  _TSMessageStep := _TSMessageStep + 1;
  if _TSMessageStep > 19 then _TSMessageStep := 0;
// �ű� ����
  TSPutNewInsert; //  �ű� ���� ���� �ֱ�
  _PutJMNo1 := 0;
  _PutJMNo2 := 0;
  for I := 0 to 102 do begin
    _TimePutInfo1[i].JMKey := 0;
    _TimePutInfo1[i].OrderNo := 0;
    _TimePutInfo1[i].JMCode := '';
    _TimePutInfo1[i].MMGB := 0;
    _TimePutInfo1[i].JMPrice := 0;
    _TimePutInfo1[i].JMQtn := 0;
    _TimePutInfo1[i].CGPrice := 0;
    _TimePutInfo1[i].CGQtn := 0;
    _TimePutInfo1[i].MCGQtn := 0;
    _TimePutInfo1[i].WJMNo := 0;
    _TimePutInfo1[i].UH := '';

    _TimePutInfo2[i].JMKey := 0;
    _TimePutInfo2[i].OrderNo := 0;
    _TimePutInfo2[i].JMCode := '';
    _TimePutInfo2[i].MMGB := 0;
    _TimePutInfo2[i].JMPrice := 0;
    _TimePutInfo2[i].JMQtn := 0;
    _TimePutInfo2[i].CGPrice := 0;
    _TimePutInfo2[i].CGQtn := 0;
    _TimePutInfo2[i].MCGQtn := 0;
    _TimePutInfo2[i].WJMNo := 0;
    _TimePutInfo2[i].UH := '';
  end;

  tmrTSPutPrice.Enabled := True;
  _TSPutJinIp_flg := False;
  _TSPutCSStart_flg := False;//������ ������ ��
  _TSPutStop_flg := False;
  _PutOrderDelay1_CNT := 0;
  _PutOrderDelay2_CNT := 0;
  _TSPFPTQtn1 := 0;
  _TSPFPTQtn2 := 0;
  _TSPutOrderedQtn1 := 0; // �� �ֹ��� ���� - ù��°
  _TSPutOrderedQtn2 := 0; //                  �ι�°

  _TSPutFindPrice_flg1 := False; // ����ã�Ⱑ �������� Ȯ��.
  _TSPutFindPrice_flg2 := False;
  _FirstPutOrder_flg1 := True; // ó�� ����
  _FirstPutOrder_flg2 := True;
  tmrPutFind.Enabled := True;

  _PutOrderDelay1_CNT := 0;
  _PutOrderDelay2_CNT := 0;
  _TSPutOrderedQtn1 := 0; // �� �ֹ��� ���� - ù��°
  _TSPutOrderedQtn2 := 0; //
  _FirstMainPutOrder_flg1 := True; // ó�� ����
  _FirstMainPutOrder_flg2 := True;   //           �ι�°
  tmrPutOrder.Enabled := True;
end;

procedure TfTimeSpread.btPutCSClick(Sender: TObject);
var nString : string;
    i : integer;
begin
  nString :=  formatdatetime('hhmmsszzz',now) + ' ǲ Ÿ�ӽ������� �ڵ�û�� ����';
  imgTSPutCS.Picture.LoadFromFile(ExtractFilePath(paramstr(0)) + 'On.bmp');
  _TSMessage[_TSMessageStep] := nString;
  _TSMessage_flg[_TSMessageStep] := True;
  _TSMessageStep := _TSMessageStep + 1;
  if _TSMessageStep > 19 then _TSMessageStep := 0;

  TSPutNewInsert; // �� �ű� ���� ���� �ֱ�
  _PutJMNo1 := 0;
  _PutJMNo2 := 0;
  for I := 0 to 102 do begin
    _TimePutInfo1[i].JMKey := 0;
    _TimePutInfo1[i].OrderNo := 0;
    _TimePutInfo1[i].JMCode := '';
    _TimePutInfo1[i].MMGB := 0;
    _TimePutInfo1[i].JMPrice := 0;
    _TimePutInfo1[i].JMQtn := 0;
    _TimePutInfo1[i].CGPrice := 0;
    _TimePutInfo1[i].CGQtn := 0;
    _TimePutInfo1[i].MCGQtn := 0;
    _TimePutInfo1[i].WJMNo := 0;
    _TimePutInfo1[i].UH := '';

    _TimePutInfo2[i].JMKey := 0;
    _TimePutInfo2[i].OrderNo := 0;
    _TimePutInfo2[i].JMCode := '';
    _TimePutInfo2[i].MMGB := 0;
    _TimePutInfo2[i].JMPrice := 0;
    _TimePutInfo2[i].JMQtn := 0;
    _TimePutInfo2[i].CGPrice := 0;
    _TimePutInfo2[i].CGQtn := 0;
    _TimePutInfo2[i].MCGQtn := 0;
    _TimePutInfo2[i].WJMNo := 0;
    _TimePutInfo2[i].UH := '';
  end;

  tmrTSPutPrice.Enabled := True;
  _TSPutJinIp_flg := False;
  _TSPutCSStart_flg := True;
  _TSPutStop_flg := False;
  _PutOrderDelay1_CNT := 0;
  _PutOrderDelay2_CNT := 0;
  _TSPFPTQtn1 := 0;
  _TSPFPTQtn2 := 0;
  _TSPutOrderedQtn1 := 0; // �� �ֹ��� ���� - ù��°
  _TSPutOrderedQtn2 := 0; //                  �ι�°

  _TSPutFindPrice_flg1 := False; // ����ã�Ⱑ �������� Ȯ��.
  _TSPutFindPrice_flg2 := False;
  _FirstPutOrder_flg1 := True; // ó�� ����
  _FirstPutOrder_flg2 := True;
  tmrPutFind.Enabled := True;

  _PutOrderDelay1_CNT := 0;
  _PutOrderDelay2_CNT := 0;
  _TSPutOrderedQtn1 := 0; // �� �ֹ��� ���� - ù��°
  _TSPutOrderedQtn2 := 0; //
  _FirstMainPutOrder_flg1 := True; // ó�� ����
  _FirstMainPutOrder_flg2 := True;   //           �ι�°
  tmrPutOrder.Enabled := True;
end;

procedure TfTimeSpread.Button10Click(Sender: TObject);
var nString : string;
begin
  _PutMCGCancleOrder; // ��ü�� ��� �ֹ�
  nString :=  formatdatetime('hhmmsszzz',now) + ' ǲ - Ÿ�ӽ������� �ڵ��ֹ� ����';
  _TSMessage[_TSMessageStep] := nString;
  _TSMessage_flg[_TSMessageStep] := True;
  _TSMessageStep := _TSMessageStep + 1;
  if _TSMessageStep > 19 then _TSMessageStep := 0;
  _TSPutStop_flg := True;

  imgTSPutJinIp.Picture.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Off.bmp');
  imgTSPutCS.Picture.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Off.bmp');
end;

procedure TfTimeSpread.Button15Click(Sender: TObject);
var nString : string;
begin
  _CallMCGCancleOrder; // ��ü�� ��� �ֹ�
  nString :=  formatdatetime('hhmmsszzz',now) + ' �� - Ÿ�ӽ������� �ڵ��ֹ� ����';
  _TSMessage[_TSMessageStep] := nString;
  _TSMessage_flg[_TSMessageStep] := True;
  _TSMessageStep := _TSMessageStep + 1;
  if _TSMessageStep > 19 then _TSMessageStep := 0;
  _TSCallStop_flg := True;

  imgTSCallJinIp.Picture.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Off.bmp');
  imgTSCallCS.Picture.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Off.bmp');
end;

procedure TfTimeSpread._PutMCGCancleOrder;
var nString : string;
    i, nOrNo, nOrNo2 : integer;
    nClientKey, nOrgNo, nMCGQtn, nPrice, nPriceType, nGubun : integer;
begin
  for I := 0 to 102 do begin    // ���� �ֹ�����Ʈ���� 30������ �ֹ������� Ȯ��.... �ٸ� ���α׷��� �ֹ��� �� �� �����Ƿ�..
    if (_TimePutInfo1[I].OrderNo <> 0) and (_TimePutInfo1[i].MCGQtn > 0) then begin
      nOrgNo := _TimePutInfo1[I].OrderNo;
      nMCGQtn := _TimePutInfo1[I].MCGQtn;
      nPrice := round(_TimePutInfo1[I].JMPrice * 100);
      nPriceType := 0; // ������
      nClientKey :=  99999999;

      nGubun := 4;
      //21 ���� if fHBOMain.DongbuAPI1.SendFOrder(nClientKey,Acnt,AcntPwd,nGubun,_TimePutInfo1[I].JMCode,nPriceType,nMCGQtn,nPrice,nOrgNo) = false then
//      begin
//        nString :=  formatdatetime('hhmmsszzz',now) + '- ǲ ��� �ֹ� ����';
//        _TSMessage[_TSMessageStep] := nString;
//        _TSMessage_flg[_TSMessageStep] := True;
//        _TSMessageStep := _TSMessageStep + 1;
//        if _TSMessageStep > 19 then _TSMessageStep := 0;
//        exit;
//      end else begin
//        _TimePutInfo1[I].JMKey := nClientKey;
//        _TimePutInfo1[I].MCGQtn := 0;  // ��ü�� ������ 0���� ��.
//        nString :=  formatdatetime('hhmmsszzz',now) + ' [' + _TimePutInfo1[I].JMCode + '] ǲ ��� �ֹ�';
//        _TSMessage[_TSMessageStep] := nString;
//        _TSMessage_flg[_TSMessageStep] := True;
//        _TSMessageStep := _TSMessageStep + 1;
//        if _TSMessageStep > 19 then _TSMessageStep := 0;
//        delay(300);
//      end;
    end;

    if (_TimePutInfo2[I].OrderNo <> 0) and (_TimePutInfo2[i].MCGQtn > 0) then begin
      nOrgNo := _TimePutInfo2[I].OrderNo;
      nMCGQtn := _TimePutInfo2[I].MCGQtn;
      nPrice := round(_TimePutInfo2[I].JMPrice * 100);
      nPriceType := 0; // ������
      nClientKey :=  99999999;
      nGubun := 4;
//21 ����       if fHBOMain.DongbuAPI1.SendFOrder(nClientKey,Acnt,AcntPwd,nGubun,_TimePutInfo2[I].JMCode,nPriceType,nMCGQtn,nPrice,nOrgNo) = false then
//      begin
//        nString :=  formatdatetime('hhmmsszzz',now) + '- ǲ ��� �ֹ� ����';
//        _TSMessage[_TSMessageStep] := nString;
//        _TSMessage_flg[_TSMessageStep] := True;
//        _TSMessageStep := _TSMessageStep + 1;
//        if _TSMessageStep > 19 then _TSMessageStep := 0;
//        exit;
//      end else begin
//        _TimePutInfo2[I].JMKey := nClientKey;
//        _TimePutInfo2[I].MCGQtn := 0;  // ��ü�� ������ 0���� ��.
//        nString :=  formatdatetime('hhmmsszzz',now) + ' [' + _TimePutInfo2[I].JMCode + '] ǲ ��� �ֹ�';
//        _TSMessage[_TSMessageStep] := nString;
//        _TSMessage_flg[_TSMessageStep] := True;
//        _TSMessageStep := _TSMessageStep + 1;
//        if _TSMessageStep > 19 then _TSMessageStep := 0;
//        delay(300);
//      end;
    end;
  end;

  nString :=  formatdatetime('hhmmsszzz',now) + ' ǲ- Ÿ�ӽ������� ��ü�� ��� �ֹ�';
  _TSMessage[_TSMessageStep] := nString;
  _TSMessage_flg[_TSMessageStep] := True;
  _TSMessageStep := _TSMessageStep + 1;
  if _TSMessageStep > 19 then _TSMessageStep := 0;
end;

procedure TfTimeSpread._CallMCGCancleOrder;
var nString : string;
    i, nOrNo, nOrNo2 : integer;
    nClientKey, nOrgNo, nMCGQtn, nPrice, nPriceType, nGubun : integer;
begin
  for I := 0 to 102 do begin    // ���� �ֹ�����Ʈ���� 30������ �ֹ������� Ȯ��.... �ٸ� ���α׷��� �ֹ��� �� �� �����Ƿ�..
    if (_TimeCallInfo1[I].OrderNo <> 0) and (_TimeCallInfo1[i].MCGQtn > 0) then begin
      nOrgNo := _TimeCallInfo1[I].OrderNo;
      nMCGQtn := _TimeCallInfo1[I].MCGQtn;
      nPrice := round(_TimeCallInfo1[I].JMPrice * 100);
      nPriceType := 0; // ������
      nClientKey :=  99999999;

      nGubun := 4;
//21 ����       if fHBOMain.DongbuAPI1.SendFOrder(nClientKey,Acnt,AcntPwd,nGubun,_TimeCallInfo1[I].JMCode,nPriceType,nMCGQtn,nPrice,nOrgNo) = false then
//      begin
//        nString :=  formatdatetime('hhmmsszzz',now) + '- �� ��� �ֹ� ����';
//        _TSMessage[_TSMessageStep] := nString;
//        _TSMessage_flg[_TSMessageStep] := True;
//        _TSMessageStep := _TSMessageStep + 1;
//        if _TSMessageStep > 19 then _TSMessageStep := 0;
//        exit;
//      end else begin
//        _TimeCallInfo1[I].JMKey := nClientKey;
//        _TimeCallInfo1[I].MCGQtn := 0;  // ��ü�� ������ 0���� ��.
//        nString :=  formatdatetime('hhmmsszzz',now) + ' [' + _TimeCallInfo1[I].JMCode + '] �� ��� �ֹ�';
//        _TSMessage[_TSMessageStep] := nString;
//        _TSMessage_flg[_TSMessageStep] := True;
//        _TSMessageStep := _TSMessageStep + 1;
//        if _TSMessageStep > 19 then _TSMessageStep := 0;
//        delay(300);
//      end;
    end;

    if (_TimeCallInfo2[I].OrderNo <> 0) and (_TimeCallInfo2[i].MCGQtn > 0) then begin
      nOrgNo := _TimeCallInfo2[I].OrderNo;
      nMCGQtn := _TimeCallInfo2[I].MCGQtn;
      nPrice := round(_TimeCallInfo2[I].JMPrice * 100);
      nPriceType := 0; // ������
      nClientKey :=  99999999;
      nGubun := 4;
//21 ����       if fHBOMain.DongbuAPI1.SendFOrder(nClientKey,Acnt,AcntPwd,nGubun,_TimeCallInfo2[I].JMCode,nPriceType,nMCGQtn,nPrice,nOrgNo) = false then
//      begin
//        nString :=  formatdatetime('hhmmsszzz',now) + '- �� ��� �ֹ� ����';
//        _TSMessage[_TSMessageStep] := nString;
//        _TSMessage_flg[_TSMessageStep] := True;
//        _TSMessageStep := _TSMessageStep + 1;
//        if _TSMessageStep > 19 then _TSMessageStep := 0;
//        exit;
//      end else begin
//        _TimeCallInfo1[I].JMKey := nClientKey;
//        _TimeCallInfo2[I].MCGQtn := 0;  // ��ü�� ������ 0���� ��.
//        nString :=  formatdatetime('hhmmsszzz',now) + ' [' + _TimeCallInfo2[I].JMCode + '] �� ��� �ֹ�';
//        _TSMessage[_TSMessageStep] := nString;
//        _TSMessage_flg[_TSMessageStep] := True;
//        _TSMessageStep := _TSMessageStep + 1;
//        if _TSMessageStep > 19 then _TSMessageStep := 0;
//        delay(300);
//      end;
    end;
  end;

  nString :=  formatdatetime('hhmmsszzz',now) + ' ��-Ÿ�ӽ������� ��ü�� ��� �ֹ�';
  _TSMessage[_TSMessageStep] := nString;
  _TSMessage_flg[_TSMessageStep] := True;
  _TSMessageStep := _TSMessageStep + 1;
  if _TSMessageStep > 19 then _TSMessageStep := 0;
end;

procedure TfTimeSpread._MCGCancleOrder;
var nString : string;
    i, nOrNo, nOrNo2 : integer;
    nClientKey, nOrgNo, nMCGQtn, nPrice, nPriceType, nGubun : integer;
begin
//  if _TSOrderIndexCall1 < _TSOrderIndexCall2  then  begin
//    nOrNo := _TSOrderIndexCall1 - 2 ;
//    nOrNo2 := _TSOrderIndexCall2 +5 ;
//  end else begin
//    nOrNo := _TSOrderIndexCall2 - 2;
//    nOrNo2 := _TSOrderIndexCall1 + 5 ;
//  end;
//
//  if nOrNo < 0 then nOrNo := 0;
//  for I := nOrNo to nOrNo2 do begin    // ���� �ֹ�����Ʈ���� 30������ �ֹ������� Ȯ��.... �ٸ� ���α׷��� �ֹ��� �� �� �����Ƿ�..
//    if (copy(intTostr(AllCGInfo[I].JMKey),1,2) = '77') and (AllCGInfo[I].OrderNo <> 0) and (AllCGInfo[i].MCGQtn > 0) then begin
//      nOrgNo := AllCGInfo[I].OrderNo;
//      nMCGQtn := AllCGInfo[I].MCGQtn;
//      nPrice := round(AllCGInfo[I].JMPrice * 100);
//      nPriceType := 0; // ������
//      nClientKey :=  99999999;
//      nGubun := 4;
//      if fHBOMain.DongbuAPI1.SendFOrder(nClientKey,Acnt,AcntPwd,nGubun,AllCGInfo[I].JMCode,nPriceType,nMCGQtn,nPrice,nOrgNo) = false then
//      begin
//        nString :=  formatdatetime('hhmmsszzz',now) + '- �� ����ã�� ��� �ֹ� ����';
//        _TSMessage[_TSMessageStep] := nString;
//        _TSMessage_flg[_TSMessageStep] := True;
//        _TSMessageStep := _TSMessageStep + 1;
//        if _TSMessageStep > 19 then _TSMessageStep := 0;
//        exit;
//      end else begin
//        AllCGInfo[I].MCGQtn := 0;  // ��ü�� ������ 0���� ��.
//        nString :=  formatdatetime('hhmmsszzz',now) + ' [' + AllCGInfo[I].JMCode + '] �ݰ���ã�� ��� �ֹ�';
//        _TSMessage[_TSMessageStep] := nString;
//        _TSMessage_flg[_TSMessageStep] := True;
//        _TSMessageStep := _TSMessageStep + 1;
//        if _TSMessageStep > 19 then _TSMessageStep := 0;
//        delay(300);
//      end;
//    end;
//  end;
//
//  if _TSOrderIndexPut1 < _TSOrderIndexPut2  then  begin
//    nOrNo := _TSOrderIndexPut1 - 2 ;
//    nOrNo2 := _TSOrderIndexPut2 +5 ;
//  end else begin
//    nOrNo := _TSOrderIndexPut2 - 2;
//    nOrNo2 := _TSOrderIndexPut1 +5 ;
//  end;
//
//  if nOrNo < 0 then nOrNo := 0;
//  for I := nOrNo to nOrNo2 do begin    // ���� �ֹ�����Ʈ���� 30������ �ֹ������� Ȯ��.... �ٸ� ���α׷��� �ֹ��� �� �� �����Ƿ�..
//    if (copy(intTostr(AllCGInfo[I].JMKey),1,2) = '77') and (AllCGInfo[I].OrderNo <> 0) and (AllCGInfo[i].MCGQtn > 0) then begin
//      nOrgNo := AllCGInfo[I].OrderNo;
//      nMCGQtn := AllCGInfo[I].MCGQtn;
//      nPrice := round(AllCGInfo[I].JMPrice * 100);
//      nPriceType := 0; // ������
//      nClientKey :=  99999999;
//      nGubun := 4;
//      if fHBOMain.DongbuAPI1.SendFOrder(nClientKey,Acnt,AcntPwd,nGubun,AllCGInfo[I].JMCode,nPriceType,nMCGQtn,nPrice,nOrgNo) = false then
//      begin
//        nString :=  formatdatetime('hhmmsszzz',now) + '- ǲ ���� ã�� ��� �ֹ� ����';
//        _TSMessage[_TSMessageStep] := nString;
//        _TSMessage_flg[_TSMessageStep] := True;
//        _TSMessageStep := _TSMessageStep + 1;
//        if _TSMessageStep > 19 then _TSMessageStep := 0;
//        exit;
//      end else begin
//        AllCGInfo[I].MCGQtn := 0;  // ��ü�� ������ 0���� ��.
//        nString :=  formatdatetime('hhmmsszzz',now) + ' [' + AllCGInfo[I].JMCode + '] ǲ ����ã�� ��� �ֹ�';
//        _TSMessage[_TSMessageStep] := nString;
//        _TSMessage_flg[_TSMessageStep] := True;
//        _TSMessageStep := _TSMessageStep + 1;
//        if _TSMessageStep > 19 then _TSMessageStep := 0;
//        delay(200);
//      end;
//    end;
//  end;
//
//  if _TSOrderIndexMainCall1 < _TSOrderIndexMainCall2  then  begin
//    nOrNo := _TSOrderIndexMainCall1 - 2 ;
//    nOrNo2 := _TSOrderIndexMainCall2 +5 ;
//  end else begin
//    nOrNo := _TSOrderIndexMainCall2 - 2;
//    nOrNo2 := _TSOrderIndexMainCall1 +5 ;
//  end;
//
//  if nOrNo < 0 then nOrNo := 0;
//  for I := nOrNo to nOrNo2 do begin    // ���� �ֹ�����Ʈ���� 30������ �ֹ������� Ȯ��.... �ٸ� ���α׷��� �ֹ��� �� �� �����Ƿ�..
//    if (copy(intTostr(AllCGInfo[I].JMKey),1,2) = '77') and (AllCGInfo[I].OrderNo <> 0) and (AllCGInfo[i].MCGQtn > 0) then begin
//      nOrgNo := AllCGInfo[I].OrderNo;
//      nMCGQtn := AllCGInfo[I].MCGQtn;
//      nPrice := round(AllCGInfo[I].JMPrice * 100);
//      nPriceType := 0; // ������
//      nClientKey :=  99999999;
//      nGubun := 4;
//      if fHBOMain.DongbuAPI1.SendFOrder(nClientKey,Acnt,AcntPwd,nGubun,AllCGInfo[I].JMCode,nPriceType,nMCGQtn,nPrice,nOrgNo) = false then
//      begin
//        nString :=  formatdatetime('hhmmsszzz',now) + '- �� ���� ��� �ֹ� ����';
//        _TSMessage[_TSMessageStep] := nString;
//        _TSMessage_flg[_TSMessageStep] := True;
//        _TSMessageStep := _TSMessageStep + 1;
//        if _TSMessageStep > 19 then _TSMessageStep := 0;
//        exit;
//      end else begin
//        AllCGInfo[I].MCGQtn := 0;  // ��ü�� ������ 0���� ��.
//        nString :=  formatdatetime('hhmmsszzz',now) + ' [' + AllCGInfo[I].JMCode + '] �� ���� ��� �ֹ�';
//        _TSMessage[_TSMessageStep] := nString;
//        _TSMessage_flg[_TSMessageStep] := True;
//        _TSMessageStep := _TSMessageStep + 1;
//        if _TSMessageStep > 19 then _TSMessageStep := 0;
//        delay(200);
//      end;
//    end;
//  end;
//
//  if _TSOrderIndexMainPut1 < _TSOrderIndexMainPut2  then  begin
//    nOrNo := _TSOrderIndexMainPut1 - 2 ;
//    nOrNo2 := _TSOrderIndexMainPut2 +5 ;
//  end else begin
//    nOrNo := _TSOrderIndexMainPut2 - 2;
//    nOrNo2 := _TSOrderIndexMainPut1 +5 ;
//  end;
//
//  if nOrNo < 0 then nOrNo := 0;
//  for I := nOrNo to nOrNo2 do begin    // ���� �ֹ�����Ʈ���� 30������ �ֹ������� Ȯ��.... �ٸ� ���α׷��� �ֹ��� �� �� �����Ƿ�..
//    if (copy(intTostr(AllCGInfo[I].JMKey),1,2) = '77') and (AllCGInfo[I].OrderNo <> 0) and (AllCGInfo[i].MCGQtn > 0) then begin
//      nOrgNo := AllCGInfo[I].OrderNo;
//      nMCGQtn := AllCGInfo[I].MCGQtn;
//      nPrice := round(AllCGInfo[I].JMPrice * 100);
//      nPriceType := 0; // ������
//      nClientKey :=  99999999;
//      nGubun := 4;
//      if fHBOMain.DongbuAPI1.SendFOrder(nClientKey,Acnt,AcntPwd,nGubun,AllCGInfo[I].JMCode,nPriceType,nMCGQtn,nPrice,nOrgNo) = false then
//      begin
//        nString :=  formatdatetime('hhmmsszzz',now) + '- �� ���� ��� �ֹ� ����';
//        _TSMessage[_TSMessageStep] := nString;
//        _TSMessage_flg[_TSMessageStep] := True;
//        _TSMessageStep := _TSMessageStep + 1;
//        if _TSMessageStep > 19 then _TSMessageStep := 0;
//        exit;
//      end else begin
//        AllCGInfo[I].MCGQtn := 0;  // ��ü�� ������ 0���� ��.
//        nString :=  formatdatetime('hhmmsszzz',now) + ' [' + AllCGInfo[I].JMCode + '] ǲ ���� ��� �ֹ�';
//        _TSMessage[_TSMessageStep] := nString;
//        _TSMessage_flg[_TSMessageStep] := True;
//        _TSMessageStep := _TSMessageStep + 1;
//        if _TSMessageStep > 19 then _TSMessageStep := 0;
//        delay(200);
//      end;
//    end;
//  end;
//
//
//  nString :=  formatdatetime('hhmmsszzz',now) + ' Ÿ�ӽ������� ��ü�� ��� �ֹ�';
//  _TSMessage[_TSMessageStep] := nString;
//  _TSMessage_flg[_TSMessageStep] := True;
//  _TSMessageStep := _TSMessageStep + 1;
//  if _TSMessageStep > 19 then _TSMessageStep := 0;
end;

procedure TfTimeSpread.Button1Click(Sender: TObject);
begin
//  if tmrTSCallPrice.Enabled then begin
//    Button1.Caption := '��Ʈ����';
//    tmrTSCallPrice.Enabled := False;
//    tmrTSPutPrice.Enabled := False;
//  end else begin
//    Button1.Caption := '��Ʈ����';
//    tmrTSCallPrice.Enabled := True;
//    tmrTSPutPrice.Enabled := True;
//  end;
end;

procedure TfTimeSpread.Button2Click(Sender: TObject);
begin
  if copy(stgTSCallList.Cells[2,0],1,1) = '-' then begin
    stgTSCallList.Cells[2,0] := '-' + edtTSCallTotalQtn.Text;// �Ѽ���
    stgTSCallList.Cells[3,0] := '-' + edtTSCallUnit.Text;// 1ȸ ����
  end else begin
    stgTSCallList.Cells[2,0] := edtTSCallTotalQtn.Text;// �Ѽ���
    stgTSCallList.Cells[3,0] := edtTSCallUnit.Text;// 1ȸ ����
  end;

  if copy(stgTSCallList.Cells[2,1],1,1) = '-' then begin
    stgTSCallList.Cells[2,1] := '-' + edtTSCallTotalQtn.Text;// �Ѽ���
    stgTSCallList.Cells[3,1] := '-' + edtTSCallUnit.Text;// 1ȸ ����
  end else begin
    stgTSCallList.Cells[2,1] := edtTSCallTotalQtn.Text;// �Ѽ���
    stgTSCallList.Cells[3,1] := edtTSCallUnit.Text;// 1ȸ ����
  end;
  TSCallNewInsert;
end;

procedure TfTimeSpread.btnCallJinIpClick(Sender: TObject);
var nString : string;
    i : integer;
begin
  nString :=  formatdatetime('hhmmsszzz',now) + ' �� Ÿ�ӽ������� ���� ����';
  imgTSCallJinIp.Picture.LoadFromFile(ExtractFilePath(paramstr(0)) + 'On.bmp');
  _TSMessage[_TSMessageStep] := nString;
  _TSMessage_flg[_TSMessageStep] := True;
  _TSMessageStep := _TSMessageStep + 1;
  if _TSMessageStep > 19 then _TSMessageStep := 0;
// �ű� ����
  TSCallNewInsert; // �� �ű� ���� ���� �ֱ�
  _CallJMNo1 := 0;
  _CallJMNo2 := 0;
  for I := 0 to 102 do begin
    _TimeCallInfo1[i].JMKey := 0;
    _TimeCallInfo1[i].OrderNo := 0;
    _TimeCallInfo1[i].JMCode := '';
    _TimeCallInfo1[i].MMGB := 0;
    _TimeCallInfo1[i].JMPrice := 0;
    _TimeCallInfo1[i].JMQtn := 0;
    _TimeCallInfo1[i].CGPrice := 0;
    _TimeCallInfo1[i].CGQtn := 0;
    _TimeCallInfo1[i].MCGQtn := 0;
    _TimeCallInfo1[i].WJMNo := 0;
    _TimeCallInfo1[i].UH := '';

    _TimeCallInfo2[i].JMKey := 0;
    _TimeCallInfo2[i].OrderNo := 0;
    _TimeCallInfo2[i].JMCode := '';
    _TimeCallInfo2[i].MMGB := 0;
    _TimeCallInfo2[i].JMPrice := 0;
    _TimeCallInfo2[i].JMQtn := 0;
    _TimeCallInfo2[i].CGPrice := 0;
    _TimeCallInfo2[i].CGQtn := 0;
    _TimeCallInfo2[i].MCGQtn := 0;
    _TimeCallInfo2[i].WJMNo := 0;
    _TimeCallInfo2[i].UH := '';
  end;

  tmrTSCallPrice.Enabled := True;
  _TSCallJinIp_flg := False;
  _TSCallCSStart_flg := False; //������ ������ ��
  _TSCallStop_flg := False;
  _CallOrderDelay1_CNT := 0;
  _CallOrderDelay2_CNT := 0;
  _TSCFPTQtn1 := 0;
  _TSCFPTQtn2 := 0;
  _TSCallOrderedQtn1 := 0; // �� �ֹ��� ���� - ù��°
  _TSCallOrderedQtn2 := 0; //                  �ι�°

  _TSCallFindPrice_flg1 := False; // ����ã�Ⱑ �������� Ȯ��.
  _TSCallFindPrice_flg2 := False;
  _FirstCallOrder_flg1 := True; // ó�� ����
  _FirstCallOrder_flg2 := True;
  tmrCallFind.Enabled := True;

  _CallOrderDelay1_CNT := 0;
  _CallOrderDelay2_CNT := 0;
  _CallUnitOrderedQtn1 := 0;
  _CallUnitOrderedQtn2 := 0;
  _TSCallOrderedQtn1 := 0; // �� �ֹ��� ���� - ù��°
  _TSCallOrderedQtn2 := 0; //
  _FirstMainCallOrder_flg1 := True; // ó�� ����
  _FirstMainCallOrder_flg2 := True;   //           �ι�°
  tmrCallOrder.Enabled := True;
end;

procedure TfTimeSpread.Button3Click(Sender: TObject);
begin
  ChangeMonthCall(1,1);
  TSCallNewInsert;
end;

procedure TfTimeSpread.Button4Click(Sender: TObject);
begin
  ChangeMonthCall(1,-1);
  TSCallNewInsert;
end;

procedure TfTimeSpread.Button52Click(Sender: TObject);
var nString : string;
begin
  if MessageDlg('�����Ҳ���????',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    nString := ExtractFilePath(paramstr(0)) + 'AutoMeaMeaMemo\�ڵ�����-' + FormatDateTime('yymmdd hhmmss' , Now) + '.txt';
    mmoLog.Lines.SaveToFile(nString);
  end;
end;

procedure TfTimeSpread.Button55Click(Sender: TObject);
begin
  mmoLog.Clear;
end;

procedure TfTimeSpread.ChangeMonthPut(stgRow, nUpDown : integer);
var nString : string;
    nRow : integer;
begin
  tmrTSCallPrice.Enabled := False;
  nString := stgTSPutList.Cells[0,stgRow];
  nRow := strTointDef(stgTSPutList.Cells[5,stgRow],0);
  if nUpDown = 1 then begin // �� ����
    if copy(nString,4,2) = _DCode then begin
      stgTSPutList.Cells[0,stgRow] := '301' +_CWCode + copy(nString,6,3); // �ֹ���ȣ �Է�
      stgTSPutList.Cells[1,stgRow] := Formatfloat('#0.00',_CWHSGListInfo[4,nRow]) ;// ���簡
    end else if copy(nString,4,2) = _CWCode then begin
      stgTSPutList.Cells[0,stgRow] := '301' +_CCWCode + copy(nString,6,3); // �ֹ���ȣ �Է�
      stgTSPutList.Cells[1,stgRow] := Formatfloat('#0.00',_CCWHSGListInfo[4,nRow]) ;// ���簡
    end else if copy(nString,4,2) = _CCWCode then begin
      stgTSPutList.Cells[0,stgRow] := '301' +_WWCode + copy(nString,6,3); // �ֹ���ȣ �Է�
      stgTSPutList.Cells[1,stgRow] := Formatfloat('#0.00',_WWHSGListInfo[4,nRow]) ;// ���簡
    end;
  end else if nUpDown = -1 then begin // �� ����
    if copy(nString,4,2) = _WWCode then begin
      stgTSPutList.Cells[0,stgRow] := '301' +_CCWCode + copy(nString,6,3); // �ֹ���ȣ �Է�
      stgTSPutList.Cells[1,stgRow] := Formatfloat('#0.00',_CCWHSGListInfo[4,nRow]) ;// ���簡
    end else if copy(nString,4,2) = _CCWCode then begin
      stgTSPutList.Cells[0,stgRow] := '301' +_CWCode + copy(nString,6,3); // �ֹ���ȣ �Է�
      stgTSPutList.Cells[1,stgRow] := Formatfloat('#0.00',_CWHSGListInfo[4,nRow]) ;// ���簡
    end else if copy(nString,4,2) = _CWCode then begin
      stgTSPutList.Cells[0,stgRow] := '301' +_DCode + copy(nString,6,3); // �ֹ���ȣ �Է�
      stgTSPutList.Cells[1,stgRow] := Formatfloat('#0.00',_DWHSGListInfo[4,nRow]) ;// ���簡
    end;
  end;
  tmrTSCallPrice.Enabled := True;
end;

procedure TfTimeSpread.ChangeMonthCall(stgRow, nUpDown : integer);
var nString : string;
    nRow : integer;
begin
  tmrTSCallPrice.Enabled := False;
  nString := stgTSCallList.Cells[0,stgRow];
  nRow := strTointDef(stgTSCallList.Cells[5,stgRow],0);

  if nUpDown = 1 then begin // �� ����
    if copy(nString,4,2) = _DCode then begin
      stgTSCallList.Cells[0,stgRow] := '201' +_CWCode + copy(nString,6,3); // �ֹ���ȣ �Է�
      stgTSCallList.Cells[1,stgRow] := Formatfloat('#0.00',_CWHSGListInfo[2,nRow]) ;// ���簡
    end else if copy(nString,4,2) = _CWCode then begin
      stgTSCallList.Cells[0,stgRow] := '201' +_CCWCode + copy(nString,6,3); // �ֹ���ȣ �Է�
      stgTSCallList.Cells[1,stgRow] := Formatfloat('#0.00',_CCWHSGListInfo[2,nRow]) ;// ���簡
    end else if copy(nString,4,2) = _CCWCode then begin
      stgTSCallList.Cells[0,stgRow] := '201' +_WWCode + copy(nString,6,3); // �ֹ���ȣ �Է�
      stgTSCallList.Cells[1,stgRow] := Formatfloat('#0.00',_WWHSGListInfo[2,nRow]) ;// ���簡
    end;
  end else if nUpDown = -1 then begin // �� ����
    if copy(nString,4,2) = _WWCode then begin
      stgTSCallList.Cells[0,stgRow] := '201' +_CCWCode + copy(nString,6,3); // �ֹ���ȣ �Է�
      stgTSCallList.Cells[1,stgRow] := Formatfloat('#0.00',_CCWHSGListInfo[2,nRow]) ;// ���簡
    end else if copy(nString,4,2) = _CCWCode then begin
      stgTSCallList.Cells[0,stgRow] := '201' +_CWCode + copy(nString,6,3); // �ֹ���ȣ �Է�
      stgTSCallList.Cells[1,stgRow] := Formatfloat('#0.00',_CWHSGListInfo[2,nRow]) ;// ���簡
    end else if copy(nString,4,2) = _CWCode then begin
      stgTSCallList.Cells[0,stgRow] := '201' +_DCode + copy(nString,6,3); // �ֹ���ȣ �Է�
      stgTSCallList.Cells[1,stgRow] := Formatfloat('#0.00',_DWHSGListInfo[2,nRow]) ;// ���簡
    end;
  end;
  tmrTSCallPrice.Enabled := True;
end;

procedure TfTimeSpread.Button58Click(Sender: TObject);
begin
  ChangeMonthCall(0,-1);
  TSCallNewInsert;
end;

procedure TfTimeSpread.Button59Click(Sender: TObject);
begin
  ChangeMonthCall(0,1);
  TSCallNewInsert;
end;

procedure TfTimeSpread.Button5Click(Sender: TObject);
begin
  ChangeMonthPut(0,1);
  TSPutNewInsert;
end;

procedure TfTimeSpread.Button6Click(Sender: TObject);
begin
  ChangeMonthPut(0,-1);
  TSPutNewInsert;
end;

procedure TfTimeSpread.Button70Click(Sender: TObject);
begin
  mmoLog.clear;
end;

procedure TfTimeSpread.Button72Click(Sender: TObject);
var nString : string;
begin
//  mmoLog.Clear;
  nString := ExtractFilePath(paramstr(0)) + 'Ÿ�ӽ������弳��.txt';
  mmoLog.Lines.LoadFromFile(nString);
end;

procedure TfTimeSpread.Button7Click(Sender: TObject);
begin
  ChangeMonthPut(1,1);
  TSPutNewInsert;
end;

procedure TfTimeSpread.Button8Click(Sender: TObject);
begin
  ChangeMonthPut(1,-1);
  TSPutNewInsert;
end;

procedure TfTimeSpread.Button9Click(Sender: TObject);
begin
  if copy(stgTSPutList.Cells[2,0],1,1) = '-' then begin
    stgTSPutList.Cells[2,0] := '-' + edtTSCallTotalQtn.Text;// �Ѽ���
    stgTSPutList.Cells[3,0] := '-' + edtTSCallUnit.Text;// 1ȸ ����
  end else begin
    stgTSPutList.Cells[2,0] := edtTSCallTotalQtn.Text;// �Ѽ���
    stgTSPutList.Cells[3,0] := edtTSCallUnit.Text;// 1ȸ ����
  end;

  if copy(stgTSPutList.Cells[2,1],1,1) = '-' then begin
    stgTSPutList.Cells[2,1] := '-' + edtTSCallTotalQtn.Text;// �Ѽ���
    stgTSPutList.Cells[3,1] := '-' + edtTSCallUnit.Text;// 1ȸ ����
  end else begin
    stgTSPutList.Cells[2,1] := edtTSCallTotalQtn.Text;// �Ѽ���
    stgTSPutList.Cells[3,1] := edtTSCallUnit.Text;// 1ȸ ����
  end;
  TSPutNewInsert;
end;

procedure TfTimeSpread.btnCallCSClick(Sender: TObject);
var nString : string;
    i : integer;
begin
  _TSCallCGBY1 := 0; // �� ù��° ���� ü�� ���
  _TSCallCGBY2 := 0; // �� ù��° ����  ü�� ���
  nString :=  formatdatetime('hhmmsszzz',now) + ' �� Ÿ�ӽ������� û�� ����';
  imgTSCallCS.Picture.LoadFromFile(ExtractFilePath(paramstr(0)) + 'On.bmp');
  _TSMessage[_TSMessageStep] := nString;
  _TSMessage_flg[_TSMessageStep] := True;
  _TSMessageStep := _TSMessageStep + 1;
  if _TSMessageStep > 19 then _TSMessageStep := 0;

  TSCallNewInsert; // �� �ű� ���� ���� �ֱ�
  _CallJMNo1 := 0;
  _CallJMNo2 := 0;
  for I := 0 to 102 do begin
    _TimeCallInfo1[i].JMKey := 0;
    _TimeCallInfo1[i].OrderNo := 0;
    _TimeCallInfo1[i].JMCode := '';
    _TimeCallInfo1[i].MMGB := 0;
    _TimeCallInfo1[i].JMPrice := 0;
    _TimeCallInfo1[i].JMQtn := 0;
    _TimeCallInfo1[i].CGPrice := 0;
    _TimeCallInfo1[i].CGQtn := 0;
    _TimeCallInfo1[i].MCGQtn := 0;
    _TimeCallInfo1[i].WJMNo := 0;
    _TimeCallInfo1[i].UH := '';

    _TimeCallInfo2[i].JMKey := 0;
    _TimeCallInfo2[i].OrderNo := 0;
    _TimeCallInfo2[i].JMCode := '';
    _TimeCallInfo2[i].MMGB := 0;
    _TimeCallInfo2[i].JMPrice := 0;
    _TimeCallInfo2[i].JMQtn := 0;
    _TimeCallInfo2[i].CGPrice := 0;
    _TimeCallInfo2[i].CGQtn := 0;
    _TimeCallInfo2[i].MCGQtn := 0;
    _TimeCallInfo2[i].WJMNo := 0;
    _TimeCallInfo2[i].UH := '';
  end;

  tmrTSCallPrice.Enabled := True;
  _TSCallJinIp_flg := False;
  _TSCallCSStart_flg := True;
  _TSCallStop_flg := False;
  _CallOrderDelay1_CNT := 0;
  _CallOrderDelay2_CNT := 0;
  _TSCFPTQtn1 := 0;
  _TSCFPTQtn2 := 0;
  _TSCallOrderedQtn1 := 0; // �� �ֹ��� ���� - ù��°
  _TSCallOrderedQtn2 := 0; //                  �ι�°

  _TSCallFindPrice_flg1 := False; // ����ã�Ⱑ �������� Ȯ��.
  _TSCallFindPrice_flg2 := False;
  _FirstCallOrder_flg1 := True; // ó�� ����
  _FirstCallOrder_flg2 := True;
  tmrCallFind.Enabled := True;

  _CallOrderDelay1_CNT := 0;
  _CallOrderDelay2_CNT := 0;
  _CallUnitOrderedQtn1 := 0;
  _CallUnitOrderedQtn2 := 0;
  _TSCallOrderedQtn1 := 0; // �� �ֹ��� ���� - ù��°
  _TSCallOrderedQtn2 := 0; //
  _FirstMainCallOrder_flg1 := True; // ó�� ����
  _FirstMainCallOrder_flg2 := True;   //           �ι�°
  tmrCallOrder.Enabled := True;
end;

procedure TfTimeSpread.edtAutoMMStartChange(Sender: TObject);
begin
  _StartTime := strTointDef(edtAutoMMStart.Text,090500);
end;

procedure TfTimeSpread.edtAutoMMStopChange(Sender: TObject);
begin
  _EndTime := strTointDef(edtAutoMMStop.Text,153000);
end;

procedure TfTimeSpread.SpeedButton1Click(Sender: TObject);
begin
  TimeSpreadCallBasicSetting(_PriceInfoDGPosition, 2, 0, edtTSCallTotalQtn.text,edtTSCallUnit.text);
  TSCallNewInsert;
end;

procedure TfTimeSpread.SpeedButton2Click(Sender: TObject);
begin
  TSCallNewInsert;
end;

procedure TfTimeSpread.SpeedButton3Click(Sender: TObject);
begin
  TimeSpreadPutBasicSetting(_PriceInfoDGPosition, 2,0, edtTSCallTotalQtn.text,edtTSCallUnit.text);
  TSPutNewInsert;
end;

procedure TfTimeSpread.SpeedButton4Click(Sender: TObject);
begin
  TSPutNewInsert;
end;

procedure TfTimeSpread.SpinButton10DownClick(Sender: TObject);
begin
  stgPutUpDownChange(1,-1);
  TSPutNewInsert;
end;

procedure TfTimeSpread.SpinButton10UpClick(Sender: TObject);
begin
  stgPutUpDownChange(1,1);
  TSPutNewInsert;
end;

procedure TfTimeSpread.TSSaveUIValue; // ������ �Ÿ� ȭ���� �������� �����Ѵ�.
var nString : string;
    i,j : integer;
begin
  mmoSaveUIValue.clear;
  nString := '�ŷ�����:' + edtAutoMMStart.Text;
  mmoSaveUIValue.Lines.Add(nString);

  nString := '�ŷ���:' + edtAutoMMStop.Text;
  mmoSaveUIValue.Lines.Add(nString);

  nString := '�ݼ�������:' + ldtTSCallSJJiSu.Text;
  mmoSaveUIValue.Lines.Add(nString);
  nString := '����������:' + ldtTSCallEJJiSu.Text;
  mmoSaveUIValue.Lines.Add(nString);

  nString := 'ǲ��������:' + ldtTSPutSJJiSu.Text;
  mmoSaveUIValue.Lines.Add(nString);
  nString := 'ǲ��������:' + ldtTSPutEJJiSu.Text;
  mmoSaveUIValue.Lines.Add(nString);

  nString := '���������:' + lbeCallEJBY.Text;
  mmoSaveUIValue.Lines.Add(nString);

  nString := 'ǲ�������:' + lbePutEJBY.Text;
  mmoSaveUIValue.Lines.Add(nString);

  nString := '�Ѽ���:' + edtTSCallTotalQtn.Text;
  mmoSaveUIValue.Lines.Add(nString);

  nString := '��������:' + edtTSCallUnit.Text;
  mmoSaveUIValue.Lines.Add(nString);

  // ���⼭���� �� ���� ����
  for I := 0 to 1 do begin
    nString := '������,' + intTostr(i) + ',';
    for j := 0 to 5 do begin
      nString := nString + stgTSCallList.Cells[j,i] + ',';
    end;
    mmoSaveUIValue.Lines.Add(nString);
  end;

  for I := 0 to 1 do begin
    nString := 'ǲ����,' + intTostr(i) + ',';
    for j := 0 to 5 do begin
      nString := nString + stgTSPutList.Cells[j,i] + ',';
    end;
    mmoSaveUIValue.Lines.Add(nString);
  end;

  nString := ExtractFilePath(paramstr(0)) + 'TimeSpread_UIValue.ini'; // ������ �Ÿ�
  mmoSaveUIValue.Lines.SaveToFile(nString);
end;

procedure TfTimeSpread.TSOpenUIValue; // ������ �Ÿ� ȭ���� �������� �ҷ������Ѵ�.
var nString : string;
    i,j : integer;
    nDataList : TStringList;   // �����ڿ� ���� �������� string �迭
begin
  nDataList := TStringList.Create;
  nDataList.Delimiter := ','; // ������
  mmoSaveUIValue.Clear;
  nString := ExtractFilePath(paramstr(0)) + 'TimeSpread_UIValue.ini';
  mmoSaveUIValue.Lines.LoadFromFile(nString);


  for I := 0 to mmoSaveUIValue.Lines.Count -1 do
  begin
    nString := mmoSaveUIValue.Lines.Strings[i];
    if pos('�ݼ�������:',nString) > 0 then ldtTSCallSJJiSu.Text := copy(nString,7,Length(nString) - 6)
    else if pos('����������:',nString) > 0 then ldtTSCallEJJiSu.Text := copy(nString,7,Length(nString) - 6)
    else if pos('ǲ��������:',nString) > 0 then ldtTSPutSJJiSu.Text := copy(nString,7,Length(nString) - 6)
    else if pos('ǲ��������:',nString) > 0 then ldtTSPutEJJiSu.Text := copy(nString,7,Length(nString) - 6)
    else if pos('�ŷ�����:',nString) > 0 then edtAutoMMStart.Text := copy(nString,6,Length(nString) - 5)
    else if pos('�ŷ���:',nString) > 0 then edtAutoMMStop.Text := copy(nString,5,Length(nString) - 4)
    else if pos('���������:',nString) > 0 then lbeCallEJBY.Text := copy(nString,7,Length(nString) - 6)
    else if pos('ǲ�������:',nString) > 0 then lbePutEJBY.Text := copy(nString,7,Length(nString) - 6)
    else if pos('�Ѽ���:',nString) > 0 then edtTSCallTotalQtn.Text := copy(nString,5,Length(nString) - 4)
    else if pos('��������:',nString) > 0 then edtTSCallUnit.Text := copy(nString,6,Length(nString) - 5)
    else if pos('������',nString) > 0 then begin
      nDataList.DelimitedText := nString;
      for j := 2 to 7 do
        stgTSCallList.Cells[j-2,strTointDef(nDataList[1],0)] := nDataList[j];

    end else if pos('ǲ����',nString) > 0 then begin
      nDataList.DelimitedText := nString;
      for j := 2 to 7 do
        stgTSPutList.Cells[j-2,strTointDef(nDataList[1],0)] := nDataList[j];

    end;
  end;
end;

procedure TfTimeSpread.SpinButton13DownClick(Sender: TObject);
begin
  lbeCallEJBY.Text := formatfloat('#0.0#',(strTofloatDef(lbeCallEJBY.Text,0) - 0.01));
end;

procedure TfTimeSpread.SpinButton13UpClick(Sender: TObject);
begin
  lbeCallEJBY.Text := formatfloat('#0.0#',(strTofloatDef(lbeCallEJBY.Text,0) + 0.01));
end;

procedure TfTimeSpread.SpinButton14DownClick(Sender: TObject);
begin
  ldtTSCallEJJiSu.Text := formatfloat('#0.0#',(strTofloatDef(ldtTSCallEJJiSu.Text,0) - 0.05));
end;

procedure TfTimeSpread.SpinButton14UpClick(Sender: TObject);
begin
  ldtTSCallEJJiSu.Text := formatfloat('#0.0#',(strTofloatDef(ldtTSCallEJJiSu.Text,0) + 0.05));
end;

procedure TfTimeSpread.SpinButton15DownClick(Sender: TObject);
begin
  ldtTSPutEJJiSu.Text := formatfloat('#0.0#',(strTofloatDef(ldtTSPutEJJiSu.Text,0) - 0.05));
end;

procedure TfTimeSpread.SpinButton15UpClick(Sender: TObject);
begin
  ldtTSPutEJJiSu.Text := formatfloat('#0.0#',(strTofloatDef(ldtTSPutEJJiSu.Text,0) + 0.05));
end;

procedure TfTimeSpread.SpinButton16DownClick(Sender: TObject);
begin
  lbePutEJBY.Text := formatfloat('#0.0#',(strTofloatDef(lbePutEJBY.Text,0) - 0.01));
end;

procedure TfTimeSpread.SpinButton16UpClick(Sender: TObject);
begin
  lbePutEJBY.Text := formatfloat('#0.0#',(strTofloatDef(lbePutEJBY.Text,0) + 0.01));
end;

procedure TfTimeSpread.SpinButton2DownClick(Sender: TObject);
begin
  ldtTSCallSJJiSu.Text := formatfloat('#0.0#',(strTofloatDef(ldtTSCallSJJiSu.Text,0) - 0.05));
end;

procedure TfTimeSpread.SpinButton2UpClick(Sender: TObject);
begin
  ldtTSCallSJJiSu.Text := formatfloat('#0.0#',(strTofloatDef(ldtTSCallSJJiSu.Text,0) + 0.05));
end;

procedure TfTimeSpread.SpinButton3DownClick(Sender: TObject);
begin
  ldtTSPutSJJiSu.Text := formatfloat('#0.0#',(strTofloatDef(ldtTSPutSJJiSu.Text,0) - 0.05));
end;

procedure TfTimeSpread.SpinButton3UpClick(Sender: TObject);
begin
  ldtTSPutSJJiSu.Text := formatfloat('#0.0#',(strTofloatDef(ldtTSPutSJJiSu.Text,0) + 0.05));
end;

procedure TfTimeSpread.SpinButton5DownClick(Sender: TObject);
begin
  stgCallUpDownChange(0, -1);
  TSCallNewInsert;
end;

procedure TfTimeSpread.SpinButton5UpClick(Sender: TObject);
begin
  stgCallUpDownChange(0 , 1);
  TSCallNewInsert;
end;

procedure TfTimeSpread.SpinButton6DownClick(Sender: TObject);
begin
  stgCallUpDownChange(1, -1);
  TSCallNewInsert;
end;

procedure TfTimeSpread.SpinButton6UpClick(Sender: TObject);
begin
  stgCallUpDownChange(1, 1);
  TSCallNewInsert;
end;

procedure TfTimeSpread.SpinButton9DownClick(Sender: TObject);
begin
  stgPutUpDownChange(0,-1);
  TSPutNewInsert;
end;

procedure TfTimeSpread.SpinButton9UpClick(Sender: TObject);
begin
  stgPutUpDownChange(0,1);
  TSPutNewInsert;
end;

procedure TfTimeSpread.stgCallUpDownChange(stgRow, nUpDownNo : integer);
var nHeangSaGa : single;
    nRow : integer;
begin
  tmrTSCallPrice.Enabled := False;
  nRow := strToint(stgTSCallList.Cells[5,stgRow]) - nUpDownNo;     // ���� up  down
  nHeangSaGa :=  _MaxHSG - nRow*2.5 ;
  stgTSCallList.Cells[0,stgRow] := copy(stgTSCallList.Cells[0,stgRow],1,5) + copy(formatfloat('#0.0',nHeangSaGa),1,3); // �ֹ���ȣ �Է�
  if copy(stgTSCallList.Cells[0,stgRow],4,2) = _DCode then  // ����̸�
    stgTSCallList.Cells[1,stgRow] := Formatfloat('#0.00',_DWHSGListInfo[2,nRow]) // ���簡
  else if copy(stgTSCallList.Cells[0,stgRow],4,2) = _CWCode then  // �����̸�
    stgTSCallList.Cells[1,stgRow] := Formatfloat('#0.00',_CWHSGListInfo[2,nRow]) // ���簡
  else if copy(stgTSCallList.Cells[0,stgRow],4,2) = _CCWCode then  // �������̸�
    stgTSCallList.Cells[1,stgRow] := Formatfloat('#0.00',_CCWHSGListInfo[2,nRow]) // ���簡
  else if copy(stgTSCallList.Cells[0,stgRow],4,2) = _WWCode then  // �����̸�
    stgTSCallList.Cells[1,stgRow] := Formatfloat('#0.00',_WWHSGListInfo[2,nRow]) // ���簡
  else
  stgTSCallList.Cells[4,stgRow] := '0';// �������� // 00:������   03:���尡   05:���Ǻ�������   06:������������
  stgTSCallList.Cells[5,stgRow] := intTostr(nRow);// Row ��ȣ
  tmrTSCallPrice.Enabled := True;
end;

procedure TfTimeSpread.stgPutUpDownChange(stgRow, nUpDownNo : integer);
var nHeangSaGa : single;
    nRow : integer;
begin
  tmrTSCallPrice.Enabled := False;
  nRow := strToint(stgTSPutList.Cells[5,stgRow]) - nUpDownNo;     // ���� up  down
  nHeangSaGa :=  _MaxHSG - nRow*2.5 ;
  stgTSPutList.Cells[0,stgRow] := copy(stgTSPutList.Cells[0,stgRow],1,5) + copy(formatfloat('#0.0',nHeangSaGa),1,3); // �ֹ���ȣ �Է�
  if copy(stgTSPutList.Cells[0,stgRow],4,2) = _DCode then  // ����̸�
    stgTSPutList.Cells[1,stgRow] := Formatfloat('#0.00',_DWHSGListInfo[4,nRow]) // ���簡
  else if copy(stgTSPutList.Cells[0,stgRow],4,2) = _CWCode then  // ����̸�
    stgTSPutList.Cells[1,stgRow] := Formatfloat('#0.00',_CWHSGListInfo[4,nRow]) // ���簡
  else if copy(stgTSPutList.Cells[0,stgRow],4,2) = _CCWCode then  // ����̸�
    stgTSPutList.Cells[1,stgRow] := Formatfloat('#0.00',_CCWHSGListInfo[4,nRow]) // ���簡
  else if copy(stgTSPutList.Cells[0,stgRow],4,2) = _WWCode then  // ����̸�
    stgTSPutList.Cells[1,stgRow] := Formatfloat('#0.00',_WWHSGListInfo[4,nRow]) // ���簡
  else
  stgTSPutList.Cells[4,stgRow] := '0';// �������� // 00:������   03:���尡   05:���Ǻ�������   06:������������
  stgTSPutList.Cells[5,stgRow] := intTostr(nRow);// Row ��ȣ
  tmrTSCallPrice.Enabled := True;
end;

procedure TfTimeSpread.TimeSpreadCallBasicSetting(nDGPos, nWGPos, nInsertNo : integer; nTotalQtn, nUnitQtn : string);
var nHeangSaGa : single;
    nRow : integer;
begin
  nRow := nDGPos - nWGPos;
  nHeangSaGa :=  _MaxHSG - nRow*2.5 ;
  stgTSCallList.Cells[0,nInsertNo] := '201' +_CWCode + copy(formatfloat('#0.0',nHeangSaGa),1,3); // �ֹ���ȣ �Է�
  stgTSCallList.Cells[1,nInsertNo] := Formatfloat('#0.00',_CWHSGListInfo[2,nRow]) ;// ���簡
  stgTSCallList.Cells[2,nInsertNo] := '-' + nTotalQtn;// �Ѽ���
  stgTSCallList.Cells[3,nInsertNo] := '-' + nUnitQtn;// 1ȸ ����
  stgTSCallList.Cells[4,nInsertNo] := '0';// �������� // 00:������   03:���尡   05:���Ǻ�������   06:������������
  stgTSCallList.Cells[5,nInsertNo] := intTostr(nRow);// Row ��ȣ

  nRow := nDGPos - nWGPos - 2;
  nHeangSaGa :=  _MaxHSG - nRow*2.5 ;
  stgTSCallList.Cells[0,nInsertNo+1] := '201' +_CCWCode + copy(formatfloat('#0.0',nHeangSaGa),1,3); // �ֹ���ȣ �Է�
  stgTSCallList.Cells[1,nInsertNo+1] := Formatfloat('#0.00',_CCWHSGListInfo[2,nRow]) ;// ���簡
  stgTSCallList.Cells[2,nInsertNo+1] := nTotalQtn;// �Ѽ���
  stgTSCallList.Cells[3,nInsertNo+1] := nUnitQtn;// 1ȸ ����
  stgTSCallList.Cells[4,nInsertNo+1] := '0';// �������� // 00:������   03:���尡   05:���Ǻ�������   06:������������
  stgTSCallList.Cells[5,nInsertNo+1] := intTostr(nRow);// Row ��ȣ
end;

procedure TfTimeSpread.TimeSpreadPutBasicSetting(nDGPos, nWGPos, nInsertNo : integer; nTotalQtn, nUnitQtn : string);
var nHeangSaGa : single;
    nRow : integer;
begin
  nRow := nDGPos + nWGPos;
  nHeangSaGa :=  _MaxHSG - nRow*2.5 ;
  stgTSPutList.Cells[0,nInsertNo] := '301' +_CWCode + copy(formatfloat('#0.0',nHeangSaGa),1,3); // �ֹ���ȣ �Է�
  stgTSPutList.Cells[1,nInsertNo] := Formatfloat('#0.00',_CWHSGListInfo[4,nRow]) ;// ���簡
  stgTSPutList.Cells[2,nInsertNo] := '-' + nTotalQtn ;// �Ѽ���
  stgTSPutList.Cells[3,nInsertNo] := '-' + nUnitQtn ;// 1ȸ ����
  stgTSPutList.Cells[4,nInsertNo] := '0';// �������� // 00:������   03:���尡   05:���Ǻ�������   06:������������
  stgTSPutList.Cells[5,nInsertNo] := intTostr(nRow);// Row ��ȣ

  nRow := nDGPos + nWGPos + 2;
  nHeangSaGa :=  _MaxHSG - nRow*2.5 ;
  stgTSPutList.Cells[0,nInsertNo+1] := '301' +_CCWCode + copy(formatfloat('#0.0',nHeangSaGa),1,3); // �ֹ���ȣ �Է�
  stgTSPutList.Cells[1,nInsertNo+1] := Formatfloat('#0.00',_CCWHSGListInfo[4,nRow]) ;// ���簡
  stgTSPutList.Cells[2,nInsertNo+1] :=  nTotalQtn ;// �Ѽ���
  stgTSPutList.Cells[3,nInsertNo+1] :=  nUnitQtn;// 1ȸ ����
  stgTSPutList.Cells[4,nInsertNo+1] := '0';// �������� // 00:������   03:���尡   05:���Ǻ�������   06:������������
  stgTSPutList.Cells[5,nInsertNo+1] := intTostr(nRow);// Row ��ȣ
end;

procedure TfTimeSpread.FormActivate(Sender: TObject);
begin
  if First_Activate then begin
    Left := 945;
    Top := 260-3;
    First_Activate := False;
  end;
end;

procedure TfTimeSpread.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  TSSaveUIValue;
  action := Cafree;
//  action := CaHide;
end;

procedure TfTimeSpread.FormShow(Sender: TObject);
begin
  First_Activate := True;
  StringGrid4.Cells[0,0] := '    �����ڵ�';
  StringGrid4.ColWidths[0] := 90;
  StringGrid4.Cells[1,0] := ' ���簡';
  StringGrid4.Cells[2,0] := ' �Ѽ���';
  StringGrid4.Cells[3,0] := ' 1 ȸ';
  StringGrid4.Cells[4,0] := ' PT';
  StringGrid4.ColWidths[4] := 30;
  StringGrid4.Cells[5,0] := 'Row';
  StringGrid4.ColWidths[5] := 30;

  StringGrid1.Cells[0,0] := '    �����ڵ�';
  StringGrid1.ColWidths[0] := 90;
  StringGrid1.Cells[1,0] := ' ���簡';
  StringGrid1.Cells[2,0] := ' �Ѽ���';
  StringGrid1.Cells[3,0] := ' 1 ȸ';
  StringGrid1.Cells[4,0] := ' PT';
  StringGrid1.ColWidths[4] := 30;
  StringGrid1.Cells[5,0] := 'Row';
  StringGrid1.ColWidths[5] := 30;

  stgTSCallList.ColWidths[0] := 90;
  stgTSCallList.ColWidths[4] := 30;
  stgTSCallList.ColWidths[5] := 30;
  stgTSPutList.ColWidths[0] := 90;
  stgTSPutList.ColWidths[4] := 30;
  stgTSPutList.ColWidths[5] := 30;
  StringGrid4.Selection := TGridRect(Rect(-1, -1, -1, -1));
  StringGrid1.Selection := TGridRect(Rect(-1, -1, -1, -1));
  stgTSCallList.Selection := TGridRect(Rect(-1, -1, -1, -1));
  stgTSPutList.Selection := TGridRect(Rect(-1, -1, -1, -1));

  TSOpenUIValue;
  TSCallNewInsert;
  TSPutNewInsert
end;

procedure TfTimeSpread.lbeCallEJBYChange(Sender: TObject);
begin
  _TSCallEJBY := strTofloatdef(lbeCallEJBY.Text, 999);
end;

procedure TfTimeSpread.lbePutEJBYChange(Sender: TObject);
begin
  _TSPutEJBY := strTofloatDef(lbePutEJBY.Text, 999);
end;

procedure TfTimeSpread.ldtTSCallEJJiSuChange(Sender: TObject);
begin
  _TSCallEJJiSu := strTofloatDef(ldtTSCallEJJiSu.Text, 999);
end;

procedure TfTimeSpread.ldtTSCallSJJiSuChange(Sender: TObject);
begin
  _TSCallSJJiSu := strTofloatDef(ldtTSCallSJJiSu.Text, 999);
end;

procedure TfTimeSpread.ldtTSPutEJJiSuChange(Sender: TObject);
begin
  _TSPutEJJiSu := strTofloatDef(ldtTSPutEJJiSu.Text, 999);
end;

procedure TfTimeSpread.ldtTSPutSJJiSuChange(Sender: TObject);
begin
  _TSPutSJJiSu := strTofloatDef(ldtTSPutSJJiSu.Text, 999);
end;

procedure TfTimeSpread.stgTSCallListDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var intValue, iX, iY : integer;
begin
  // ���� ��ȣ�� ���� �� ����, �ż� ����, �ŵ� �Ķ�
  with stgTSCallList do
  begin

    intValue := strTointDef(Cells[2,ARow],0);
    // �� �� �����Ʈ�� �����Ǿ����� Ȯ��
    if Assigned(Objects[ACol, ARow]) then
    begin
      // ���� ���� ä���
      Canvas.Brush.Color := TColor(Objects[ACol, ARow]);
      Canvas.FillRect(Rect);
    end;
    if intValue > 0 then
      Canvas.Font.Color := $0066FF
    else if intValue < 0 then
      CanVas.Font.Color := clLime
    else  CanVas.Font.Color := clWhite;
    iY := Rect.Top + 8;
    iX := (Rect.Left + Rect.Right) div 2;
    SetTextAlign(Canvas.Handle, TA_CENTER);
    Canvas.TextRect(Rect, iX, iY, Cells[Acol,Arow]);
  end;
end;

procedure TfTimeSpread.stgTSCallListExit(Sender: TObject);
begin
  stgTSCallList.Selection := TGridRect(Rect(-1, -1, -1, -1));
end;

procedure TfTimeSpread.stgTSCallListMouseLeave(Sender: TObject);
begin
  stgTSCallList.Selection := TGridRect(Rect(-1, -1, -1, -1));
end;

procedure TfTimeSpread.stgTSCallListMouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  Handled := True;
end;

procedure TfTimeSpread.stgTSCallListMouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  Handled := True;
end;

procedure TfTimeSpread.stgTSPutListDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var intValue : integer;
begin
  // ���� ��ȣ�� ���� �� ����, �ż� ����, �ŵ� �Ķ�
  with stgTSPutList do
  begin
    intValue := strTointDef(Cells[2,ARow],0);
    // �� �� �����Ʈ�� �����Ǿ����� Ȯ��
    if Assigned(Objects[ACol, ARow]) then
    begin
      // ���� ���� ä���
      Canvas.Brush.Color := TColor(Objects[ACol, ARow]);
      Canvas.FillRect(Rect);
    end;
    if intValue > 0 then
      Canvas.Font.Color := $0066FF
    else if intValue < 0 then
      CanVas.Font.Color := clLime
    else  CanVas.Font.Color := clWhite;
    Canvas.TextOut(Rect.Left+2, Rect.Top+8, Cells[ACol, ARow]);
  end;
end;

var _PreClientKeyMainCall1, _PreTSOrderIndexMainCall1, _PreClientKeyMainCall2, _PreTSOrderIndexMainCall2 : integer;
procedure TfTimeSpread.stgTSPutListExit(Sender: TObject);
begin
  stgTSPutList.Selection := TGridRect(Rect(-1, -1, -1, -1));
end;

procedure TfTimeSpread.stgTSPutListMouseLeave(Sender: TObject);
begin
  stgTSPutList.Selection := TGridRect(Rect(-1, -1, -1, -1));
end;

procedure TfTimeSpread.stgTSPutListMouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  Handled := True;
end;

procedure TfTimeSpread.stgTSPutListMouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  Handled := True;
end;

procedure TfTimeSpread.StringGrid1Exit(Sender: TObject);
begin
  StringGrid1.Selection := TGridRect(Rect(-1, -1, -1, -1));
end;

procedure TfTimeSpread.StringGrid1MouseLeave(Sender: TObject);
begin
  StringGrid1.Selection := TGridRect(Rect(-1, -1, -1, -1));
end;

procedure TfTimeSpread.StringGrid1MouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  Handled := True;
end;

procedure TfTimeSpread.StringGrid1MouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  Handled := True;
end;

procedure TfTimeSpread.StringGrid4Exit(Sender: TObject);
begin
  StringGrid4.Selection := TGridRect(Rect(-1, -1, -1, -1));
end;

procedure TfTimeSpread.StringGrid4MouseLeave(Sender: TObject);
begin
  StringGrid4.Selection := TGridRect(Rect(-1, -1, -1, -1));
end;

procedure TfTimeSpread.StringGrid4MouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  Handled := True;
end;

procedure TfTimeSpread.StringGrid4MouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  Handled := True;
end;

var _PriceCall1, _PriceCall2 : integer;

procedure TfTimeSpread.tmrCallFindTimer(Sender: TObject);
var nCallMDHG, nCallMSHG : Single;
    nString, nNowTime : string;
    nClientKey, nGubun,nOrgNo, nPrice, nPT, nOrdQtn, I, j, nTime_Out : integer;
    blnOrderSuccess_flg : boolean;
    nRow, nOrNo : integer; // ���� ��簡 ����ȣ
begin
// �ű� ����
  // ��¥ ���� ã��
  ///  �ż� �ֹ�, �ż�ȣ�� +1
  ///  �ŵ� �ֹ�, �ŵ�ȣ�� -1
  ///  delay
  ///  ü�� �ȵǸ� ����
  ///  �Ѵ� ü��Ǹ� 2�� �õ�
  ///  ���� 3���� ü��Ǹ� ��¥ ����ã�� �Ϸ�
  tmrCallFind.Enabled := False;

  if _TSCallStop_flg then begin
    imgTSCallJinIp.Picture.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Off.bmp');
    imgTSCallCS.Picture.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Off.bmp');
    exit;
  end;

  if (_TSCallCSStart_flg) and (_TSCallJinIp_flg = False) then begin
    // ������ ����� �������� ������ ���� ����
    if (_TSCallSJJiSu > (StrTofloatDef(SunMul,9999)+0.01)) and ((_TSCallEJJiSu-0.01) < StrTofloatDef(SunMul,9999)) and
        (_TSCallEJBY > (StrTofloatDef(edtTSCallHGBY.Text,9999)+0.005)) then begin
          tmrCallFind.Enabled := True;
          exit;// 3.8 > 3.8 -0.001
    end else begin
      _TSCallJinIp_flg := True;
    end;
  end;

  nRow := strtointDef(_TSCallNewList[5,0],-1);
  if copy(_TSCallNewList[0,0],4,2) = _DCode then begin // ����̸�
    nCallMDHG := _DWHSGListInfo[0,nRow];
    nCallMSHG := _DWHSGListInfo[1,nRow];
  end else if copy(_TSCallNewList[0,0],4,2) = _CWCode then begin // ����̸�
    nCallMDHG := _CWHSGListInfo[0,nRow];
    nCallMSHG := _CWHSGListInfo[1,nRow];
  end else if copy(_TSCallNewList[0,0],4,2) = _CCWCode then begin // ����̸�
    nCallMDHG := _CCWHSGListInfo[0,nRow];
    nCallMSHG := _CCWHSGListInfo[1,nRow];
  end else if copy(_TSCallNewList[0,0],4,2) = _WWCode then begin // ����̸�
    nCallMDHG := _WWHSGListInfo[0,nRow];
    nCallMSHG := _WWHSGListInfo[1,nRow];
  end;

  if (_FirstCallOrder_flg1) and (_TSCallFindPrice_flg1 = False) then begin // ���� ã��... ó�� �ֹ��̸�...
    _FirstCallOrder_flg1 := False;
    nNowTime := formatdateTime('hhmmsszz',now);
    nString := copy(nNowTime,5,5);
//    _ClientKeyCall1 := 44000000;
    _ClientKeyCall1 := 44000000 + (_CallJMNo1) * 1000; // ���� �ֹ� Key
    _CallJMNo1 := _CallJMNo1 + 1;

    if strTointDef(_TSCallNewList[2,0],0) > 0 then begin
      nGubun := 2; //�ż�
      _PriceCall1 := Round((nCallMSHG + 0.01)*100);
    end else if strTointDef(_TSCallNewList[2,0],0) < 0 then begin
      nGubun := 1; //�ŵ�
      _PriceCall1 := Round((nCallMDHG - 0.01)*100);
    end;
    nOrdQtn := 1;
    nOrgNo := 0;
    nPT := 0;      //0������, 3���尡, 5���Ǻ�, 6��������
//21 ����     blnOrderSuccess_flg := fHBOMain.DongbuAPI1.SendFOrder(_ClientKeyCall1,Acnt,AcntPwd,nGubun,_TSCallNewList[0,0],nPT,nOrdQtn,_PriceCall1,nOrgNo);
    if blnOrderSuccess_flg = false then begin// �ֹ�
      nString :=  nNowTime + ' : ù��° Call���� ����ã�� 1���ֹ� ����';
//      mmoLog.Lines.Add(nString);
      _TSMessage[_TSMessageStep] := nString;
      _TSMessage_flg[_TSMessageStep] := True;
      _TSMessageStep := _TSMessageStep + 1;
      if _TSMessageStep > 19 then _TSMessageStep := 0;
      imgTSCallJinIp.Picture.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Off.bmp');
      imgTSCallCS.Picture.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Off.bmp');
      exit;
    end else begin
      nString :=  nNowTime + ' : ù��° Call���� ����ã�� 1���ֹ�';
      _TSMessage[_TSMessageStep] := nString;
      _TSMessage_flg[_TSMessageStep] := True;
      _TSMessageStep := _TSMessageStep + 1;
      if _TSMessageStep > 19 then _TSMessageStep := 0;
    end;
  end else if (_TSCallFindPrice_flg1 = False) then begin
    if (_TimeCallInfo1[_CallJMNo1-1].JMKey = _ClientKeyCall1) and (_TimeCallInfo1[_CallJMNo1-1].OrderNo <> 0) then begin
      if (_TimeCallInfo1[_CallJMNo1-1].JMQtn <>0 ) and (_TimeCallInfo1[_CallJMNo1-1].CGQtn = _TimeCallInfo1[_CallJMNo1-1].JMQtn) then begin     //
        _TSCallCGBY1 := _TSCallCGBY1 + _TimeCallInfo1[_CallJMNo1-1].CGPrice; // ü�ᰡ��
        _TSCFPTQtn1 := _TSCFPTQtn1 + 1;
        nString :=  nNowTime + ' : ù��° Call ������ ' + intToStr(_TSCFPTQtn1) + '��° Call ����ü��,���:' + formatfloat('0.0#',_TSCallCGBY1/_TSCFPTQtn1);
        _TSMessage[_TSMessageStep] := nString;
        _TSMessage_flg[_TSMessageStep] := True;
        _TSMessageStep := _TSMessageStep + 1;
        if _TSMessageStep > 19 then _TSMessageStep := 0;
        _FirstCallOrder_flg1 := True;

        if _TSCFPTQtn1 = 3 then begin
          _TSCallFindPrice_flg1 := True;
          _FirstCallOrder_flg1 := False;
          nString :=  nNowTime + ' : ù���� Call���� ����ã�� �Ϸ�';
          _TSMessage[_TSMessageStep] := nString;
          _TSMessage_flg[_TSMessageStep] := True;
          _TSMessageStep := _TSMessageStep + 1;
          if _TSMessageStep > 19 then _TSMessageStep := 0;
          if (_TSCallFindPrice_flg1) and (_TSCallFindPrice_flg2) then begin

            tmrCallFind.Enabled := False;
            nString :=  nNowTime + ' : Call ��ü ����ã�� �Ϸ�';
            _TSMessage[_TSMessageStep] := nString;
            _TSMessage_flg[_TSMessageStep] := True;
            _TSMessageStep := _TSMessageStep + 1;
            if _TSMessageStep > 19 then _TSMessageStep := 0;
            exit;
          end;
        end;
      end else begin
        if (_CallOrderDelay1_CNT > 10)  and (_TimeCallInfo1[_CallJMNo1-1].OrderNo <> 0) then begin
          // ���� �ֹ�
          nNowTime := formatdateTime('hhmmsszz',now);
          nString := copy(nNowTime,5,5);
//          _ClientKeyCall1 := 77100000 + strTointDef(nString,-1000000); // Ŭ���̾�Ʈ Ű ����
          _ClientKeyCall1 := 44000000 + (_CallJMNo1-1) * 1000; //  �ֹ� Key
          nGubun := 3; //����
          nOrdQtn := 1;
          if strTointDef(_TSCallNewList[2,0],0) > 0 then begin
            _PriceCall1 := Round((nCallMSHG + 0.01)*100) ;// Round((nCallMSHG + 0.01)*100);
          end else if strTointDef(_TSCallNewList[2,0],0) < 0 then begin
            _PriceCall1 := Round((nCallMDHG - 0.01)*100) ;//Round((nCallMDHG - 0.01)*100);
          end;
          nOrgNo := _TimeCallInfo1[_CallJMNo1-1].OrderNo;
          _JuMunQtnError_flg := 0;
//21 ����           blnOrderSuccess_flg := fHBOMain.DongbuAPI1.SendFOrder(_ClientKeyCall1,Acnt,AcntPwd,nGubun,_TSCallNewList[0,0],nPT,nOrdQtn,_PriceCall1,nOrgNo);

          if blnOrderSuccess_flg = false then begin// �ֹ�
            // �ֹ� ���н� ó��
            nString :=  nNowTime + ' : ù��° Call �����ֹ� ����';
            _TSMessage[_TSMessageStep] := nString;
            _TSMessage_flg[_TSMessageStep] := True;
            _TSMessageStep := _TSMessageStep + 1;
            if _TSMessageStep > 19 then _TSMessageStep := 0;
            imgTSCallJinIp.Picture.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Off.bmp');
            imgTSCallCS.Picture.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Off.bmp');
            exit;
          end else begin
            nTime_Out :=0;
            repeat
              if nTime_Out > 6000 then begin
                nString :=  nNowTime + ' : nTime_out �ʰ�';
                _TSMessage[_TSMessageStep] := nString;
                _TSMessage_flg[_TSMessageStep] := True;
                _TSMessageStep := _TSMessageStep + 1;
                if _TSMessageStep > 19 then _TSMessageStep := 0;
                imgTSCallJinIp.Picture.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Off.bmp');
                imgTSCallCS.Picture.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Off.bmp');
                exit;
              end;
              delay(10);
              int(nTime_Out);
            until _JuMunQtnError_flg <> 0;

            if _JuMunQtnError_flg = 1 then begin
              _CallOrderDelay1_CNT := 0;
              nString :=  nNowTime + ' : ù��° Call �����ֹ� Ű: ' + intTostr(_ClientKeyCall1);// + intTostr(_ClientKeyCall1);
              _TSMessage[_TSMessageStep] := nString;
              _TSMessage_flg[_TSMessageStep] := True;
              _TSMessageStep := _TSMessageStep + 1;
              if _TSMessageStep > 19 then _TSMessageStep := 0;
            end;

            if _TSCFPTQtn1 = 3 then begin
              _TSCallFindPrice_flg1 := True;
              _FirstCallOrder_flg1 := False;
              nString :=  nNowTime + ' : ù���� Call ����ã�� �Ϸ�';
              _TSMessage[_TSMessageStep] := nString;
              _TSMessage_flg[_TSMessageStep] := True;
              _TSMessageStep := _TSMessageStep + 1;
              if _TSMessageStep > 19 then _TSMessageStep := 0;

              if (_TSCallFindPrice_flg1) and (_TSCallFindPrice_flg2) then begin
                tmrCallFind.Enabled := False;
                nString :=  nNowTime + ' : Call ��ü ����ã�� �Ϸ�';
                _TSMessage[_TSMessageStep] := nString;
                _TSMessage_flg[_TSMessageStep] := True;
                _TSMessageStep := _TSMessageStep + 1;
                if _TSMessageStep > 19 then _TSMessageStep := 0;
                exit;
              end;
            end;

          end;
        end else _CallOrderDelay1_CNT := _CallOrderDelay1_CNT +1 ;
      end;
    end;
  end;

  delay(50);
  nRow := strtointDef(_TSCallNewList[5,1],-1);
  if copy(_TSCallNewList[0,1],4,2) = _DCode then begin // ����̸�
    nCallMDHG := _DWHSGListInfo[0,nRow];
    nCallMSHG := _DWHSGListInfo[1,nRow];
  end else if copy(_TSCallNewList[0,1],4,2) = _CWCode then begin // ����̸�
    nCallMDHG := _CWHSGListInfo[0,nRow];
    nCallMSHG := _CWHSGListInfo[1,nRow];
  end else if copy(_TSCallNewList[0,1],4,2) = _CCWCode then begin // ����̸�
    nCallMDHG := _CCWHSGListInfo[0,nRow];
    nCallMSHG := _CCWHSGListInfo[1,nRow];
  end else if copy(_TSCallNewList[0,1],4,2) = _WWCode then begin // ����̸�
    nCallMDHG := _WWHSGListInfo[0,nRow];
    nCallMSHG := _WWHSGListInfo[1,nRow];
  end;

  if (_FirstCallOrder_flg2) and (_TSCallFindPrice_flg2 = False) then begin // ���� ã��... ó�� �ֹ��̸�...
    nNowTime := formatdateTime('hhmmsszz',now);
    nString := copy(nNowTime,5,5);
//    _ClientKeyCall2 := 77200000 + strTointDef(nString,-1000000); // Ŭ���̾�Ʈ Ű ����
    _ClientKeyCall2 := 55000000 + (_CallJMNo2) * 1000; // ���� �ֹ� Key
    _CallJMNo2 := _CallJMNo2 + 1;

    if strTointDef(_TSCallNewList[2,1],0) > 0 then begin
      nGubun := 2; //�ż�
      _PriceCall2 := Round((nCallMSHG + 0.01)*100);
    end else if strTointDef(_TSCallNewList[2,1],0) < 0 then begin
      nGubun := 1; //�ŵ�
      _PriceCall2 := Round((nCallMDHG - 0.01)*100);
    end;
    nOrdQtn := 1;
    nOrgNo := 0;
    nPT := 0;      //0������, 3���尡, 5���Ǻ�, 6��������
//21 ����     blnOrderSuccess_flg := fHBOMain.DongbuAPI1.SendFOrder(_ClientKeyCall2,Acnt,AcntPwd,nGubun,_TSCallNewList[0,1],nPT,nOrdQtn,_PriceCall2,nOrgNo);
    if blnOrderSuccess_flg = false then begin// �ֹ�
      nString :=  nNowTime + ' : �ι�° Call���� ����ã�� 1���ֹ� ����';
      _TSMessage[_TSMessageStep] := nString;
      _TSMessage_flg[_TSMessageStep] := True;
      _TSMessageStep := _TSMessageStep + 1;
      if _TSMessageStep > 19 then _TSMessageStep := 0;
      imgTSCallJinIp.Picture.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Off.bmp');
      imgTSCallCS.Picture.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Off.bmp');
      exit;
    end else begin
      nString :=  nNowTime + ' : �ι�° Call���� ����ã�� 1���ֹ�';
      _TSMessage[_TSMessageStep] := nString;
      _TSMessage_flg[_TSMessageStep] := True;
      _TSMessageStep := _TSMessageStep + 1;
      if _TSMessageStep > 19 then _TSMessageStep := 0;
    end;
    _FirstCallOrder_flg2 := False;
  end else if _TSCallFindPrice_flg2 = False then begin
    if (_TimeCallInfo2[_CallJMNo2-1].JMKey = _ClientKeyCall2) and (_TimeCallInfo2[_CallJMNo2-1].OrderNo <> 0) then begin //771 �ι�° ��, 772 �ι�° ��, 773 �ι�° ǲ, 774 �ι�° ǲ
      if (_TimeCallInfo2[_CallJMNo2-1].JMQtn <>0 ) and (_TimeCallInfo2[_CallJMNo2-1].CGQtn = _TimeCallInfo2[_CallJMNo2-1].JMQtn) then begin     //
        _TSCallCGBY2 := _TSCallCGBY2 + _TimeCallInfo2[_CallJMNo2-1].CGPrice; // ü�ᰡ��
        _TSCFPTQtn2 := _TSCFPTQtn2 + 1;
        nString :=  nNowTime + ' : �ι��� Call������ ' + intToStr(_TSCFPTQtn2) + '��° Call ü��,���:' + formatfloat('0.0#',_TSCallCGBY2/_TSCFPTQtn2);
        _TSMessage[_TSMessageStep] := nString;
        _TSMessage_flg[_TSMessageStep] := True;
        _TSMessageStep := _TSMessageStep + 1;
        if _TSMessageStep > 19 then _TSMessageStep := 0;
        _FirstCallOrder_flg2 := True;

        if _TSCFPTQtn2 = 3 then begin
          _TSCallFindPrice_flg2 := True;
          _FirstCallOrder_flg2 := False;
          nString :=  nNowTime + ' : �ι��� Call���� ����ã�� �Ϸ�';
          _TSMessage[_TSMessageStep] := nString;
          _TSMessage_flg[_TSMessageStep] := True;
          _TSMessageStep := _TSMessageStep + 1;
          if _TSMessageStep > 19 then _TSMessageStep := 0;
          if (_TSCallFindPrice_flg1) and (_TSCallFindPrice_flg2) then begin

            tmrCallFind.Enabled := False;
            nString :=  nNowTime + ' : Call ��ü ����ã�� �Ϸ�';
            _TSMessage[_TSMessageStep] := nString;
            _TSMessage_flg[_TSMessageStep] := True;
            _TSMessageStep := _TSMessageStep + 1;
            if _TSMessageStep > 19 then _TSMessageStep := 0;
            exit;
          end;
        end;
      end else begin
        if (_CallOrderDelay2_CNT > 10)  and (_TimeCallInfo2[_CallJMNo2-1].OrderNo <> 0) then begin
          // ���� �ֹ�
          nNowTime := formatdateTime('hhmmsszz',now);
          nString := copy(nNowTime,5,5);
//          _ClientKeyCall2 := 77200000 + strTointDef(nString,-1000000); // Ŭ���̾�Ʈ Ű ����
          _ClientKeyCall2 := 55000000 + (_CallJMNo2-1) * 1000; //  �ֹ� Key
          nGubun := 3; //����
          nOrdQtn := 1;
          if strTointDef(_TSCallNewList[2,1],0) > 0 then begin
            _PriceCall2 := Round((nCallMSHG + 0.01)*100);//Round((nCallMSHG + 0.01)*100);
          end else if strTointDef(_TSCallNewList[2,1],0) < 0 then begin
            _PriceCall2 := Round((nCallMDHG - 0.01)*100);//Round((nCallMDHG - 0.01)*100);
          end;
          nOrgNo := _TimeCallInfo2[_CallJMNo2-1].OrderNo;
          _JuMunQtnError_flg := 0;
//21 ����           blnOrderSuccess_flg := fHBOMain.DongbuAPI1.SendFOrder(_ClientKeyCall2,Acnt,AcntPwd,nGubun,_TSCallNewList[0,1],nPT,nOrdQtn,_PriceCall2,nOrgNo);
          if blnOrderSuccess_flg = false then begin// �ֹ�
            // �ֹ� ���н� ó��
            nString :=  nNowTime + ' : �ι�° �����ֹ� ����';
            _TSMessage[_TSMessageStep] := nString;
            _TSMessage_flg[_TSMessageStep] := True;
            _TSMessageStep := _TSMessageStep + 1;
            if _TSMessageStep > 19 then _TSMessageStep := 0;
            imgTSCallJinIp.Picture.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Off.bmp');
            imgTSCallCS.Picture.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Off.bmp');
            exit;
          end else begin
            nTime_Out :=0;
            repeat
              if nTime_Out > 6000 then begin
                nString :=  nNowTime + ' : nTime_out �ʰ�';
                _TSMessage[_TSMessageStep] := nString;
                _TSMessage_flg[_TSMessageStep] := True;
                _TSMessageStep := _TSMessageStep + 1;
                if _TSMessageStep > 19 then _TSMessageStep := 0;
                imgTSCallJinIp.Picture.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Off.bmp');
                imgTSCallCS.Picture.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Off.bmp');
                exit;
              end;
              delay(10);
              int(nTime_Out);
            until _JuMunQtnError_flg <> 0;

            if _JuMunQtnError_flg = 1 then begin
              _CallOrderDelay2_CNT := 0;
              nString :=  nNowTime + ' : �ι�° Call �����ֹ� Ű: ' + intTostr(_ClientKeyCall2);// + intTostr(_ClientKeyCall1);
              _TSMessage[_TSMessageStep] := nString;
              _TSMessage_flg[_TSMessageStep] := True;
              _TSMessageStep := _TSMessageStep + 1;
              if _TSMessageStep > 19 then _TSMessageStep := 0;
            end;

            if _TSCFPTQtn2 = 3 then begin
              _TSCallFindPrice_flg2 := True;
              _FirstCallOrder_flg2 := False;
              nString :=  nNowTime + ' : �ι�° Call���� ����ã�� �Ϸ�';
              _TSMessage[_TSMessageStep] := nString;
              _TSMessage_flg[_TSMessageStep] := True;
              _TSMessageStep := _TSMessageStep + 1;
              if _TSMessageStep > 19 then _TSMessageStep := 0;
              if (_TSCallFindPrice_flg1) and (_TSCallFindPrice_flg2) then begin
                _TSCallCGBY2 := _TSCallCGBY2 / 3;//
                tmrCallFind.Enabled := False;
                nString :=  nNowTime + ' : Call ��ü ����ã�� �Ϸ��� ��1: ' + formatfloat('0.0#', _TSCallCGBY1/3) + ' ��2: ' + formatfloat('0.0#', _TSCallCGBY2/3);
                _TSMessage[_TSMessageStep] := nString;
                _TSMessage_flg[_TSMessageStep] := True;
                _TSMessageStep := _TSMessageStep + 1;
                if _TSMessageStep > 19 then _TSMessageStep := 0;
                exit;
              end;
            end;
          end;
        end else _CallOrderDelay2_CNT := _CallOrderDelay2_CNT +1 ;
      end;
    end;
  end;
  tmrCallFind.Enabled := True;
  // ������ �ܷ� �ֹ�
  ///  �ż� ������ �ֹ�, �ż�ȣ�� + 1
  ///  �ż� ü��� ���� ��ŭ �ŵ��ֹ� �ŵ�ȣ�� -1
  ///  �����ð� ��� �� �ż� ü���� �ȵ� ������ ���� �ֹ�
  ///  ������ �ż��� ü��� ������ŭ �ŵ� �ֹ�
end;

procedure TfTimeSpread.tmrCallOrderTimer(Sender: TObject);
var nRow1, nRow2, nRemainQtn1, nRemainQtn2 : integer; // ���� ��簡 ����ȣ
    nCallNowPrice1, nCallNowPrice2 : single;
    nString, nNowTime : string;
    nGubun,nOrgNo, nPrice, nPT, nOrdQtn, I, j, nOrNo, nTime_Out : integer;
    blnOrderSuccess_flg : boolean;
begin
  ///  ù��° ������ ���� ����������ŭ �ֹ�, �ֹ����� ���簡 ��1ƽ(������ ����)
  ///  ü���� �Ǹ� �ι�° ������ ���簡�� �ֹ�
  ///    500mSec���� ü���� �ȵǸ� ����
  if (_TSCallFindPrice_flg1 = False) or (_TSCallFindPrice_flg2 = False) then exit;
  tmrCallOrder.Enabled := False;
  if _TSCallStop_flg then begin
    imgTSCallJinIp.Picture.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Off.bmp');
    imgTSCallCS.Picture.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Off.bmp');
    exit;
  end;
  // û���̸� ������ ��� �� �ϳ��� �����ص� ���� �Ѵ�.....

  if (_TSCallCSStart_flg) and (_TSCallJinIp_flg = False) then begin
    // ������ ����� �������� ������ ���� ����
    if ((_TSCallSJJiSu+0.001) > StrTofloatDef(SunMul,9999)) and ((_TSCallEJJiSu-0.001) < StrTofloatDef(SunMul,9999)) and
        ((_TSCallEJBY) > StrTofloatDef(edtTSCallHGBY.Text,9999)) then  begin
          tmrCallOrder.Enabled := True;
          exit;// 3.8 > 3.8 -0.001
    end else begin
      _TSCallJinIp_flg := True;
    end;
  end;

  nRow1 := strtointDef(_TSCallNewList[5,0],-1);     //
//  if strTointDef(_TSCallNewList[2,0],0) > 0 then begin  // �ż� �̸�   �ż�ȣ��
//    if copy(_TSCallNewList[0,0],4,2) = _DCode then begin // ����̸�
//      nCallNowPrice1 := _DWHSGListInfo[1,nRow1]; // �ż�ȣ��
//    end else if copy(_TSCallNewList[0,0],4,2) = _CWCode then begin // ����̸�
//      nCallNowPrice1 := _CWHSGListInfo[1,nRow1]; // �ż�ȣ��
//    end else if copy(_TSCallNewList[0,0],4,2) = _CCWCode then begin // ����̸�
//      nCallNowPrice1 := _CCWHSGListInfo[1,nRow1]; // �ż�ȣ��
//    end else if copy(_TSCallNewList[0,0],4,2) = _WWCode then begin // ����̸�
//      nCallNowPrice1 := _WWHSGListInfo[1,nRow1]; // �ż�ȣ��
//    end;
//  end  else if strTointDef(_TSCallNewList[2,0],0) < 0 then begin  // �ŵ��̸�
//    if copy(_TSCallNewList[0,0],4,2) = _DCode then begin // ����̸�
//      nCallNowPrice1 := _DWHSGListInfo[0,nRow1]; // �ŵ�ȣ��
//    end else if copy(_TSCallNewList[0,0],4,2) = _CWCode then begin // ����̸�
//      nCallNowPrice1 := _CWHSGListInfo[0,nRow1]; // �ŵ�ȣ��
//    end else if copy(_TSCallNewList[0,0],4,2) = _CCWCode then begin // ����̸�
//      nCallNowPrice1 := _CCWHSGListInfo[0,nRow1]; // �ŵ�ȣ��
//    end else if copy(_TSCallNewList[0,0],4,2) = _WWCode then begin // ����̸�
//      nCallNowPrice1 := _WWHSGListInfo[0,nRow1]; // �ŵ�ȣ��
//    end;
//  end;

//  if strTointDef(_TSCallNewList[2,0],0) > 0 then begin  // �ż� �̸�   �ż�ȣ��
    if copy(_TSCallNewList[0,0],4,2) = _DCode then begin // ����̸�
      nCallNowPrice1 := _DWHSGListInfo[2,nRow1]; // ���簡
    end else if copy(_TSCallNewList[0,0],4,2) = _CWCode then begin // �����̸�
      nCallNowPrice1 := _CWHSGListInfo[2,nRow1]; // ���簡
    end else if copy(_TSCallNewList[0,0],4,2) = _CCWCode then begin // �������̸�
      nCallNowPrice1 := _CCWHSGListInfo[2,nRow1]; // ���簡
    end else if copy(_TSCallNewList[0,0],4,2) = _WWCode then begin // �����̸�
      nCallNowPrice1 := _WWHSGListInfo[2,nRow1]; // ���簡
    end;
//  end  else if strTointDef(_TSCallNewList[2,0],0) < 0 then begin  // �ŵ��̸�
//    if copy(_TSCallNewList[0,0],4,2) = _DCode then begin // ����̸�
//      nCallNowPrice1 := _DWHSGListInfo[0,nRow1]; // �ŵ�ȣ��
//    end else if copy(_TSCallNewList[0,0],4,2) = _CWCode then begin // ����̸�
//      nCallNowPrice1 := _CWHSGListInfo[0,nRow1]; // �ŵ�ȣ��
//    end else if copy(_TSCallNewList[0,0],4,2) = _CCWCode then begin // ����̸�
//      nCallNowPrice1 := _CCWHSGListInfo[0,nRow1]; // �ŵ�ȣ��
//    end else if copy(_TSCallNewList[0,0],4,2) = _WWCode then begin // ����̸�
//      nCallNowPrice1 := _WWHSGListInfo[0,nRow1]; // �ŵ�ȣ��
//    end;
//  end;


  nRemainQtn1 := ABS(strTointDef(_TSCallNewList[2,0],-1)) - _TSCallOrderedQtn1 - 3;   // 3�� ���� ã������� ü���  ����
  nRemainQtn2 := ABS(strTointDef(_TSCallNewList[2,1],-1)) - _TSCallOrderedQtn2 - 3;   // 3�� ���� ã������� ü���  ����;

  if _FirstMainCallOrder_flg1 and (nRemainQtn1 > 0) then begin  // �Ѽ����� �ֹ��� �������� ������
    _FirstMainCallOrder_flg1 := False;
//    _MainOrdr1_flg := True; // �ű� �ֹ� ������ �����ϱ� ����
    _CallUnitOrderedQtn1 := 0;
    _CallUnitOrderedQtn2 := 0;
    nNowTime := formatdateTime('hhmmsszz',now);
    nString := copy(nNowTime,5,5);
    _ClientKeyCall1 := 44000000 + (_CallJMNo1) * 1000; // ���� �ֹ� Key
    _CallJMNo1 := _CallJMNo1 + 1;

    if strTointDef(_TSCallNewList[2,0],0) > 0 then begin
      nGubun := 2; //�ż�
      nPrice := Round(nCallNowPrice1 * 100) - 1;  // ���簡 - 1
    end else if strTointDef(_TSCallNewList[2,0],0) < 0 then begin
      nGubun := 1; //�ŵ�
      nPrice := Round(nCallNowPrice1 * 100) + 1;  // ���簡 + 1
    end;

    if nRemainQtn1 > ABS(strTointDef(_TSCallNewList[3,0],0)) then
      _CallUnitOrderQtn := ABS(strTointDef(_TSCallNewList[3,0],0))
    else _CallUnitOrderQtn := nRemainQtn1;
    nOrgNo := 0;
    nPT := 0;      //0������, 3���尡, 5���Ǻ�, 6��������
//21 ����     blnOrderSuccess_flg := fHBOMain.DongbuAPI1.SendFOrder(_ClientKeyCall1,Acnt,AcntPwd,nGubun,_TSCallNewList[0,0],nPT,_CallUnitOrderQtn,nPrice,nOrgNo);
    if blnOrderSuccess_flg = false then begin// �ֹ�
      nString :=  nNowTime + '  : [' + _TSCallNewList[0,0] + '][�ŵ�] �ű� �ֹ� ����';
      _TSMessage[_TSMessageStep] := nString;
      _TSMessage_flg[_TSMessageStep] := True;
      _TSMessageStep := _TSMessageStep + 1;
      if _TSMessageStep > 19 then _TSMessageStep := 0;
      imgTSCallJinIp.Picture.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Off.bmp');
      imgTSCallCS.Picture.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Off.bmp');
      exit;
    end else begin
      _TSCallOrderedQtn1 := _TSCallOrderedQtn1 + _CallUnitOrderQtn;
      nString :=  nNowTime + ' : [' + _TSCallNewList[0,0] + '][�ŵ�] ��������['+ intTostr(_CallUnitOrderQtn) + '] �ֹ�, ���� :' + formatfloat('0.00',nPrice * 0.01);
      _TSMessage[_TSMessageStep] := nString;
      _TSMessage_flg[_TSMessageStep] := True;
      _TSMessageStep := _TSMessageStep + 1;
      if _TSMessageStep > 19 then _TSMessageStep := 0;
    end;
  end else begin
    if (_TimeCallInfo1[_CallJMNo1-1].JMKey = _ClientKeyCall1) then begin
      if (_TimeCallInfo1[_CallJMNo1-1].JMQtn <> 0) and ((_TimeCallInfo1[_CallJMNo1-1].CGQtn - _CallUnitOrderedQtn2) > 0) then begin     //   �ŵ�ü����� - �ż��ֹ��ȼ���

//        /// ���⼭ ���� �ι�° ���� �ֹ�
//        nRow2 := strtointDef(_TSCallNewList[5,1],-1);
//        if copy(_TSCallNewList[0,1],4,2) = _DCode then begin // ����̸�
//          nCallNowPrice2 := _DWHSGListInfo[2,nRow2]; // ���簡
//        end else if copy(_TSCallNewList[0,1],4,2) = _CWCode then begin // ����̸�
//          nCallNowPrice2 := _CWHSGListInfo[2,nRow2]; // ���簡
//        end else if copy(_TSCallNewList[0,1],4,2) = _CCWCode then begin // ����̸�
//          nCallNowPrice2 := _CCWHSGListInfo[2,nRow2]; // ���簡
//        end else if copy(_TSCallNewList[0,1],4,2) = _WWCode then begin // ����̸�
//          nCallNowPrice2 := _WWHSGListInfo[2,nRow2]; // ���簡
//        end;

        if strTointDef(_TSCallNewList[2,1],0) > 0 then begin   // �ż�
          /// ���⼭ ���� �ι�° ǲ�� �ż� �ֹ�
          nRow2 := strtointDef(_TSCallNewList[5,1],-1);
          if copy(_TSCallNewList[0,1],4,2) = _DCode then begin // ����̸�
            nCallNowPrice2 := _DWHSGListInfo[1,nRow2]; // �ż�ȣ��
          end else if copy(_TSCallNewList[0,1],4,2) = _CWCode then begin // ����̸�
            nCallNowPrice2 := _CWHSGListInfo[1,nRow2]; // �ż�ȣ��
          end else if copy(_TSCallNewList[0,1],4,2) = _CCWCode then begin // ����̸�
            nCallNowPrice2 := _CCWHSGListInfo[1,nRow2]; // �ż�ȣ��
          end else if copy(_TSCallNewList[0,1],4,2) = _WWCode then begin // ����̸�
            nCallNowPrice2 := _WWHSGListInfo[1,nRow2]; // �ż�ȣ��
          end;
        end  else if strTointDef(_TSCallNewList[2,1],0) < 0 then begin
          /// ���⼭ ���� �ι�° ǲ�� �ŵ� �ֹ�
          nRow2 := strtointDef(_TSCallNewList[5,1],-1);
          if copy(_TSCallNewList[0,1],4,2) = _DCode then begin // ����̸�
            nCallNowPrice2 := _DWHSGListInfo[0,nRow2]; // �ŵ�ȣ��
          end else if copy(_TSCallNewList[0,1],4,2) = _CWCode then begin // ����̸�
            nCallNowPrice2 := _CWHSGListInfo[0,nRow2]; // �ŵ�ȣ��
          end else if copy(_TSCallNewList[0,1],4,2) = _CCWCode then begin // ����̸�
            nCallNowPrice2 := _CCWHSGListInfo[0,nRow2]; // �ŵ�ȣ��
          end else if copy(_TSCallNewList[0,1],4,2) = _WWCode then begin // ����̸�
            nCallNowPrice2 := _WWHSGListInfo[0,nRow2]; // �ŵ�ȣ��
          end;
        end;


        if _FirstMainCallOrder_flg2 and (nRemainQtn2 > 0) then begin    // �Ѽ����� �ֹ��� �������� ������
          _FirstMainCallOrder_flg2 := False;
          _CallUnitOrderedQtn1 := _CallUnitOrderedQtn1 + _TimeCallInfo1[_CallJMNo1-1].CGQtn - _CallUnitOrderedQtn2;

          nNowTime := formatdateTime('hhmmsszz',now);
          nString := copy(nNowTime,5,5);
          _ClientKeyCall2 := 55000000 + (_CallJMNo2) * 1000; // ���� �ֹ� Key
          _CallJMNo2 := _CallJMNo2 + 1;

          nRemainQtn1 := ABS((strTointDef(_TSCallNewList[2,0],-1)) - _TSCallOrderedQtn1) - 3;   // 3�� ���� ã������� ü���  ����;
          _TSCallCGBY1 := _TSCallCGBY1 + _TimeCallInfo1[_CallJMNo1-1].CGPrice * _TimeCallInfo1[_CallJMNo1-1].CGQtn; // ü�� �ݾ�
          nString :=  nNowTime + ' :[' + _TimeCallInfo1[_CallJMNo1-1].JMCode + '][�ŵ�] ü��: ����' + intTostr(_TimeCallInfo1[_CallJMNo1-1].CGQtn) + ' ���ֹ��� ���� : ' + intTostr(_TSCallOrderedQtn1);
          nString := nString + ' ��ܰ�: ' + formatfloat('0.0#', _TSCallCGBY1/(_TSCallOrderedQtn1+3));
          _TSMessage[_TSMessageStep] := nString;
          _TSMessage_flg[_TSMessageStep] := True;
          _TSMessageStep := _TSMessageStep + 1;
          if _TSMessageStep > 19 then _TSMessageStep := 0;

          if strTointDef(_TSCallNewList[2,1],0) > 0 then begin
            nGubun := 2; //�ż�
            nPrice := Round(nCallNowPrice2 * 100) - 1;
          end else if strTointDef(_TSCallNewList[2,1],0) < 0 then begin
            nGubun := 1; //�ŵ�
            nPrice := Round(nCallNowPrice2 * 100) + 1;
          end;

          if nRemainQtn2 > (_TimeCallInfo1[_CallJMNo1-1].CGQtn - _CallUnitOrderedQtn2) then
            nOrdQtn := (_TimeCallInfo1[_CallJMNo1-1].CGQtn - _CallUnitOrderedQtn2)
          else nOrdQtn := nRemainQtn2;
          nOrgNo := 0;
          nPT := 0;      //0������, 3���尡, 5���Ǻ�, 6��������
//21 ����           blnOrderSuccess_flg := fHBOMain.DongbuAPI1.SendFOrder(_ClientKeyCall2,Acnt,AcntPwd,nGubun,_TSCallNewList[0,1],nPT,nOrdQtn,nPrice,nOrgNo);
          if blnOrderSuccess_flg = false then begin// �ֹ�
            nString :=  nNowTime + ' :[' +  _TSCallNewList[0,1] + '][�ż�] �ű��ֹ� ����';
            _TSMessage[_TSMessageStep] := nString;
            _TSMessage_flg[_TSMessageStep] := True;
            _TSMessageStep := _TSMessageStep + 1;
            if _TSMessageStep > 19 then _TSMessageStep := 0;
            imgTSCallJinIp.Picture.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Off.bmp');
            imgTSCallCS.Picture.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Off.bmp');
            exit;
          end else begin
            _CallOrderDelay1_CNT := 0;
            nString :=  nNowTime + ' :[' +  _TSCallNewList[0,1] + '][�ż�] ��������[' + intTostr(nOrdQtn) + ']�ֹ�, ���� :' + formatfloat('0.00',nPrice * 0.01);
            _TSMessage[_TSMessageStep] := nString;
            _TSMessage_flg[_TSMessageStep] := True;
            _TSMessageStep := _TSMessageStep + 1;
            if _TSMessageStep > 19 then _TSMessageStep := 0;
          end;
        end else begin
          if (_TimeCallInfo2[_CallJMNo2-1].JMKey = _ClientKeyCall2) then begin
            if (_TimeCallInfo2[_CallJMNo2-1].JMQtn <> 0) and (_TimeCallInfo2[_CallJMNo2-1].CGQtn = _TimeCallInfo2[_CallJMNo2-1].JMQtn) then begin     //
              _TSCallOrderedQtn2 := _TSCallOrderedQtn2 + _TimeCallInfo2[_CallJMNo2-1].JMQtn;
              _CallUnitOrderedQtn2 := _CallUnitOrderedQtn2 + _TimeCallInfo2[_CallJMNo2-1].CGQtn;
              nRemainQtn2 := ABS(strTointDef(_TSCallNewList[2,1],-1)) - _TSCallOrderedQtn2 - 3;   // 3�� ���� ã������� ü���  ����;
              _FirstMainCallOrder_flg2 := True;

              if _CallUnitOrderedQtn1 = _CallUnitOrderQtn then
                        _FirstMainCallOrder_flg1 := True;

              _TSCallCGBY2 := _TSCallCGBY2 + _TimeCallInfo2[_CallJMNo2-1].CGPrice * _TimeCallInfo2[_CallJMNo2-1].CGQtn; // ü�� �ݾ�
              _CallOrderDelay2_CNT := 0;
              nString :=  nNowTime + ' : [' + _TimeCallInfo2[_CallJMNo2-1].JMCode + '][�ż�] ü�����:' + intTostr(_TimeCallInfo2[_CallJMNo2-1].CGQtn) + ' ���ֹ��� ���� : ' + intTostr(_TSCallOrderedQtn2);
              nString := nString + ' ��ܰ� : ' + formatfloat('0.0#', _TSCallCGBY2/(_TSCallOrderedQtn2+3));
              _TSMessage[_TSMessageStep] := nString;
              _TSMessage_flg[_TSMessageStep] := True;
              _TSMessageStep := _TSMessageStep + 1;
              if _TSMessageStep > 19 then _TSMessageStep := 0;
              if (nRemainQtn1 < 1) and (nRemainQtn2 < 1) then begin
                _TSCallStop_flg := True;
                nNowTime := formatdateTime('hhmmsszz',now);
                nString :=  nNowTime + ' : �� Ÿ�� ���ֹ� �Ϸ�';
                _TSMessage[_TSMessageStep] := nString;
                _TSMessage_flg[_TSMessageStep] := True;
                _TSMessageStep := _TSMessageStep + 1;
                if _TSMessageStep > 19 then _TSMessageStep := 0;
//                exit;
              end;
            end else if (_TimeCallInfo2[_CallJMNo2-1].JMQtn <> 0) and (_CallOrderDelay2_CNT > 50) then begin
              // ���� �ֹ�
              nNowTime := formatdateTime('hhmmsszz',now);
              nString := copy(nNowTime,5,5);
              _ClientKeyCall2 := 55000000 + (_CallJMNo2-1) * 1000; //  �ֹ� Key
              nGubun := 3; //����
              nOrdQtn := _TimeCallInfo2[_CallJMNo2-1].MCGQtn;
              if strTointDef(_TSCallNewList[2,1],0) > 0 then begin
                nPrice := Round((_TimeCallInfo2[_CallJMNo2-1].JMPrice + 0.01) * 100);
              end else if strTointDef(_TSCallNewList[2,1],0) < 0 then begin
                nPrice := Round((_TimeCallInfo2[_CallJMNo2-1].JMPrice - 0.01) * 100);
              end;
              nOrgNo :=_TimeCallInfo2[_CallJMNo2-1].OrderNo;
              _JuMunQtnError_flg := 0;
//                  _JuMunOK_flg := False;
//21 ����               blnOrderSuccess_flg := fHBOMain.DongbuAPI1.SendFOrder(_ClientKeyCall2,Acnt,AcntPwd,nGubun,_TSCallNewList[0,1],nPT,nOrdQtn,nPrice,nOrgNo);
              if blnOrderSuccess_flg = false then begin// �ֹ�
                // �ֹ� ���н� ó��
                nString :=  nNowTime + ' : �ż� �� �����ֹ� ����';
                _TSMessage[_TSMessageStep] := nString;
                _TSMessage_flg[_TSMessageStep] := True;
                _TSMessageStep := _TSMessageStep + 1;
                _TSCallStop_flg := true; // Ȥ�� ���� ���� ��� ����.
                if _TSMessageStep > 19 then _TSMessageStep := 0;
                imgTSCallJinIp.Picture.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Off.bmp');
                imgTSCallCS.Picture.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Off.bmp');
                exit;
              end else begin
                nTime_Out :=0;
                repeat
                  if nTime_Out > 6000 then begin
                    nString :=  nNowTime + ' : nTime_out �ʰ�';
                    _TSMessage[_TSMessageStep] := nString;
                    _TSMessage_flg[_TSMessageStep] := True;
                    _TSMessageStep := _TSMessageStep + 1;
                    if _TSMessageStep > 19 then _TSMessageStep := 0;
                    imgTSCallJinIp.Picture.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Off.bmp');
                    imgTSCallCS.Picture.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Off.bmp');
                    exit;
                  end;
                  delay(10);
                  inc(nTime_Out);
                until _JuMunQtnError_flg <> 0;
//                    delay(200);
                if _JuMunQtnError_flg = 1 then begin
                  _CallOrderDelay2_CNT := 0;
                  _CallOrderDelay2_CNT := 0;
                  nString :=  nNowTime + ' : [' + _TSCallNewList[0,1] + '][�ż�] ��ü�����: ' + intTostr(nOrdQtn) + ' �����ֹ�, ���� :' + formatfloat('0.00',nPrice * 0.01);
                  _TSMessage[_TSMessageStep] := nString;
                  _TSMessage_flg[_TSMessageStep] := True;
                  _TSMessageStep := _TSMessageStep + 1;
                  if _TSMessageStep > 19 then _TSMessageStep := 0;

                  if (nRemainQtn1 < 1) and (nRemainQtn2 < 1) then begin
                    _TSCallStop_flg := True;
                    nNowTime := formatdateTime('hhmmsszz',now);
                    nString :=  nNowTime + ' : �� Ÿ�� ���ֹ� �Ϸ�';
                    _TSMessage[_TSMessageStep] := nString;
                    _TSMessage_flg[_TSMessageStep] := True;
                    _TSMessageStep := _TSMessageStep + 1;
                    if _TSMessageStep > 19 then _TSMessageStep := 0;
//                    exit;
                  end;
                end;
              end;
            end else _CallOrderDelay2_CNT := _CallOrderDelay2_CNT +1 ;
          end;
        end;

        if (nRemainQtn1 <1 ) and (nRemainQtn2 < 1) then begin
          _TSCallStop_flg := true; // Ȥ�� ���� ���� ��� ����.
          _TSCallCGBY1 := _TSCallCGBY1 / (_TSCallOrderedQtn1+3);
          _TSCallCGBY2 := _TSCallCGBY2 / (_TSCallOrderedQtn2+3);
          nNowTime := formatdateTime('hhmmsszz',now);
          nString :=  nNowTime + ' : �� Ÿ�� ���ֹ� �Ϸ�, �ŵ����: ' + formatfloat('0.0#',_TSCallCGBY1) + ' �ż����: '  + formatfloat('0.0#',_TSCallCGBY2);
          nString := nString + ' �Ѻ��: ' + formatfloat('0.0#',_TSCallCGBY2-_TSCallCGBY1);
          _TSMessage[_TSMessageStep] := nString;
          _TSMessage_flg[_TSMessageStep] := True;
          _TSMessageStep := _TSMessageStep + 1;
          if _TSMessageStep > 19 then _TSMessageStep := 0;
//          exit;
        end;
      end;
    end;
  end;

  if (nRemainQtn1 < 1 ) and (nRemainQtn2 < 1) then begin
    _TSCallStop_flg := true; // Ȥ�� ���� ���� ��� ����.
    nNowTime := formatdateTime('hhmmsszz',now);
    nString :=  nNowTime + ' : �� Ÿ�� ���ֹ� �Ϸ�';
    _TSMessage[_TSMessageStep] := nString;
    _TSMessage_flg[_TSMessageStep] := True;
    _TSMessageStep := _TSMessageStep + 1;
    if _TSMessageStep > 19 then _TSMessageStep := 0;
//    exit;
  end;

  tmrCallOrder.Enabled := True;
end;

var _PricePut1, _PricePut2 : integer;

procedure TfTimeSpread.tmrPutFindTimer(Sender: TObject);
var nPutMDHG, nPutMSHG : Single;
    nString, nNowTime : string;
    nClientKey, nGubun,nOrgNo, nPrice, nPT, nOrdQtn, I, j, nTime_Out : integer;
    blnOrderSuccess_flg : boolean;
    nRow, nOrNo : integer; // ���� ��簡 ����ȣ
begin
// �ű� ����
  // ��¥ ���� ã��
  ///  �ż� �ֹ�, �ż�ȣ�� +1
  ///  �ŵ� �ֹ�, �ŵ�ȣ�� -1
  ///  delay
  ///  ü�� �ȵǸ� ����
  ///  �Ѵ� ü��Ǹ� 2�� �õ�
  ///  ���� 3���� ü��Ǹ� ��¥ ����ã�� �Ϸ�
  tmrPutFind.Enabled := False;

  if _TSPutStop_flg then begin
    imgTSPutJinIp.Picture.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Off.bmp');
    imgTSPutCS.Picture.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Off.bmp');
    exit;
  end;

  // û���̸� ������ ��� �� �ϳ��� �����ص� ���� �Ѵ�.....

  if (_TSPutCSStart_flg) and (_TSPutJinIp_flg = False) then begin
    // ������ ����� �������� ������ ���� ����
    if (_TSPutSJJiSu < (StrTofloatDef(SunMul,9999)+0.01)) and ((_TSPutEJJiSu+0.01) > StrTofloatDef(SunMul,9999)) and
        ((_TSPutEJBY - 0.005) > (StrTofloatDef(edtTSPutHGBY.Text,9999))) then begin
          tmrPutFind.Enabled := True;
          exit;// 3.8 > 3.8 -0.001
    end else begin
      _TSPutJinIp_flg := True;
    end;
  end;

  nRow := strtointDef(_TSPutNewList[5,0],-1);
  if copy(_TSPutNewList[0,0],4,2) = _DCode then begin // ����̸�
    nPutMDHG := _DWHSGListInfo[6,nRow];
    nPutMSHG := _DWHSGListInfo[5,nRow];
  end else if copy(_TSPutNewList[0,0],4,2) = _CWCode then begin // ����̸�
    nPutMDHG := _CWHSGListInfo[6,nRow];
    nPutMSHG := _CWHSGListInfo[5,nRow];
  end else if copy(_TSPutNewList[0,0],4,2) = _CCWCode then begin // ����̸�
    nPutMDHG := _CCWHSGListInfo[6,nRow];
    nPutMSHG := _CCWHSGListInfo[5,nRow];
  end else if copy(_TSPutNewList[0,0],4,2) = _WWCode then begin // ����̸�
    nPutMDHG := _WWHSGListInfo[6,nRow];
    nPutMSHG := _WWHSGListInfo[5,nRow];
  end;

  if (_FirstPutOrder_flg1) and (_TSPutFindPrice_flg1 = False) then begin // ���� ã��... ó�� �ֹ��̸�...
    _FirstPutOrder_flg1 := False;
    nNowTime := formatdateTime('hhmmsszz',now);
    nString := copy(nNowTime,5,5);
//    _ClientKeyPut1 := 66000000;
    _ClientKeyPut1 := 66000000 + (_PutJMNo1) * 1000; // ���� �ֹ� Key
    _PutJMNo1 := _PutJMNo1 + 1;

    if strTointDef(_TSPutNewList[2,0],0) > 0 then begin
      nGubun := 2; //�ż�
      _PricePut1 := Round((nPutMSHG + 0.01)*100);
    end else if strTointDef(_TSPutNewList[2,0],0) < 0 then begin
      nGubun := 1; //�ŵ�
      _PricePut1 := Round((nPutMDHG - 0.01)*100);
    end;
    nOrdQtn := 1;
    nOrgNo := 0;
    nPT := 0;      //0������, 3���尡, 5���Ǻ�, 6��������
//21 ����     blnOrderSuccess_flg := fHBOMain.DongbuAPI1.SendFOrder(_ClientKeyPut1,Acnt,AcntPwd,nGubun,_TSPutNewList[0,0],nPT,nOrdQtn,_PricePut1,nOrgNo);
    if blnOrderSuccess_flg = false then begin// �ֹ�
      nString :=  nNowTime + ' : ù��° Put���� ����ã�� 1���ֹ� ����';
//      mmoLog.Lines.Add(nString);
      _TSMessage[_TSMessageStep] := nString;
      _TSMessage_flg[_TSMessageStep] := True;
      _TSMessageStep := _TSMessageStep + 1;
      if _TSMessageStep > 19 then _TSMessageStep := 0;
      imgTSPutJinIp.Picture.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Off.bmp');
      imgTSPutCS.Picture.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Off.bmp');
      exit;
    end else begin
      nString :=  nNowTime + ' : ù��° Put���� ����ã�� 1���ֹ�';
      _TSMessage[_TSMessageStep] := nString;
      _TSMessage_flg[_TSMessageStep] := True;
      _TSMessageStep := _TSMessageStep + 1;
      if _TSMessageStep > 19 then _TSMessageStep := 0;
    end;
  end else if (_TSPutFindPrice_flg1 = False) then begin
    if (_TimePutInfo1[_PutJMNo1-1].JMKey = _ClientKeyPut1) and (_TimePutInfo1[_PutJMNo1-1].OrderNo <> 0) then begin
      if (_TimePutInfo1[_PutJMNo1-1].JMQtn <>0 ) and (_TimePutInfo1[_PutJMNo1-1].CGQtn = _TimePutInfo1[_PutJMNo1-1].JMQtn) then begin     //
        _TSPutCGBY1 := _TSPutCGBY1 + _TimePutInfo1[_PutJMNo1-1].CGPrice; // ü�ᰡ��
        _TSPFPTQtn1 := _TSPFPTQtn1 + 1;
        nString :=  nNowTime + ' : ù��° Put ������ ' + intToStr(_TSPFPTQtn1) + '��° Put ����ü��,���:' + formatfloat('0.0#',_TSCallCGBY1/_TSPFPTQtn1);
        _TSMessage[_TSMessageStep] := nString;
        _TSMessage_flg[_TSMessageStep] := True;
        _TSMessageStep := _TSMessageStep + 1;
        if _TSMessageStep > 19 then _TSMessageStep := 0;
        _FirstPutOrder_flg1 := True;

        if _TSPFPTQtn1 = 3 then begin
          _TSPutFindPrice_flg1 := True;
          _FirstPutOrder_flg1 := False;
          nString :=  nNowTime + ' : ù���� Put���� ����ã�� �Ϸ�';
          _TSMessage[_TSMessageStep] := nString;
          _TSMessage_flg[_TSMessageStep] := True;
          _TSMessageStep := _TSMessageStep + 1;
          if _TSMessageStep > 19 then _TSMessageStep := 0;
          if (_TSPutFindPrice_flg1) and (_TSPutFindPrice_flg2) then begin

            tmrPutFind.Enabled := False;
            nString :=  nNowTime + ' : Put ��ü ����ã�� �Ϸ�';
            _TSMessage[_TSMessageStep] := nString;
            _TSMessage_flg[_TSMessageStep] := True;
            _TSMessageStep := _TSMessageStep + 1;
            if _TSMessageStep > 19 then _TSMessageStep := 0;
            exit;
          end;
        end;
      end else begin
        if (_PutOrderDelay1_CNT > 10)  and (_TimePutInfo1[_PutJMNo1-1].OrderNo <> 0) then begin
          // ���� �ֹ�
          nNowTime := formatdateTime('hhmmsszz',now);
          nString := copy(nNowTime,5,5);
          _ClientKeyPut1 := 66000000 + (_PutJMNo1-1) * 1000; //  �ֹ� Key
          nGubun := 3; //����
          nOrdQtn := 1;
          if strTointDef(_TSPutNewList[2,0],0) > 0 then begin
            _PricePut1 := Round((nPutMSHG + 0.01)*100) ;// Round((nPutMSHG + 0.01)*100);
          end else if strTointDef(_TSPutNewList[2,0],0) < 0 then begin
            _PricePut1 := Round((nPutMDHG - 0.01)*100) ;//Round((nPutMDHG - 0.01)*100);
          end;
          nOrgNo := _TimePutInfo1[_PutJMNo1-1].OrderNo;
          _JuMunQtnError_flg := 0;
//21 ����           blnOrderSuccess_flg := fHBOMain.DongbuAPI1.SendFOrder(_ClientKeyPut1,Acnt,AcntPwd,nGubun,_TSPutNewList[0,0],nPT,nOrdQtn,_PricePut1,nOrgNo);

          if blnOrderSuccess_flg = false then begin// �ֹ�
            // �ֹ� ���н� ó��
            nString :=  nNowTime + ' : ù��° Put �����ֹ� ����';
            _TSMessage[_TSMessageStep] := nString;
            _TSMessage_flg[_TSMessageStep] := True;
            _TSMessageStep := _TSMessageStep + 1;
            if _TSMessageStep > 19 then _TSMessageStep := 0;
            imgTSPutJinIp.Picture.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Off.bmp');
            imgTSPutCS.Picture.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Off.bmp');
            exit;
          end else begin
            nTime_Out :=0;
            repeat
              if nTime_Out > 6000 then begin
                nString :=  nNowTime + ' : nTime_out �ʰ�';
                _TSMessage[_TSMessageStep] := nString;
                _TSMessage_flg[_TSMessageStep] := True;
                _TSMessageStep := _TSMessageStep + 1;
                if _TSMessageStep > 19 then _TSMessageStep := 0;
                imgTSPutJinIp.Picture.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Off.bmp');
                imgTSPutCS.Picture.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Off.bmp');
                exit;
              end;
              delay(10);
              int(nTime_Out);
            until _JuMunQtnError_flg <> 0;

            if _JuMunQtnError_flg = 1 then begin
              _PutOrderDelay1_CNT := 0;
              nString :=  nNowTime + ' : ù��° Put �����ֹ� Ű: ' + intTostr(_ClientKeyPut1);// + intTostr(_ClientKeyPut1);
              _TSMessage[_TSMessageStep] := nString;
              _TSMessage_flg[_TSMessageStep] := True;
              _TSMessageStep := _TSMessageStep + 1;
              if _TSMessageStep > 19 then _TSMessageStep := 0;
            end;

            if _TSPFPTQtn1 = 3 then begin
              _TSPutFindPrice_flg1 := True;
              _FirstPutOrder_flg1 := False;
              nString :=  nNowTime + ' : ù���� Put ����ã�� �Ϸ�';
              _TSMessage[_TSMessageStep] := nString;
              _TSMessage_flg[_TSMessageStep] := True;
              _TSMessageStep := _TSMessageStep + 1;
              if _TSMessageStep > 19 then _TSMessageStep := 0;

              if (_TSPutFindPrice_flg1) and (_TSPutFindPrice_flg2) then begin
                tmrPutFind.Enabled := False;
                nString :=  nNowTime + ' : Put ��ü ����ã�� �Ϸ�';
                _TSMessage[_TSMessageStep] := nString;
                _TSMessage_flg[_TSMessageStep] := True;
                _TSMessageStep := _TSMessageStep + 1;
                if _TSMessageStep > 19 then _TSMessageStep := 0;
                exit;
              end;
            end;

          end;
        end else _PutOrderDelay1_CNT := _PutOrderDelay1_CNT +1 ;
      end;
    end;
  end;

  delay(50);
  nRow := strtointDef(_TSPutNewList[5,1],-1);
  if copy(_TSPutNewList[0,1],4,2) = _DCode then begin // ����̸�
    nPutMDHG := _DWHSGListInfo[6,nRow];
    nPutMSHG := _DWHSGListInfo[5,nRow];
  end else if copy(_TSPutNewList[0,1],4,2) = _CWCode then begin // ����̸�
    nPutMDHG := _CWHSGListInfo[6,nRow];
    nPutMSHG := _CWHSGListInfo[5,nRow];
  end else if copy(_TSPutNewList[0,1],4,2) = _CCWCode then begin // ����̸�
    nPutMDHG := _CCWHSGListInfo[6,nRow];
    nPutMSHG := _CCWHSGListInfo[5,nRow];
  end else if copy(_TSPutNewList[0,1],4,2) = _WWCode then begin // ����̸�
    nPutMDHG := _WWHSGListInfo[6,nRow];
    nPutMSHG := _WWHSGListInfo[5,nRow];
  end;

  if (_FirstPutOrder_flg2) and (_TSPutFindPrice_flg2 = False) then begin // ���� ã��... ó�� �ֹ��̸�...
    nNowTime := formatdateTime('hhmmsszz',now);
    nString := copy(nNowTime,5,5);
    _ClientKeyPut2 := 77000000 + (_PutJMNo2) * 1000; // ���� �ֹ� Key
    _PutJMNo2 := _PutJMNo2 + 1;

    if strTointDef(_TSPutNewList[2,1],0) > 0 then begin
      nGubun := 2; //�ż�
      _PricePut2 := Round((nPutMSHG + 0.01)*100);
    end else if strTointDef(_TSPutNewList[2,1],0) < 0 then begin
      nGubun := 1; //�ŵ�
      _PricePut2 := Round((nPutMDHG - 0.01)*100);
    end;
    nOrdQtn := 1;
    nOrgNo := 0;
    nPT := 0;      //0������, 3���尡, 5���Ǻ�, 6��������
//21 ����     blnOrderSuccess_flg := fHBOMain.DongbuAPI1.SendFOrder(_ClientKeyPut2,Acnt,AcntPwd,nGubun,_TSPutNewList[0,1],nPT,nOrdQtn,_PricePut2,nOrgNo);
    if blnOrderSuccess_flg = false then begin// �ֹ�
      nString :=  nNowTime + ' : �ι�° Put���� ����ã�� 1���ֹ� ����';
      _TSMessage[_TSMessageStep] := nString;
      _TSMessage_flg[_TSMessageStep] := True;
      _TSMessageStep := _TSMessageStep + 1;
      if _TSMessageStep > 19 then _TSMessageStep := 0;
      imgTSPutJinIp.Picture.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Off.bmp');
      imgTSPutCS.Picture.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Off.bmp');
      exit;
    end else begin
      nString :=  nNowTime + ' : �ι�° Put���� ����ã�� 1���ֹ�';
      _TSMessage[_TSMessageStep] := nString;
      _TSMessage_flg[_TSMessageStep] := True;
      _TSMessageStep := _TSMessageStep + 1;
      if _TSMessageStep > 19 then _TSMessageStep := 0;
    end;
    _FirstPutOrder_flg2 := False;
  end else if _TSPutFindPrice_flg2 = False then begin
    if (_TimePutInfo2[_PutJMNo2-1].JMKey = _ClientKeyPut2) and (_TimePutInfo2[_PutJMNo2-1].OrderNo <> 0) then begin //771 �ι�° ǲ, 772 �ι�° ǲ, 773 �ι�° ǲ, 774 �ι�° ǲ
      if (_TimePutInfo2[_PutJMNo2-1].JMQtn <>0 ) and (_TimePutInfo2[_PutJMNo2-1].CGQtn = _TimePutInfo2[_PutJMNo2-1].JMQtn) then begin     //
        _TSPutCGBY2 := _TSPutCGBY2 + _TimePutInfo2[_PutJMNo2-1].CGPrice; // ü�ᰡ��
        _TSPFPTQtn2 := _TSPFPTQtn2 + 1;
        nString :=  nNowTime + ' : �ι��� Put ������ ' + intToStr(_TSPFPTQtn2) + '��° Put ����ü��,���:' + formatfloat('0.0#',_TSCallCGBY2/_TSPFPTQtn2);

        _TSMessage[_TSMessageStep] := nString;
        _TSMessage_flg[_TSMessageStep] := True;
        _TSMessageStep := _TSMessageStep + 1;
        if _TSMessageStep > 19 then _TSMessageStep := 0;
        _FirstPutOrder_flg2 := True;

        if _TSPFPTQtn2 = 3 then begin
          _TSPutFindPrice_flg2 := True;
          _FirstPutOrder_flg2 := False;
          nString :=  nNowTime + ' : �ι��� Put���� ����ã�� �Ϸ�';
          _TSMessage[_TSMessageStep] := nString;
          _TSMessage_flg[_TSMessageStep] := True;
          _TSMessageStep := _TSMessageStep + 1;
          if _TSMessageStep > 19 then _TSMessageStep := 0;
          if (_TSPutFindPrice_flg1) and (_TSPutFindPrice_flg2) then begin

            tmrPutFind.Enabled := False;
            nString :=  nNowTime + ' : Put ��ü ����ã�� �Ϸ�';
            _TSMessage[_TSMessageStep] := nString;
            _TSMessage_flg[_TSMessageStep] := True;
            _TSMessageStep := _TSMessageStep + 1;
            if _TSMessageStep > 19 then _TSMessageStep := 0;
            exit;
          end;
        end;
      end else begin
        if (_PutOrderDelay2_CNT > 10)  and (_TimePutInfo2[_PutJMNo2-1].OrderNo <> 0) then begin
          // ���� �ֹ�
          nNowTime := formatdateTime('hhmmsszz',now);
          nString := copy(nNowTime,5,5);
          _ClientKeyPut2 := 77000000 + (_PutJMNo2-1) * 1000; //  �ֹ� Key
          nGubun := 3; //����
          nOrdQtn := 1;
          if strTointDef(_TSPutNewList[2,1],0) > 0 then begin
            _PricePut2 := Round((nPutMSHG + 0.01)*100);//Round((nPutMSHG + 0.01)*100);
          end else if strTointDef(_TSPutNewList[2,1],0) < 0 then begin
            _PricePut2 := Round((nPutMDHG - 0.01)*100);//Round((nPutMDHG - 0.01)*100);
          end;
          nOrgNo := _TimePutInfo2[_PutJMNo2-1].OrderNo;
          _JuMunQtnError_flg := 0;
//21 ����           blnOrderSuccess_flg := fHBOMain.DongbuAPI1.SendFOrder(_ClientKeyPut2,Acnt,AcntPwd,nGubun,_TSPutNewList[0,1],nPT,nOrdQtn,_PricePut2,nOrgNo);
          if blnOrderSuccess_flg = false then begin// �ֹ�
            // �ֹ� ���н� ó��
            nString :=  nNowTime + ' : �ι�° �����ֹ� ����';
            _TSMessage[_TSMessageStep] := nString;
            _TSMessage_flg[_TSMessageStep] := True;
            _TSMessageStep := _TSMessageStep + 1;
            if _TSMessageStep > 19 then _TSMessageStep := 0;
            imgTSPutJinIp.Picture.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Off.bmp');
            imgTSPutCS.Picture.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Off.bmp');
            exit;
          end else begin
            nTime_Out :=0;
            repeat
              if nTime_Out > 6000 then begin
                nString :=  nNowTime + ' : nTime_out �ʰ�';
                _TSMessage[_TSMessageStep] := nString;
                _TSMessage_flg[_TSMessageStep] := True;
                _TSMessageStep := _TSMessageStep + 1;
                if _TSMessageStep > 19 then _TSMessageStep := 0;
                imgTSPutJinIp.Picture.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Off.bmp');
                imgTSPutCS.Picture.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Off.bmp');
                exit;
              end;
              delay(10);
              int(nTime_Out);
            until _JuMunQtnError_flg <> 0;

            if _JuMunQtnError_flg = 1 then begin
              _PutOrderDelay2_CNT := 0;
              nString :=  nNowTime + ' : �ι�° Put �����ֹ� Ű: ' + intTostr(_ClientKeyPut2);// + intTostr(_ClientKeyPut1);
              _TSMessage[_TSMessageStep] := nString;
              _TSMessage_flg[_TSMessageStep] := True;
              _TSMessageStep := _TSMessageStep + 1;
              if _TSMessageStep > 19 then _TSMessageStep := 0;
            end;

            if _TSPFPTQtn2 = 3 then begin
              _TSPutFindPrice_flg2 := True;
              _FirstPutOrder_flg2 := False;
              nString :=  nNowTime + ' : �ι�° Put���� ����ã�� �Ϸ�';
              _TSMessage[_TSMessageStep] := nString;
              _TSMessage_flg[_TSMessageStep] := True;
              _TSMessageStep := _TSMessageStep + 1;
              if _TSMessageStep > 19 then _TSMessageStep := 0;
              if (_TSPutFindPrice_flg1) and (_TSPutFindPrice_flg2) then begin

                tmrPutFind.Enabled := False;
                nString :=  nNowTime + ' : Put ��ü ����ã�� �Ϸ�';
                _TSMessage[_TSMessageStep] := nString;
                _TSMessage_flg[_TSMessageStep] := True;
                _TSMessageStep := _TSMessageStep + 1;
                if _TSMessageStep > 19 then _TSMessageStep := 0;
                exit;
              end;
            end;
          end;
        end else _PutOrderDelay2_CNT := _PutOrderDelay2_CNT +1 ;
      end;
    end;
  end;
  tmrPutFind.Enabled := True;
  // ������ �ܷ� �ֹ�
  ///  �ż� ������ �ֹ�, �ż�ȣ�� + 1
  ///  �ż� ü��� ���� ��ŭ �ŵ��ֹ� �ŵ�ȣ�� -1
  ///  �����ð� ��� �� �ż� ü���� �ȵ� ������ ���� �ֹ�
  ///  ������ �ż��� ü��� ������ŭ �ŵ� �ֹ�
end;

procedure TfTimeSpread.tmrPutOrderTimer(Sender: TObject);
var nRow1, nRow2, nRemainQtn1, nRemainQtn2 : integer; // ���� ��簡 ����ȣ
    nPutNowPrice1, nPutNowPrice2 : single;
    nString, nNowTime : string;
    nGubun,nOrgNo, nPrice, nPT, nOrdQtn, I, j, nOrNo, nTime_Out : integer;
    blnOrderSuccess_flg : boolean;
begin
  ///  ù��° ������ ���� ����������ŭ �ֹ�, �ֹ����� ���簡 ��1ƽ(������ ����)
  ///  ü���� �Ǹ� �ι�° ������ ���簡�� �ֹ�
  ///    500mSec���� ü���� �ȵǸ� ����
  if (_TSPutFindPrice_flg1 = False) or (_TSPutFindPrice_flg2 = False) then exit;
  tmrPutOrder.Enabled := False;
  if _TSPutStop_flg then begin
    imgTSPutJinIp.Picture.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Off.bmp');
    imgTSPutCS.Picture.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Off.bmp');
    exit;
  end;
  // û���̸� ������ ��� �� �ϳ��� �����ص� ���� �Ѵ�.....

  if (_TSPutCSStart_flg) and (_TSPutJinIp_flg = False) then begin
    // ������ ����� �������� ������ ���� ����
    if (_TSPutSJJiSu < (StrTofloatDef(SunMul,9999))) and ((_TSPutEJJiSu) > StrTofloatDef(SunMul,9999)) and
        (_TSPutEJBY > (StrTofloatDef(edtTSPutHGBY.Text,9999))) then  begin
          tmrPutOrder.Enabled := True;
          exit;// 3.8 > 3.8 -0.001
    end else begin
      _TSPutJinIp_flg := True;
    end;
  end;

  nRow1 := strtointDef(_TSPutNewList[5,0],-1);     //
//  if strTointDef(_TSPutNewList[2,0],0) > 0 then begin   // �ż��̸�
//    if copy(_TSPutNewList[0,0],4,2) = _DCode then begin // ����̸�
//      nPutNowPrice1 := _DWHSGListInfo[5,nRow1]; // �ż�ȣ��
//    end else if copy(_TSPutNewList[0,0],4,2) = _CWCode then begin // ����̸�
//      nPutNowPrice1 := _CWHSGListInfo[5,nRow1]; // �ż�ȣ��
//    end else if copy(_TSPutNewList[0,0],4,2) = _CCWCode then begin // ����̸�
//      nPutNowPrice1 := _CCWHSGListInfo[5,nRow1]; // �ż�ȣ��
//    end else if copy(_TSPutNewList[0,0],4,2) = _WWCode then begin // ����̸�
//      nPutNowPrice1 := _WWHSGListInfo[5,nRow1]; // �ż�ȣ��
//    end;
//  end else if strTointDef(_TSPutNewList[2,0],0) < 0 then begin
//    if copy(_TSPutNewList[0,0],4,2) = _DCode then begin // ����̸�
//      nPutNowPrice1 := _DWHSGListInfo[6,nRow1]; // �ŵ�ȣ��
//    end else if copy(_TSPutNewList[0,0],4,2) = _CWCode then begin // ����̸�
//      nPutNowPrice1 := _CWHSGListInfo[6,nRow1]; // �ŵ�ȣ��
//    end else if copy(_TSPutNewList[0,0],4,2) = _CCWCode then begin // ����̸�
//      nPutNowPrice1 := _CCWHSGListInfo[6,nRow1]; // �ŵ�ȣ��
//    end else if copy(_TSPutNewList[0,0],4,2) = _WWCode then begin // ����̸�
//      nPutNowPrice1 := _WWHSGListInfo[6,nRow1]; // �ŵ�ȣ��
//    end;
//  end;

  if copy(_TSPutNewList[0,0],4,2) = _DCode then begin // ����̸�
    nPutNowPrice1 := _DWHSGListInfo[4,nRow1]; // ���簡
  end else if copy(_TSPutNewList[0,0],4,2) = _CWCode then begin // ����̸�
    nPutNowPrice1 := _CWHSGListInfo[4,nRow1]; // ���簡
  end else if copy(_TSPutNewList[0,0],4,2) = _CCWCode then begin // ����̸�
    nPutNowPrice1 := _CCWHSGListInfo[4,nRow1]; // ���簡
  end else if copy(_TSPutNewList[0,0],4,2) = _WWCode then begin // ����̸�
    nPutNowPrice1 := _WWHSGListInfo[4,nRow1]; // ���簡
  end;


  nRemainQtn1 := ABS(strTointDef(_TSPutNewList[2,0],-1)) - _TSPutOrderedQtn1 - 3;   // 3�� ���� ã������� ü���  ����
  nRemainQtn2 := ABS(strTointDef(_TSPutNewList[2,1],-1)) - _TSPutOrderedQtn2 - 3;   // 3�� ���� ã������� ü���  ����;

  if _FirstMainPutOrder_flg1 and (nRemainQtn1 > 0) then begin  // �Ѽ����� �ֹ��� �������� ������
    _FirstMainPutOrder_flg1 := False;
//    _MainOrdr1_flg := True; // �ű� �ֹ� ������ �����ϱ� ����
    _PutUnitOrderedQtn1 := 0;
    _PutUnitOrderedQtn2 := 0;
    nNowTime := formatdateTime('hhmmsszz',now);
    nString := copy(nNowTime,5,5);
    _ClientKeyPut1 := 66000000 + (_PutJMNo1) * 1000; // ���� �ֹ� Key
    _PutJMNo1 := _PutJMNo1 + 1;

    if strTointDef(_TSPutNewList[2,0],0) > 0 then begin
      nGubun := 2; //�ż�
      nPrice := Round(nPutNowPrice1 * 100) - 1;       // ���簡 - 1
    end else if strTointDef(_TSPutNewList[2,0],0) < 0 then begin
      nGubun := 1; //�ŵ�
      nPrice := Round(nPutNowPrice1 * 100) + 1;       // ���簡 + 1
    end;

    if nRemainQtn1 > ABS(strTointDef(_TSPutNewList[3,0],0)) then
      _PutUnitOrderQtn := ABS(strTointDef(_TSPutNewList[3,0],0))
    else _PutUnitOrderQtn := nRemainQtn1;
    nOrgNo := 0;
    nPT := 0;      //0������, 3���尡, 5���Ǻ�, 6��������
//21 ����     blnOrderSuccess_flg := fHBOMain.DongbuAPI1.SendFOrder(_ClientKeyPut1,Acnt,AcntPwd,nGubun,_TSPutNewList[0,0],nPT,_PutUnitOrderQtn,nPrice,nOrgNo);
    if blnOrderSuccess_flg = false then begin// �ֹ�
      nString :=  nNowTime + '  : [' + _TSPutNewList[0,0] + '][�ŵ�] �ű� �ֹ� ����';
      _TSMessage[_TSMessageStep] := nString;
      _TSMessage_flg[_TSMessageStep] := True;
      _TSMessageStep := _TSMessageStep + 1;
      if _TSMessageStep > 19 then _TSMessageStep := 0;
      imgTSPutJinIp.Picture.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Off.bmp');
      imgTSPutCS.Picture.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Off.bmp');
      exit;
    end else begin
      _TSPutOrderedQtn1 := _TSPutOrderedQtn1 + _PutUnitOrderQtn;
      nString :=  nNowTime + ' : [' + _TSPutNewList[0,0] + '][�ŵ�] ��������['+ intTostr(_PutUnitOrderQtn) + '] �ֹ�, ���� :' + formatfloat('0.00',nPrice * 0.01);
      _TSMessage[_TSMessageStep] := nString;
      _TSMessage_flg[_TSMessageStep] := True;
      _TSMessageStep := _TSMessageStep + 1;
      if _TSMessageStep > 19 then _TSMessageStep := 0;
    end;
  end else begin
    if (_TimePutInfo1[_PutJMNo1-1].JMKey = _ClientKeyPut1) then begin
      if (_TimePutInfo1[_PutJMNo1-1].JMQtn <> 0) and ((_TimePutInfo1[_PutJMNo1-1].CGQtn - _PutUnitOrderedQtn2) > 0) then begin     //   �ŵ�ü����� - �ż��ֹ��ȼ���
        if strTointDef(_TSPutNewList[2,1],0) > 0 then begin   // �ż�
          /// ���⼭ ���� �ι�° ǲ�� �ż� �ֹ�
          nRow2 := strtointDef(_TSPutNewList[5,1],-1);
          if copy(_TSPutNewList[0,1],4,2) = _DCode then begin // ����̸�
            nPutNowPrice2 := _DWHSGListInfo[5,nRow2]; // �ż�ȣ��
          end else if copy(_TSPutNewList[0,1],4,2) = _CWCode then begin // ����̸�
            nPutNowPrice2 := _CWHSGListInfo[5,nRow2]; // �ż�ȣ��
          end else if copy(_TSPutNewList[0,1],4,2) = _CCWCode then begin // ����̸�
            nPutNowPrice2 := _CCWHSGListInfo[5,nRow2]; // �ż�ȣ��
          end else if copy(_TSPutNewList[0,1],4,2) = _WWCode then begin // ����̸�
            nPutNowPrice2 := _WWHSGListInfo[5,nRow2]; // �ż�ȣ��
          end;
        end  else if strTointDef(_TSPutNewList[2,1],0) < 0 then begin
          /// ���⼭ ���� �ι�° ǲ�� �ŵ� �ֹ�
          nRow2 := strtointDef(_TSPutNewList[5,1],-1);
          if copy(_TSPutNewList[0,1],4,2) = _DCode then begin // ����̸�
            nPutNowPrice2 := _DWHSGListInfo[6,nRow2]; // �ŵ�ȣ��
          end else if copy(_TSPutNewList[0,1],4,2) = _CWCode then begin // ����̸�
            nPutNowPrice2 := _CWHSGListInfo[6,nRow2]; // �ŵ�ȣ��
          end else if copy(_TSPutNewList[0,1],4,2) = _CCWCode then begin // ����̸�
            nPutNowPrice2 := _CCWHSGListInfo[6,nRow2]; // �ŵ�ȣ��
          end else if copy(_TSPutNewList[0,1],4,2) = _WWCode then begin // ����̸�
            nPutNowPrice2 := _WWHSGListInfo[6,nRow2]; // �ŵ�ȣ��
          end;
        end;

        if _FirstMainPutOrder_flg2 and (nRemainQtn2 > 0) then begin    // �Ѽ����� �ֹ��� �������� ������
          _FirstMainPutOrder_flg2 := False;
          _PutUnitOrderedQtn1 := _PutUnitOrderedQtn1 + _TimePutInfo1[_PutJMNo1-1].CGQtn - _PutUnitOrderedQtn2;

          nNowTime := formatdateTime('hhmmsszz',now);
          nString := copy(nNowTime,5,5);
          _ClientKeyPut2 := 77000000 + (_PutJMNo2) * 1000; // ���� �ֹ� Key
          _PutJMNo2 := _PutJMNo2 + 1;

          nRemainQtn1 := ABS((strTointDef(_TSPutNewList[2,0],-1)) - _TSPutOrderedQtn1) - 3;   // 3�� ���� ã������� ü���  ����;
          _TSPutCGBY1 := _TSPutCGBY1 + _TimePutInfo1[_PutJMNo1-1].CGPrice * _TimePutInfo1[_PutJMNo1-1].CGQtn; // ü�� �ݾ�
          nString :=  nNowTime + ' :[' + _TimePutInfo1[_PutJMNo1-1].JMCode + '][�ŵ�] ü��: ����' + intTostr(_TimePutInfo1[_PutJMNo1-1].CGQtn) + ' ���ֹ��� ���� : ' + intTostr(_TSPutOrderedQtn1);
          nString := nString + ' ��ܰ�: ' + formatfloat('0.0#', _TSPutCGBY1/(_TSPutOrderedQtn1+3));

          _TSMessage[_TSMessageStep] := nString;
          _TSMessage_flg[_TSMessageStep] := True;
          _TSMessageStep := _TSMessageStep + 1;
          if _TSMessageStep > 19 then _TSMessageStep := 0;

          if strTointDef(_TSPutNewList[2,1],0) > 0 then begin
            nGubun := 2; //�ż�
            nPrice := Round(nPutNowPrice2 * 100) - 1;
          end else if strTointDef(_TSPutNewList[2,1],0) < 0 then begin
            nGubun := 1; //�ŵ�
            nPrice := Round(nPutNowPrice2 * 100) + 1;
          end;

          if nRemainQtn2 > (_TimePutInfo1[_PutJMNo1-1].CGQtn - _PutUnitOrderedQtn2) then
            nOrdQtn := (_TimePutInfo1[_PutJMNo1-1].CGQtn - _PutUnitOrderedQtn2)
          else nOrdQtn := nRemainQtn2;
          nOrgNo := 0;
          nPT := 0;      //0������, 3���尡, 5���Ǻ�, 6��������
//21 ����           blnOrderSuccess_flg := fHBOMain.DongbuAPI1.SendFOrder(_ClientKeyPut2,Acnt,AcntPwd,nGubun,_TSPutNewList[0,1],nPT,nOrdQtn,nPrice,nOrgNo);
          if blnOrderSuccess_flg = false then begin// �ֹ�
            nString :=  nNowTime + ' :[' +  _TSPutNewList[0,1] + '][�ż�] �ű��ֹ� ����';
            _TSMessage[_TSMessageStep] := nString;
            _TSMessage_flg[_TSMessageStep] := True;
            _TSMessageStep := _TSMessageStep + 1;
            if _TSMessageStep > 19 then _TSMessageStep := 0;
            imgTSPutJinIp.Picture.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Off.bmp');
            imgTSPutCS.Picture.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Off.bmp');
            exit;
          end else begin
            _PutOrderDelay1_CNT := 0;
            nString :=  nNowTime + ' :[' +  _TSPutNewList[0,1] + '][�ż�] ��������[' + intTostr(nOrdQtn) + ']�ֹ�, ���� :' + formatfloat('0.00',nPrice * 0.01);
            _TSMessage[_TSMessageStep] := nString;
            _TSMessage_flg[_TSMessageStep] := True;
            _TSMessageStep := _TSMessageStep + 1;
            if _TSMessageStep > 19 then _TSMessageStep := 0;
          end;
        end else begin
          if (_TimePutInfo2[_PutJMNo2-1].JMKey = _ClientKeyPut2) then begin
            if (_TimePutInfo2[_PutJMNo2-1].JMQtn <> 0) and (_TimePutInfo2[_PutJMNo2-1].CGQtn = _TimePutInfo2[_PutJMNo2-1].JMQtn) then begin     //
              _TSPutOrderedQtn2 := _TSPutOrderedQtn2 + _TimePutInfo2[_PutJMNo2-1].JMQtn;
              _PutUnitOrderedQtn2 := _PutUnitOrderedQtn2 + _TimePutInfo2[_PutJMNo2-1].CGQtn;
              nRemainQtn2 := ABS(strTointDef(_TSPutNewList[2,1],-1)) - _TSPutOrderedQtn2 - 3;   // 3�� ���� ã������� ü���  ����;
              _FirstMainPutOrder_flg2 := True;

              if _PutUnitOrderedQtn1 = _PutUnitOrderQtn then
                        _FirstMainPutOrder_flg1 := True;

              _TSPutCGBY2 := _TSPutCGBY2 + _TimePutInfo2[_PutJMNo2-1].CGPrice * _TimePutInfo2[_PutJMNo2-1].CGQtn; // ü�� �ݾ�
              _PutOrderDelay2_CNT := 0;
              nString :=  nNowTime + ' : [' + _TimePutInfo2[_PutJMNo2-1].JMCode + '][�ż�] ü�����:' + intTostr(_TimePutInfo2[_PutJMNo2-1].CGQtn) + ' ���ֹ��� ���� : ' + intTostr(_TSPutOrderedQtn2);
              nString := nString + ' ��ܰ� : ' + formatfloat('0.0#', _TSPutCGBY2/(_TSPutOrderedQtn2+3));

              _TSMessage[_TSMessageStep] := nString;
              _TSMessage_flg[_TSMessageStep] := True;
              _TSMessageStep := _TSMessageStep + 1;
              if _TSMessageStep > 19 then _TSMessageStep := 0;
              if (nRemainQtn1 < 1) and (nRemainQtn2 < 1) then begin
                _TSPutStop_flg := True;
                nNowTime := formatdateTime('hhmmsszz',now);
                nString :=  nNowTime + ' : ǲ Ÿ�� ���ֹ� �Ϸ�';
                _TSMessage[_TSMessageStep] := nString;
                _TSMessage_flg[_TSMessageStep] := True;
                _TSMessageStep := _TSMessageStep + 1;
                if _TSMessageStep > 19 then _TSMessageStep := 0;
//                exit;
              end;
            end else if (_TimePutInfo2[_PutJMNo2-1].JMQtn <> 0) and (_PutOrderDelay2_CNT > 50) then begin
              // ���� �ֹ�
              nNowTime := formatdateTime('hhmmsszz',now);
              nString := copy(nNowTime,5,5);
              _ClientKeyPut2 := 77000000 + (_PutJMNo2-1) * 1000; //  �ֹ� Key
              nGubun := 3; //����
              nOrdQtn := _TimePutInfo2[_PutJMNo2-1].MCGQtn;
              if strTointDef(_TSPutNewList[2,1],0) > 0 then begin
                nPrice := Round((_TimePutInfo2[_PutJMNo2-1].JMPrice + 0.01) * 100);
              end else if strTointDef(_TSPutNewList[2,1],0) < 0 then begin
                nPrice := Round((_TimePutInfo2[_PutJMNo2-1].JMPrice - 0.01) * 100);
              end;
              nOrgNo :=_TimePutInfo2[_PutJMNo2-1].OrderNo;
              _JuMunQtnError_flg := 0;
//                  _JuMunOK_flg := False;
//21 ����               blnOrderSuccess_flg := fHBOMain.DongbuAPI1.SendFOrder(_ClientKeyPut2,Acnt,AcntPwd,nGubun,_TSPutNewList[0,1],nPT,nOrdQtn,nPrice,nOrgNo);
              if blnOrderSuccess_flg = false then begin// �ֹ�
                // �ֹ� ���н� ó��
                nString :=  nNowTime + ' : �ż� ǲ �����ֹ� ����';
                _TSMessage[_TSMessageStep] := nString;
                _TSMessage_flg[_TSMessageStep] := True;
                _TSMessageStep := _TSMessageStep + 1;
                _TSPutStop_flg := true; // Ȥ�� ���� ���� ��� ����.
                if _TSMessageStep > 19 then _TSMessageStep := 0;
                imgTSPutJinIp.Picture.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Off.bmp');
                imgTSPutCS.Picture.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Off.bmp');
                exit;
              end else begin
                nTime_Out :=0;
                repeat
                  if nTime_Out > 6000 then begin
                    nString :=  nNowTime + ' : nTime_out �ʰ�';
                    _TSMessage[_TSMessageStep] := nString;
                    _TSMessage_flg[_TSMessageStep] := True;
                    _TSMessageStep := _TSMessageStep + 1;
                    if _TSMessageStep > 19 then _TSMessageStep := 0;
                    imgTSPutJinIp.Picture.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Off.bmp');
                    imgTSPutCS.Picture.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Off.bmp');
                    exit;
                  end;
                  delay(10);
                  inc(nTime_Out);
                until _JuMunQtnError_flg <> 0;
//                    delay(200);
                if _JuMunQtnError_flg = 1 then begin
                  _PutOrderDelay2_CNT := 0;
                  _PutOrderDelay2_CNT := 0;
                  nString :=  nNowTime + ' : [' + _TSPutNewList[0,1] + '][�ż�] ��ü�����: ' + intTostr(nOrdQtn) + ' �����ֹ�, ���� :' + formatfloat('0.00',nPrice * 0.01);
                  _TSMessage[_TSMessageStep] := nString;
                  _TSMessage_flg[_TSMessageStep] := True;
                  _TSMessageStep := _TSMessageStep + 1;
                  if _TSMessageStep > 19 then _TSMessageStep := 0;

                  if (nRemainQtn1 < 1) and (nRemainQtn2 < 1) then begin
                    _TSPutStop_flg := True;
                    nNowTime := formatdateTime('hhmmsszz',now);
                    nString :=  nNowTime + ' : ǲ Ÿ�� ���ֹ� �Ϸ�';
                    _TSMessage[_TSMessageStep] := nString;
                    _TSMessage_flg[_TSMessageStep] := True;
                    _TSMessageStep := _TSMessageStep + 1;
                    if _TSMessageStep > 19 then _TSMessageStep := 0;
//                    exit;
                  end;
                end;
              end;
            end else _PutOrderDelay2_CNT := _PutOrderDelay2_CNT +1 ;
          end;
        end;

        if (nRemainQtn1 <1 ) and (nRemainQtn2 < 1) then begin
          _TSPutStop_flg := true; // Ȥ�� ���� ���� ��� ����.
          nNowTime := formatdateTime('hhmmsszz',now);
          nString :=  nNowTime + ' : ǲ Ÿ�� ���ֹ� �Ϸ�';
          _TSMessage[_TSMessageStep] := nString;
          _TSMessage_flg[_TSMessageStep] := True;
          _TSMessageStep := _TSMessageStep + 1;
          if _TSMessageStep > 19 then _TSMessageStep := 0;
//          exit;
        end;

      end;
    end;
  end;

  if (nRemainQtn1 < 1 ) and (nRemainQtn2 < 1) then begin
    _TSPutStop_flg := true; // Ȥ�� ���� ���� ��� ����.
    nNowTime := formatdateTime('hhmmsszz',now);
    nString :=  nNowTime + ' : ǲ Ÿ�� ���ֹ� �Ϸ�';
    _TSMessage[_TSMessageStep] := nString;
    _TSMessage_flg[_TSMessageStep] := True;
    _TSMessageStep := _TSMessageStep + 1;
    if _TSMessageStep > 19 then _TSMessageStep := 0;
//    exit;
  end;

  tmrPutOrder.Enabled := True;
end;

procedure TfTimeSpread.tmrTSMessageTimer(Sender: TObject);
var i : integer;
begin
  for I := 0 to 19 do
    if _TSMessage_flg[i] then begin
      mmoLog.Lines.Add(_TSMessage[i]);
      _TSMessage_flg[i] := False;
    end;
end;

var _PreClientKeyPut1, _PreTSOrderIndexPut1, _PreClientKeyPut2, _PreTSOrderIndexPut2 : integer;

procedure TfTimeSpread.tmrTSPutPrice2Timer(Sender: TObject);
var i, nRowNo : integer;
    strJMCode, strYMonthCode, strOldHoga, strNewHoga : string;
    nMMType : string; // �ż� �ŵ� Ȯ��
    snValue : single;
begin
//  tmrTSPutPrice2.Enabled := False;
  ///  1. ���� Ȯ��
  for i := 0 to 1 do begin
    strJMCode := _TSPutNewList[0,i];
    if strJMCode <> '' then begin
      strYMonthCode := copy(strJMCode, 4,2); ///  2. ���� �� ���� Ȯ��
      nRowNo := strTointDef(_TSPutNewList[5,i],-1);  ///  3. Row��ȣ Ȯ��
      nMMType := copy(_TSPutNewList[2,i],1,1);   ///  4. �ż�, �ŵ� Ȯ�� - �̰ų� �����̰ų�.
      strOldHoga := _TSPutNewList[1,i]; // ���� ȣ�� Ȯ��
      if strYMonthCode = _DCode then
        strNewHoga := formatfloat('#0.00',_DWHSGListInfo[4,nRowNo])
      else if strYMonthCode = _CWCode then //���� �ڵ��̸�
        strNewHoga := formatfloat('#0.00',_CWHSGListInfo[4,nRowNo])
      else if strYMonthCode = _CCWCode then //������ �ڵ��̸�
        strNewHoga := formatfloat('#0.00',_CCWHSGListInfo[4,nRowNo])
      else if strYMonthCode = _WWCode then  //���� �ڵ��̸�
        strNewHoga := formatfloat('#0.00',_WWHSGListInfo[4,nRowNo]);

      if strOldHoga <> strNewHoga then begin
        _TSPutNewList[1,i] := strNewHoga;   ///  5. �ٸ��� ǥ��
        stgTSPutList.Cells[1,i] := strNewHoga;
        // �����
        if strTointDef(_TSPutNewList[2,0],0) > 0 then   //�ż�
          snValue :=  strTofloatDef(_TSPutNewList[1,0],0)
        else  snValue := strTofloatDef(_TSPutNewList[1,0],0) * (-1);

        if strTointDef(_TSPutNewList[2,1],0) > 0 then   //�ż�
          snValue := snValue + strTofloatDef(_TSPutNewList[1,1],0)
        else  snValue := snValue - strTofloatDef(_TSPutNewList[1,1],0);
        edtTSPutHGBY.Text := formatfloat('0.00',snValue);
      end;
    end;
  end;
//  tmrTSPutPrice2.Enabled := True;
end;

procedure TfTimeSpread.tmrTSPutPriceTimer(Sender: TObject);
var snValue : single;
    nRow1, nRow2, i : integer;
    nMeTime : string;
    nChartInput_flg : boolean;
begin
//  tmrTSPutPrice.Enabled := False;
//  try
//    nRow1 := strTointDef(_TSPutNewList[5,0],-1);
//    nRow2 := strTointDef(_TSPutNewList[5,1],-1);
//    nChartInput_flg := False;
//    for I := 0 to 65 do begin
//      if copy(_TSPutNewList[0,0],4,2) = _DCode  then begin // ����̸�
//        if (nRow1 = i) and _DWRTPutIndex[i] then begin
//          _DWRTPutIndex[i] := False;
//          _TSPutNowPrice1 := _DWHSGListInfo[4,nRow1];
//          _TSPutMDHG1 := _DWHSGListInfo[6,nRow1];
//          _TSPutMSHG1 := _DWHSGListInfo[5,nRow1];
//          nChartInput_flg := True;
//        end;
//      end else if copy(_TSPutNewList[0,0],4,2) = _CWCode  then begin // ����̸�
//        if (nRow1 = i) and (_CWRTPutIndex[i]) then begin
//          _CWRTPutIndex[i] := False;
//          _TSPutNowPrice1 := _CWHSGListInfo[4,nRow1];
//          _TSPutMDHG1 := _CWHSGListInfo[6,nRow1];
//          _TSPutMSHG1 := _CWHSGListInfo[5,nRow1];
//          nChartInput_flg := True;
//        end;
//      end else if copy(_TSPutNewList[0,0],4,2) = _CCWCode  then begin // ����̸�
//        if (nRow1 = i) and (_CCWRTPutIndex[i]) then begin
//          _CCWRTPutIndex[i] := False;
//          _TSPutNowPrice1 := _CCWHSGListInfo[4,nRow1];
//          _TSPutMDHG1 := _CCWHSGListInfo[6,nRow1];
//          _TSPutMSHG1 := _CCWHSGListInfo[5,nRow1];
//          nChartInput_flg := True;
//        end;
//      end else if copy(_TSPutNewList[0,0],4,2) = _WWCode  then begin // ����̸�
//        if (nRow1 = i) and (_WWRTPutIndex[i]) then begin
//          _WWRTPutIndex[i] := False;
//          _TSPutNowPrice1 := _WWHSGListInfo[4,nRow1];
//          _TSPutMDHG1 := _WWHSGListInfo[6,nRow1];
//          _TSPutMSHG1 := _WWHSGListInfo[5,nRow1];
//          nChartInput_flg := True;
//        end;
//      end;
//
//      if copy(_TSPutNewList[0,1],4,2) = _DCode  then begin // ����̸�
//        if (nRow2 = i) and (_DWRTPutIndex[i]) then begin
//          _DWRTPutIndex[i] := False;
//          _TSPutNowPrice2 := _DWHSGListInfo[4,nRow2];
//          _TSPutMDHG2 := _DWHSGListInfo[6,nRow2];
//          _TSPutMSHG2 := _DWHSGListInfo[5,nRow2];
//          nChartInput_flg := True;
//        end;
//      end else if copy(_TSPutNewList[0,1],4,2) = _CWCode  then begin // ����̸�
//        if (nRow2 = i) and (_CWRTPutIndex[i]) then begin
//          _CWRTPutIndex[i] := False;
//          _TSPutNowPrice2 := _CWHSGListInfo[4,nRow2];
//          _TSPutMDHG2 := _CWHSGListInfo[6,nRow2];
//          _TSPutMSHG2 := _CWHSGListInfo[5,nRow2];
//          nChartInput_flg := True;
//        end;
//      end else if copy(_TSPutNewList[0,1],4,2) = _CCWCode  then begin // ����̸�
//        if (nRow2 = i) and (_CCWRTPutIndex[i])then begin
//          _CCWRTPutIndex[i] := False;
//          _TSPutNowPrice2 := _CCWHSGListInfo[4,nRow2];
//          _TSPutMDHG2 := _CCWHSGListInfo[6,nRow2];
//          _TSPutMSHG2 := _CCWHSGListInfo[5,nRow2];
//          nChartInput_flg := True;
//        end;
//      end else if copy(_TSPutNewList[0,1],4,2) = _WWCode  then begin // ����̸�
//        if (nRow2 = i) and (_WWRTPutIndex[i]) then begin
//          _WWRTPutIndex[i] := False;
//          _TSPutNowPrice2 := _WWHSGListInfo[4,nRow2];
//          _TSPutMDHG2 := _WWHSGListInfo[6,nRow2];
//          _TSPutMSHG2 := _WWHSGListInfo[5,nRow2];
//          nChartInput_flg := True;
//        end;
//      end;
//    end;
//
//    if nChartInput_flg then begin
//      nChartInput_flg := False;
//      if strTointDef(_TSPutNewList[2,0],0) > 0 then   //�ż�
//        snValue :=  _TSPutMDHG1
//      else  snValue := _TSPutMSHG1 * (-1);
//
//      if strTointDef(_TSPutNewList[2,1],0) > 0 then   //�ż�
//        snValue := snValue + _TSPutMDHG2
//      else  snValue := snValue - _TSPutMSHG2;
//      edtTSPutHGBY.Text := formatfloat('0.00',snValue);
//
//      _TSPutNewList[1,0] := formatfloat('0.00',_TSPutNowPrice1);
//      _TSPutNewList[1,1] := formatfloat('0.00',_TSPutNowPrice2);
//      stgTSPutList.Cells[1,0] := _TSPutNewList[1,0];
//      stgTSPutList.Cells[1,1] := _TSPutNewList[1,1];
//
//
//    end;
//  except
//  end;
//  tmrTSPutPrice.Enabled := True;
end;

procedure TfTimeSpread.tmrTSCallPrice2Timer(Sender: TObject);
var i, nRowNo : integer;
    strJMCode, strYMonthCode, strOldHoga, strNewHoga : string;
    nMMType : string; // �ż� �ŵ� Ȯ��
    snValue : single;
begin
//  tmrTSCallPrice2.Enabled := False;
  ///  1. ���� Ȯ��
  for i := 0 to 1 do begin
    strJMCode := _TSCallNewList[0,i];
    if strJMCode <> '' then begin
      strYMonthCode := copy(strJMCode, 4,2); ///  2. ���� �� ���� Ȯ��
      nRowNo := strTointDef(_TSCallNewList[5,i],-1);  ///  3. Row��ȣ Ȯ��
      nMMType := copy(_TSCallNewList[2,i],1,1);   ///  4. �ż�, �ŵ� Ȯ�� - �̰ų� �����̰ų�.
      strOldHoga := _TSCallNewList[1,i]; // ���� ȣ�� Ȯ��
      if strYMonthCode = _DCode then
        strNewHoga := formatfloat('#0.00',_DWHSGListInfo[2,nRowNo])
      else if strYMonthCode = _CWCode then //���� �ڵ��̸�
        strNewHoga := formatfloat('#0.00',_CWHSGListInfo[2,nRowNo])
      else if strYMonthCode = _CCWCode then //������ �ڵ��̸�
        strNewHoga := formatfloat('#0.00',_CCWHSGListInfo[2,nRowNo])
      else if strYMonthCode = _WWCode then  //���� �ڵ��̸�
        strNewHoga := formatfloat('#0.00',_WWHSGListInfo[2,nRowNo]);

      if strOldHoga <> strNewHoga then begin
        _TSCallNewList[1,i] := strNewHoga;   ///  5. �ٸ��� ǥ��
        stgTSCallList.Cells[1,i] := strNewHoga;
        // �����
        if strTointDef(_TSCallNewList[2,0],0) > 0 then   //�ż�
          snValue :=  strTofloatDef(_TSCallNewList[1,0],0)
        else  snValue := strTofloatDef(_TSCallNewList[1,0],0) * (-1);

        if strTointDef(_TSCallNewList[2,1],0) > 0 then   //�ż�
          snValue := snValue + strTofloatDef(_TSCallNewList[1,1],0)
        else  snValue := snValue - strTofloatDef(_TSCallNewList[1,1],0);
        edtTSCallHGBY.Text := formatfloat('0.00',snValue);
      end;
    end;
  end;
//  tmrTSCallPrice2.Enabled := True;
end;

procedure TfTimeSpread.tmrTSCallPriceTimer(Sender: TObject);
var snValue : single;
    nRow1, nRow2, i : integer;
    nMeTime : string;
    nChartInput_flg : boolean;
begin
//  tmrTSCallPrice.Enabled := False;
//  try
//    nRow1 := strTointDef(_TSCallNewList[5,0],-1);
//    nRow2 := strTointDef(_TSCallNewList[5,1],-1);
//    nChartInput_flg := False;
//    for I := 0 to 65 do begin
//      if copy(_TSCallNewList[0,0],4,2) = _DCode  then begin // ����̸�
//        if (nRow1 = i) and _DWTSCallIndex[i] then begin
//          _DWTSCallIndex[i] := False;
//          _TSCallNowPrice1 := _DWHSGListInfo[2,nRow1];
//          _TSCallMDHG1 := _DWHSGListInfo[0,nRow1];
//          _TSCallMSHG1 := _DWHSGListInfo[1,nRow1];
//          nChartInput_flg := True;
//        end;
//      end else if copy(_TSCallNewList[0,0],4,2) = _CWCode  then begin // ����̸�
//        if (nRow1 = i) and (_CWTSCallIndex[i]) then begin
//          _CWTSCallIndex[i] := False;
//          _TSCallNowPrice1 := _CWHSGListInfo[2,nRow1];
//          _TSCallMDHG1 := _CWHSGListInfo[0,nRow1];
//          _TSCallMSHG1 := _CWHSGListInfo[1,nRow1];
//          nChartInput_flg := True;
//        end;
//      end else if copy(_TSCallNewList[0,0],4,2) = _CCWCode  then begin // ����̸�
//        if (nRow1 = i) and (_CCWTSCallIndex[i]) then begin
//          _CCWTSCallIndex[i] := False;
//          _TSCallNowPrice1 := _CCWHSGListInfo[2,nRow1];
//          _TSCallMDHG1 := _CCWHSGListInfo[0,nRow1];
//          _TSCallMSHG1 := _CCWHSGListInfo[1,nRow1];
//          nChartInput_flg := True;
//        end;
//      end else if copy(_TSCallNewList[0,0],4,2) = _WWCode  then begin // ����̸�
//        if (nRow1 = i) and (_WWTSCallIndex[i]) then begin
//          _WWTSCallIndex[i] := False;
//          _TSCallNowPrice1 := _WWHSGListInfo[2,nRow1];
//          _TSCallMDHG1 := _WWHSGListInfo[0,nRow1];
//          _TSCallMSHG1 := _WWHSGListInfo[1,nRow1];
//          nChartInput_flg := True;
//        end;
//      end;
//
//      if copy(_TSCallNewList[0,1],4,2) = _DCode  then begin // ����̸�
//        if (nRow2 = i) and (_DWTSCallIndex[i]) then begin
//          _DWTSCallIndex[i] := False;
//          _TSCallNowPrice2 := _DWHSGListInfo[2,nRow2];
//          _TSCallMDHG2 := _DWHSGListInfo[0,nRow2];
//          _TSCallMSHG2 := _DWHSGListInfo[1,nRow2];
//          nChartInput_flg := True;
//        end;
//      end else if copy(_TSCallNewList[0,1],4,2) = _CWCode  then begin // ����̸�
//        if (nRow2 = i) and (_CWTSCallIndex[i]) then begin
//          _CWTSCallIndex[i] := False;
//          _TSCallNowPrice2 := _CWHSGListInfo[2,nRow2];
//          _TSCallMDHG2 := _CWHSGListInfo[0,nRow2];
//          _TSCallMSHG2 := _CWHSGListInfo[1,nRow2];
//          nChartInput_flg := True;
//        end;
//      end else if copy(_TSCallNewList[0,1],4,2) = _CCWCode  then begin // ����̸�
//        if (nRow2 = i) and (_CCWTSCallIndex[i])then begin
//          _CCWTSCallIndex[i] := False;
//          _TSCallNowPrice2 := _CCWHSGListInfo[2,nRow2];
//          _TSCallMDHG2 := _CCWHSGListInfo[0,nRow2];
//          _TSCallMSHG2 := _CCWHSGListInfo[1,nRow2];
//          nChartInput_flg := True;
//        end;
//      end else if copy(_TSCallNewList[0,1],4,2) = _WWCode  then begin // ����̸�
//        if (nRow2 = i) and (_WWTSCallIndex[i]) then begin
//          _WWTSCallIndex[i] := False;
//          _TSCallNowPrice2 := _WWHSGListInfo[2,nRow2];
//          _TSCallMDHG2 := _WWHSGListInfo[0,nRow2];
//          _TSCallMSHG2 := _WWHSGListInfo[1,nRow2];
//          nChartInput_flg := True;
//        end;
//      end;
//    end;
//
//    if nChartInput_flg then begin
//      nChartInput_flg := False;
//      if strTointDef(_TSCallNewList[2,0],0) > 0 then   //�ż�
//        snValue :=  _TSCallMDHG1
//      else  snValue := _TSCallMSHG1 * (-1);
//
//      if strTointDef(_TSCallNewList[2,1],0) > 0 then   //�ż�
//        snValue := snValue + _TSCallMDHG2
//      else  snValue := snValue - _TSCallMSHG2;
//      edtTSCallHGBY.Text := formatfloat('0.00',snValue);
//
//      _TSCallNewList[1,0] := formatfloat('0.00',_TSCallNowPrice1);
//      _TSCallNewList[1,1] := formatfloat('0.00',_TSCallNowPrice2);
//      stgTSCallList.Cells[1,0] := _TSCallNewList[1,0];
//      stgTSCallList.Cells[1,1] := _TSCallNewList[1,1];
//    end;
//  except
//  end;
//  tmrTSCallPrice.Enabled := True;
end;

end.

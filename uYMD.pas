unit uYMD;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.Buttons, Vcl.Mask;

type

//  BTJM = record // ���� �ֹ��� �ʿ��� ����
//    JMKey : integer;
//    OrderNo : integer;
//    JMCode : string[8];
//    MMGB : integer; // �Ÿű���
//    JMPrice : single ; // �ֹ���
//    JMQtn : integer; //�ֹ�����
//    CGPrice : single ;// ü�ᰡ
//    CGQtn : integer; // ü�����
//    MCGQtn : integer;// ��ü�� ����
//    WJMNo : integer; // ���ֹ���ȣ
//    UH : string[20]; // ���� - �뵵 ��
//  end;

  TfYMD = class(TForm)
    GroupBox2: TGroupBox;
    Label12: TLabel;
    Label17: TLabel;
    Label21: TLabel;
    Label27: TLabel;
    btnYMDAutoStart: TSpeedButton;
    btnYMDAutoStop: TSpeedButton;
    Label76: TLabel;
    Label40: TLabel;
    Label28: TLabel;
    Label65: TLabel;
    Label70: TLabel;
    lbeYMDRatioNow: TLabel;
    stgYMD: TStringGrid;
    StringGrid8: TStringGrid;
    rdbYMDList1: TRadioButton;
    rdbYMDList2: TRadioButton;
    rdbYMDList3: TRadioButton;
    rdbYMDList4: TRadioButton;
    Button17: TButton;
    GroupBox3: TGroupBox;
    Label77: TLabel;
    Label78: TLabel;
    Label82: TLabel;
    Label84: TLabel;
    Label34: TLabel;
    Label47: TLabel;
    Label62: TLabel;
    ckbYMDAutoOrder: TCheckBox;
    ledYMDCNT: TLabeledEdit;
    edtYMDUnit: TEdit;
    edtYMDStart: TEdit;
    edtYMDStop: TEdit;
    ledYMDUpJiSu: TLabeledEdit;
    ledYMDDownJiSu: TLabeledEdit;
    edtYMDChange: TEdit;
    Button65: TButton;
    Button70: TButton;
    ledYMDCSLevel: TLabeledEdit;
    edtYMDOldBY: TEdit;
    edtYMDNewBY: TEdit;
    SpinButton5: TSpinButton;
    SpinButton6: TSpinButton;
    SpinButton7: TSpinButton;
    Button72: TButton;
    Button34: TButton;
    Button37: TButton;
    edtYMDOldQtn: TEdit;
    mmoYMDLog: TMemo;
    Button10: TButton;
    edtYMDNewQtn: TEdit;
    edtMultiQtn: TEdit;
    Button33: TButton;
    edtYMDWG: TEdit;
    ckbYMDFirstNew: TCheckBox;
    ckbYMDJMChoice: TCheckBox;
    SpinButton12: TSpinButton;
    SpinButton13: TSpinButton;
    tmrYMDCheck: TTimer;
    tmrYMDPrice: TTimer;
    mmoSaveUIValue: TMemo;
    tmrYMDOrder: TTimer;
    tmrYMDPrice2: TTimer;
    procedure Button34Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure rdbYMDList1Click(Sender: TObject);
    procedure rdbYMDList2Click(Sender: TObject);
    procedure rdbYMDList3Click(Sender: TObject);
    procedure rdbYMDList4Click(Sender: TObject);
    procedure Button37Click(Sender: TObject);
    procedure edtYMDOldQtnChange(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button33Click(Sender: TObject);
    procedure ckbYMDFirstNewClick(Sender: TObject);
    procedure ckbYMDJMChoiceClick(Sender: TObject);
    procedure tmrYMDCheckTimer(Sender: TObject);
    procedure btnYMDAutoStartClick(Sender: TObject);
    procedure btnYMDAutoStopClick(Sender: TObject);
    procedure ckbYMDAutoOrderClick(Sender: TObject);
    procedure Button65Click(Sender: TObject);
    procedure Button70Click(Sender: TObject);
    procedure Button72Click(Sender: TObject);
    procedure ledYMDUpJiSuChange(Sender: TObject);
    procedure ledYMDDownJiSuChange(Sender: TObject);
    procedure ledYMDCSLevelChange(Sender: TObject);
    procedure edtYMDUnitChange(Sender: TObject);
    procedure ledYMDCNTChange(Sender: TObject);
    procedure SpinButton6DownClick(Sender: TObject);
    procedure SpinButton6UpClick(Sender: TObject);
    procedure SpinButton5UpClick(Sender: TObject);
    procedure SpinButton5DownClick(Sender: TObject);
    procedure edtYMDStartChange(Sender: TObject);
    procedure edtYMDStopChange(Sender: TObject);
    procedure edtYMDChangeChange(Sender: TObject);
    procedure SpinButton7DownClick(Sender: TObject);
    procedure SpinButton7UpClick(Sender: TObject);
    procedure Label65Click(Sender: TObject);
    procedure Label70Click(Sender: TObject);
    procedure tmrYMDPriceTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure StringGrid8Exit(Sender: TObject);
    procedure stgYMDSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure stgYMDDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect;
      State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpinButton12DownClick(Sender: TObject);
    procedure SpinButton12UpClick(Sender: TObject);
    procedure SpinButton13UpClick(Sender: TObject);
    procedure SpinButton13DownClick(Sender: TObject);
    procedure tmrYMDOrderTimer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure stgYMDExit(Sender: TObject);
    procedure stgYMDMouseLeave(Sender: TObject);
    procedure StringGrid8MouseLeave(Sender: TObject);
    procedure tmrYMDPrice2Timer(Sender: TObject);
    procedure StringGrid8MouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure StringGrid8MouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure stgYMDMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure stgYMDMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);

  private
    procedure YMDInsertValue;
    procedure YMDJMChoice;
    procedure YMDOrderInfoClear;
    procedure YMDRatioNew(nStep: integer);
//    procedure YMDInsertGrid;
//    procedure PSTOpenUIValue;
//    procedure PSTSaveUIValue;
    procedure YMDOldStep(nStep: integer);
    procedure YMDNewStep(nStep: integer);
    procedure YMDCheck;

  public
    { Public declarations }
    procedure VisibleChanging; override;
    procedure PSTOpenUIValue;
    procedure PSTSaveUIValue;
  end;

var
  fYMD: TfYMD;
    First_Activate : boolean; //ȭ�� ���Ŀ�
    // ��ŵ� ����     YMDList
   _YMDSelectNo : integer = 0;

   _YMDNewGC_flg, _YMDOldCS_flg, _YMDChange_flg, _YMDRatio_flg, _YMDFirstNew_flg : boolean;
   _YMDNewCnt, _YMDOldCnt, _YMDChangeCnt, _YDMStart, _YDMStop, _YDMChangeTime : integer;
   _YMDJSUp,_YMDJSDown,_YMDBYLevel, _YMDCntLevel : single; // ��ŵ� ���, �Ϲ�, ��뷹��, ����ű� ���.

   _YMDOrderNo : array[0..3] of integer; // ��ŵ� �����ѹ� ����Ʈ , �ǽð� ü�� �� CaseString �� �ϱ� ���� ���
   _YMDOrderedQtn : array[0..3] of integer; // ��ŵ� �ֹ��� ����
   _YMDIndex : integer; //_YMDIndex, _YMDRTIndex : integer;
   _YMDLogString : string; // ��ŵ� �ڵ� �ֹ� ���� ���
   _YMDDGPosition, ClientKey : integer; // ��ŵ� � ������
   flg_YMD : boolean; // ��ŵ� �ֹ� �÷���


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

procedure TfYMD.VisibleChanging;
begin
 // inherited;
end;

procedure TfYMD.btnYMDAutoStartClick(Sender: TObject);
var  nString : string;
begin
  if MessageDlg('�ڵ� �Ÿ� �����ϰڽ��ϱ�?',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    YMDOrderInfoClear;
    if ckbYMDAutoOrder.Checked  then begin
      nString := formatdatetime('hhmmss',now) + '- �ڵ���ŵ�����';
      mmoYMDLog.lines.add(nString);
      flg_YMD := true; // ��ŵ� �غ� �÷���
      tmrYMDOrder.Enabled := True;
      btnYMDAutoStart.Glyph.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Start_Red.bmp');
    end else begin
      flg_YMD := false; // ��ŵ� �غ� �÷���
      tmrYMDOrder.Enabled := False;
      btnYMDAutoStart.Glyph.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Start_off.bmp');
    end;
  end;
end;

procedure TfYMD.YMDOrderInfoClear;
var i : integer;
begin
// �����ֹ������� �ܰ� �ֹ� ���� �ʱ�ȭ
  for I := 0 to 3 do begin
    _YMDOrderNo[i] := -1;
    _YMDJMDataList[i].JMKey := -1;
    _YMDJMDataList[i].OrderNo := -1;
    _YMDJMDataList[i].JMCode := '';
    _YMDJMDataList[i].MMGB := 0;
    _YMDJMDataList[i].JMPrice := 0;
    _YMDJMDataList[i].JMQtn := 0;
    _YMDJMDataList[i].CGPrice := 0;
    _YMDJMDataList[i].CGQtn := 0;
    _YMDJMDataList[i].MCGQtn := 0;
    _YMDJMDataList[i].WJMNo := -1;
    _YMDJMDataList[i].UH := '';
  end;
end;

procedure TfYMD.btnYMDAutoStopClick(Sender: TObject);
begin
  btnYMDAutoStart.Glyph.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Start_off.bmp');
  ckbYMDAutoOrder.Checked := false;
end;

procedure TfYMD.Button10Click(Sender: TObject);
var i, nQtn : integer;
begin
  nQtn := strTointDef(edtYMDNewQtn.Text,0);
  stgYMD.Cells[3,2] := intTostr(nQtn);
  stgYMD.Cells[3,3] := intTostr(nQtn);
  stgYMD.Cells[4,2] := edtYMDUnit.text;
  stgYMD.Cells[4,3] := edtYMDUnit.text;
  YMDInsertValue;
end;

procedure TfYMD.Button17Click(Sender: TObject);
begin
  stgYMD.Cells[0,_YMDSelectNO] := '';
  stgYMD.Cells[1,_YMDSelectNO] := '';
  stgYMD.Cells[2,_YMDSelectNO] := '';
  stgYMD.Cells[3,_YMDSelectNO] := '';
  stgYMD.Cells[4,_YMDSelectNO] := '';
  stgYMD.Cells[5,_YMDSelectNO] := '';
  stgYMD.Cells[6,_YMDSelectNO] := '';
  stgYMD.Cells[7,_YMDSelectNO] := '';
  YMDInsertValue;
end;

procedure TfYMD.Button33Click(Sender: TObject);
begin
  YMDJMChoice;
end;

procedure TfYMD.YMDJMChoice;
var nSingle, nCallHSG, nPutHSG : single;
    nCallRow, nPutRow, nTime : integer;
    nNewCode : string;
begin
///  1. ���������� ���� ����� �ݰ� ǲ�� ������ �����Ѵ�.

//  _YMDNewGC_flg := false;
//  _YMDOldCS_flg := false;
//  _YMDChange_flg := false;
  if (_YMDNewGC_flg) or (_YMDChange_flg) then exit;  // �ű� ��ż� ���� ������ �ǰų�... ���� ���� ������ �Ǹ� �ڵ� ���� ������ ���Ѵ�.

  // �������� ���� ������ 25% �̸� ���̰� ���� 1 ��簡�� ����

  _YDMChangeTime := strTointDef(edtYMDChange.Text,99999999);
  nTime := strToint(copy(formatdatetime('hhmmss',now),1,6));
  if _YMDList[1].HGPrice > 0 then begin
//    nRatio := _YMDList[0].HGPrice / _YMDList[1].HGPrice; // 0.25 : 1.0 => 0.25/1      1/0.25 = 4
    if (_YMDRatio < 0.251) or (_YMDRatio > 3.999) then _YMDRatio_flg := true
    else _YMDRatio_flg := False;
  end else _YMDRatio_flg := False;

  if (_YMDRatio_flg and (nTime > _YDMChangeTime))  then begin     // 25% �̸��� �� 1 ��簡�� �̵��Ͽ� ���� �����Ѵ�.
    if _YMDList[0].HGPrice > _YMDList[1].HGPrice then  YMDRatioNew(1)// ���� ȣ���� �� ũ��  1��簡 ��
    else if _YMDList[0].HGPrice < _YMDList[1].HGPrice then  YMDRatioNew(-1); // ǲ�� ȣ���� �� ũ��  1��簡 �ٿ�
    ckbYMDJMChoice.Checked := False; // �ڵ� ���� ����
  end else begin
    nSingle :=strTofloat(SunMul) - 2.5 * Trunc(strTofloat(SunMul)/2.5) ;
    if nSingle < 1.25 then  nSingle := (strTofloat(SunMul) - nSingle)
      else  nSingle := (strTofloat(SunMul) - nSingle) + 2.5;

    nCallHSG := nSingle + strTointDef(edtYMDWG.Text,0) * 2.5 ;
    nPutHSG := nSingle - strTointDef(edtYMDWG.Text,0) * 2.5 ;
    nCallRow := Round((_MaxHSG - nSingle) / 2.5) - strTointDef(edtYMDWG.Text,0);
    nPutRow := Round((_MaxHSG - nSingle) / 2.5) + strTointDef(edtYMDWG.Text,0);
    nNewCode := '201' + _DCode + copy(formatfloat('0.0',nCallHSG),1,3);
    if (_YMDList[2].JMcode <> nNewCode) then begin   // ������ �ٲ��� �ʰų� ���� ����� ������ ����
      _YMDList[2].JMCode := '201' + _DCode + copy(formatfloat('0.0',nCallHSG),1,3);// ��
      _YMDList[2].TTQtn := strTointDef(edtYMDNewQtn.Text,0);
      _YMDList[2].UnitQtn := strTointDef(edtYMDUnit.Text,1);
      _YMDList[2].PriceType := 3;
      _YMDList[2].ReMark := '�ű�';
      _YMDList[2].RowNo := nCallRow;
      _YMDList[3].JMCode := '301' + _DCode + copy(formatfloat('0.0',nPutHSG),1,3);// ǲ
      _YMDList[3].TTQtn := strTointDef(edtYMDNewQtn.Text,0);
      _YMDList[2].UnitQtn := strTointDef(edtYMDUnit.Text,1);
      _YMDList[3].PriceType := 3;
      _YMDList[3].ReMark := '�ű�';
      _YMDList[3].RowNo := nPutRow;

      stgYMD.Cells[0,2] := _YMDList[2].JMCode;
      stgYMD.Cells[1,2] := formatfloat('0.0#',_YMDList[2].MIPrice);
      stgYMD.Cells[2,2] := formatfloat('0.0#',_YMDList[2].HGPrice);
      stgYMD.Cells[3,2] := edtYMDNewQtn.Text;
      stgYMD.Cells[4,2] := intTostr(_YMDList[2].UnitQtn);
      stgYMD.Cells[5,2] := intTostr(_YMDList[2].PriceType);
      stgYMD.Cells[6,2] := '�ű�';
      stgYMD.Cells[7,2] := intTostr(_YMDList[2].RowNo);
      stgYMD.Cells[0,3] := _YMDList[3].JMCode;
      stgYMD.Cells[1,3] := formatfloat('0.0#',_YMDList[3].MIPrice);
      stgYMD.Cells[2,3] := formatfloat('0.0#',_YMDList[3].HGPrice);
      stgYMD.Cells[3,3] := edtYMDNewQtn.Text;
      stgYMD.Cells[4,3] := intTostr(_YMDList[3].UnitQtn);
      stgYMD.Cells[5,3] := intTostr(_YMDList[3].PriceType);
      stgYMD.Cells[6,3] := '�ű�';
      stgYMD.Cells[7,3] := intTostr(_YMDList[3].RowNo);
    end;
  end;
end;

procedure TfYMD.YMDRatioNew(nStep : integer);
var nInt, i, nWGPosition : integer;
    nMonthCode, nYearNow : string;
    nHeangSaGa : single;
begin
  if copy(ManKi,5,2) = '10' then nMonthCode := 'A'
  else if copy(ManKi,5,2) = '11' then nMonthCode := 'B'
  else if copy(ManKi,5,2) = '12' then nMonthCode := 'C'
  else nMonthCode := copy(ManKi,6,1);
  nYearNow := copy(ManKi,1,4);
  _YMDDGPosition := strTointDef(stgYMD.Cells[7,0],-2) - nStep;

  nHeangSaGa :=  _MaxHSG-_YMDDGPosition*2.5 ;
  stgYMD.Cells[0,2] := '201' + pYearCode(nYearNow) + nMonthCode + copy(formatfloat('#0.0',nHeangSaGa),1,3);
  stgYMD.Cells[1,2] := '';
  stgYMD.Cells[2,2] := formatfloat('#0.00',_DWHSGListInfo[1,_YMDDGPosition]);//nDataArray[2]; // �ż�ȣ��
  stgYMD.Cells[3,2] := edtYMDNewQtn.Text;
  stgYMD.Cells[4,2] := edtYMDUnit.Text;
  stgYMD.Cells[5,2] := '3';
  stgYMD.Cells[6,2] := '�ű�';
  stgYMD.Cells[7,2] := intTostr(_YMDDGPosition);

  stgYMD.Cells[0,3] := '301' + pYearCode(nYearNow) + nMonthCode + copy(formatfloat('#0.0',nHeangSaGa),1,3);
  stgYMD.Cells[1,3] := '';
  stgYMD.Cells[2,3] := formatfloat('#0.00',_DWHSGListInfo[5,_YMDDGPosition]);//nDataArray[2]; // �ż�ȣ��
  stgYMD.Cells[3,3] := edtYMDNewQtn.Text;
  stgYMD.Cells[4,3] := edtYMDUnit.Text;
  stgYMD.Cells[5,3] := '3';
  stgYMD.Cells[6,3] := '�ű�';
  stgYMD.Cells[7,3] := intTostr(_YMDDGPosition);
  YMDInsertValue;
end;

procedure TfYMD.Button34Click(Sender: TObject);
begin
  YMDInsertValue;
end;

procedure TfYMD.Button37Click(Sender: TObject);
var i, nQtn : integer;
begin
  if (stgYMD.Cells[0,0] <> '') then begin
    nQtn := strTointDef(stgYMD.Cells[3,0],0);
    if nQtn < 0 then nQtn := strTointDef(edtYMDOldQtn.Text,0)* (-1)
    else  nQtn := strTointDef(edtYMDOldQtn.Text,0);
    stgYMD.Cells[3,0] := intTostr(nQtn);
    stgYMD.Cells[4,0] := edtYMDUnit.text;
    stgYMD.Cells[5,0] := '3';
    stgYMD.Cells[6,0] := '����';
    _YMDList[0].TTQtn := nQtn;
  end;

  if (stgYMD.Cells[0,1] <> '') then begin
    nQtn := strTointDef(stgYMD.Cells[3,1],0);
    if nQtn < 0 then nQtn := strTointDef(edtYMDOldQtn.Text,0)* (-1)
    else  nQtn := strTointDef(edtYMDOldQtn.Text,0);
    stgYMD.Cells[3,1] := intTostr(nQtn);
    stgYMD.Cells[4,1] := edtYMDUnit.text;
    stgYMD.Cells[5,1] := '3';
    stgYMD.Cells[6,1] := '����';
    _YMDList[0].TTQtn := nQtn;
  end;

  edtYMDOldQtnChange(Sender);
  YMDInsertValue;
end;

procedure TfYMD.Button65Click(Sender: TObject);
var nString : string;
begin
  if MessageDlg('�����Ҳ���????',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    nString := ExtractFilePath(paramstr(0)) + 'AutoMeaMeaMemo\�ڵ���ŵ�-' + FormatDateTime('yymmdd hhmmss' , Now) + '.txt';
    mmoYMDLog.Lines.SaveToFile(nString);
  end;
end;

procedure TfYMD.Button70Click(Sender: TObject);
begin
  mmoYMDLog.Clear;
end;

procedure TfYMD.Button72Click(Sender: TObject);
var nString : string;
begin
  mmoYMDLog.Clear;
  nString := ExtractFilePath(paramstr(0)) + '��ŵ�����.txt';
  mmoYMDLog.Lines.LoadFromFile(nString);
end;

procedure TfYMD.ckbYMDAutoOrderClick(Sender: TObject);
var i : integer;
    nString : string;
begin
  // ȭ�鿡 �ִ� ������ ������ �����Ѵ�.
  // ȭ�� ������ ���� ���ϰ� �Ѵ�.
  _YMDNewGC_flg := false; // ��ŵ� �ű� ���� ���� ���� ����
  _YMDCntLevel := strTofloatDef(ledYMDCNT.Text,99999999);
  _YMDNewGC_flg := false;
  _YMDOldCS_flg := false;
  _YMDChange_flg := false;
  _YMDRatio_flg := false;
  _YMDNewCnt := 0;
  _YMDOldCnt := 0;
  _YMDChangeCnt := 0;
  _YMDJSUp := strTofloatDef(ledYMDUpJiSu.Text,99999);
  _YMDJSDown := strTofloatDef(ledYMDDownJiSu.Text,-99999);
  _YMDBYLevel := strTofloatDef(ledYMDCSLevel.Text,0);
  _YMDNewBY := strTofloatDef(ledYMDCSLevel.Text,0);
  _YMDCntLevel := strTofloatDef(ledYMDCNT.Text,99999999);
  _YDMChangeTime := strTointDef(edtYMDChange.Text,99999999);
  _YDMStart := strTointDef(edtYMDStart.Text,999997);
  _YDMStop := strTointDef(edtYMDStop.Text,999999);
  for I := 0 to 3 do
    _YMDOrderedQtn[i] := 0; // �ֹ��� ���� �ʱ�ȭ

   flg_YMD := False;
  if ckbYMDAutoOrder.Checked then begin
    for I := 0 to 3 do begin
      if stgYMD.Cells[0,i] <> '' then begin
        if (copy(stgYMD.Cells[0,i],4,2) <> _DCode) then begin
          showmessage('����� ������ �ƴմϴ�.');
          exit;
        end;
      end;
    end;

    YMDInsertValue;
    mmoYMDLog.Clear;
  end else begin
    nString := formatdatetime('hhmmss',now) + '-flg_YMD := False, ��ŵ� �ڵ�üũ ����';
    mmoYMDLog.Lines.Add(nString);
  end;

// �߿� ���� ��Ȱ��ȭ ���� �ʰ�... ���� �����ϵ��� ��.
end;

procedure TfYMD.ckbYMDFirstNewClick(Sender: TObject);
begin
  if ckbYMDFirstNew.Checked then _YMDFirstNew_flg := true
  else if ckbYMDFirstNew.Checked = false then _YMDFirstNew_flg := False;
end;

procedure TfYMD.ckbYMDJMChoiceClick(Sender: TObject);
begin
  if ckbYMDJMChoice.Checked then tmrYMDCheck.Enabled := True
  else if ckbYMDJMChoice.Checked = False then tmrYMDCheck.Enabled := False;
end;

procedure TfYMD.edtYMDChangeChange(Sender: TObject);
begin
  _YDMChangeTime := strToint(edtYMDChange.Text);
end;

procedure TfYMD.edtYMDOldQtnChange(Sender: TObject);
var nQtn : integer;
begin
  nQtn := Round(strTointDef(edtYMDOldQtn.Text,0) * strTofloatDef(edtMultiQtn.Text,0));
  edtYMDNewQtn.Text := intTostr(nQtn*(-1));
end;

procedure TfYMD.edtYMDStartChange(Sender: TObject);
begin
  _YDMStart := strTointDef(edtYMDStart.Text,999997);
end;

procedure TfYMD.edtYMDStopChange(Sender: TObject);
begin
  _YDMStop := strTointDef(edtYMDStop.Text,999999);
end;

procedure TfYMD.edtYMDUnitChange(Sender: TObject);
var I: Integer;
begin
  for I := 0 to 3 do begin
    _YMDList[i].UnitQtn := strTointDef(edtYMDUnit.Text,0);
    stgYMD.Cells[4,i] := edtYMDUnit.Text;
  end;
end;

procedure TfYMD.FormActivate(Sender: TObject);
begin
  if First_Activate then begin
    Left := 945;
    Top := 0;
    First_Activate := False;
  end;
end;

procedure TfYMD.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  PSTSaveUIValue;
  action := Cafree;
end;

procedure TfYMD.PSTSaveUIValue; // ������ �Ÿ� ȭ���� �������� �����Ѵ�.
var nString : string;
    i,j : integer;
begin
  mmoSaveUIValue.clear;
  // ���⼭���� ��ŵ� ���� ����
  nString := '����1:' + stgYMD.Cells[0,0] + ',' + stgYMD.Cells[1,0] + ',' + stgYMD.Cells[2,0];
  nString := nString + ',' + stgYMD.Cells[3,0] + ',' + stgYMD.Cells[4,0] + ',' + stgYMD.Cells[5,0] + ',' + stgYMD.Cells[6,0] + ',' + stgYMD.Cells[7,0];
  mmoSaveUIValue.Lines.Add(nString);
  nString := '����2:' + stgYMD.Cells[0,1] + ',' + stgYMD.Cells[1,1] + ',' + stgYMD.Cells[2,1];
  nString := nString + ',' + stgYMD.Cells[3,1] + ',' + stgYMD.Cells[4,1] + ',' + stgYMD.Cells[5,1] + ',' + stgYMD.Cells[6,1] + ',' + stgYMD.Cells[7,1];
  mmoSaveUIValue.Lines.Add(nString);

  nString := '��������:' + edtYMDOldQtn.Text;
  mmoSaveUIValue.Lines.Add(nString);

  nString := '�űԼ���:' + edtYMDNewQtn.Text;
  mmoSaveUIValue.Lines.Add(nString);

  nString := '��ŵ�1ȸ:' + edtYMDUnit.Text;
  mmoSaveUIValue.Lines.Add(nString);

  nString := '��ŵ�����:' + ledYMDCNT.Text;
  mmoSaveUIValue.Lines.Add(nString);

  nString := '������ġ:' + edtYMDWG.Text;
  mmoSaveUIValue.Lines.Add(nString);

  nString := '��ŵ����:' + ledYMDUpJiSu.Text;
  mmoSaveUIValue.Lines.Add(nString);

  nString := '��ŵ��Ϲ�:' + ledYMDDownJiSu.Text;
  mmoSaveUIValue.Lines.Add(nString);

  nString := '��ŵ����:' + ledYMDCSLevel.Text;
  mmoSaveUIValue.Lines.Add(nString);

  nString := '��ŵ�����:' + edtYMDStart.Text;
  mmoSaveUIValue.Lines.Add(nString);

  nString := '��ŵ�����:' + edtYMDStop.Text;
  mmoSaveUIValue.Lines.Add(nString);

  nString := '����üũ�ð�:' + edtYMDChange.Text;
  mmoSaveUIValue.Lines.Add(nString);
  // ������� ��ŵ� �ڵ� ���� ���� ����

  nString := ExtractFilePath(paramstr(0)) + 'PST_UIValue.ini'; // ������ �Ÿ�
  mmoSaveUIValue.Lines.SaveToFile(nString);
end;

procedure TfYMD.PSTOpenUIValue; // ������ �Ÿ� ȭ���� �������� �ҷ������Ѵ�.
var nString : string;
    i,j : integer;
    nDataList : TStringList;   // �����ڿ� ���� �������� string �迭
begin
  nDataList := TStringList.Create;
  nDataList.Delimiter := ','; // ������
  mmoSaveUIValue.Clear;
  nString := ExtractFilePath(paramstr(0)) + 'PST_UIValue.ini';
  mmoSaveUIValue.Lines.LoadFromFile(nString);


  for I := 0 to mmoSaveUIValue.Lines.Count -1 do
  begin
    nString := mmoSaveUIValue.Lines.Strings[i];
    if pos('����1:',nString) > 0 then begin
      nDataList.DelimitedText := copy(nString,5,Length(nString) - 4);
      for j := 0 to 7 do
        stgYMD.Cells[j,0] := nDataList[j];
    end else if pos('����2:',nString) > 0 then begin
      nDataList.DelimitedText := copy(nString,5,Length(nString) - 4);
      for j := 0 to 7 do
        stgYMD.Cells[j,1] := nDataList[j];
    end else if pos('��������:',nString) > 0 then edtYMDOldQtn.Text := copy(nString,6,Length(nString) - 5)
    else if pos('�űԼ���:',nString) > 0 then edtYMDNewQtn.Text := copy(nString,6,Length(nString) - 5)
    else if pos('������ġ:',nString) > 0 then edtYMDWG.Text := copy(nString,6,Length(nString) - 5)
    else if pos('��ŵ�1ȸ:',nString) > 0 then edtYMDUnit.Text := copy(nString,7,Length(nString) - 6)
    else if pos('��ŵ�����:',nString) > 0 then ledYMDCNT.Text := copy(nString,7,Length(nString) - 6)
    else if pos('��ŵ����:',nString) > 0 then ledYMDUpJiSu.Text := copy(nString,7,Length(nString) - 6)
    else if pos('��ŵ��Ϲ�:',nString) > 0 then ledYMDDownJiSu.Text := copy(nString,7,Length(nString) - 6)
    else if pos('��ŵ����:',nString) > 0 then ledYMDCSLevel.Text := copy(nString,7,Length(nString) - 6)
    else if pos('��ŵ�����:',nString) > 0 then edtYMDStart.Text := copy(nString,7,Length(nString) - 6)
    else if pos('��ŵ�����:',nString) > 0 then edtYMDStop.Text := copy(nString,7,Length(nString) - 6)
    else if pos('����üũ�ð�:',nString) > 0 then edtYMDChange.Text := copy(nString,8,Length(nString) - 7);
  end;
  YMDInsertValue;
end;

procedure TfYMD.FormShow(Sender: TObject);
begin
  First_Activate := True;
  PSTOpenUIValue;

  StringGrid8.Cells[0,0] := '�����ڵ�';
  StringGrid8.ColWidths[0] := 75;
  StringGrid8.Cells[1,0] := ' ���԰�';
  StringGrid8.Cells[2,0] := ' ȣ  ��';
  StringGrid8.Cells[3,0] := '�Ѽ���';
  StringGrid8.ColWidths[3] := 40;
  StringGrid8.Cells[4,0] := '1ȸ��';
  StringGrid8.ColWidths[4] := 40;
  StringGrid8.Cells[5,0] := 'PT';
  StringGrid8.ColWidths[5] := 30;
  StringGrid8.Cells[6,0] := '���'; // ���� , �ű�
  StringGrid8.ColWidths[6] := 30;
  StringGrid8.Cells[7,0] := 'Row';
  StringGrid8.ColWidths[7] := 30;

  stgYMD.ColWidths[0] := 75;
  stgYMD.ColWidths[3] := 40;
  stgYMD.ColWidths[4] := 40;
  stgYMD.ColWidths[5] := 30;
  stgYMD.ColWidths[6] := 30;
  stgYMD.ColWidths[7] := 30;
  stgYMD.Cells[0,4] := '  ��   �� ';
  StringGrid8.Selection := TGridRect(Rect(-1, -1, -1, -1));
  stgYMD.Selection := TGridRect(Rect(-1, -1, -1, -1));
end;

procedure TfYMD.Label65Click(Sender: TObject);
var nInt, i, nWGPosition : integer;
    nMonthCode, nYearNow : string;
    nHeangSaGa : single;
begin
  for I := 0 to 1 do stgYMD.Rows[i].Clear;

  if copy(ManKi,5,2) = '10' then nMonthCode := 'A'
  else if copy(ManKi,5,2) = '11' then nMonthCode := 'B'
  else if copy(ManKi,5,2) = '12' then nMonthCode := 'C'
  else nMonthCode := copy(ManKi,6,1);
  nYearNow := copy(ManKi,1,4);
  _YMDDGPosition := _PriceInfoDGPosition;

  nHeangSaGa :=  _MaxHSG-_YMDDGPosition*2.5 ;
  stgYMD.Cells[0,0] := '201' + pYearCode(nYearNow) + nMonthCode + copy(formatfloat('#0.0',nHeangSaGa),1,3);
  stgYMD.Cells[1,0] := '';
  stgYMD.Cells[2,0] := formatfloat('#0.00',_DWHSGListInfo[0,_YMDDGPosition]);//nDataArray[2]; // �ŵ�ȣ��
  stgYMD.Cells[3,0] := edtYMDOldQtn.Text;
  stgYMD.Cells[4,0] := edtYMDUnit.Text;
  stgYMD.Cells[5,0] := '3';
  stgYMD.Cells[6,0] := '����';
  stgYMD.Cells[7,0] := intTostr(_YMDDGPosition);

  stgYMD.Cells[0,1] := '301' + pYearCode(nYearNow) + nMonthCode + copy(formatfloat('#0.0',nHeangSaGa),1,3);
  stgYMD.Cells[1,1] := '';
  stgYMD.Cells[2,1] := formatfloat('#0.00',_DWHSGListInfo[6,_YMDDGPosition]);//nDataArray[2]; // �ŵ�ȣ��
  stgYMD.Cells[3,1] := edtYMDOldQtn.Text;
  stgYMD.Cells[4,1] := edtYMDUnit.Text;
  stgYMD.Cells[5,1] := '3';
  stgYMD.Cells[6,1] := '����';
  stgYMD.Cells[7,1] := intTostr(_YMDDGPosition);
  YMDInsertValue;
  if _YMDList[1].HGPrice > 0 then begin
    if _YMDList[0].HGPrice < _YMDList[1].HGPrice then
      _YMDRatio :=  _YMDList[0].HGPrice / _YMDList[1].HGPrice // 0.25 : 1.0 => 0.25/1      1/0.25 = 4
    else if _YMDList[0].HGPrice > _YMDList[1].HGPrice then
      _YMDRatio :=  _YMDList[1].HGPrice / _YMDList[0].HGPrice; // 0.25 : 1.0 => 0.25/1      1/0.25 = 4
  end;
  lbeYMDRatioNow.Caption := formatfloat('0.0',_YMDRatio * 100) + '%';

  ledYMDUpJiSu.Text :=  copy(formatfloat('#0.0',nHeangSaGa + 5),1,3);
  ledYMDDownJiSu.Text :=  copy(formatfloat('#0.0',nHeangSaGa - 5),1,3);
end;

procedure TfYMD.Label70Click(Sender: TObject);
var nInt, i, nWGPosition : integer;
    nMonthCode, nYearNow : string;
    nHeangSaGa : single;
begin
  for I := 2 to 3 do stgYMD.Rows[i].Clear;

  if copy(ManKi,5,2) = '10' then nMonthCode := 'A'
  else if copy(ManKi,5,2) = '11' then nMonthCode := 'B'
  else if copy(ManKi,5,2) = '12' then nMonthCode := 'C'
  else nMonthCode := copy(ManKi,6,1);
  nYearNow := copy(ManKi,1,4);
  _YMDDGPosition := _PriceInfoDGPosition;

  nHeangSaGa :=  _MaxHSG-_YMDDGPosition*2.5 ;
  stgYMD.Cells[0,2] := '201' + pYearCode(nYearNow) + nMonthCode + copy(formatfloat('#0.0',nHeangSaGa),1,3);
  stgYMD.Cells[1,2] := '';
  stgYMD.Cells[2,2] := formatfloat('#0.00',_DWHSGListInfo[1,_YMDDGPosition]);//nDataArray[2]; // �ż�ȣ��
  stgYMD.Cells[3,2] := edtYMDNewQtn.Text;
  stgYMD.Cells[4,2] := edtYMDUnit.Text;
  stgYMD.Cells[5,2] := '3';
  stgYMD.Cells[6,2] := '�ű�';
  stgYMD.Cells[7,2] := intTostr(_YMDDGPosition);

  stgYMD.Cells[0,3] := '301' + pYearCode(nYearNow) + nMonthCode + copy(formatfloat('#0.0',nHeangSaGa),1,3);
  stgYMD.Cells[1,3] := '';
  stgYMD.Cells[2,3] := formatfloat('#0.00',_DWHSGListInfo[5,_YMDDGPosition]);//nDataArray[2]; // �ż�ȣ��
  stgYMD.Cells[3,3] := edtYMDNewQtn.Text;
  stgYMD.Cells[4,3] := edtYMDUnit.Text;
  stgYMD.Cells[5,3] := '3';
  stgYMD.Cells[6,3] := '�ű�';
  stgYMD.Cells[7,3] := intTostr(_YMDDGPosition);
  YMDInsertValue;
end;

procedure TfYMD.ledYMDCNTChange(Sender: TObject);
begin
  _YMDCntLevel := strTofloatDef(ledYMDCNT.Text,99999999);
end;

procedure TfYMD.ledYMDCSLevelChange(Sender: TObject);
begin
  _YMDBYLevel := strTofloatDef(ledYMDCSLevel.Text,0);
end;

procedure TfYMD.ledYMDDownJiSuChange(Sender: TObject);
begin
  _YMDJSDown := strTofloatDef(ledYMDDownJiSu.Text,-99999);
end;

procedure TfYMD.ledYMDUpJiSuChange(Sender: TObject);
begin
  _YMDJSUp := strTofloatDef(ledYMDUpJiSu.Text,99999);
end;

procedure TfYMD.rdbYMDList1Click(Sender: TObject);
begin
 _YMDSelectNo := 0;
end;

procedure TfYMD.rdbYMDList2Click(Sender: TObject);
begin
 _YMDSelectNo := 1;
end;

procedure TfYMD.rdbYMDList3Click(Sender: TObject);
begin
 _YMDSelectNo := 3;
end;

procedure TfYMD.rdbYMDList4Click(Sender: TObject);
begin
 _YMDSelectNo := 4;
end;

procedure TfYMD.SpinButton12DownClick(Sender: TObject);
begin
  YMDOldStep(-1);
end;

procedure TfYMD.SpinButton12UpClick(Sender: TObject);
begin
  YMDOldStep(1);
end;

procedure TfYMD.SpinButton13DownClick(Sender: TObject);
begin
  YMDNewStep(-1);
end;

procedure TfYMD.SpinButton13UpClick(Sender: TObject);
begin
  YMDNewStep(1);
end;

procedure TfYMD.YMDNewStep(nStep : integer);
var nInt, i, nWGPosition : integer;
    nMonthCode, nYearNow : string;
    nHeangSaGa : single;
begin
  if copy(ManKi,5,2) = '10' then nMonthCode := 'A'
  else if copy(ManKi,5,2) = '11' then nMonthCode := 'B'
  else if copy(ManKi,5,2) = '12' then nMonthCode := 'C'
  else nMonthCode := copy(ManKi,6,1);
  nYearNow := copy(ManKi,1,4);
  _YMDDGPosition := strTointDef(stgYMD.Cells[7,2],-2) - nStep;

  nHeangSaGa :=  _MaxHSG-_YMDDGPosition*2.5 ;
  stgYMD.Cells[0,2] := '201' + pYearCode(nYearNow) + nMonthCode + copy(formatfloat('#0.0',nHeangSaGa),1,3);
  stgYMD.Cells[1,2] := '';
  stgYMD.Cells[2,2] := formatfloat('#0.00',_DWHSGListInfo[1,_YMDDGPosition]);//nDataArray[2]; // �ż�ȣ��
  stgYMD.Cells[3,2] := edtYMDNewQtn.Text;
  stgYMD.Cells[4,2] := edtYMDUnit.Text;
  stgYMD.Cells[5,2] := '3';
  stgYMD.Cells[6,2] := '�ű�';
  stgYMD.Cells[7,2] := intTostr(_YMDDGPosition);

  stgYMD.Cells[0,3] := '301' + pYearCode(nYearNow) + nMonthCode + copy(formatfloat('#0.0',nHeangSaGa),1,3);
  stgYMD.Cells[1,3] := '';
  stgYMD.Cells[2,3] := formatfloat('#0.00',_DWHSGListInfo[5,_YMDDGPosition]);//nDataArray[2]; // �ż�ȣ��
  stgYMD.Cells[3,3] := edtYMDNewQtn.Text;
  stgYMD.Cells[4,3] := edtYMDUnit.Text;
  stgYMD.Cells[5,3] := '3';
  stgYMD.Cells[6,3] := '�ű�';
  stgYMD.Cells[7,3] := intTostr(_YMDDGPosition);
  YMDInsertValue;
end;

procedure TfYMD.YMDOldStep(nStep : integer);
var nInt, i, nWGPosition : integer;
    nMonthCode, nYearNow : string;
    nHeangSaGa : single;
begin
  if copy(ManKi,5,2) = '10' then nMonthCode := 'A'
  else if copy(ManKi,5,2) = '11' then nMonthCode := 'B'
  else if copy(ManKi,5,2) = '12' then nMonthCode := 'C'
  else nMonthCode := copy(ManKi,6,1);
  nYearNow := copy(ManKi,1,4);
  _YMDDGPosition := strTointDef(stgYMD.Cells[7,0],-2) - nStep;

  nHeangSaGa :=  _MaxHSG-_YMDDGPosition*2.5 ;
  stgYMD.Cells[0,0] := '201' + pYearCode(nYearNow) + nMonthCode + copy(formatfloat('#0.0',nHeangSaGa),1,3);
  stgYMD.Cells[1,0] := '';
  stgYMD.Cells[2,0] := formatfloat('#0.00',_DWHSGListInfo[0,_YMDDGPosition]);//nDataArray[2]; // �ŵ�ȣ��
  stgYMD.Cells[3,0] := edtYMDOldQtn.Text;
  stgYMD.Cells[4,0] := edtYMDUnit.Text;
  stgYMD.Cells[5,0] := '3';
  stgYMD.Cells[6,0] := '����';
  stgYMD.Cells[7,0] := intTostr(_YMDDGPosition);

  stgYMD.Cells[0,1] := '301' + pYearCode(nYearNow) + nMonthCode + copy(formatfloat('#0.0',nHeangSaGa),1,3);
  stgYMD.Cells[1,1] := '';
  stgYMD.Cells[2,1] := formatfloat('#0.00',_DWHSGListInfo[6,_YMDDGPosition]);//nDataArray[2]; // �ŵ�ȣ��
  stgYMD.Cells[3,1] := edtYMDOldQtn.Text;
  stgYMD.Cells[4,1] := edtYMDUnit.Text;
  stgYMD.Cells[5,1] := '3';
  stgYMD.Cells[6,1] := '����';
  stgYMD.Cells[7,1] := intTostr(_YMDDGPosition);
  YMDInsertValue;
  if _YMDList[1].HGPrice > 0 then begin
    if _YMDList[0].HGPrice < _YMDList[1].HGPrice then
      _YMDRatio :=  _YMDList[0].HGPrice / _YMDList[1].HGPrice // 0.25 : 1.0 => 0.25/1      1/0.25 = 4
    else if _YMDList[0].HGPrice > _YMDList[1].HGPrice then
      _YMDRatio :=  _YMDList[1].HGPrice / _YMDList[0].HGPrice; // 0.25 : 1.0 => 0.25/1      1/0.25 = 4
  end;
  lbeYMDRatioNow.Caption := formatfloat('0.0',_YMDRatio * 100) + '%';
end;

procedure TfYMD.SpinButton5DownClick(Sender: TObject);
begin
  ledYMDDownJiSu.Text := formatfloat('#0.0#',(strTofloatDef(ledYMDDownJiSu.Text,0) - 0.05));
end;

procedure TfYMD.SpinButton5UpClick(Sender: TObject);
begin
  ledYMDDownJiSu.Text := formatfloat('#0.0#',(strTofloatDef(ledYMDDownJiSu.Text,0) + 0.05));
end;

procedure TfYMD.SpinButton6DownClick(Sender: TObject);
begin
  ledYMDUpJiSu.Text := formatfloat('#0.0#',(strTofloatDef(ledYMDUpJiSu.Text,0) - 0.05));
end;

procedure TfYMD.SpinButton6UpClick(Sender: TObject);
begin
  ledYMDUpJiSu.Text := formatfloat('#0.0#',(strTofloatDef(ledYMDUpJiSu.Text,0) + 0.05));
end;

procedure TfYMD.SpinButton7DownClick(Sender: TObject);
begin
  ledYMDCSLevel.Text := formatfloat('#0.0#',(strTofloatDef(ledYMDCSLevel.Text,0) - 0.01));
end;

procedure TfYMD.SpinButton7UpClick(Sender: TObject);
begin
  ledYMDCSLevel.Text := formatfloat('#0.0#',(strTofloatDef(ledYMDCSLevel.Text,0) + 0.01));
end;

procedure TfYMD.stgYMDDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var intValue, iX, iY : integer;
begin
  // ���� ��ȣ�� ���� �� ����, �ż� ����, �ŵ� �Ķ�
  with stgYMD do
  begin

    intValue := strTointDef(Cells[3,ARow],0);
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
    iY := Rect.Top + 2;
    iX := (Rect.Left + Rect.Right) div 2;
    SetTextAlign(Canvas.Handle, TA_CENTER);
    Canvas.TextRect(Rect, iX, iY, Cells[Acol,Arow]);
  end;
end;

procedure TfYMD.stgYMDExit(Sender: TObject);
begin
  stgYMD.Selection := TGridRect(Rect(-1, -1, -1, -1));
end;

procedure TfYMD.stgYMDMouseLeave(Sender: TObject);
begin
  stgYMD.Selection := TGridRect(Rect(-1, -1, -1, -1));
end;

procedure TfYMD.stgYMDMouseWheelDown(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  Handled := True;
end;

procedure TfYMD.stgYMDMouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  Handled := True;
end;

procedure TfYMD.stgYMDSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
begin
  case ARow of
    0: rdbYMDList1.Checked := True;
    1: rdbYMDList2.Checked := True;
    2: rdbYMDList3.Checked := True;
    3: rdbYMDList4.Checked := True;
  end;
end;

procedure TfYMD.StringGrid8Exit(Sender: TObject);
begin
  StringGrid8.Selection := TGridRect(Rect(-1, -1, -1, -1));
end;

procedure TfYMD.StringGrid8MouseLeave(Sender: TObject);
begin
  StringGrid8.Selection := TGridRect(Rect(-1, -1, -1, -1));
end;

procedure TfYMD.StringGrid8MouseWheelDown(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  Handled := True;
end;

procedure TfYMD.StringGrid8MouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  Handled := True;
end;

procedure TfYMD.tmrYMDCheckTimer(Sender: TObject);
var nRatio : single;
    nTime : integer;
begin
  // �ִ��� Ÿ�̸� ������ ���� ��� �ذ��� ����.... while�̳� for�� ��� ���� ����...

  // 0. ���� ������ ������ �ű� �������� �Ǵ�.
  // 1. ���������� ��ǥ ������ ���� �ߴ��� Ȯ�� -> ���� ��ü (ó�� ���Ե� ����)
  // 2. ���������� ���� � ���� ���ð� ���� ���� -> ���� ��ü��
  // 3. ���� ������ ���� ������ 25%�������� �˻� -> ���� ��ü
  // 4. ���� �ð��� ���� ���� ���ݺ��� 25%�� ���� ���� �ð����� üũ -> ���� ��ü ��
  // 5. ���� ������ ��ǥ ������ �Ǿ����� Ȯ�� -> û��
//  tmrYMDCheck.Enabled := False;
  YMDJMChoice; // ���� ������ �´� ���� ����

end;

procedure TfYMD.YMDCheck;
var nRatio : single;
    nTime : integer;
    strTimeNow : string;
begin
  // �ִ��� Ÿ�̸� ������ ���� ��� �ذ��� ����.... while�̳� for�� ��� ���� ����...

  // 0. ���� ������ ������ �ű� �������� �Ǵ�.
  // 1. ���������� ��ǥ ������ ���� �ߴ��� Ȯ�� -> ���� ��ü (ó�� ���Ե� ����)
  // 2. ���������� ���� � ���� ���ð� ���� ���� -> ���� ��ü��
  // 3. ���� ������ ���� ������ 25%�������� �˻� -> ���� ��ü
  // 4. ���� �ð��� ���� ���� ���ݺ��� 25%�� ���� ���� �ð����� üũ -> ���� ��ü ��
  // 5. ���� ������ ��ǥ ������ �Ǿ����� Ȯ�� -> û��

//  YMDJMChoice; // ���� ������ �´� ���� ����
  strTimeNow := copy(formatdatetime('hhmmss',now),1,6);
  if (strTointDef(strTimeNow,0) > _YDMStart) and (strTointDef(strTimeNow,0) < _YDMStop) then begin

//    if (_YMDList[0].JMCode = '') then begin // ���� ������ ������  _YMDFirstNew_flg
    if _YMDFirstNew_flg then begin // �ű� �����̸�

      // �ű� ������ ������ ���Ϲ� ������ �ȿ� �ְ�, ��ǥ ��뺸�� ������ �����Ѵ�.
      if ((_YMDJSUp + 0.009) > strTofloat(SunMul)) and ((_YMDJSDown - 0.009) < strTofloat(SunMul)) and (_YMDBYLevel > (_YMDNewBY - 0.009)) then begin     // ����� �ŵ��̴ϱ�... �� ���ƾ� ���� ���� �Ĵ°� �ȴ�.
        _YMDNewCnt := _YMDNewCnt + 1;
        _YMDOldCS_flg := false;
        _YMDChange_flg := false;
        if _YMDNewCnt > (_YMDCntLevel * 50) then begin
          _YMDNewGC_flg := true; //
        end else _YMDNewGC_flg := false;
      end else begin
        _YMDNewCnt := 0;
        _YMDNewGC_flg := false;
      end;
    end else begin                     // ���� ���� ������ , û�� �Ǵ� ���� ��ü
      // ���� ������ ����� ��ǥ ��뺸�� ������ û��
      nTime := strToint(copy(formatdatetime('hhmmss',now),1,6));
      if _YMDList[1].HGPrice > 0 then begin
//        nRatio := _YMDList[0].HGPrice / _YMDList[1].HGPrice; // 0.25 : 1.0 => 0.25/1      1/0.25 = 4
        if (_YMDRatio < 0.251) or (_YMDRatio > 3.999) then _YMDRatio_flg := true
        else _YMDRatio_flg := False;
      end else _YMDRatio_flg := False;

      if (_YMDOldBY - 0.009) < _YMDBYLevel  then begin
        _YMDChange_flg := false;
        _YMDNewGC_flg := false;
        _YMDOldCnt := _YMDOldCnt + 1;
        if _YMDOldCnt > (_YMDCntLevel * 50) then begin
          _YMDOldCS_flg := true; //
        end else _YMDOldCS_flg := false;
      end else if (((_YMDJSUp-0.009) < strTofloat(SunMul)) or ((_YMDJSDown+0.009) > strTofloat(SunMul))) or (_YMDRatio_flg and (nTime > _YDMChangeTime)) then begin    //nString := copy(formatdatetime('hhmmss',now),1,6);
        _YMDOldCnt := 0;
        _YMDNewGC_flg := false;
        _YMDOldCS_flg := false; //
        _YMDChangeCnt := _YMDChangeCnt + 1;
        if _YMDChangeCnt > (_YMDCntLevel * 50) then begin
          _YMDChange_flg := true; //
        end else _YMDChange_flg := false;
      end else begin
        _YMDNewGC_flg := false;
        _YMDOldCS_flg := false;
        _YMDChange_flg := false;
        _YMDOldCnt := 0;
        _YMDChangeCnt := 0;
      end;
      // ���� ������ ���,�Ϲ��� ����� ��������ű����� �ֹ�
    end;
  end else begin
    _YMDNewGC_flg := false;
    _YMDOldCS_flg := false;
    _YMDChange_flg := false;
  end;
end;

procedure TfYMD.tmrYMDOrderTimer(Sender: TObject);
var Time_Out : integer;
    nGubun,nOrgNo, nPrice, i : integer;
    strTimeNow : string;
begin
  // �ѹ� ��ȣ ������ ���� ü�� �Ѵ�.
  tmrYMDOrder.Enabled := False;

  strTimeNow := copy(formatdatetime('hhmmss',now),1,6);
  YMDCheck;
  // 1. �ű� �ֹ�
  if _YMDNewGC_flg then begin
    _YMDLogString := strTimeNow + '- ��ŵ� �ű� �ֹ�';
    nPrice := 0;
    nOrgNo := 0; // �ֹ���ȣ
    for I := 2 to 3 do begin // 3,4��° �ű� ���� �ֹ�
      if (ABS(_YMDList[i].TTQtn) - _YMDOrderedQtn[i]) > 0 then begin
        _YMDJMDataList[i].JMKey := -1;
        _YMDJMDataList[i].OrderNo := -1;
        if _YMDList[i].TTQtn > 0 then nGubun := 2 // �ż�
        else if _YMDList[i].TTQtn < 0 then nGubun := 1; //�ŵ�
        ClientKey := 33000000; // 33�� ��ŵ� �ֹ��� �ǹ� 01�� 4���� �� ���°���� �ǹ�  1,2,3,4 ����
        ClientKey := ClientKey + (i+1) * 10000;// 33030000 �ű� ���� ù��°
        //21 ���� if fHBOMain.DongbuAPI1.SendFOrder(ClientKey,Acnt,AcntPwd,nGubun,_YMDList[i].JMCode,_YMDList[i].PriceType,_YMDList[i].UnitQtn,nPrice,nOrgNo) = false then
//        begin
//          strTimeNow := copy(formatdatetime('hhmmss',now),1,6);
//          _YMDLogString := strTimeNow +  ' : ����-�ֹ��� �����߽��ϴ�.'+ #13#10;
//          flg_YMD := False;
//
//          btnYMDAutoStart.Glyph.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Start_off.bmp');
//          ckbYMDAutoOrder.Checked := False; // ���� �ڵ� �ֹ� ����
//          exit;
//        end else begin
//
//          _YMDOrderedQtn[i] := _YMDOrderedQtn[i] + _YMDList[i].UnitQtn;
//          _YMDLogString := strTimeNow + '['+ _YMDList[i].JMCode + '] �ֹ�[' + intTostr(_YMDList[i].UnitQtn) + '] �ֹ���[' + intTostr(_YMDOrderedQtn[i]) + ']';
//          if _YMDList[i].UnitQtn > (ABS(_YMDList[i].TTQtn) - _YMDOrderedQtn[i]) then _YMDList[i].UnitQtn := ABS(_YMDList[i].TTQtn) - _YMDOrderedQtn[i];
//
//        end;
        // ���⼭ ���� �ֹ� ���� Ȯ��
        Time_Out := 0;
        repeat
          if (Time_Out > 600000) OR (flg_YMD = false) then begin
            flg_YMD := False;

            btnYMDAutoStart.Glyph.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Start_off.bmp');
            ckbYMDAutoOrder.Checked := False; // ���� �ڵ� �ֹ� ����
            exit;
          end;
          delay(10);
          inc(Time_Out);
        until _YMDJMDataList[i].JMKey = ClientKey ;
      end;
    end;
    // ���⼭ ��ü ���� �ֹ� Ȯ��
    if ((ABS(_YMDList[2].TTQtn) - _YMDOrderedQtn[2]) = 0) and ((ABS(_YMDList[3].TTQtn) - _YMDOrderedQtn[3]) = 0) then begin
      // �ű� �ֹ� �Ϸ�
      flg_YMD := False;

      btnYMDAutoStart.Glyph.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Start_off.bmp');
      _YMDLogString := strTimeNow + '- �ű� ��ŵ� �ֹ� �Ϸ�';
      ckbYMDAutoOrder.Checked := False; // ���� �ڵ� �ֹ� ����
      exit;
    end;
  end;
  // 2. ���� û��
  if _YMDOldCS_flg then begin
    _YMDLogString := strTimeNow + '- ��ŵ� ���� û��';
    nPrice := 0;
    nOrgNo := 0; // �ֹ���ȣ
    for I := 0 to 1 do begin // 1,2 ��° ���� ���� �ֹ�
      if (ABS(_YMDList[i].TTQtn) - _YMDOrderedQtn[i]) > 0 then begin
        _YMDJMDataList[i].JMKey := -1;
        _YMDJMDataList[i].OrderNo := -1;
        if _YMDList[i].TTQtn > 0 then nGubun := 2 // �ż�
        else if _YMDList[i].TTQtn < 0 then nGubun := 1; //�ŵ�
        ClientKey := 33000000; // 33�� ��ŵ� �ֹ��� �ǹ� 01�� 4���� �� ���°���� �ǹ�  1,2,3,4 ����
        ClientKey := ClientKey + (i+1) * 10000;// 33030000 �ű� ���� ù��°
        //21 ���� if fHBOMain.DongbuAPI1.SendFOrder(ClientKey,Acnt,AcntPwd,nGubun,_YMDList[i].JMCode,_YMDList[i].PriceType,_YMDList[i].UnitQtn,nPrice,nOrgNo) = false then
//        begin
//          strTimeNow := copy(formatdatetime('hhmmss',now),1,6);
//          _YMDLogString := strTimeNow +  ' : ����-�ֹ��� �����߽��ϴ�.'+ #13#10;
//          flg_YMD := False;
//
//          btnYMDAutoStart.Glyph.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Start_off.bmp');
//          ckbYMDAutoOrder.Checked := False; // ���� �ڵ� �ֹ� ����
//          exit;
//        end else begin
//
//          _YMDOrderedQtn[i] := _YMDOrderedQtn[i] + _YMDList[i].UnitQtn;
//          _YMDLogString := strTimeNow + '['+ _YMDList[i].JMCode + '] �ֹ�[' + intTostr(_YMDList[i].UnitQtn) + '] �ֹ���[' + intTostr(_YMDOrderedQtn[i]) + ']';
//          if _YMDList[i].UnitQtn > (ABS(_YMDList[i].TTQtn) - _YMDOrderedQtn[i]) then _YMDList[i].UnitQtn := ABS(_YMDList[i].TTQtn) - _YMDOrderedQtn[i];
//
//        end;
        // ���⼭ ���� �ֹ� ���� Ȯ��
        Time_Out := 0;
        repeat
          if (Time_Out > 600000) OR (flg_YMD = false) then begin
            flg_YMD := False;

            btnYMDAutoStart.Glyph.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Start_off.bmp');
            ckbYMDAutoOrder.Checked := False; // ���� �ڵ� �ֹ� ����
            exit;
          end;
          delay(10);
          inc(Time_Out);
        until _YMDJMDataList[i].JMKey = ClientKey ;
      end;
    end;
    // ���⼭ ��ü ���� �ֹ� Ȯ��
    if ((ABS(_YMDList[0].TTQtn) - _YMDOrderedQtn[0]) = 0) and ((ABS(_YMDList[1].TTQtn) - _YMDOrderedQtn[1]) = 0) then begin
      // �ű� �ֹ� �Ϸ�
      flg_YMD := False;

      btnYMDAutoStart.Glyph.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Start_off.bmp');
      _YMDLogString := strTimeNow + '- ��ŵ� û�� �ֹ� �Ϸ�';
      ckbYMDAutoOrder.Checked := False; // ���� �ڵ� �ֹ� ����
      exit;
    end;
  end;
  // 3. ���� ��ü
  if _YMDChange_flg then begin
    _YMDLogString := strTimeNow + '- ��ŵ� ���� ��ü';
    nPrice := 0;
    nOrgNo := 0; // �ֹ���ȣ
    for I := 0 to 3 do begin // 1,2,3,4�� ���� �ֹ�
      if (ABS(_YMDList[i].TTQtn) - _YMDOrderedQtn[i]) > 0 then begin
        _YMDJMDataList[i].JMKey := -1;
        _YMDJMDataList[i].OrderNo := -1;
        if _YMDList[i].TTQtn > 0 then nGubun := 2 // �ż�
        else if _YMDList[i].TTQtn < 0 then nGubun := 1; //�ŵ�
        ClientKey := 33000000; // 33�� ��ŵ� �ֹ��� �ǹ� 01�� 4���� �� ���°���� �ǹ�  1,2,3,4 ����
        ClientKey := ClientKey + (i+1) * 10000;//33030000 �ű� ���� ù��°
        //21 ���� if fHBOMain.DongbuAPI1.SendFOrder(ClientKey,Acnt,AcntPwd,nGubun,_YMDList[i].JMCode,_YMDList[i].PriceType,_YMDList[i].UnitQtn,nPrice,nOrgNo) = false then
//        begin
//          strTimeNow := copy(formatdatetime('hhmmss',now),1,6);
//          _YMDLogString := strTimeNow +  ' : ����-�ֹ��� �����߽��ϴ�.'+ #13#10;
//          flg_YMD := False;
//
//          btnYMDAutoStart.Glyph.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Start_off.bmp');
//          ckbYMDAutoOrder.Checked := False; // ���� �ڵ� �ֹ� ����
//          exit;
//        end else begin
//
//          _YMDOrderedQtn[i] := _YMDOrderedQtn[i] + _YMDList[i].UnitQtn;
//          _YMDLogString := strTimeNow + '['+ _YMDList[i].JMCode + '] �ֹ�[' + intTostr(_YMDList[i].UnitQtn) + '] �ֹ���[' + intTostr(_YMDOrderedQtn[i]) + ']';
//          if _YMDList[i].UnitQtn > (ABS(_YMDList[i].TTQtn) - _YMDOrderedQtn[i]) then _YMDList[i].UnitQtn := ABS(_YMDList[i].TTQtn) - _YMDOrderedQtn[i];
//
//        end;
        // ���⼭ ���� �ֹ� ���� Ȯ��
        Time_Out := 0;
        repeat
          if (Time_Out > 600000) OR (flg_YMD = false) then begin
            flg_YMD := False;

            btnYMDAutoStart.Glyph.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Start_off.bmp');
            ckbYMDAutoOrder.Checked := False; // ���� �ڵ� �ֹ� ����
            exit;
          end;
          delay(10);
          inc(Time_Out);
        until _YMDJMDataList[i].JMKey = ClientKey ;
      end;
    end;
    // ���⼭ ��ü ���� �ֹ� Ȯ��
    if ((ABS(_YMDList[0].TTQtn) - _YMDOrderedQtn[0]) = 0) and ((ABS(_YMDList[1].TTQtn) - _YMDOrderedQtn[1]) = 0) then
      if ((ABS(_YMDList[2].TTQtn) - _YMDOrderedQtn[2]) = 0) and ((ABS(_YMDList[3].TTQtn) - _YMDOrderedQtn[3]) = 0) then begin
        // �ű� �ֹ� �Ϸ�
        flg_YMD := False;
        _YMDLogString := strTimeNow + '- ��ŵ� ���� ��ü �Ϸ�';
        ckbYMDAutoOrder.Checked := False; // ���� �ڵ� �ֹ� ����
        btnYMDAutoStart.Glyph.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Start_off.bmp');
        exit;
      end;
  end;

  tmrYMDOrder.Enabled := True;
end;

procedure TfYMD.tmrYMDPrice2Timer(Sender: TObject);
var i, nRowNo, nMMType : integer;
    strJMCode, strYMonthCode : string;//, strOldHoga, strNewHoga : string;
    snOldHoga, snNewHoga : single;
    snValue : single;
begin
//  tmrYMDPrice2.Enabled := False;
  for i := 0 to 3 do begin
    strJMCode := _YMDList[i].JMCode;
    if strJMCode <> '' then begin
      strYMonthCode := copy(strJMCode, 4,2); ///  2. ���� �� ���� Ȯ��
      nRowNo := _YMDList[i].RowNo;//  strTointDef(_YMDList[7,i],-1);  ///  3. Row��ȣ Ȯ��
      nMMType := _YMDList[i].TTQtn;// copy(_YMDList[3,i],1,1);   ///  4. �ż�, �ŵ� Ȯ�� - �̰ų� �����̰ų�.
      snOldHoga := _YMDList[i].HGPrice; //_YMDList[2,i]; // ���� ȣ�� Ȯ��
      if (copy(strJMCode,1,3) = '201') then begin   // ���̸�
        if (nMMType < 0) then snNewHoga := _DWHSGListInfo[1,nRowNo]
        else if (nMMType > 0) then snNewHoga := _DWHSGListInfo[0,nRowNo];
      end else if (copy(strJMCode,1,3) = '301') then begin // ǲ�̸�
        if (nMMType < 0) then snNewHoga := _DWHSGListInfo[5,nRowNo]
        else if (nMMType > 0) then snNewHoga := _DWHSGListInfo[6,nRowNo];
      end;

      if snOldHoga <> snNewHoga then begin
        // ��ŵ��� ������ �űԴ� �ŵ�, û���� �ż��� ����!!!!!!!
        _YMDList[i].HGPrice := snNewHoga;   ///  5. �ٸ��� ǥ��
        stgYMD.Cells[2,i] := formatfloat('0.00',snNewHoga);
        _YMDNewBY := _YMDList[2].HGPrice  + _YMDList[3].HGPrice;
        _YMDNewBY := _YMDNewBY * (-1);
        _YMDOldBY := _YMDList[0].HGPrice  + _YMDList[1].HGPrice;
//        if _YMDList[1].HGPrice > 0 then begin
          if _YMDList[0].HGPrice < _YMDList[1].HGPrice then
            _YMDRatio :=  _YMDList[0].HGPrice / _YMDList[1].HGPrice // 0.25 : 1.0 => 0.25/1      1/0.25 = 4
          else if _YMDList[0].HGPrice > _YMDList[1].HGPrice then
            _YMDRatio :=  _YMDList[1].HGPrice / _YMDList[0].HGPrice; // 0.25 : 1.0 => 0.25/1      1/0.25 = 4
//        end;

        edtYMDNewBY.Text := formatfloat('0.0#',_YMDNewBY);
        edtYMDOldBY.Text := formatfloat('0.0#',_YMDOldBY);
        lbeYMDRatioNow.Caption := formatfloat('0.0',_YMDRatio * 100) + '%';

//        _YMDList[1,i] := strNewHoga;   ///  5. �ٸ��� ǥ��
//        stgYMD.Cells[1,i] := strNewHoga;
//        // �����
//        if strTointDef(_YMDList[3,0],0) > 0 then   //�ż�
//          snValue :=  strTofloatDef(_YMDList[2,0],0)
//        else  snValue := strTofloatDef(_YMDList[2,0],0) * (-1);
//
//        if strTointDef(_YMDList[3,1],0) > 0 then   //�ż�
//          snValue := snValue + strTofloatDef(_YMDList[2,1],0)
//        else  snValue := snValue - strTofloatDef(_YMDList[2,1],0);
//        edtTSCallHGBY.Text := formatfloat('0.00',snValue);
      end;
    end;
  end;
//  tmrYMDPrice2.Enabled := True;
end;

procedure TfYMD.tmrYMDPriceTimer(Sender: TObject);
begin
//  if _YMDRTIndex > -1 then
//    YMDInsertGrid;

  if not (_YMDLogString = '') then begin
    mmoYMDLog.Lines.Add(_YMDLogString);
    _YMDLogString := '';
  end;
end;

//procedure TfYMD.YMDInsertGrid;
//begin
//  if _YMDRTIndex > -1 then begin
//    stgYMD.Cells[2,_YMDRTIndex] := formatfloat('0.0#',_YMDList[_YMDRTIndex].HGPrice);
//    edtYMDNewBY.Text := formatfloat('0.0#',_YMDNewBY);
//    edtYMDOldBY.Text := formatfloat('0.0#',_YMDOldBY);
//    lbeYMDRatioNow.Caption := formatfloat('0.0',_YMDRatio * 100) + '%';
//    _YMDRTIndex := -1;
//  end;
//end;

procedure TfYMD.YMDInsertValue;
var i : integer;
    sngRow : single;
begin
//  for i := 0 to stgYMD.RowCount -3 do begin
  for I := 0 to 3 do begin

    if stgYMD.Cells[0,i] <> '' then begin
      if (copy(stgYMD.Cells[0,i],8,1) = '2') or (copy(stgYMD.Cells[0,i],8,1) = '7') then
        sngRow := strTofloatDef(copy(stgYMD.Cells[0,i],6,3),0) + 0.5
      else sngRow := strTofloatDef(copy(stgYMD.Cells[0,i],6,3),0);
      sngRow := Round((_MaxHSG - sngRow) / 2.5);
      if sngRow > 0 then
        stgYMD.Cells[7,i] := formatfloat('#0',sngRow)
      else stgYMD.Cells[7,i] := '';
    end else begin
      stgYMD.Cells[7,i] := '';
    end;

    _YMDList[i].JMCode := stgYMD.Cells[0,i];
    _YMDList[i].MIPrice := strTofloatDef(stgYMD.Cells[1,i],0);
    _YMDList[i].HGPrice := strTofloatDef(stgYMD.Cells[2,i],0);
    _YMDList[i].TTQtn := strTointDef(stgYMD.Cells[3,i],0);
    _YMDList[i].UnitQtn := strTointDef(stgYMD.Cells[4,i],0);
    _YMDList[i].PriceType := strTointDef(stgYMD.Cells[5,i],3);
    _YMDList[i].ReMark := stgYMD.Cells[6,i];
    _YMDList[i].RowNo := strTointDef(stgYMD.Cells[7,i],0);
  end;
end;

end.

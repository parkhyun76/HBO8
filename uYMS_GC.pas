unit uYMS_GC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.Buttons, VclTee.TeeGDIPlus, VCLTee.TeEngine,
  VCLTee.Series, VCLTee.TeeProcs, VCLTee.Chart, Vcl.Mask;

type
  TfYMS_GC = class(TForm)
    GroupBox13: TGroupBox;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label41: TLabel;
    stgGCList: TStringGrid;
    StringGrid4: TStringGrid;
    rdbGuChuckList1: TRadioButton;
    rdbGuChuckList2: TRadioButton;
    rdbGuChuckList3: TRadioButton;
    rdbGuChuckList4: TRadioButton;
    rdbGuChuckList5: TRadioButton;
    rdbGuChuckList6: TRadioButton;
    rdbGuChuckList7: TRadioButton;
    rdbGuChuckList8: TRadioButton;
    rdbGuChuckList9: TRadioButton;
    rdbGuChuckList10: TRadioButton;
    rdbGuChuckList11: TRadioButton;
    rdbGuChuckList12: TRadioButton;
    Button16: TButton;
    GroupBox7: TGroupBox;
    Label4: TLabel;
    Label19: TLabel;
    ledGCCNT: TLabeledEdit;
    edtGCAutoMMStart: TEdit;
    edtGCAutoMMStop: TEdit;
    Button19: TButton;
    edtGCTotalQtn: TEdit;
    Button52: TButton;
    Button55: TButton;
    Memo1: TMemo;
    Label39: TLabel;
    edtAutoGCUnit: TEdit;
    Button2: TButton;
    SpeedButton1: TSpeedButton;
    SpinButton1: TSpinButton;
    Label14: TLabel;
    ldtAutoGCTLevel: TLabeledEdit;
    ldt����UpJiSu: TLabeledEdit;
    ldt����DownJiSu: TLabeledEdit;
    ckbGCJSInOut: TCheckBox;
    SpinButton2: TSpinButton;
    SpinButton3: TSpinButton;
    SpinButton4: TSpinButton;
    tmrYMSPrice: TTimer;
    mmoLog: TMemo;
    btnAllSetOK: TButton;
    tmrYMSMessage: TTimer;
    btnGCAutoStart: TSpeedButton;
    btnAutoStop: TSpeedButton;
    tmrYMSGC: TTimer;
    grbChart: TGroupBox;
    Label38: TLabel;
    Label37: TLabel;
    mmoChart1Data: TMemo;
    ltbChartDataList: TListBox;
    btnChartListOpen: TButton;
    Button51: TButton;
    Button49: TButton;
    Button50: TButton;
    edtChartInt: TEdit;
    ckbChartViewFlg: TCheckBox;
    chtBasicChart: TChart;
    edtCLMax: TEdit;
    edtCLMin: TEdit;
    edtCRMax: TEdit;
    edtCRMin: TEdit;
    Button38: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Button39: TButton;
    LineSeries1: TLineSeries;
    LineSeries2: TLineSeries;
    LineSeries3: TLineSeries;
    Button67: TButton;
    edtGCSetBY: TEdit;
    Label83: TLabel;
    edtGCBY: TEdit;
    Label7: TLabel;
    Label1: TLabel;
    edtWPosition: TEdit;
    tmrYMSChartInput: TTimer;
    mmoSaveUIValue: TMemo;
    gbYMSGCAdd: TGroupBox;
    Label53: TLabel;
    SpeedButton2: TSpeedButton;
    ledtYMSGCJongMokAdd: TLabeledEdit;
    ledtYMSGCTotalQtnAdd: TLabeledEdit;
    btnGuChuckAdd: TButton;
    cbbYMSGCListPosition: TComboBox;
    Button18: TButton;
    SpinButton5: TSpinButton;
    rdbYMSGCAddCall: TRadioButton;
    rdbYMSGCAddPut: TRadioButton;
    ledtYMSGCUnitQtnAdd: TLabeledEdit;
    edtYMSGCAddJMRow: TEdit;
    Button1: TButton;
    GroupBox1: TGroupBox;
    rdbBasicBiYong: TRadioButton;
    rdbTotalBiYong: TRadioButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure stgGCListDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure stgGCListExit(Sender: TObject);
    procedure stgGCListSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure SpinButton1DownClick(Sender: TObject);
    procedure SpinButton1UpClick(Sender: TObject);
    procedure Button52Click(Sender: TObject);
    procedure Button55Click(Sender: TObject);
    procedure btnGCAutoStartClick(Sender: TObject);
    procedure btnAutoStopClick(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure rdbGuChuckList1Click(Sender: TObject);
    procedure rdbGuChuckList2Click(Sender: TObject);
    procedure rdbGuChuckList3Click(Sender: TObject);
    procedure rdbGuChuckList4Click(Sender: TObject);
    procedure rdbGuChuckList5Click(Sender: TObject);
    procedure rdbGuChuckList6Click(Sender: TObject);
    procedure rdbGuChuckList7Click(Sender: TObject);
    procedure rdbGuChuckList8Click(Sender: TObject);
    procedure rdbGuChuckList9Click(Sender: TObject);
    procedure rdbGuChuckList10Click(Sender: TObject);
    procedure rdbGuChuckList11Click(Sender: TObject);
    procedure rdbGuChuckList12Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure btnAllSetOKClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpinButton2DownClick(Sender: TObject);
    procedure SpinButton2UpClick(Sender: TObject);
    procedure SpinButton3DownClick(Sender: TObject);
    procedure SpinButton3UpClick(Sender: TObject);
    procedure SpinButton4DownClick(Sender: TObject);
    procedure SpinButton4UpClick(Sender: TObject);
    procedure tmrYMSPriceTimer(Sender: TObject);
    procedure edtGCAutoMMStartChange(Sender: TObject);
    procedure edtGCAutoMMStopChange(Sender: TObject);
    procedure ldt����UpJiSuChange(Sender: TObject);
    procedure ldt����DownJiSuChange(Sender: TObject);
    procedure ldtAutoGCTLevelChange(Sender: TObject);
    procedure rdbTotalBiYongClick(Sender: TObject);
    procedure rdbBasicBiYongClick(Sender: TObject);
    procedure ledGCCNTChange(Sender: TObject);
    procedure tmrYMSMessageTimer(Sender: TObject);
    procedure tmrYMSGCTimer(Sender: TObject);
    procedure tmrYMSChartInputTimer(Sender: TObject);
    procedure Button49Click(Sender: TObject);
    procedure ckbChartViewFlgClick(Sender: TObject);
    procedure Button38Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Button50Click(Sender: TObject);
    procedure btnChartListOpenClick(Sender: TObject);
    procedure Button67Click(Sender: TObject);
    procedure Button51Click(Sender: TObject);
    procedure Button39Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure stgGCListKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpinButton5DownClick(Sender: TObject);
    procedure SpinButton5UpClick(Sender: TObject);
    procedure btnGuChuckAddClick(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure rdbYMSGCAddPutClick(Sender: TObject);
    procedure rdbYMSGCAddCallClick(Sender: TObject);
    procedure gbYMSGCAddMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormActivate(Sender: TObject);
    procedure stgGCListMouseLeave(Sender: TObject);
    procedure StringGrid4MouseLeave(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure stgGCListMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure stgGCListMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure StringGrid4MouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure StringGrid4MouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
  private
    procedure pGCListSelect;
    procedure InsertVerYMSGCJM;
    procedure YMSBasicSetting(nDGPos, nWGPos: integer; nTotalQtn, nUnitQtn : string);
    procedure YMSBYCal;
    procedure MessageVerInit;
    procedure YMSOrderedQtnInit;
    procedure YMSGCListAdd(nDGPos, nWGPos: integer; nTotalQtn,
      nUnitQtn: string);
    procedure YMSCGClear;
//    procedure YMSSaveUIValue;
//    procedure YMSOpenUIValue;

  public
    { Public declarations }
    procedure VisibleChanging; override;
    procedure YMSSaveUIValue;
    procedure YMSOpenUIValue;
  end;

var
  fYMS_GC: TfYMS_GC;
    First_Activate : boolean; //ȭ�� ���Ŀ�
    GCListSelectNo : integer;
    _YMSGCChartStep : integer;
    // 190809
    _GCDGPos : integer;
    _YMSTotalBY, _YMSUnitBY : single; // ��ż� ��Ż���, ��ż����� ���.

    // �ֹ������� ���� ���� 190809
    _AllCond_flg, _OdrConti_flg, _CJComp_flg, _AllOdrComp_flg : boolean; // ��� �ֹ� ���� OK, ü��Ϸ� Ȯ��, ��� �ֹ� �Ϸ� Ȯ��
    _OrderBYLevel, _SunMulUpLevel, _SunMulDownLevel, _ContTime  : single; // �ֹ� ��� ���� , ���� ���, �����Ϲ�, ���ӽð�
    _AND_flg, _INOUT_flg, _UnitOrTotalBy_flg : boolean; // AND����, �����ȹ�, �����Ǵ����պ��
    _StartTime, _EndTime, _GCRepeatCNT : integer; // ���۽ð�, ����ð� , �������Ӱ���(�ð�)
    _AllSettingCheck_flg : boolean;// ���� ���� �Ϸ�
//    _YMSGCLastClientNo, _YMSGCOrderIndex : integer; // ��ű� ���� ������ �ֹ�����
    _GCJMNo : integer;

    //��ż� �ֹ� ����
     _FirstMainCallOrder_flg : boolean; // �ű� �ֹ��ؾ� �ϴ��� üũ
     _YMSGCListInfo : array[0..5,0..11] of string;  // ��ż� �ֹ� ����Ʈ���� [  �����ڵ�[0], ���簡[1], ���ֹ�����[2], 1ȸ����[3], PT[4], ���[5]  ]
     _YMSGCListJMQtn : integer; // ��ż� ���� ����

     _YMSGCMessage : array[0..19] of string; // ��ż� ������ ���۽� ���� �޼����� ȭ�鿡 ǥ���ϱ� ����.
     _YMSGCMessage_flg : array[0..19] of boolean; // ���°�� �޽����� ��� �ִ��� Ȯ��
     _YMSGCMessageStep : integer; // �޼����� �� �ڸ� Ȯ��
     _YMSOrderedQtn : array[0..11] of integer; //��ż� �ֹ��� ����
     _YMSCGCheck_flg : boolean;
implementation
uses uHBO2_Main;
{$R *.dfm}

function FindFiles(const sPath, sMask: string; slFiles: TStringList; bSubDir: boolean): integer;
var
  iFindResult: integer;
 srSchRec : TSearchRec;
begin
  result := 0;

  iFindResult := FindFirst(sPath + sMask, faAnyFile - faDirectory, srSchRec);
  while iFindResult = 0 do
  begin
    slFiles.Add(srSchRec.Name);
    iFindResult := FindNext(srSchRec);
  end;
  FindClose(srSchRec);

  if bSubDir then
  begin
    iFindResult := FindFirst(sPath + '*.*', faDirectory, srSchRec);
    while iFindResult = 0 do
    begin
      if (srSchRec.Name <> '.') and (srSchRec.Name <> '..') then
        result := result + FindFiles(sPath + srSchRec.Name + '\', sMask, slFiles, TRUE);
      iFindResult := FindNext(srSchRec);
    end;
    FindClose(srSchRec);
  end;
end;

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

procedure TfYMS_GC.btnAutoStopClick(Sender: TObject);
var nString : string;
begin
//  if MessageDlg('�ڵ� �Ÿ� �����ϰڽ��ϱ�?',
//      mtConfirmation, [mbYes, mbNo], 0) = mrYes then
//  begin
    _AllSettingCheck_flg := False;
    btnAllSetOK.Caption := '����ȵ�';
    _OdrConti_flg := False;    // ���� flg
    nString := formatdatetime('hhmmss',now) + '-�ڵ����� ����';
    mmoLog.Lines.Add(nString);
    btnGCAutoStart.Glyph.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Start_Off.bmp');
//    _OdrConti_flg := False;
    tmrYMSGC.Enabled := False;
//    if GCCond.Suspended = False then GCCond.Suspend;
//    if GCOrder.Suspended = False then GCOrder.Suspend;
//    if GCCG.Suspended = False then GCCG.Suspend;
//    if GCComp.Suspended = False then GCComp.Suspend;
//  end;
end;

procedure TfYMS_GC.btnChartListOpenClick(Sender: TObject);
var sl: TStringList;
begin
  sl := TStringList.Create;
  sl.Clear;
  FindFiles(ExtractFilePath(paramstr(0))+'ChartData\', '*.txt', sl, True);
  ltbChartDataList.Items := sl;
  sl.Free;
  ltbChartDataList.BringToFront;
  ltbChartDataList.Visible := true;
end;

procedure TfYMS_GC.btnGCAutoStartClick(Sender: TObject);
var nString : string;
begin
  if HandleDongbuApi = 0 then
  begin
    //showmessage(' �α����� �ȵǾ� �ֽ��ϴ�. ');
    nString := formatdatetime('hhmmss',now) + '- �α��� �ȵ�!!!!!!!!!!!';
    mmoLog.Lines.Add(nString);
    exit;
  end;

  if _AllSettingCheck_flg then begin
    nString := formatdatetime('hhmmss',now) + '- �ڵ����� ����';
    mmoLog.Lines.Add(nString);
    btnGCAutoStart.Glyph.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Start_Red.bmp');
    _OdrConti_flg := true; // �ֹ� ���� �÷��� �ʱ�ȭ
    _GCRepeatCNT := 0;     // ���� ���� Ȯ�� �÷��� �ʱ�ȭ
    _AllCond_flg := False; // ��� ���� Ȯ���÷��� �ʱ�ȭ
    tmrYMSGC.Enabled := True;
//    if GCCond.Suspended = true then GCCond.Resume;
//    if GCOrder.Suspended = true then GCOrder.Resume;
//    if GCCG.Suspended = true then GCCG.Resume;
//    if GCComp.Suspended = true then GCComp.Resume;
  end else begin
    tmrYMSGC.Enabled := False;
    nString := formatdatetime('hhmmss',now) + '- ���� �غ� �ȵ�!!!!!!!!!!!';
    mmoLog.Lines.Add(nString);
  end;
end;

procedure TfYMS_GC.btnGuChuckAddClick(Sender: TObject);
var nListPos : integer;
begin
  nListPos := strtointDef(cbbYMSGCListPosition.Text,-1)-1;
  stgGCList.Cells[0,nListPos] := ledtYMSGCJongMokAdd.Text;
  stgGCList.Cells[1,nListPos] := Formatfloat('#0.00',_DWHSGListInfo[0,strTointDef(edtYMSGCAddJMRow.Text,-1)]) ;// �ŵ�ȣ��
  stgGCList.Cells[2,nListPos] := ledtYMSGCTotalQtnAdd.Text ;// �Ѽ���
  stgGCList.Cells[3,nListPos] := ledtYMSGCUnitQtnAdd.Text ;// 1ȸ ����
  stgGCList.Cells[4,nListPos] := '0';// �������� // 00:������   03:���尡   05:���Ǻ�������   06:������������
  stgGCList.Cells[6,nListPos] := edtYMSGCAddJMRow.Text;// Row ��ȣ
  InsertVerYMSGCJM;
  // �����
  YMSBYCal;
  gbYMSGCAdd.Visible := False;
end;

procedure TfYMS_GC.Button16Click(Sender: TObject);
var i,nRowCnt : integer;
begin
  stgGCList.Cells[0,GCListSelectNo] := '';
  stgGCList.Cells[1,GCListSelectNo] := '';
  stgGCList.Cells[2,GCListSelectNo] := '';
  stgGCList.Cells[3,GCListSelectNo] := '';
  stgGCList.Cells[4,GCListSelectNo] := '';
  stgGCList.Cells[5,GCListSelectNo] := '';
  for I := GCListSelectNo to stgGCList.RowCount -2 do
    stgGCList.Rows[i] := stgGCList.Rows[i+1];

  nRowCnt := stgGCList.RowCount;
  stgGCList.Rows[nRowCnt-1].Clear;

  InsertVerYMSGCJM;
end;

procedure TfYMS_GC.Button18Click(Sender: TObject);
begin
  gbYMSGCAdd.Visible := False;
end;

procedure TfYMS_GC.Button19Click(Sender: TObject);
var i, nQtn : integer;
begin
  for I := 0 to stgGCList.RowCount -1 do begin
    if stgGCList.Cells[0,i] <> '' then begin
      nQtn := strTointDef(stgGCList.Cells[2,i],-1);
      if nQtn < 0 then nQtn := strTointDef(edtGCTotalQtn.Text,0)* (-1)
      else  nQtn := strTointDef(edtGCTotalQtn.Text,0);
      stgGCList.Cells[2,i] := intTostr(nQtn);
    end;
  end;
  InsertVerYMSGCJM;
end;

procedure TfYMS_GC.Button1Click(Sender: TObject);
begin
  cbbYMSGCListPosition.Text := intTostr(GCListSelectNo+1);
  YMSGCListAdd(_PriceInfoDGPosition, 0, ledtYMSGCTotalQtnAdd.Text, ledtYMSGCUnitQtnAdd.Text);
  gbYMSGCAdd.Visible := True;
end;

procedure TfYMS_GC.Button21Click(Sender: TObject);
var nInt : integer;
    nSingle : single;
begin
//  nSingle := strTofloatDef(edtGCBY.Text,0);
//  nInt := strTointDef(edtGCSetQtn.Text,1);
//  edtGCSetBY.Text := formatfloat('#0.00',nSingle/nInt);
end;

procedure TfYMS_GC.Button2Click(Sender: TObject);
var i, nQtn : integer;
begin
  for I := 0 to stgGCList.RowCount -1 do begin
    if stgGCList.Cells[0,i] <> '' then begin
      nQtn := strTointDef(stgGCList.Cells[2,i],-1);
      if nQtn < 0 then nQtn := strTointDef(edtAutoGCUnit.Text,0)* (-1)
      else  nQtn := strTointDef(edtAutoGCUnit.Text,0);
      stgGCList.Cells[3,i] := intTostr(nQtn);
    end;
  end;
  InsertVerYMSGCJM;
end;

procedure TfYMS_GC.Button38Click(Sender: TObject);
begin
  CheckBox1.Checked := False;
  chtBasicChart.LeftAxis.Maximum := strTofloatDef(edtCLMax.Text,350);
  chtBasicChart.LeftAxis.Minimum := strTofloatDef(edtCLMin.Text,200);
  chtBasicChart.LeftAxis.AutomaticMaximum := False;
  chtBasicChart.LeftAxis.AutomaticMinimum := False;
end;

procedure TfYMS_GC.Button39Click(Sender: TObject);
  var nMaxValue, nMinValue : double;
begin
  CheckBox2.Checked := False;
  chtBasicChart.RightAxis.AutomaticMaximum := False;
  chtBasicChart.RightAxis.AutomaticMinimum := False;
  nMaxValue := strTofloatDef(edtCRMax.Text,0);
  nMinValue := strTofloatDef(edtCRMin.Text,0);
  if nMaxValue > chtBasicChart.RightAxis.Minimum then begin
    chtBasicChart.RightAxis.Maximum := nMaxValue;
    chtBasicChart.RightAxis.Minimum := nMinValue;
  end else begin
    chtBasicChart.RightAxis.Minimum := nMinValue;
    chtBasicChart.RightAxis.Maximum := nMaxValue;
  end;
end;

procedure TfYMS_GC.Button49Click(Sender: TObject);
var i : integer;
begin
  for I := 0 to chtBasicChart.SeriesCount -1 do
  begin
    chtBasicChart.Series[i].Clear;
  end;
  _YMSGCChartStep := 0
end;

procedure TfYMS_GC.btnAllSetOKClick(Sender: TObject);
begin
//  _OrderBYLevel, _SunMulUpLevel, _SunMulDownLevel  : single; // �ֹ� ��� ���� , ���� ���, �����Ϲ�
//  _AND_flg, _INOUT_flg, _UnitOrTotalBy_flg : boolean; // AND����, �����ȹ�, �����Ǵ����պ��
//  _StartTime, _EndTime, _ContTime : integer; // ���۽ð�, ����ð� , ���ӽð�

  _OrderBYLevel := strTofloatDef(ldtAutoGCTLevel.Text,-99999);
  _SunMulUpLevel := strTofloatDef(ldt����UpJiSu.Text,-99999);
  _SunMulDownLevel := strTofloatDef(ldt����DownJiSu.Text,-99999);
  _AND_flg := True;
  _INOUT_flg := ckbGCJSInOut.Checked;
  _UnitOrTotalBy_flg := rdbBasicBiYong.Checked;
  _StartTime := strTointDef(edtGCAutoMMStart.Text,090500);
  _EndTime := strTointDef(edtGCAutoMMStop.Text,153000);
  _ContTime := strTofloatDef(ledGCCNT.Text,5);
  YMSOrderedQtnInit; // ��ż� �ֹ��� ���� �ʱ�ȭ
  InsertVerYMSGCJM;   // ������ �޼��� �ʱ�ȭ, ȭ�� ǥ�� ����
  _YMSCGCheck_flg := False; // ü�� Ȯ�ο�û �÷��� �ʱ�ȭ
  MessageVerInit;
  _AllSettingCheck_flg := True;
  _GCJMNo := 0;
  _FirstMainCallOrder_flg := True; // ó�� �����ؾ� �ϹǷ�  �ű� �ֹ� True
  btnAllSetOK.Caption := '����Ϸ�';
end;

procedure TfYMS_GC.YMSOrderedQtnInit;   // ������ �޼��� �ʱ�ȭ, ȭ�� ǥ�� ����
var i : integer;
begin
  for I := 0 to 11 do begin
    _YMSOrderedQtn[i] := 0; // ��ż� �ֹ��� ���� �ʱ�ȭ
  end;
end;

procedure TfYMS_GC.MessageVerInit;   // ������ �޼��� �ʱ�ȭ, ȭ�� ǥ�� ����
var i : integer;
begin
  for I := 0 to 19 do begin
    _YMSGCMessage[i] := ''; // ��ż� ������ ���۽� ���� �޼����� ȭ�鿡 ǥ���ϱ� ����.
    _YMSGCMessage_flg[i] := False;// ���°�� �޽����� ��� �ִ��� Ȯ��
    _YMSGCMessageStep := 0;
  end;
end;

procedure TfYMS_GC.InsertVerYMSGCJM;
var i , nRow: integer;
    strT : string;
begin
  _YMSGCListJMQtn := 0;
  for i := 0 to 3 do begin //_YMSGCListJMQtn -1 do begin
    if stgGCList.Cells[0,i] <> '' then begin
      _YMSGCListInfo[0,i] := stgGCList.Cells[0,i] ;
      _YMSGCListInfo[1,i] := stgGCList.Cells[1,i] ; //���簡
      _YMSGCListInfo[2,i] := stgGCList.Cells[2,i] ;//�Ѽ���
      _YMSGCListInfo[3,i] := stgGCList.Cells[3,i] ; // 1ȸ����
      _YMSGCListInfo[4,i] := stgGCList.Cells[4,i] ;// ���尡

      if (stgGCList.Cells[0,i] <> '') then begin
        strT := stgGCList.Cells[0,i];
        if (copy(strT,8,1) = '2') or (copy(strT,8,1) = '7') then  strT := copy(strT,6,3) + '.5'
        else strT := copy(strT,6,3);
        nRow := Round((_MaxHSG - strTofloatDef(strT,0)) / 2.5);
        _YMSGCListInfo[5,i] := intTostr(nRow);
        stgGCList.Cells[5,i] := _YMSGCListInfo[5,i];
      end;
//      _YMSGCListInfo[5,i] := stgGCList.Cells[5,i] ; //Row
      _YMSGCListJMQtn := _YMSGCListJMQtn + 1;
    end else begin
      _YMSGCListInfo[0,i] := '';
      _YMSGCListInfo[1,i] := '';//���簡
      _YMSGCListInfo[2,i] := '';//�Ѽ���
      _YMSGCListInfo[3,i] := '';// 1ȸ����
      _YMSGCListInfo[4,i] := '';// ���尡
      _YMSGCListInfo[5,i] := ''; //Row
    end;
  end;
end;

procedure TfYMS_GC.ldtAutoGCTLevelChange(Sender: TObject);
begin
  _OrderBYLevel := strTofloatDef(ldtAutoGCTLevel.Text,-99999);
end;

procedure TfYMS_GC.ldt����DownJiSuChange(Sender: TObject);
begin
  _SunMulDownLevel := strTofloatDef(ldt����DownJiSu.Text,-99999);
end;

procedure TfYMS_GC.ldt����UpJiSuChange(Sender: TObject);
begin
  _SunMulUpLevel := strTofloatDef(ldt����UpJiSu.Text,-99999);
end;

procedure TfYMS_GC.ledGCCNTChange(Sender: TObject);
begin
  _ContTime := strTofloatDef(ledGCCNT.Text,5);
end;

procedure TfYMS_GC.Button50Click(Sender: TObject);
var nStingData : string;
    nCNT,i, nCNT2 : integer;
begin
  ckbChartViewFlg.checked := False;
  mmoChart1Data.Clear;
  with chtBasicChart do
  begin
    nCNT := Series[0].Count;
    nCNT2 := Series[2].Count;
    nStingData := 'Time,���-��2,�ݵ����,�ݵ���簡,ǲ�����, ǲ����簡,�ݿ�2����,�ݿ�2���簡,ǲ��2����,ǲ��2���簡,�';
    mmoChart1Data.Lines.Add(nStingData);
    for i := 0 to nCNT -1 do
    begin
      nStingData := Series[0].XLabel[i];
      nStingData := nStingData + ',' + floatTostr(Series[0].YValue[i]);
      nStingData := nStingData +',' + floatTostr( Series[1].YValue[i]);
      if nCNT2 > i then nStingData := nStingData +',' + floatTostr( Series[2].YValue[i]);
//      nStingData := nStingData +',' + CallW2Info[0] + ',' + floatTostr( Series[3].YValue[i]);
//      nStingData := nStingData +',' + PutW2Info[0] + ',' + floatTostr( Series[4].YValue[i]);
//      nStingData := nStingData +',�,' + floatTostr( Series[5].YValue[i]);
      mmoChart1Data.Lines.Add(nStingData);
    end;
  end;
  nStingData :=  ExtractFilePath(paramstr(0))+'ChartData\' + FormatdateTime('��Ʈ������_yymmddhhmmsszz',now) +'.txt';
  mmoChart1Data.Lines.SaveToFile(nStingData);
end;

procedure TfYMS_GC.Button51Click(Sender: TObject);
var nString : string;
    i : integer;
begin
  for I := 0 to ltbChartDataList.Items.Count -1 do
  begin
    if ltbChartDataList.Selected[i] then
    begin
      nString := ExtractFilePath(paramstr(0))+'ChartData\' + ltbChartDataList.Items.Strings[i];
      DeleteFile(PChar(nString));
      ltbChartDataList.DeleteSelected;
      exit;
    end;
  end;
end;

procedure TfYMS_GC.Button52Click(Sender: TObject);
var nString : string;
begin
  if MessageDlg('�����Ҳ���????',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    nString := ExtractFilePath(paramstr(0)) + 'AutoMeaMeaMemo\�ڵ�����-' + FormatDateTime('yymmdd hhmmss' , Now) + '.txt';
    mmoLog.Lines.SaveToFile(nString);
  end;
end;

procedure TfYMS_GC.Button55Click(Sender: TObject);
begin
  mmoLog.Clear;
end;

procedure TfYMS_GC.Button67Click(Sender: TObject);
begin
  ltbChartDataList.SendToBack;
  ltbChartDataList.Visible := False;
  chtBasicChart.BringToFront;
end;

procedure TfYMS_GC.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked then begin
    chtBasicChart.LeftAxis.AutomaticMaximum := True;
    chtBasicChart.LeftAxis.AutomaticMinimum := True;
    edtCLMax.Text := formatfloat('0',chtBasicChart.LeftAxis.Maximum);
    edtCLMin.Text := formatfloat('0',chtBasicChart.LeftAxis.Minimum);
  end;
end;

procedure TfYMS_GC.CheckBox2Click(Sender: TObject);
var nMaxValue, nMinValue : double;
begin
  if CheckBox2.Checked then begin
    chtBasicChart.RightAxis.AutomaticMaximum := True;
    chtBasicChart.RightAxis.AutomaticMinimum := True;
    edtCRMax.Text := formatfloat('0.0',chtBasicChart.RightAxis.Maximum);
    edtCRMin.Text := formatfloat('0.0',chtBasicChart.RightAxis.Minimum);
  end else begin
    nMaxValue := strTofloatDef(edtCRMax.Text,0);
    nMinValue := strTofloatDef(edtCRMin.Text,0);
    if nMaxValue > chtBasicChart.RightAxis.Minimum then begin
      chtBasicChart.RightAxis.Maximum := nMaxValue;
      chtBasicChart.RightAxis.Minimum := nMinValue;
    end else begin
      chtBasicChart.RightAxis.Minimum := nMinValue;
      chtBasicChart.RightAxis.Maximum := nMaxValue;
    end;
  end;
end;

procedure TfYMS_GC.ckbChartViewFlgClick(Sender: TObject);
begin
  tmrYMSChartInput.Interval := strTointDef(edtChartInt.Text,2000);
end;

procedure TfYMS_GC.edtGCAutoMMStartChange(Sender: TObject);
begin
  _StartTime := strTointDef(edtGCAutoMMStart.Text,090500);
end;

procedure TfYMS_GC.edtGCAutoMMStopChange(Sender: TObject);
begin
  _EndTime := strTointDef(edtGCAutoMMStop.Text,153000);
end;

procedure TfYMS_GC.pGCListSelect;
begin
  if rdbGuChuckList1.Checked then GCListSelectNo := 0
  else if rdbGuChuckList2.Checked then GCListSelectNo := 1
  else if rdbGuChuckList3.Checked then GCListSelectNo := 2
  else if rdbGuChuckList4.Checked then GCListSelectNo := 3
  else if rdbGuChuckList5.Checked then GCListSelectNo := 4
  else if rdbGuChuckList6.Checked then GCListSelectNo := 5
  else if rdbGuChuckList7.Checked then GCListSelectNo := 6
  else if rdbGuChuckList8.Checked then GCListSelectNo := 7
  else if rdbGuChuckList9.Checked then GCListSelectNo := 8
  else if rdbGuChuckList10.Checked then GCListSelectNo := 9
  else if rdbGuChuckList11.Checked then GCListSelectNo := 10
  else if rdbGuChuckList12.Checked then GCListSelectNo := 11;
//  cbbGuChuckListPosition.Text := intTostr(GCListSelectNo + 1);
end;

procedure TfYMS_GC.rdbBasicBiYongClick(Sender: TObject);
begin
  _UnitOrTotalBy_flg := rdbBasicBiYong.Checked;
end;

procedure TfYMS_GC.rdbGuChuckList10Click(Sender: TObject);
begin
  pGCListSelect;
end;

procedure TfYMS_GC.rdbGuChuckList11Click(Sender: TObject);
begin
  pGCListSelect;
end;

procedure TfYMS_GC.rdbGuChuckList12Click(Sender: TObject);
begin
  pGCListSelect;
end;

procedure TfYMS_GC.rdbGuChuckList1Click(Sender: TObject);
begin
  pGCListSelect;
end;

procedure TfYMS_GC.rdbGuChuckList2Click(Sender: TObject);
begin
  pGCListSelect;
end;

procedure TfYMS_GC.rdbGuChuckList3Click(Sender: TObject);
begin
  pGCListSelect;
end;

procedure TfYMS_GC.rdbGuChuckList4Click(Sender: TObject);
begin
  pGCListSelect;
end;

procedure TfYMS_GC.rdbGuChuckList5Click(Sender: TObject);
begin
  pGCListSelect;
end;

procedure TfYMS_GC.rdbGuChuckList6Click(Sender: TObject);
begin
  pGCListSelect;
end;

procedure TfYMS_GC.rdbGuChuckList7Click(Sender: TObject);
begin
  pGCListSelect;
end;

procedure TfYMS_GC.rdbGuChuckList8Click(Sender: TObject);
begin
  pGCListSelect;
end;

procedure TfYMS_GC.rdbGuChuckList9Click(Sender: TObject);
begin
  pGCListSelect;
end;

procedure TfYMS_GC.rdbTotalBiYongClick(Sender: TObject);
begin
  _UnitOrTotalBy_flg := rdbBasicBiYong.Checked;
end;

procedure TfYMS_GC.rdbYMSGCAddCallClick(Sender: TObject);
begin
  ledtYMSGCJongMokAdd.Text := '2' + copy(ledtYMSGCJongMokAdd.Text,2,Length(ledtYMSGCJongMokAdd.Text)-1);
end;

procedure TfYMS_GC.rdbYMSGCAddPutClick(Sender: TObject);
begin
  ledtYMSGCJongMokAdd.Text := '3' + copy(ledtYMSGCJongMokAdd.Text,2,Length(ledtYMSGCJongMokAdd.Text)-1);
end;

procedure TfYMS_GC.SpeedButton1Click(Sender: TObject);
begin
  YMSBasicSetting(_PriceInfoDGPosition, strTointDef(edtWPosition.Text,3), edtGCTotalQtn.Text, edtAutoGCUnit.Text);
end;

procedure TfYMS_GC.SpeedButton2Click(Sender: TObject);
begin
  YMSGCListAdd(_PriceInfoDGPosition, 0, ledtYMSGCTotalQtnAdd.Text, ledtYMSGCUnitQtnAdd.Text);
end;

procedure TfYMS_GC.YMSGCListAdd(nDGPos, nWGPos : integer; nTotalQtn, nUnitQtn : string);
var nHeangSaGa : single;
    I, nWGPosition : integer;
begin
  _GCDGPos := nDGPos; // ȭ��ǥ�� ���Ϸ� ���� ����� ����ϱ� ����
  nWGPosition := nDGPos - nWGPos;
  edtYMSGCAddJMRow.Text := intTostr(nWGPosition);// Row ��ȣ
  nHeangSaGa :=  _MaxHSG - nWGPosition*2.5 ;
  if rdbYMSGCAddCall.Checked then begin
    ledtYMSGCJongMokAdd.Text := '201' +_DCode + copy(formatfloat('#0.0',nHeangSaGa),1,3); // �ֹ���ȣ �Է�
//    stgCSList2.Cells[1,nListPos] := Formatfloat('#0.00',_DWHSGListInfo[0,nWGPosition]) ;// �ŵ�ȣ��
//    stgCSList2.Cells[2,nListPos] := nTotalQtn ;// �Ѽ���
//    stgCSList2.Cells[3,nListPos] := nUnitQtn ;// 1ȸ ����
//    stgCSList2.Cells[4,nListPos] := '0';// �������� // 00:������   03:���尡   05:���Ǻ�������   06:������������
//    stgCSList2.Cells[6,nListPos] := edtYMSCSAddJMRow.Text;// Row ��ȣ
  end else if rdbYMSGCAddPut.Checked then begin
    ledtYMSGCJongMokAdd.Text := '301' +_DCode + copy(formatfloat('#0.0',nHeangSaGa),1,3); // �ֹ���ȣ �Է�
//    stgCSList2.Cells[1,nListPos] := Formatfloat('#0.00',_DWHSGListInfo[0,nWGPosition]) ;// �ŵ�ȣ��
//    stgCSList2.Cells[2,nListPos] := nTotalQtn ;// �Ѽ���
//    stgCSList2.Cells[3,nListPos] := nUnitQtn ;// 1ȸ ����
//    stgCSList2.Cells[4,nListPos] := '0';// �������� // 00:������   03:���尡   05:���Ǻ�������   06:������������
//    stgCSList2.Cells[6,nListPos] := edtYMSCSAddJMRow.Text;// Row ��ȣ
  end;
end;

procedure TfYMS_GC.YMSBasicSetting(nDGPos, nWGPos : integer; nTotalQtn, nUnitQtn : string);
var nHeangSaGa : single;
    I, nWGPosition : integer;
begin
  _GCDGPos := nDGPos; // ȭ��ǥ�� ���Ϸ� ���� ����� ����ϱ� ����
  nWGPosition := nDGPos - nWGPos;
  nHeangSaGa :=  _MaxHSG - nWGPosition*2.5 ;
  stgGCList.Cells[0,0] := '201' +_DCode + copy(formatfloat('#0.0',nHeangSaGa),1,3); // �ֹ���ȣ �Է�
  stgGCList.Cells[1,0] := Formatfloat('#0.00',_DWHSGListInfo[1,nWGPosition]) ;// �ż�ȣ��
  stgGCList.Cells[2,0] := '-' + nTotalQtn ;// �Ѽ���
  stgGCList.Cells[3,0] := '-' + nUnitQtn ;// 1ȸ ����
  stgGCList.Cells[4,0] := '3';// �������� // 00:������   03:���尡   05:���Ǻ�������   06:������������
  stgGCList.Cells[5,0] := intTostr(nWGPosition);// Row ��ȣ

  nHeangSaGa :=  _MaxHSG - nDGPos*2.5 ;
  stgGCList.Cells[0,1] := '201' +_DCode + copy(formatfloat('#0.0',nHeangSaGa),1,3); // �ֹ���ȣ �Է�
  stgGCList.Cells[1,1] := Formatfloat('#0.00',_DWHSGListInfo[0,nDGPos]) ;// �ŵ�ȣ��
  stgGCList.Cells[2,1] := nTotalQtn ;// �Ѽ���
  stgGCList.Cells[3,1] := nUnitQtn ;// 1ȸ ����
  stgGCList.Cells[4,1] := '3';// �������� // 00:������   03:���尡   05:���Ǻ�������   06:������������
  stgGCList.Cells[5,1] := intTostr(nDGPos);// Row ��ȣ

  nHeangSaGa :=  _MaxHSG-nDGPos*2.5 ;
  stgGCList.Cells[0,2] := '301' +_DCode + copy(formatfloat('#0.0',nHeangSaGa),1,3); // �ֹ���ȣ �Է�
  stgGCList.Cells[1,2] := Formatfloat('#0.00',_DWHSGListInfo[6,nDGPos]) ;// �ŵ�ȣ��
  stgGCList.Cells[2,2] := nTotalQtn ;// �Ѽ���
  stgGCList.Cells[3,2] := nUnitQtn ;// 1ȸ ����
  stgGCList.Cells[4,2] := '3';// �������� // 00:������   03:���尡   05:���Ǻ�������   06:������������
  stgGCList.Cells[5,2] := intTostr(nDGPos);// Row ��ȣ

  nWGPosition := nDGPos + nWGPos;
  nHeangSaGa :=  _MaxHSG - nWGPosition*2.5 ;
  stgGCList.Cells[0,3] := '301' +_DCode + copy(formatfloat('#0.0',nHeangSaGa),1,3); // �ֹ���ȣ �Է�
  stgGCList.Cells[1,3] := Formatfloat('#0.00',_DWHSGListInfo[5,nWGPosition]) ;// �ż�ȣ��
  stgGCList.Cells[2,3] := '-' + nTotalQtn ;// �Ѽ���
  stgGCList.Cells[3,3] := '-' + nUnitQtn ;// 1ȸ ����
  stgGCList.Cells[4,3] := '3';// �������� // 00:������   03:���尡   05:���Ǻ�������   06:������������
  stgGCList.Cells[5,3] := intTostr(nWGPosition);// Row ��ȣ

  for I := 4 to 11 do stgGCList.Rows[i].Clear;
  InsertVerYMSGCJM;
  // �����
  YMSBYCal;
  // ���⼭ ���ʹ� ����Ϲ� ���� �⺻�� ���� ��� 2�ܰ�.
  ldt����UpJiSu.Text :=  formatfloat('0.#',_MaxHSG - (nDGPos - 2)*2.5);
  ldt����DownJiSu.Text :=  formatfloat('0.#',_MaxHSG - (nDGPos + 2)*2.5);
  edtGCBY.Text := formatfloat('0.00',_YMSTotalBY);
  edtGCSetBY.Text := formatfloat('0.00',_YMSUnitBY);
  if rdbBasicBiYong.Checked then ldtAutoGCTLevel.Text :=  formatfloat('0.00',_YMSUnitBY - (_YMSUnitBY*0.01)) // 1% ���� ����
  else ldtAutoGCTLevel.Text :=  formatfloat('0.00',_YMSTotalBY - (_YMSTotalBY * 0.01));
end;

procedure TfYMS_GC.SpinButton1DownClick(Sender: TObject);
begin
  YMSBasicSetting(_GCDGPos+1, strTointDef(edtWPosition.Text,3), edtGCTotalQtn.Text, edtAutoGCUnit.Text);
end;

procedure TfYMS_GC.SpinButton1UpClick(Sender: TObject);
begin
  YMSBasicSetting(_GCDGPos-1, strTointDef(edtWPosition.Text,3), edtGCTotalQtn.Text, edtAutoGCUnit.Text);
end;

procedure TfYMS_GC.SpinButton2DownClick(Sender: TObject);
begin
  ldt����UpJiSu.Text := formatfloat('#0.0#',(strTofloatDef(ldt����UpJiSu.Text,0) - 0.05));
end;

procedure TfYMS_GC.SpinButton2UpClick(Sender: TObject);
begin
  ldt����UpJiSu.Text := formatfloat('#0.0#',(strTofloatDef(ldt����UpJiSu.Text,0) + 0.05));
end;

procedure TfYMS_GC.SpinButton3DownClick(Sender: TObject);
begin
  ldt����DownJiSu.Text := formatfloat('#0.0#',(strTofloatDef(ldt����DownJiSu.Text,0) - 0.05));
end;

procedure TfYMS_GC.SpinButton3UpClick(Sender: TObject);
begin
  ldt����DownJiSu.Text := formatfloat('#0.0#',(strTofloatDef(ldt����DownJiSu.Text,0) + 0.05));
end;

procedure TfYMS_GC.SpinButton4DownClick(Sender: TObject);
begin
  ldtAutoGCTLevel.Text := formatfloat('#0.0#',(strTofloatDef(ldtAutoGCTLevel.Text,0) - 0.01));
end;

procedure TfYMS_GC.SpinButton4UpClick(Sender: TObject);
begin
  ldtAutoGCTLevel.Text := formatfloat('#0.0#',(strTofloatDef(ldtAutoGCTLevel.Text,0) + 0.01));
end;

procedure TfYMS_GC.SpinButton5DownClick(Sender: TObject);
begin
  YMSGCListAdd(_GCDGPos+1, 0, ledtYMSGCTotalQtnAdd.Text, ledtYMSGCUnitQtnAdd.Text);
end;

procedure TfYMS_GC.SpinButton5UpClick(Sender: TObject);
begin
  YMSGCListAdd(_GCDGPos-1, 0, ledtYMSGCTotalQtnAdd.Text, ledtYMSGCUnitQtnAdd.Text);
end;

procedure TfYMS_GC.YMSSaveUIValue; // ������ �Ÿ� ȭ���� �������� �����Ѵ�.
var nString : string;
    i,j : integer;
begin
  mmoSaveUIValue.clear;
  nString := '�����淹��:' + ldt����UpJiSu.Text;
  mmoSaveUIValue.Lines.Add(nString);
  nString := '�����Ϲ淹��:' + ldt����DownJiSu.Text;
  mmoSaveUIValue.Lines.Add(nString);
  if ckbGCJSInOut.Checked then
    nString := '������ʷ���:True'
  else nString := '������ʷ���:False';
  mmoSaveUIValue.Lines.Add(nString);

  nString := '���෹��:' + ldtAutoGCTLevel.Text;
  mmoSaveUIValue.Lines.Add(nString);
  nString := '����Delay:' + ledGCCNT.Text;
  mmoSaveUIValue.Lines.Add(nString);
  nString := '�������:' + edtGCAutoMMStart.Text;
  mmoSaveUIValue.Lines.Add(nString);

  nString := '���ೡ:' + edtGCAutoMMStop.Text;
  mmoSaveUIValue.Lines.Add(nString);

  // ���⼭���� ��ż� ���� ���� ����
  for I := 0 to 3 do begin
    nString := '��������,' + intTostr(i) + ',';
    for j := 0 to 5 do begin
      nString := nString + stgGCList.Cells[j,i] + ',';
    end;
    mmoSaveUIValue.Lines.Add(nString);
  end;

  nString := '�ܰ���ġ:' + edtWPosition.Text;
  mmoSaveUIValue.Lines.Add(nString);

  nString := '��������:' + edtAutoGCUnit.Text;
  mmoSaveUIValue.Lines.Add(nString);

  nString := '��Ż����:' + edtGCTotalQtn.Text;
  mmoSaveUIValue.Lines.Add(nString);

  nString := '������:' + ldtAutoGCTLevel.Text;
  mmoSaveUIValue.Lines.Add(nString);

  // ���⼭���� ��ŵ� ���� ����

  nString := ExtractFilePath(paramstr(0)) + 'YMSGC_UIValue.ini'; // ������ �Ÿ�
  mmoSaveUIValue.Lines.SaveToFile(nString);
end;

procedure TfYMS_GC.YMSOpenUIValue; // ������ �Ÿ� ȭ���� �������� �ҷ������Ѵ�.
var nString : string;
    i,j : integer;
    nDataList : TStringList;   // �����ڿ� ���� �������� string �迭
begin
  nDataList := TStringList.Create;
  nDataList.Delimiter := ','; // ������
  mmoSaveUIValue.Clear;
  nString := ExtractFilePath(paramstr(0)) + 'YMSGC_UIValue.ini';
  mmoSaveUIValue.Lines.LoadFromFile(nString);


  for I := 0 to mmoSaveUIValue.Lines.Count -1 do
  begin
    nString := mmoSaveUIValue.Lines.Strings[i];
    if pos('�����淹��:',nString) > 0 then ldt����UpJiSu.Text := copy(nString,8,Length(nString) - 7)
    else if pos('�����Ϲ淹��:',nString) > 0 then ldt����DownJiSu.Text := copy(nString,8,Length(nString) - 7)
    else if (pos('������ʷ���:',nString) > 0) and (pos('True',nString) > 0) then
            ckbGCJSInOut.Checked := True
    else if (pos('������ʷ���:',nString) > 0) and (pos('False',nString) > 0) then
            ckbGCJSInOut.Checked := False
    else if pos('���෹��:',nString) > 0 then ldtAutoGCTLevel.Text := copy(nString,6,Length(nString) - 5)
    else if pos('����Delay:',nString) > 0 then ledGCCNT.Text := copy(nString,9,Length(nString) - 8)
    else if pos('�������:',nString) > 0 then edtGCAutoMMStart.Text := copy(nString,6,Length(nString) - 5)
    else if pos('���ೡ:',nString) > 0 then edtGCAutoMMStop.Text := copy(nString,5,Length(nString) - 4)
    else if pos('��������',nString) > 0 then begin
      nDataList.DelimitedText := nString;
      for j := 2 to 6 do
        stgGCList.Cells[j-2,strTointDef(nDataList[1],0)] := nDataList[j];

    end else if pos('�ܰ���ġ:',nString) > 0 then edtWPosition.Text := copy(nString,6,Length(nString) - 5)
    else if pos('��������:',nString) > 0 then edtAutoGCUnit.Text := copy(nString,6,Length(nString) - 5)
    else if pos('��Ż����:',nString) > 0 then edtGCTotalQtn.Text := copy(nString,6,Length(nString) - 5)
    else if pos('������:',nString) > 0 then ldtAutoGCTLevel.Text := copy(nString,6,Length(nString) - 5);
  end;
end;

procedure TfYMS_GC.FormActivate(Sender: TObject);
begin
  if First_Activate then begin
    Left := 0;
    Top := 0;
    First_Activate := False;
  end;
end;

procedure TfYMS_GC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  YMSSaveUIValue;
  action := Cafree;
end;

procedure TfYMS_GC.FormCreate(Sender: TObject);
begin
  _YMSGCChartStep := 0;
  _SunMulRTChartStep := 0;
end;

procedure TfYMS_GC.VisibleChanging;
begin
 // inherited;
end;

procedure TfYMS_GC.FormShow(Sender: TObject);
begin
  First_Activate := True;
  _AllSettingCheck_flg := False;
  StringGrid4.Cells[0,0] := '    �����ڵ�';
  StringGrid4.ColWidths[0] := 90;
  StringGrid4.Cells[1,0] := ' ȣ ��';
  StringGrid4.Cells[2,0] := ' �Ѽ���';
  StringGrid4.Cells[3,0] := ' 1 ȸ';
  StringGrid4.Cells[4,0] := ' PT';
  StringGrid4.ColWidths[4] := 30;
  StringGrid4.Cells[5,0] := 'Row';
  StringGrid4.ColWidths[5] := 30;
  stgGCList.ColWidths[0] := 90;
  stgGCList.ColWidths[4] := 30;
  stgGCList.ColWidths[5] := 30;
  StringGrid4.Selection := TGridRect(Rect(-1, -1, -1, -1));
  stgGCList.Selection := TGridRect(Rect(-1, -1, -1, -1));
//  tmrYMSChartInput.Interval := strTointDef(edtChartInt.Text,2000);
//  _YMSGCChartStep := 0;
//  _SunMulRTChartStep := 0;
  YMSOpenUIValue;
  InsertVerYMSGCJM;
  _GCDGPos := strTointDef(stgGCList.Cells[5,1], _PriceInfoDGPosition);
  // �����
  YMSBYCal;
end;

procedure TfYMS_GC.gbYMSGCAddMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  (sender As TWincontrol).Perform( WM_SysCommand, $F012, 0 );
end;

procedure TfYMS_GC.stgGCListDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var intValue, iX, iY : integer;
begin
  // ���� ��ȣ�� ���� �� ����, �ż� ����, �ŵ� �Ķ�
  with stgGCList do
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
    iY := Rect.Top + 2;
    iX := (Rect.Left + Rect.Right) div 2;
    SetTextAlign(Canvas.Handle, TA_CENTER);
    Canvas.TextRect(Rect, iX, iY, Cells[Acol,Arow]);
  end;
end;

procedure TfYMS_GC.stgGCListExit(Sender: TObject);
begin
  stgGCList.Selection := TGridRect(Rect(-1, -1, -1, -1));
end;

procedure TfYMS_GC.stgGCListKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  InsertVerYMSGCJM;
  // �����
  YMSBYCal;
end;

procedure TfYMS_GC.stgGCListMouseLeave(Sender: TObject);
begin
  stgGCList.Selection := TGridRect(Rect(-1, -1, -1, -1));
end;

procedure TfYMS_GC.stgGCListMouseWheelDown(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  Handled := True;
end;

procedure TfYMS_GC.stgGCListMouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  Handled := True;
end;

procedure TfYMS_GC.stgGCListSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
begin
  case ARow of
    0: rdbGuChuckList1.Checked := True;
    1: rdbGuChuckList2.Checked := True;
    2: rdbGuChuckList3.Checked := True;
    3: rdbGuChuckList4.Checked := True;
    4: rdbGuChuckList5.Checked := True;
    5: rdbGuChuckList6.Checked := True;
    6: rdbGuChuckList7.Checked := True;
    7: rdbGuChuckList8.Checked := True;
    8: rdbGuChuckList9.Checked := True;
    9: rdbGuChuckList10.Checked := True;
    10: rdbGuChuckList11.Checked := True;
    11: rdbGuChuckList12.Checked := True;
  end;
end;

procedure TfYMS_GC.StringGrid4MouseLeave(Sender: TObject);
begin
  StringGrid4.Selection := TGridRect(Rect(-1, -1, -1, -1));
end;

procedure TfYMS_GC.StringGrid4MouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  Handled := True;
end;

procedure TfYMS_GC.StringGrid4MouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  Handled := True;
end;

procedure TfYMS_GC.tmrYMSPriceTimer(Sender: TObject);
var i, nRowNo : integer;
    strJMCode, strYMonthCode, strOldHoga, strNewHoga : string;
    nMMType : string; // �ż� �ŵ� Ȯ��
begin
  tmrYMSPrice.Enabled := False;
  ///  1. ���� Ȯ��
  for i := 0 to stgGCList.RowCount -1 do begin
    strJMCode := _YMSGCListInfo[0,i];
    if strJMCode <> '' then begin
      strYMonthCode := copy(strJMCode, 4,2); ///  2. ���� �� ���� Ȯ��
      nRowNo := strTointDef(_YMSGCListInfo[5,i],-1);  ///  3. Row��ȣ Ȯ��
      nMMType := copy(_YMSGCListInfo[2,i],1,1);   ///  4. �ż�, �ŵ� Ȯ�� - �̰ų� �����̰ų�.
      strOldHoga := _YMSGCListInfo[1,i]; // ���� ȣ�� Ȯ��
      if strYMonthCode = _DCode then begin //��� �ڵ��̸�
        if (copy(strJMCode,1,3) = '201') then begin   // ���̸�
          if (nMMType = '-') then strNewHoga := formatfloat('#0.00',_DWHSGListInfo[1,nRowNo])
          else strNewHoga := formatfloat('#0.00',_DWHSGListInfo[0,nRowNo]);
        end else if (copy(strJMCode,1,3) = '301') then begin // ǲ�̸�
          if (nMMType = '-') then strNewHoga := formatfloat('#0.00',_DWHSGListInfo[5,nRowNo])
          else strNewHoga := formatfloat('#0.00',_DWHSGListInfo[6,nRowNo]);
        end;
      end else if strYMonthCode = _CWCode then begin //���� �ڵ��̸�
        if (copy(strJMCode,1,3) = '201') then begin   // ���̸�
          if (nMMType = '-') then strNewHoga := formatfloat('#0.00',_CWHSGListInfo[1,nRowNo])
          else strNewHoga := formatfloat('#0.00',_CWHSGListInfo[0,nRowNo]);
        end else if (copy(strJMCode,1,3) = '301') then begin // ǲ�̸�
          if (nMMType = '-') then strNewHoga := formatfloat('#0.00',_CWHSGListInfo[5,nRowNo])
          else strNewHoga := formatfloat('#0.00',_CWHSGListInfo[6,nRowNo]);
        end;
      end else if strYMonthCode = _CCWCode then begin //������ �ڵ��̸�
        if (copy(strJMCode,1,3) = '201') then begin   // ���̸�
          if (nMMType = '-') then strNewHoga := formatfloat('#0.00',_CCWHSGListInfo[1,nRowNo])
          else strNewHoga := formatfloat('#0.00',_CCWHSGListInfo[0,nRowNo]);
        end else if (copy(strJMCode,1,3) = '301') then begin // ǲ�̸�
          if (nMMType = '-') then strNewHoga := formatfloat('#0.00',_CCWHSGListInfo[5,nRowNo])
          else strNewHoga := formatfloat('#0.00',_CCWHSGListInfo[6,nRowNo]);
        end;
      end else if strYMonthCode = _WWCode then begin //���� �ڵ��̸�
        if (copy(strJMCode,1,3) = '201') then begin   // ���̸�
          if (nMMType = '-') then strNewHoga := formatfloat('#0.00',_WWHSGListInfo[1,nRowNo])
          else strNewHoga := formatfloat('#0.00',_WWHSGListInfo[0,nRowNo]);
        end else if (copy(strJMCode,1,3) = '301') then begin // ǲ�̸�
          if (nMMType = '-') then strNewHoga := formatfloat('#0.00',_WWHSGListInfo[5,nRowNo])
          else strNewHoga := formatfloat('#0.00',_WWHSGListInfo[6,nRowNo]);
        end;
      end;
      if strOldHoga <> strNewHoga then begin
        _YMSGCListInfo[1,i] := strNewHoga;   ///  5. �ٸ��� ǥ��
        stgGCList.Cells[1,i] := strNewHoga;
        // �����
        YMSBYCal;
        edtGCBY.Text := formatfloat('0.00',_YMSTotalBY);
        edtGCSetBY.Text := formatfloat('0.00',_YMSUnitBY);
      end;
    end;
  end;
  tmrYMSPrice.Enabled := True;
end;

procedure TfYMS_GC.tmrYMSChartInputTimer(Sender: TObject);
var nMeTime : string;
    var i : integer;
begin
//  if((strTointDef(nMeTime,0) > 90000) and (strTointDef(nMeTime,0) < 153501)) then begin
//    if ckbChartViewFlg.Checked then begin
//      chtBasicChart.Series[0].AddY(strTofloatDef(SunMul,0));
//      if rdbTotalBiYong.Checked then
//        chtBasicChart.Series[1].AddY(_YMSTotalBY) // �Ѻ��
//      else if rdbBasicBiYong.Checked then
//        chtBasicChart.Series[1].AddY(_YMSUnitBY); // ��Ʈ���
//      nMeTime := formatdatetime('hhmmss',now);//
//      chtBasicChart.Series[0].XLabel[_YMSGCChartStep] := nMeTime;
//      _YMSGCChartStep := _YMSGCChartStep + 1;
//    end;
//  end;
  tmrYMSChartInput.Enabled := false;
  for I := 0 to 19 do begin
    if _SunMulRTChartflg[i] = True then begin
//      if ckbChartViewFlg.Checked then begin
        chtBasicChart.Series[0].AddY(strTofloatDef(SunMul,0));
        if rdbTotalBiYong.Checked then
          chtBasicChart.Series[1].AddY(_YMSTotalBY) // �Ѻ��
        else if rdbBasicBiYong.Checked then
          chtBasicChart.Series[1].AddY(_YMSUnitBY); // ��Ʈ���
        nMeTime := formatdatetime('hhmmss',now);//
        chtBasicChart.Series[0].XLabel[_YMSGCChartStep] := nMeTime;
        _YMSGCChartStep := _YMSGCChartStep + 1;
      end;
      _SunMulRTChartflg[i] := False;
      _SunMulRTChartStep := _SunMulRTChartStep + 1;
      if _SunMulRTChartStep > 19 then _SunMulRTChartStep := 0;
//    end;
  end;
  tmrYMSChartInput.Enabled := True;
end;

procedure TfYMS_GC.tmrYMSGCTimer(Sender: TObject);
var nTime_flg, nSunMul_flg, nBiYong_flg, blnOrderSuccess_flg, nAllOrderedOK_flg, nCGComplete : boolean;
    i, nJanRang, nOrdQtn, nTotalQtn, nUnitQtn : integer;
    nClientNo, nGubun, nPrice, nOrgNo, nOrNo, nReturn : integer;
    nPT : string; //���尡, ������
    strMessage, nNowTime, nString : string;
begin
///  1.  �ð�üũ
///  2. �ű� �ֹ� �ؾ� �ϴ���  üũ
///  3. �ű� �ֹ��� �ƴϸ� �ֹ� ü��üũ
///  4. �ű� �ֹ��� �ƴϸ� ��� �ֹ� �Ϸ� üũ
///  5. �ű� �ֹ� �ؾ� �Ǹ� �ű� �ֹ�
  // 1.... �ð�üũ
  tmrYMSGC.Enabled := False;

  if _OdrConti_flg = False  then begin
    strMessage := formatdateTime('hhmmsszzz',now) + '-' + '��ż� �ֹ� ����' ;
    _YMSGCMessage[_YMSGCMessageStep] := strMessage;
    _YMSGCMessage_flg[_YMSGCMessageStep] := True;
    _YMSGCMessageStep := _YMSGCMessageStep + 1;
    if _YMSGCMessageStep > 19 then _YMSGCMessageStep := 0;
    btnGCAutoStart.Glyph.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Start_Off.bmp');
    exit; // �ֹ� �Ϸ�
  end;


  nTime_flg := true;
  nNowTime := copy(formatdatetime('hhmmss',now),1,6);
  if (strTointDef(nNowTime,0) < strTointDef(edtGCAutoMMStart.Text,100000) ) or (strTointDef(nNowTime,0) > strTointDef(edtGCAutoMMStop.Text,150000))then
    nTime_flg := False;

  nAllOrderedOK_flg := True;
  for I := 0 to 3 do begin
    nTotalQtn := ABS(strTointDef(_YMSGCListInfo[2,i],0));
    nUnitQtn :=  ABS(strTointDef(_YMSGCListInfo[3,i],0));
    if (_YMSGCListInfo[0,i] <> '') and ((_YMSOrderedQtn[i]) < nTotalQtn) then begin
      nAllOrderedOK_flg := False;  // 3+1 < 3  3<3
      break;
    end;
  end;

  if nAllOrderedOK_flg then begin
    strMessage := formatdateTime('hhmmsszzz',now) + '-' + intTostr(nTotalQtn) + '��Ʈ ü�� �Ϸ�' ;
    _YMSGCMessage[_YMSGCMessageStep] := strMessage;
    _YMSGCMessage_flg[_YMSGCMessageStep] := True;
    _YMSGCMessageStep := _YMSGCMessageStep + 1;
    if _YMSGCMessageStep > 19 then _YMSGCMessageStep := 0;

    strMessage := formatdateTime('hhmmsszzz',now) + '-' + '��ż� �ֹ� �Ϸ�' ;
    _YMSGCMessage[_YMSGCMessageStep] := strMessage;
    _YMSGCMessage_flg[_YMSGCMessageStep] := True;
    _YMSGCMessageStep := _YMSGCMessageStep + 1;
    if _YMSGCMessageStep > 19 then _YMSGCMessageStep := 0;
    btnAutoStopClick(Sender);
//    btnGCAutoStart.Glyph.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Start_Off.bmp');
    exit; // �ֹ� �Ϸ�

  end else if (_FirstMainCallOrder_flg) and (nAllOrderedOK_flg = False) then begin   // �ű� �ֹ��ؾ� �ϸ�..
    nSunMul_flg := False;
    if ckbGCJSInOut.Checked then begin
      if (strTofloatDef(SunMul,-11) < (_SunMulUpLevel + 0.01)) and (strTofloatDef(SunMul,-11) > (_SunMulDownLevel - 0.01)) then nSunMul_flg := true;
    end else begin
      if (strTofloatDef(SunMul,-11) > (_SunMulUpLevel - 0.01)) or (strTofloatDef(SunMul,-11) < (_SunMulDownLevel +0.01)) then nSunMul_flg := true;
    end;

    nBiYong_flg := False;
    if rdbTotalBiYong.Checked then begin
      if _YMSTotalBY < (_OrderBYLevel + 0.009) then nBiYong_flg := True;
    end else if rdbBasicBiYong.Checked then begin
      if _YMSUnitBY < (_OrderBYLevel + 0.009) then nBiYong_flg := True;
    end;

    if (nBiYong_flg) and (nTime_flg) and (nSunMul_flg) then     //���籸���� < ��ǥ����  and �ŷ��ð� �϶�  , ���������� ���� �϶�.
    begin
      _GCRepeatCNT :=  _GCRepeatCNT + 1;
      if  _GCRepeatCNT > (strTofloatDef(ledGCCNT.Text,999)*100 - 1)  then //
      begin
        _FirstMainCallOrder_flg := false;
        YMSCGClear; // ü�� ���� �ʱ�ȭ... ü�� Ȯ���� ����..
        _GCJMNo := 0;
        strMessage := formatdateTime('hhmmsszzz',now) + ' - ' + intTostr(_YMSOrderedQtn[0]+1) + ' ��Ʈ �ֹ�' ;
        _YMSGCMessage[_YMSGCMessageStep] := strMessage;
        _YMSGCMessage_flg[_YMSGCMessageStep] := True;
        _YMSGCMessageStep := _YMSGCMessageStep + 1;
        if _YMSGCMessageStep > 19 then _YMSGCMessageStep := 0;

        for I := 0 to 3 do begin
          ///  1. ������ ������
          ///  2. �ֹ��ϰ�
          if _YMSGCListInfo[0,i] = '' then break
          else begin
            nJanRang := nTotalQtn - _YMSOrderedQtn[i];
            if nJanRang > 0 then begin   // �ֹ� �ܷ��� >0 �̸�
              if nJanRang > nUnitQtn then  nOrdQtn := nUnitQtn // �ܷ��� 1ȸ �������� ũ�� 1ȸ ��������
              else  nOrdQtn := nJanRang; // �ܷ��� 1ȸ �������� �۰ų� ������ �ܷ�����
            end else break;
          end;

//          nNowTime := formatdateTime('hhmmsszz',now);
//          nString := copy(nNowTime,5,5);
          _ClientKey := (01000000 + (_GCJMNo) * 1000).ToString; // s�ܰ� �ֹ� Key; // Ŭ���̾�Ʈ Ű ����
          _GCJMNo := _GCJMNo + 1;
          if strToint(_YMSGCListInfo[2,i]) > 0 then nGubun := 2 // �ż�
          else if strToint(_YMSGCListInfo[2,i]) < 0 then nGubun := 1; //�ŵ�
          nPrice := 0; // ���尡 �̹Ƿ�
          nOrgNo := 0;
          if _YMSGCListInfo[4,i] = '3' then
            nPT := 'M'
          else if _YMSGCListInfo[4,i] = '0' then
            nPT := 'L';

          //21 ���� blnOrderSuccess_flg := fHBOMain.DongbuAPI1.SendFOrder(nClientNo,Acnt,AcntPwd,nGubun,_YMSGCListInfo[0,i],nPT,nOrdQtn,nPrice,nOrgNo);
          nReturn := fHBOMain.YouantaFOOrder(Acnt,AcntPwd,nGubun.ToString,nPT,_YMSGCListInfo[0,i],nOrdQtn.ToString,nPrice.ToString,'1','S');//acc,pwd,�ŵ�/�ż�,������/���尡,�����ڵ�,�ֹ�����,�ֹ�����,����/�ɼ�,�ֹ�����
//          if blnOrderSuccess_flg = false then begin// �ֹ�
          if nReturn < 1000 then begin
            // �ֹ� ���н� ó��
            strMessage := formatdateTime('hhmmsszzz',now) + '-' + '�ֹ� ����' ;
            _YMSGCMessage[_YMSGCMessageStep] := strMessage;
            _YMSGCMessage_flg[_YMSGCMessageStep] := True;
            _YMSGCMessageStep := _YMSGCMessageStep + 1;
            if _YMSGCMessageStep > 19 then _YMSGCMessageStep := 0;
            _OdrConti_flg := False; // �ֹ� ����
            exit;
          end else if nReturn > 999 then begin // �ֹ� ������
//            strMessage := formatdateTime('hhmmsszzz',now) + '-' + _YMSGCListInfo[0,i] + '�ֹ�' ;
//            _YMSGCMessage[_YMSGCMessageStep] := strMessage;
//            _YMSGCMessage_flg[_YMSGCMessageStep] := True;
//            _YMSGCMessageStep := _YMSGCMessageStep + 1;
//            if _YMSGCMessageStep > 19 then _YMSGCMessageStep := 0;

            _YMSOrderedQtn[i] := _YMSOrderedQtn[i] + nOrdQtn; //3. �ֹ��� ������ �ְ�
          end;
        end;
      end;
    end else _GCRepeatCNT := 0;
  end else begin // ü�� üũ
    nCGComplete := True;
    for i := 0 to 3 do begin
      if (_YMSGCListInfo[0,i] <> '') and ((_YMSGCCGList[i].JMQtn = 0) or (_YMSGCCGList[i].CGQtn <>  _YMSGCCGList[i].JMQtn)) then
      begin
        nCGComplete := False;
      end;
    end;

    if nCGComplete then begin
      strMessage := formatdateTime('hhmmsszzz',now) + '-' + intTostr(_YMSOrderedQtn[0]) + '��Ʈ ü�� �Ϸ�' ;
      _YMSGCMessage[_YMSGCMessageStep] := strMessage;
      _YMSGCMessage_flg[_YMSGCMessageStep] := True;
      _YMSGCMessageStep := _YMSGCMessageStep + 1;
      if _YMSGCMessageStep > 19 then _YMSGCMessageStep := 0;
      _FirstMainCallOrder_flg := True;
    end;
  end;
  tmrYMSGC.Enabled := True;
end;

procedure TfYMS_GC.YMSCGClear;
var i : integer;
begin
  for i := 0 to 3 do begin
    _YMSGCCGList[i].JMKey := -1;
    _YMSGCCGList[i].OrderNo := -1;
    _YMSGCCGList[i].JMCode := '';
    _YMSGCCGList[i].MMGB := 0;
    _YMSGCCGList[i].JMPrice := 0;
    _YMSGCCGList[i].JMQtn := 0;
    _YMSGCCGList[i].CGPrice := 0;
    _YMSGCCGList[i].CGQtn := 0;
    _YMSGCCGList[i].MCGQtn := 0;
    _YMSGCCGList[i].WJMNo := 0;
  end;
end;

procedure TfYMS_GC.tmrYMSMessageTimer(Sender: TObject);
var i : integer;
begin
  for I := 0 to 19 do
    if _YMSGCMessage_flg[i] then begin
      mmoLog.Lines.Add(_YMSGCMessage[i]);
      _YMSGCMessage_flg[i] := False;
    end;
end;

procedure TfYMS_GC.YMSBYCal;
var i : integer;
begin
  ///  1. ���������� ����Ͽ� �Ѻ��� ��������� �����Ѵ�. �Ѵ� ���� ����Ѵ�.
  ///      _YMSTotalBY, _YMSUnitBY
  _YMSTotalBY := 0;
  _YMSUnitBY :=0;
  for I := 0 to 11 do begin
    if _YMSGCListInfo[0,i] <> ''  then begin
      _YMSTotalBY := _YMSTotalBY + strTofloatDef(_YMSGCListInfo[1,i],0) * strTointDef(_YMSGCListInfo[2,i],0);
      _YMSUnitBY := _YMSUnitBY + strTofloatDef(_YMSGCListInfo[1,i],0) * (strTointDef(_YMSGCListInfo[3,i],0) / abs(strTointDef(_YMSGCListInfo[3,i],0)));
    end;
  end;
end;

end.

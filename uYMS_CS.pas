unit uYMS_CS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.ExtCtrls,
  Vcl.Buttons, Vcl.Samples.Spin, Vcl.Mask;

type
//  TCSOrderThread = class(TThread)   // û�� �ֹ��� ��������� �ܰ� ���� �ֹ� ���� ȭ�� ǥ��
//    public
//
//    protected
//      procedure Execute; override;
//      procedure SyncRx;
//    end;

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

  TfYMS_CS = class(TForm)
    GroupBox23: TGroupBox;
    Label111: TLabel;
    Label136: TLabel;
    Label137: TLabel;
    Label138: TLabel;
    Label139: TLabel;
    Label140: TLabel;
    Label141: TLabel;
    Label142: TLabel;
    Label143: TLabel;
    Label144: TLabel;
    Label151: TLabel;
    Label152: TLabel;
    Label153: TLabel;
    Label154: TLabel;
    Label30: TLabel;
    Label36: TLabel;
    btnCSAutoStart: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton10: TSpeedButton;
    GroupBox9: TGroupBox;
    Label31: TLabel;
    Label35: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    Label16: TLabel;
    ckbChungSanAutoOrder: TCheckBox;
    edtCSStartTime: TEdit;
    edtCSStopTime: TEdit;
    ldtû����Level: TLabeledEdit;
    edtCSBY: TEdit;
    edtCSSetBY: TEdit;
    edtCSSetQtn: TEdit;
    Button23: TButton;
    rbtCSToTalBiYong: TRadioButton;
    rbtCSSetBiYong: TRadioButton;
    ledCSCNT: TLabeledEdit;
    ldtû��UpJiSu: TLabeledEdit;
    ldtû��DownJiSu: TLabeledEdit;
    ckbCSJSInOut: TCheckBox;
    SpinButton8: TSpinButton;
    SpinButton9: TSpinButton;
    SpinButton10: TSpinButton;
    stgCSList2: TStringGrid;
    StringGrid7: TStringGrid;
    rdbCSList1: TRadioButton;
    rdbCSList2: TRadioButton;
    rdbCSList3: TRadioButton;
    rdbCSList4: TRadioButton;
    rdbCSList5: TRadioButton;
    rdbCSList6: TRadioButton;
    rdbCSList7: TRadioButton;
    rdbCSList8: TRadioButton;
    rdbCSList9: TRadioButton;
    rdbCSList10: TRadioButton;
    Button69: TButton;
    rdbCSList17: TRadioButton;
    rdbCSList18: TRadioButton;
    rdbCSList19: TRadioButton;
    rdbCSList20: TRadioButton;
    edt��������: TEdit;
    btnCSQtnSetting: TButton;
    edtAll��������: TEdit;
    btnCSAllQtnSetting: TButton;
    ckbCSAutoMain: TCheckBox;
    mmoCSLog: TMemo;
    Button36: TButton;
    Button64: TButton;
    edtCSWGPosition: TEdit;
    SpinButton11: TSpinButton;
    tmrAutoCSMainChange: TTimer;
    tmrCSSubOrder: TTimer;
    gbxCSOrderInfo: TGroupBox;
    Label48: TLabel;
    Label49: TLabel;
    stgCSMainOrder: TStringGrid;
    StringGrid5: TStringGrid;
    stgCSWGOrder: TStringGrid;
    StringGrid2: TStringGrid;
    btnCSOrderInfoHide: TButton;
    tmrYMSCSInsertGrid: TTimer;
    tmrYMSCSPrice: TTimer;
    Button1: TButton;
    gbYMSCSAdd: TGroupBox;
    Label53: TLabel;
    ledtYMSCSJongMokAdd: TLabeledEdit;
    ledtYMSSCTotalQtnAdd: TLabeledEdit;
    btnGuChuckAdd: TButton;
    cbbYMSCSListPosition: TComboBox;
    Button18: TButton;
    SpinButton1: TSpinButton;
    SpeedButton1: TSpeedButton;
    rdbYMSCSAddCall: TRadioButton;
    rdbYMSCSAddPut: TRadioButton;
    ledtYMSSCUnitQtnAdd: TLabeledEdit;
    edtYMSCSAddJMRow: TEdit;
    mmoSaveUIValue: TMemo;
    stgWCSList: TStringGrid;
    StringGrid3: TStringGrid;
    Button58: TButton;
    Button59: TButton;
    SpinButton5: TSpinButton;
    Button2: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure stgCSList2DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpinButton11DownClick(Sender: TObject);
    procedure SpinButton11UpClick(Sender: TObject);
    procedure Button69Click(Sender: TObject);
    procedure rdbCSList1Click(Sender: TObject);
    procedure tmrAutoCSMainChangeTimer(Sender: TObject);
    procedure tmrCSSubOrderTimer(Sender: TObject);
    procedure ckbChungSanAutoOrderClick(Sender: TObject);
    procedure btnCSAutoStartClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnCSAllQtnSettingClick(Sender: TObject);
    procedure btnCSQtnSettingClick(Sender: TObject);
    procedure tmrYMSCSInsertGridTimer(Sender: TObject);
    procedure tmrYMSCSPriceTimer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpinButton1DownClick(Sender: TObject);
    procedure SpinButton1UpClick(Sender: TObject);
    procedure btnGuChuckAddClick(Sender: TObject);
    procedure gbYMSCSAddMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure rdbCSList2Click(Sender: TObject);
    procedure rdbCSList3Click(Sender: TObject);
    procedure rdbCSList4Click(Sender: TObject);
    procedure rdbCSList5Click(Sender: TObject);
    procedure rdbCSList6Click(Sender: TObject);
    procedure rdbCSList7Click(Sender: TObject);
    procedure rdbCSList8Click(Sender: TObject);
    procedure rdbCSList9Click(Sender: TObject);
    procedure rdbCSList10Click(Sender: TObject);
    procedure rdbCSList17Click(Sender: TObject);
    procedure rdbCSList18Click(Sender: TObject);
    procedure rdbCSList19Click(Sender: TObject);
    procedure rdbCSList20Click(Sender: TObject);
    procedure rdbYMSCSAddCallClick(Sender: TObject);
    procedure rdbYMSCSAddPutClick(Sender: TObject);
    procedure ldtû����LevelChange(Sender: TObject);
    procedure ldtû��UpJiSuChange(Sender: TObject);
    procedure ldtû��DownJiSuChange(Sender: TObject);
    procedure ledCSCNTChange(Sender: TObject);
    procedure SpinButton10DownClick(Sender: TObject);
    procedure SpinButton10UpClick(Sender: TObject);
    procedure SpinButton8DownClick(Sender: TObject);
    procedure SpinButton8UpClick(Sender: TObject);
    procedure SpinButton9DownClick(Sender: TObject);
    procedure SpinButton9UpClick(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure Button64Click(Sender: TObject);
    procedure Button36Click(Sender: TObject);
    procedure stgCSList2Exit(Sender: TObject);
    procedure stgCSList2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure stgCSList2SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure stgWCSListDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure stgWCSListExit(Sender: TObject);
    procedure stgWCSListSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure Button2Click(Sender: TObject);
    procedure stgCSList2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure stgWCSListMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure stgCSList2MouseLeave(Sender: TObject);
    procedure stgWCSListMouseLeave(Sender: TObject);
    procedure StringGrid3MouseLeave(Sender: TObject);
    procedure StringGrid7MouseLeave(Sender: TObject);
    procedure StringGrid7MouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure StringGrid7MouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure stgCSList2MouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure stgCSList2MouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure StringGrid3MouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure StringGrid3MouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure stgWCSListMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure stgWCSListMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
  private
//    CSOrderThread : TCSOrderThread;
    procedure YMSCSBasicSetting(nDGPos, nWGPos: integer; nTotalQtn,
      nUnitQtn: string);
    procedure InsertVerYMSCSJM;
    procedure YMSCSBYCal;
    procedure pCSListSelect;
    procedure InsertCSValue;
    procedure MainJMMiCGCancel;
    procedure CSOrderInfoClear;
    procedure ChungSan7;
    procedure CSStop;
    procedure WGJMMiCGCancel;
    procedure CSWGOrder(nClientKey, nQtn: integer);
    procedure CSMainOrder(nClientKey, nQtn: integer);
    procedure WGJMMiCGModify(nNo, nQtn: integer);
    procedure CSCompleteProcess;
    procedure YMSListAdd(nDGPos, nWGPos: integer; nTotalQtn, nUnitQtn: string);
//    procedure OpenUIValue;
//    procedure SaveUIValue;
    procedure YMSCSArrowSetting(nUpDown: integer);
    procedure InsertWeekCSValue;

    { Private declarations }
  public
    { Public declarations }
    procedure VisibleChanging; override;
    procedure OpenUIValue;
    procedure SaveUIValue;
  end;

var
  fYMS_CS: TfYMS_CS;
    First_Activate : boolean; //ȭ�� ���Ŀ�
    _CSDGPos : integer;
    _YMSTotalCSBY, _YMSUnitCSBY : single; // ��ż� ��Ż���, ��ż����� ���.
    _YMSCSListInfo : array[0..7,0..9] of string;  // û�� ����Ʈ���� [  �����ڵ�[0], ���簡[1], ���ֹ�����[2], 1ȸ����[3], PT[4], ���[5], RowNo[6], ������ǥ����[7]  ]
    _YMSWeekCSListInfo : array[0..7,0..3] of string;  // ��Ŭ��û�� ����Ʈ���� [  �����ڵ�[0], ���簡[1], ���ֹ�����[2], 1ȸ����[3], PT[4], ���[5], RowNo[6], ������ǥ����[7]  ]
    _YMSCSListJMQtn, CSListSelectNo : integer; // ��ż� û�� ���� ����
//    _YMSCSListInfo : array[0..7,0..19] of string;  // û�� ����Ʈ���� [  �����ڵ�[0], ���簡[1], ���ֹ�����[2], 1ȸ����[3], PT[4], ���[5], RowNo[6], ������ǥ����[7]  ]
    _CSTotalQtn : array[0..9] of integer; // û�� ����Ʈ ���� �� �� �ֹ��� ����

    _CSMainOrderTime ,_CSWGOrderTime , _CSMain1timeQtn, _CSWG1TimeQtn, _CSMainLastQtn, _CSWGLastQtn : integer; // û�� �� ��������� �ܰ� ���� �ֹ� Ƚ��, �ִ�  20ȸ  , ������ ������ �ֹ� ����
    flg_ChungSan : boolean;
    _CSOrderedQty : array[0..9] of integer;  // û��� ������ ���� �ֹ� �� ����
    _OrdDone_flg : array[0..9] of boolean; // ������ ����� �ֹ� �Ϸ� ����
    CSContinueCNT : integer;
    CSContinueCNTTrigger : single;
    _CSBiYong : single; // ��Ż���, ��Ʈ���=������� //û�� ��Ͽ� �ִ� ���� ���
    _CSJSUpTrigger, _CSJSDownTrigger, _CSBiYongTrgger : single; // û������Ʈ���Ż��, û������Ʈ�����Ϲ�, û����Ʈ����
    _CSMainIndex, _CSWGIndex, _CSRecieveflg : integer;

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

procedure TfYMS_CS.SaveUIValue; // ������ �Ÿ� ȭ���� �������� �����Ѵ�.
var nString : string;
    i,j : integer;
begin
  mmoSaveUIValue.clear;
  nString := 'û���淹��:' + ldtû��UpJiSu.Text;
  mmoSaveUIValue.Lines.Add(nString);

  nString := 'û���Ϲ淹��:' + ldtû��DownJiSu.Text;
  mmoSaveUIValue.Lines.Add(nString);

  if ckbCSJSInOut.Checked then
    nString := 'û����ʷ���:True'
  else nString := 'û����ʷ���:False';
  mmoSaveUIValue.Lines.Add(nString);

  nString := 'û���뷹��:' + ldtû����Level.Text;
  mmoSaveUIValue.Lines.Add(nString);

  nString := 'û���Ѽ���:' + edtAll��������.Text;
  mmoSaveUIValue.Lines.Add(nString);

  nString := 'û���������:' + edt��������.Text;
  mmoSaveUIValue.Lines.Add(nString);

  // ���⼭���� ��ż� û�� ���� ����
  for I := 0 to 9 do begin
    nString := 'û������,' + intTostr(i) + ',';
    for j := 0 to 7 do begin
      nString := nString + stgCSList2.Cells[j,i] + ',';
    end;
    mmoSaveUIValue.Lines.Add(nString);
  end;

  nString := 'û�����:' + edtCSStartTime.Text;
  mmoSaveUIValue.Lines.Add(nString);

  nString := 'û�곡:' + edtCSStopTime.Text;
  mmoSaveUIValue.Lines.Add(nString);

  nString := '�ܰ���ġ:' + edtCSWGPosition.Text;
  mmoSaveUIValue.Lines.Add(nString);

  nString := ExtractFilePath(paramstr(0)) + 'YMSCSUIValue.ini'; // ������ �Ÿ�
  mmoSaveUIValue.Lines.SaveToFile(nString);
end;

procedure TfYMS_CS.OpenUIValue; // ������ �Ÿ� ȭ���� �������� �ҷ������Ѵ�.
var nString : string;
    i,j : integer;
    nDataList : TStringList;   // �����ڿ� ���� �������� string �迭
begin
  nDataList := TStringList.Create;
  nDataList.Delimiter := ','; // ������
  mmoSaveUIValue.Clear;
  nString := ExtractFilePath(paramstr(0)) + 'YMSCSUIValue.ini';
  mmoSaveUIValue.Lines.LoadFromFile(nString);

  for I := 0 to mmoSaveUIValue.Lines.Count -1 do
  begin
    nString := mmoSaveUIValue.Lines.Strings[i];
    if pos('û���淹��:',nString) > 0 then ldtû��UpJiSu.Text := copy(nString,8,Length(nString) - 7)
    else if pos('û���Ϲ淹��:',nString) > 0 then ldtû��DownJiSu.Text := copy(nString,8,Length(nString) - 7)
    else if (pos('û����ʷ���:',nString) > 0) and (pos('True',nString) > 0) then
            ckbCSJSInOut.Checked := True
    else if (pos('û����ʷ���:',nString) > 0) and (pos('False',nString) > 0) then
            ckbCSJSInOut.Checked := False
    else if pos('û���뷹��:',nString) > 0 then ldtû����Level.Text := copy(nString,8,Length(nString) - 7)
    else if pos('û���Ѽ���:',nString) > 0 then edtAll��������.Text := copy(nString,7,Length(nString) - 6)
    else if pos('û���������:',nString) > 0 then edt��������.Text := copy(nString,8,Length(nString) - 7)
    else if pos('û������',nString) > 0 then begin
      nDataList.DelimitedText := nString;
      for j := 2 to 7 do
        stgCSList2.Cells[j-2,strTointDef(nDataList[1],0)] := nDataList[j];

    end else if pos('û�����:',nString) > 0 then edtCSStartTime.Text := copy(nString,6,Length(nString) - 5)
    else if pos('û�곡:',nString) > 0 then edtCSStopTime.Text := copy(nString,5,Length(nString) - 4)
    else if pos('�ܰ���ġ:',nString) > 0 then edtCSWGPosition.Text := copy(nString,6,Length(nString) - 5);
  end;
end;

procedure TfYMS_CS.CSOrderInfoClear;
var i : integer;
begin
// �����ֹ������� �ܰ� �ֹ� ���� �ʱ�ȭ
  for I := 0 to 499 do begin
    _MJOrderNo[i] := -1;
    _WGOrderNo[i] := -1;
    _CSJMDataList[i].JMKey := -1;
    _CSJMDataList[i].OrderNo := -1;
    _CSJMDataList[i].JMCode := '';
    _CSJMDataList[i].MMGB := 0;
    _CSJMDataList[i].JMPrice := 0;
    _CSJMDataList[i].JMQtn := 0;
    _CSJMDataList[i].CGPrice := 0;
    _CSJMDataList[i].CGQtn := 0;
    _CSJMDataList[i].MCGQtn := 0;
    _CSJMDataList[i].WJMNo := -1;
    _CSJMDataList[i].UH := '';

    stgCSMainOrder.Cells[0,i] := '';
    stgCSMainOrder.Cells[1,i] := '';
    stgCSMainOrder.Cells[2,i] := '';
    stgCSMainOrder.Cells[3,i] := '';
    stgCSMainOrder.Cells[4,i] := '';
    stgCSMainOrder.Cells[5,i] := '';
    stgCSMainOrder.Cells[6,i] := '';
    stgCSMainOrder.Cells[7,i] := '';
    stgCSMainOrder.Cells[8,i] := '';
    stgCSMainOrder.Cells[9,i] := '';
    stgCSMainOrder.Cells[10,i] := '';

    _CSWGJMDataList[i].JMKey := -1;
    _CSWGJMDataList[i].OrderNo := -1;
    _CSWGJMDataList[i].JMCode := '';
    _CSWGJMDataList[i].MMGB := 0;
    _CSWGJMDataList[i].JMPrice := 0;
    _CSWGJMDataList[i].JMQtn := 0;
    _CSWGJMDataList[i].CGPrice := 0;
    _CSWGJMDataList[i].CGQtn := 0;
    _CSWGJMDataList[i].MCGQtn := 0;
    _CSWGJMDataList[i].WJMNo := -1;
    _CSWGJMDataList[i].UH := '';

    stgCSWGOrder.Cells[0,i] := '';
    stgCSWGOrder.Cells[1,i] := '';
    stgCSWGOrder.Cells[2,i] := '';
    stgCSWGOrder.Cells[3,i] := '';
    stgCSWGOrder.Cells[4,i] := '';
    stgCSWGOrder.Cells[5,i] := '';
    stgCSWGOrder.Cells[6,i] := '';
    stgCSWGOrder.Cells[7,i] := '';
    stgCSWGOrder.Cells[8,i] := '';
    stgCSWGOrder.Cells[9,i] := '';
    stgCSWGOrder.Cells[10,i] := '';
  end;
end;

procedure TfYMS_CS.btnCSAllQtnSettingClick(Sender: TObject);
var i, nQtn : integer;
begin
  for I := 0 to stgCSList2.RowCount -1 do begin
    if stgCSList2.Cells[0,i] <> '' then begin
      nQtn := strTointDef(stgCSList2.Cells[2,i],-1);
      if nQtn < 0 then nQtn := strTointDef(edtAll��������.Text,0)* (-1)
      else  nQtn := strTointDef(edtAll��������.Text,0);
      stgCSList2.Cells[2,i] := intTostr(nQtn);
    end;
  end;
  edtCSSetQtn.Text := edtAll��������.Text;
  InsertCSValue;
end;

procedure TfYMS_CS.btnCSAutoStartClick(Sender: TObject);
var nString : string;
begin
  if MessageDlg('�ڵ� �Ÿ� �����ϰڽ��ϱ�?',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    if flg_ChungSan and flg_ChungSan then begin
      ckbCSAutoMain.Enabled := False;
      ckbChungSanAutoOrder.Enabled := False;
      CSOrderInfoClear; // ��������� �ܰ������� �ֹ� ���� �ʱ�ȭ

      nString := formatdatetime('hhmmss',now) + '-�ڵ�û�� ����';
      mmoCSLog.Lines.Add(nString);
      btnCSAutoStart.Glyph.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Start_Red.bmp');
      ChungSan7;
    end else begin
      nString := formatdatetime('hhmmss',now) + '- �ڵ� û�� ����';
      mmoCSLog.Lines.Add(nString);
      ckbCSAutoMain.Enabled := True;
      ckbChungSanAutoOrder.Enabled := True;
      btnCSAutoStart.Glyph.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Start_Off.bmp');
      CSOrderInfoClear; // ��������� �ܰ������� �ֹ� ���� �ʱ�ȭ
    end;

  end;
end;

procedure TfYMS_CS.btnCSQtnSettingClick(Sender: TObject);
var i, nQtn, snTemp : integer;
    nCSMain1TimeQtn, nCSMainLastQtn : integer;
    nMinRow, nMaxRow : integer;
    nSingle, nMinPrice, nMaxPrice, aRow : single;
begin
  nMinPrice := 999;
  nMinRow := 99;
  for I := 0 to stgCSList2.RowCount -1 do begin
    stgCSList2.Cells[5,i] := '';
    if stgCSList2.Cells[0,i] <> '' then begin
      nSingle := strTofloatDef(stgCSList2.Cells[1,i],0);
      if nSingle < nMinPrice then begin
        nMinPrice := nSingle;
        nMinRow := i;
      end;
      stgCSList2.Cells[4,i] := '3';
    end;
  end;
  stgCSList2.Cells[4,nMinRow] := '0';  //�ּҰ����� ���簡�� �ֹ�
  stgCSList2.Cells[5,nMinRow] := '�ܰ�'; // ���� �ܰ� ����
  _YMSCSListInfo[4,nMinRow] := '0';
  _YMSCSListInfo[5,nMinRow] := '�ܰ�';

  nMaxPrice := 0;
  nMaxRow := 99;
  for I := 0 to stgCSList2.RowCount -1 do begin
    if i <> nMinRow then stgCSList2.Cells[5,i] := '';
    if stgCSList2.Cells[0,i] <> '' then begin
      nSingle := strTofloatDef(stgCSList2.Cells[1,i],0);
      if nSingle > nMaxPrice then begin
        nMaxPrice := nSingle;
        nMaxRow := i;
      end;
      if i <> nMinRow then stgCSList2.Cells[4,i] := '3';
    end;
  end;
  stgCSList2.Cells[4,nMaxRow] := '0';  //�ִ밡���� �ŵ�ȣ�� -1 �� �ֹ�
  stgCSList2.Cells[5,nMaxRow] := '����'; // ���� ���� ����
  _YMSCSListInfo[4,nMaxRow] := '0';
  _YMSCSListInfo[5,nMaxRow] := '����';

  nCSMain1TimeQtn := strTointDef(edt��������.Text,-1);
  snTemp :=  strTointDef(stgCSList2.Cells[2,nMaxRow],0) div nCSMain1TimeQtn ;
  nCSMain1TimeQtn := ABS(snTemp);
  nCSMainLastQtn :=  strTointDef(stgCSList2.Cells[2,nMaxRow],0) mod nCSMain1TimeQtn ;
  if ABS(nCSMainLastQtn) > 0 then nCSMain1TimeQtn := nCSMain1TimeQtn + 1;

  if nCSMain1TimeQtn > 500 then begin     //101
    showmessage('�ֹ� Ƚ���� �ִ� 500 ���� �� �����ϴ�.');
    exit;
  end;

  if nCSMain1TimeQtn < 501 then begin
    for I := 0 to stgCSList2.RowCount -1 do begin
      if stgCSList2.Cells[0,i] <> '' then begin
        nQtn := strTointDef(stgCSList2.Cells[2,i],-1);
        if ABS(nQtn) < ABS(strTointDef(edt��������.Text,0)) then begin
          stgCSList2.Cells[3,i] := stgCSList2.Cells[2,i];
        end else begin
          if nQtn < 0 then begin
            nQtn := strTointDef(edt��������.Text,0)* (-1);
          end else  nQtn := strTointDef(edt��������.Text,0);
          stgCSList2.Cells[3,i] := intTostr(nQtn);
        end;
      end;
    end;
    InsertCSValue;
  end;
end;

procedure TfYMS_CS.btnGuChuckAddClick(Sender: TObject);
var nListPos : integer;
begin
  nListPos := strtointDef(cbbYMSCSListPosition.Text,-1)-1;
  stgCSList2.Cells[0,nListPos] := ledtYMSCSJongMokAdd.Text;
  stgCSList2.Cells[1,nListPos] := Formatfloat('#0.00',_DWHSGListInfo[0,strTointDef(edtYMSCSAddJMRow.Text,-1)]) ;// �ŵ�ȣ��
  stgCSList2.Cells[2,nListPos] := ledtYMSSCTotalQtnAdd.Text ;// �Ѽ���
  stgCSList2.Cells[3,nListPos] := ledtYMSSCUnitQtnAdd.Text ;// 1ȸ ����
  stgCSList2.Cells[4,nListPos] := '0';// �������� // 00:������   03:���尡   05:���Ǻ�������   06:������������
  stgCSList2.Cells[6,nListPos] := edtYMSCSAddJMRow.Text;// Row ��ȣ
  insertCSValue;
  gbYMSCSAdd.Visible := False;
end;

procedure TfYMS_CS.ChungSan7;  // �ְ��� �ŵ��ϸ� �ŵ�ȣ���� , �ż��ϸ� �ż�ȣ���� => ä��Ǹ� 2~3��° ������ ���尡, �������� ���簡�� �ֹ�... ��� Ȯ�� ����.
var i : integer;
    nString : string;
    nWhile_flg : boolean; // while�� ���������� �÷���
    nTime_flg : boolean; // �ŷ��ð� �÷���
    nCSSignal_flg : boolean; //���� ���� �ֹ��ߴ��� Ȯ��, û�� ������ �´���
    MJAllOrdered_flg : boolean; //�������� ���� �ֹ� �Ϸ��ߴٴ� �÷���
    MJOrderInt : integer; // �������� �ֹ� ����
    nClientKey, JMNo, nMaxtime, Time_Out : integer; // �ֹ� ���� , ���ΰ� �ܰ� �� �ֹ� ȸ���� ���� ��.
begin
{
//////// 2019. 02. 20 /////////////
///  1. û�� ���� Ȯ��
///    1.1 ���������� ����� ���� ��
///    1.2 ���� ���� ���ӽð� ����.  ��) 0.5��
///  2. û�� ���� �� û�� ����
///    2.1 �ܰ� ���簡�� �ֹ�
///    2.2 ���������� �ŵ�ȣ�� -1ƽ���� �ֹ�
///    2.3  2.1�� 2.2�� 1��(���氡��) �������� �ݺ� �ֹ�
///    2.4  �ֹ��� ����Ʈ�� ������ ����
///  3. 2.2 �ֹ� �� ü��Ȯ�� Ÿ�̸� �۵� ---------Ÿ�̸� �뵵 : ���� ���� ü�� Ȯ�� �� ������ ���尡 �ֹ�
///    3.1 �������� ü�� �� ������ 2���� ���尡 �ֹ�
///    3.2 �ܰ� ��ü�� ���尡 ���� ó��
///    3.3 ��ü ü�� Ȯ���Ͽ� û�� ����
///  4. û�� ������ ���� �߻� �� ��ü�� ���
}

  nString := '[�����ڵ�][�ֹ�����][������ǥ����]' ;
  mmoCSLog.Lines.Add(nString);
  for I := 0 to 9 do begin     // ���� �ִ� ���� 20 ��
    _CSOrderedQty[i] := 0; // �ֹ��� ���� �ʱ�ȭ
    _OrdDone_flg[i] := False; // ������ ���� �ֹ� �Ϸ� �÷���
    //_YMSCSListInfo : array[0..7,0..19] of string;  // û�� ����Ʈ���� [  �����ڵ�[0], ���簡[1], ���ֹ�����[2], 1ȸ����[3], PT[4], ���[5], RowNo[6], ������ǥ����[7]  ]
    if _YMSCSListInfo[0,i] <> '' then begin
      nString := '['+_YMSCSListInfo[0,i] + '][' + _YMSCSListInfo[2,i] + '][' + _YMSCSListInfo[7,i] + ']  ';
      mmoCSLog.Lines.Add(nString);
    end;
  end;

//  nMainJMOrdered_flg := False;

  nWhile_flg := true;
  CSContinueCNT := 0;
  while nWhile_flg do // ��������� �ϼ��Ǹ� �������´�.........
  begin
    nTime_flg := True;
    nString := copy(formatdatetime('hhmmss',now),1,6);
    if (strTointDef(nString,0) < strTointDef(edtCSStartTime.Text,100000) )
      or (strTointDef(nString,0) > strTointDef(edtCSStopTime.Text,150000))then
        nTime_flg := False;

    if flg_ChungSan = False then
    begin
      CSStop;     // û�� ������ ó�� �Լ�
      exit; //
    end;

    nCSSignal_flg := False;

    // ������ ��� �� �� �� �ϳ��� �ɷ��� û�� �õ�.
    if ckbCSJSInOut.Checked then begin
      if ((strTofloatDef(SunMul,-11) < (_CSJSUpTrigger + 0.005)) and (strTofloatDef(SunMul,-11) > (_CSJSDownTrigger - 0.005))) or (_CSBiYong <  (_CSBiYongTrgger + 0.005)) then
      begin
        CSContinueCNT :=  CSContinueCNT + 1;
      end else CSContinueCNT := 0;
    end else begin
      if ((strTofloatDef(SunMul,-11) > (_CSJSUpTrigger - 0.005)) or (strTofloatDef(SunMul,-11) < (_CSJSDownTrigger +0.005))) or (_CSBiYong <  (_CSBiYongTrgger + 0.005)) then
      begin
        CSContinueCNT :=  CSContinueCNT + 1;
      end else CSContinueCNT := 0;
    end;

    if (CSContinueCNT > (CSContinueCNTTrigger*100 - 1)) and (nTime_flg)  then begin // 10msec * 100�� = 1��
        nCSSignal_flg := true;
        nWhile_flg := False;
        if tmrAutoCSMainChange.Enabled = True then
              tmrAutoCSMainChange.Enabled := False;
    end else nCSSignal_flg := False;
    delay(10); // while�� ���� ����
  end;

  if nCSSignal_flg then begin

    tmrCSSubOrder.Enabled := True; // ���񰳼��� 3�� �̻��̸�  ������ ����� ó�� ����
    MJAllOrdered_flg := False;
//    MJOrderInt := Round(strTofloatDef(ledtMJOrderInt.Text,999)*1000) ; // delay(10)�̿��� 100�� ����. 10msec * 100�� = 1��

    if _CSMainOrderTime > _CSWGOrderTime then
      nMaxtime := _CSMainOrderTime
    else nMaxtime := _CSWGOrderTime;

    JMNo := 0;
    for I := 0 to nMaxtime - 1 do begin

      if flg_ChungSan = False then begin
        MainJMMiCGCancel;
        WGJMMiCGCancel;
        tmrCSSubOrder.Enabled := False;
        CSStop;     // û�� ������ ó�� �Լ�
        exit;
      end;

      JMNo := JMNo + 1;
      if (_CSWGOrderTime > (JMNo-1)) then begin    // 18 > 17
        nClientKey := 22000000 + JMNo * 1000; // �ܰ� �ֹ� Key
        CSWGOrder(nClientKey, _CSWG1TimeQtn); // �ܰ� ���� �ֹ� �Ѵ�.
        // ���⼭ ���� �ֹ� ���� Ȯ��
        Time_Out := 0;
        repeat
          if (Time_Out > 600000) OR (flg_ChungSan = false) then begin
            flg_ChungSan := False;
            CSStop;     // û�� ������ ó�� �Լ�
            exit;
          end;
          delay(10);
          inc(Time_Out);
        until _CSWGJMDataList[JMNo-1].OrderNo > 0;
      end;

      if (_CSMainOrderTime > (JMNo-1)) then begin   //4 > 3
        nClientKey := 11000000 + JMNo * 1000; // strToint(copy(nNow,3,6)); //11595999 // ���� �ֹ� Key
        CSMainOrder(nClientKey, _CSMain1timeQtn); // ���� ���� �ֹ� �Ѵ�.
        // ���⼭ ���� �ֹ� ���� Ȯ��
        Time_Out := 0;
        repeat
          if (Time_Out > 600000) OR (flg_ChungSan = false) then begin
            flg_ChungSan := False;
            CSStop;     // û�� ������ ó�� �Լ�
            exit;
          end;
          delay(10);
          inc(Time_Out);
        until _CSJMDataList[JMNo-1].OrderNo > 0;
      end;

//      delay(MJOrderInt); // while�� ���� ����
    end;

    if flg_ChungSan = False then exit;

    if _CSWGLastQtn  <> 0 then  begin
      nClientKey := 22000000 + (JMNo+1) * 1000; // s�ܰ� �ֹ� Key
      CSWGOrder(nClientKey, _CSWGLastQtn); // �ܰ� ���� ������ ���� �ֹ� �Ѵ�.
      // ���⼭ ���� �ֹ� ���� Ȯ��
      Time_Out := 0;
      repeat
        if (Time_Out > 600000) OR (flg_ChungSan = false) then begin
          flg_ChungSan := False;
          CSStop;     // û�� ������ ó�� �Լ�
          exit;
        end;
        delay(10);
        inc(Time_Out);
      until _CSWGJMDataList[JMNo].OrderNo > 0;
    end;
    delay(50);
    if _CSMainLastQtn <> 0 then  begin
      nClientKey := 11000000 + (JMNo+1) * 1000; // ���� �ֹ� Key
      CSMainOrder(nClientKey, _CSMainLastQtn); // ���� ���� ������ ���� �ֹ� �Ѵ�.
      // ���⼭ ���� �ֹ� ���� Ȯ��
      Time_Out := 0;
      repeat
        if (Time_Out > 600000) OR (flg_ChungSan = false) then begin
          flg_ChungSan := False;
          CSStop;     // û�� ������ ó�� �Լ�
          exit;
        end;
        delay(10);
        inc(Time_Out);
      until _CSJMDataList[JMNo].OrderNo > 0;
    end;
    exit;
  end;
end;

procedure TfYMS_CS.CSMainOrder(nClientKey, nQtn : integer) ;
var nGubun,nOrgNo, nPrice, i : integer;
    nString : string;
    nMainJMOffsetQtn : integer ;// ���� ������ �ʱ� ����
    nPriceType : integer;
//    nMainJMOrdered_flg : boolean;
begin
////////////////���⼭���� ���� ���� �ֹ� ����//////////////////


  nOrgNo := 0; // �ֹ���ȣ
  //  nQtn:= 0;
  for I := 0 to 9 do begin
    if (_YMSCSListInfo[5,i] = '����') then begin
      if copy(_YMSCSListInfo[0,i],1,1) = '2' then nMainJMOffsetQtn := Round(DonbuJanGoListInfo[2,strTointDef(_YMSCSListInfo[6,i],-1)])     // ���� ������ ó�� ���� ����
      else if copy(_YMSCSListInfo[0,i],1,1) = '3' then nMainJMOffsetQtn := Round(DonbuJanGoListInfo[6,strTointDef(_YMSCSListInfo[6,i],-1)]); // ���� ������ ó�� ���� ����

      nPriceType := strTointDef(_YMSCSListInfo[4,i],0); // ���� Ÿ�� ... ���尡, ������

      if nQtn < 0 then begin  // �ŵ��̸�...
        nGubun := 1;    //�ŵ�
        if copy(_YMSCSListInfo[0,i],1,1) = '2' then  begin
          nPrice := Round(_DWHSGListInfo[0,strTointDef(_YMSCSListInfo[6,i],-1)] * 100);      // �� �ŵ� ȣ��
          if nPrice > 999 then nPrice := nPrice - 5
          else nPrice := nPrice - 1;
        end else if copy(_YMSCSListInfo[0,i],1,1) = '3' then  begin
          nPrice := Round(_DWHSGListInfo[6,strTointDef(_YMSCSListInfo[6,i],-1)] * 100);      // ǲ �ŵ� ȣ��
          if nPrice > 999 then nPrice := nPrice - 5
          else nPrice := nPrice - 1;
        end;
      end else if nQtn > 0 then begin   // �ż��̸�...
        nGubun := 2; //�ż�
        if copy(_YMSCSListInfo[0,i],1,1) = '2' then  begin
          nPrice := Round(_DWHSGListInfo[1,strTointDef(_YMSCSListInfo[6,i],-1)] * 100);      // �� �ż� ȣ��
          if nPrice > 999 then nPrice := nPrice + 5
          else nPrice := nPrice + 1;
        end else if copy(_YMSCSListInfo[0,i],1,1) = '3' then  begin
          nPrice := Round(_DWHSGListInfo[5,strTointDef(_YMSCSListInfo[6,i],-1)] * 100);      // ǲ �ż� ȣ��
          if nPrice > 999 then nPrice := nPrice + 5
          else nPrice := nPrice + 1;
        end;
      end;

      if nQtn = 0 then begin
//        nMainJMOrdered_flg := True; //  ���� ���񺸴� Ÿ ������ ���� ��츦 ���� ó�� 18.12.03
      end else begin
        //21 ���� if fHBOMain.DongbuAPI1.SendFOrder(nClientKey,Acnt,AcntPwd,nGubun,_YMSCSListInfo[0,i],nPriceType,ABS(nQtn),nPrice,nOrgNo) = false then
//        begin
//          nString := formatdatetime('hhmmss' , now) + '����- ���� û�� �ֹ��� �����߽��ϴ�.';
//          mmoCSLog.Lines.Add(nString);
//          flg_ChungSan := False;
//
//          CSStop;     // û�� ������ ó�� �Լ�
//          ckbChungSanAutoOrder.Checked := False; // ���� �ڵ� �ֹ� ����
//          exit;
//        end else begin
////          nMainJMOrdered_flg := True;
//      //        nWhile_flg := False;
//          nString := formatdatetime('hhmmss' , now) + '[���� '+_YMSCSListInfo[0,i] + '][���� ' + intTostr(nQtn) + '][�ֹ��� ' ;
//          nString := nString + formatfloat('#0.0#',nPrice * 0.01) + '][�������� ' + intTostr(nMainJMOffsetQtn) + ']';
//          mmoCSLog.Lines.Add(nString);
//        end;
      end;
      break;
    end;
  end;
end;

procedure TfYMS_CS.CSWGOrder(nClientKey, nQtn : integer);
var nGubun,nOrgNo, nPrice, i : integer;
    nString : string;
    strWGCode : string; // �ܰ� ���� �ڵ�
    nPriceType : integer;
begin
// 1. ���� �ܰ� �ֹ�

  nOrgNo := 0; // �ֹ���ȣ
//  nQtn:= 0;
  for I := 0 to 9 do begin
    if (_YMSCSListInfo[5,i] = '�ܰ�') then begin
      strWGCode := _YMSCSListInfo[0,i];
      nPriceType := strTointDef(_YMSCSListInfo[4,i],0); // ���� Ÿ�� ... ���尡, ������

      if nQtn < 0 then begin  // �ŵ��̸�...
        nGubun := 1;    //�ŵ�
        if copy(_YMSCSListInfo[0,i],1,1) = '2' then  begin
          nPrice := Round(_DWHSGListInfo[0,strTointDef(_YMSCSListInfo[6,i],-1)] * 100);      // �� �ŵ� ȣ��
        end else if copy(_YMSCSListInfo[0,i],1,1) = '3' then  begin
          nPrice := Round(_DWHSGListInfo[6,strTointDef(_YMSCSListInfo[6,i],-1)] * 100);      // ǲ �ŵ� ȣ��
        end;
      end else if nQtn > 0 then begin   // �ż��̸�...
        nGubun := 2; //�ż�
        if copy(_YMSCSListInfo[0,i],1,1) = '2' then  begin
          nPrice := Round(_DWHSGListInfo[1,strTointDef(_YMSCSListInfo[6,i],-1)] * 100);      // �� �ż� ȣ��
        end else if copy(_YMSCSListInfo[0,i],1,1) = '3' then  begin
          nPrice := Round(_DWHSGListInfo[5,strTointDef(_YMSCSListInfo[6,i],-1)] * 100);      // ǲ �ż� ȣ��
        end;
      end;

      //21 ���� if fHBOMain.DongbuAPI1.SendFOrder(nClientKey,Acnt,AcntPwd,nGubun,strWGCode,nPriceType,ABS(nQtn),nPrice,nOrgNo) = false then
//      begin
//        nString := formatdatetime('hhmmss' , now) + '����- �ܰ�û�� �ֹ��� �����߽��ϴ�.';
//        mmoCSLog.Lines.Add(nString);
//        flg_ChungSan := False;
//        CSStop;     // û�� ������ ó�� �Լ�
////        nWhile_flg := False;
//        ckbChungSanAutoOrder.Checked := False; // ���� �ڵ� �ֹ� ����
//        exit;
//      end else begin
////        nMainJMOrdered_flg := True;
//        nString := formatdatetime('hhmmss' , now) + '[���� '+ strWGCode + '][���� ' + intTostr(nQtn) + '][�ֹ��� ' ;
//        nString := nString + formatfloat('#0.0#',nPrice * 0.01) + ']';
//        mmoCSLog.Lines.Add(nString);
//      end;
      break;
    end;
  end;
end;

procedure TfYMS_CS.CSStop;
var nString : string;
begin
  ckbChungSanAutoOrder.Checked := false;
  nString := formatdatetime('yymmdd hhmmss',now) + '-flg_AutoTrigerOrder = False, �ڵ��ֹ���������.';
  mmoCSLog.Lines.Add(nString);
  stgCSList2.Enabled := True;
//  SpeedButton12.Enabled := True;
  btnCSQtnSetting.Enabled := True;
  edt��������.Enabled := True;
  btnCSAllQtnSetting.Enabled := True;
  btnCSAutoStart.Glyph.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Start_Off.bmp');
//  tmrCsOrder.Enabled := false;
end;

procedure TfYMS_CS.Button18Click(Sender: TObject);
begin
  gbYMSCSAdd.Visible := False;
end;

procedure TfYMS_CS.Button1Click(Sender: TObject);
begin
  cbbYMSCSListPosition.Text := intTostr(CSListSelectNo+1);
  YMSListAdd(_PriceInfoDGPosition, 0, ledtYMSSCTotalQtnAdd.Text, ledtYMSSCUnitQtnAdd.Text);
  gbYMSCSAdd.Visible := True;
end;

procedure TfYMS_CS.Button23Click(Sender: TObject);
var nInt : integer;
    nSingle : single;
begin
  nSingle := strTofloatDef(edtCSBY.Text,0);
  nInt := strTointDef(edtCSSetQtn.Text,1);
  edtCSSetBY.Text := formatfloat('#0.00',nSingle/nInt);
end;

procedure TfYMS_CS.Button2Click(Sender: TObject);
var i, j, nWno, nRow : integer;
    nString : string;
begin
  nWno := 0;
  for j := 0 to 49 do begin
    if (copy(_JangoList[0,j],1,3) = '209') or (copy(_JangoList[0,j],1,3) = '309') then begin
      stgWCSList.Cells[0,nWno] := _JangoList[0,j];
      stgWCSList.Cells[1,nWno] := '0'; // ȣ�� _JangoList[1,j];
      stgWCSList.Cells[2,nWno] := _JangoList[1,j]; // �Ѽ���
      stgWCSList.Cells[3,nWno] := edt��������.text;// 1ȸ��_JangoList[3,j];
      stgWCSList.Cells[4,nWno] := '3';// ���尡 ; _JangoList[4,j];
      stgWCSList.Cells[5,nWno] := '';//
      nString := _JangoList[0,j];
      if (copy(nString,8,1) = '2') or (copy(nString,8,1) = '7') then begin
        nString := copy(nString,6,3) + '.5';
      end;
      nRow := Round((_MaxHSG - strTofloatDef(nString,0)) / 2.5);
      stgWCSList.Cells[6,nWno] := intTostr(nRow);//
      nWno := nWno + 1;
    end;
  end;

  InsertWeekCSValue;

//  _CSDGPos := nDGPos; // ȭ��ǥ�� ���Ϸ� ���� ����� ����ϱ� ����
//  nWGPosition := nDGPos - nWGPos;
//  nHeangSaGa :=  _MaxHSG - nWGPosition*2.5 ;
//  stgCSList2.Cells[0,0] := '201' +_DCode + copy(formatfloat('#0.0',nHeangSaGa),1,3); // �ֹ���ȣ �Է�
//  stgCSList2.Cells[1,0] := Formatfloat('#0.00',_DWHSGListInfo[1,nWGPosition]) ;// �ż�ȣ��
//  stgCSList2.Cells[2,0] := nTotalQtn ;// �Ѽ���
//  stgCSList2.Cells[3,0] := nUnitQtn ;// 1ȸ ����
//  stgCSList2.Cells[4,0] := '0';// �������� // 00:������   03:���尡   05:���Ǻ�������   06:������������
//  stgCSList2.Cells[6,0] := intTostr(nWGPosition);// Row ��ȣ
//
//  _YMSWeekCSListInfo
end;

procedure TfYMS_CS.InsertWeekCSValue;   //��Ŭ�� ���� ����
var i,j, snTemp, nRow  : integer;
    strT : string; // �ӽ� ����
begin
  for I := 0 to 6 do begin   // �����׸�� RowNo����
    for j := 0 to 9 do begin
      _YMSWeekCSListInfo[i,j] := stgWCSList.Cells[i,j];
      if (i = 6) and (stgWCSList.Cells[0,j] <> '') then begin
        strT := stgWCSList.Cells[0,j];
        if (copy(strT,8,1) = '2') or (copy(strT,8,1) = '7') then  strT := copy(strT,6,3) + '.5'      // ���������� �������� Row���� �޶��� �� �־...
        else strT := copy(strT,6,3);
        nRow := Round((_MaxHSG - strTofloatDef(strT,0)) / 2.5);
        _YMSWeekCSListInfo[6,j] := intTostr(nRow);
        stgWCSList.Cells[6,j] := _YMSWeekCSListInfo[6,j];
      end else  if i = 2 then
        _CSTotalQtn[j] := strTointDef(stgWCSList.Cells[i,j],0);    // �غ� üũ�� ó�� �� ������ ���� �����Ѵ�. û�� �Ѻ�� ����.
    end;
  end;

  /// ���� �����ϰ� �� ������ ���
  for I := 0 to 9 do begin
    if _YMSWeekCSListInfo[0,i] <> '' then begin  // �����ڵ尡 ������..
      if copy(_YMSWeekCSListInfo[0,i],1,1) = '2' then begin // ���̸�...
        _YMSWeekCSListInfo[7,i] := intTostr(Round(DonbuJanGoListInfo[2,strTointDef(_YMSWeekCSListInfo[6,i],-1)]) + strTointDef(_YMSWeekCSListInfo[2,i],0)) ;//     intTostr(strTointdef(stg�ܰ�.Cells[2,strTointDef(_YMSWeekCSListInfo[6,i],-1)],0) + strTointDef(_YMSWeekCSListInfo[2,i],0));
      end else if copy(_YMSWeekCSListInfo[0,i],1,1) = '3' then begin  /// ǲ�̸�...
        _YMSWeekCSListInfo[7,i] := intTostr(Round(DonbuJanGoListInfo[6,strTointDef(_YMSWeekCSListInfo[6,i],-1)]) + strTointDef(_YMSWeekCSListInfo[2,i],0));//intTostr(strTointdef(stg�ܰ�.Cells[6,strTointDef(_YMSWeekCSListInfo[6,i],-1)],0) + strTointDef(_YMSWeekCSListInfo[2,i],0));
      end;
    end;
  end;
end;

procedure TfYMS_CS.Button36Click(Sender: TObject);
begin
  mmoCSLog.Clear;
end;

procedure TfYMS_CS.Button64Click(Sender: TObject);
var nString : string;
begin
  if MessageDlg('�����Ҳ���????',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    nString := ExtractFilePath(paramstr(0)) + 'AutoMeaMeaMemo\�ڵ�û��-' + FormatDateTime('yymmdd hhmmss' , Now) + '.txt';
    mmoCSLog.Lines.SaveToFile(nString);
  end;
end;

procedure TfYMS_CS.Button69Click(Sender: TObject);
var i, nRowCnt : integer;
begin
  stgCSList2.Cells[0,CSListSelectNo] := '';
  stgCSList2.Cells[1,CSListSelectNo] := '';
  stgCSList2.Cells[2,CSListSelectNo] := '';
  stgCSList2.Cells[3,CSListSelectNo] := '';
  stgCSList2.Cells[4,CSListSelectNo] := '';
  for I := CSListSelectNo to stgCSList2.RowCount -2 do
    stgCSList2.Rows[i] := stgCSList2.Rows[i+1];

  nRowCnt := stgCSList2.RowCount;
  stgCSList2.Rows[nRowCnt-1].Clear;
  InsertCSValue;
    // �����
  YMSCSBYCal;
  // ���⼭ ���ʹ� ����Ϲ� ���� �⺻�� ���� ��� 2�ܰ�.
  edtCSBY.Text := formatfloat('0.00',_YMSTotalCSBY);
  edtCSSetBY.Text := formatfloat('0.00',_YMSUnitCSBY);

end;

procedure TfYMS_CS.InsertCSValue;
var i,j, snTemp, nRow  : integer;
    strT : string; // �ӽ� ����
begin
  for I := 0 to 6 do begin   // �����׸�� RowNo����
    for j := 0 to 9 do begin
      _YMSCSListInfo[i,j] := stgCSList2.Cells[i,j];
      if (i = 6) and (stgCSList2.Cells[0,j] <> '') then begin
        strT := stgCSList2.Cells[0,j];
        if (copy(strT,8,1) = '2') or (copy(strT,8,1) = '7') then  strT := copy(strT,6,3) + '.5'      // ���������� �������� Row���� �޶��� �� �־...
        else strT := copy(strT,6,3);
        nRow := Round((_MaxHSG - strTofloatDef(strT,0)) / 2.5);
        _YMSCSListInfo[6,j] := intTostr(nRow);
        stgCSList2.Cells[6,j] := _YMSCSListInfo[6,j];
      end else  if i = 2 then
        _CSTotalQtn[j] := strTointDef(stgCSList2.Cells[i,j],0);    // �غ� üũ�� ó�� �� ������ ���� �����Ѵ�. û�� �Ѻ�� ����.
    end;
  end;

  /// ���� �����ϰ� �� ������ ���
  for I := 0 to 9 do begin
    if _YMSCSListInfo[0,i] <> '' then begin  // �����ڵ尡 ������..
      if copy(_YMSCSListInfo[0,i],1,1) = '2' then begin // ���̸�...
        _YMSCSListInfo[7,i] := intTostr(Round(DonbuJanGoListInfo[2,strTointDef(_YMSCSListInfo[6,i],-1)]) + strTointDef(_YMSCSListInfo[2,i],0)) ;//     intTostr(strTointdef(stg�ܰ�.Cells[2,strTointDef(_YMSCSListInfo[6,i],-1)],0) + strTointDef(_YMSCSListInfo[2,i],0));
      end else if copy(_YMSCSListInfo[0,i],1,1) = '3' then begin  /// ǲ�̸�...
        _YMSCSListInfo[7,i] := intTostr(Round(DonbuJanGoListInfo[6,strTointDef(_YMSCSListInfo[6,i],-1)]) + strTointDef(_YMSCSListInfo[2,i],0));//intTostr(strTointdef(stg�ܰ�.Cells[6,strTointDef(_YMSCSListInfo[6,i],-1)],0) + strTointDef(_YMSCSListInfo[2,i],0));
      end;
    end;
  end;

  _CSMainLastQtn := 0;
  _CSWGLastQtn := 0;
  _CSMainOrderTime := 0;
  _CSWGOrderTime := 0;


  for I := 0 to 9 do begin
    if _YMSCSListInfo[5,i] = '����' then
    begin
      _CSMain1timeQtn := strTointDef(_YMSCSListInfo[3,i],-1);
      snTemp :=  strTointDef(_YMSCSListInfo[2,i],0) div _CSMain1timeQtn ;
      _CSMainOrderTime := snTemp;
      _CSMainLastQtn :=  strTointDef(_YMSCSListInfo[2,i],0) mod _CSMain1timeQtn ;
      _CSDGPos := strTointDef(stgCSList2.Cells[6,i], _PriceInfoDGPosition);
      break;
    end;
  end;

  for I := 0 to 9 do begin
    if _YMSCSListInfo[5,i] = '�ܰ�' then
    begin
      _CSWG1TimeQtn := strTointDef(_YMSCSListInfo[3,i],-1);
      snTemp :=  strTointDef(_YMSCSListInfo[2,i],0) div _CSWG1TimeQtn ;
      _CSWGOrderTime := snTemp;
      _CSWGLastQtn :=  strTointDef(_YMSCSListInfo[2,i],0) mod _CSWG1TimeQtn ;
      break;
    end;
  end;
end;

procedure TfYMS_CS.ckbChungSanAutoOrderClick(Sender: TObject);
var nString : string;
    nReadyflg , nReadyQtnflg: boolean;
    i : integer;
begin
//  lbCS�Ϸ�msg.Visible := False;
  flg_ChungSan := False; //û�� flg
  if ckbChungSanAutoOrder.Checked = False then
  begin
    flg_ChungSan := False;
    nString := formatdatetime('hhmmss',now) + '-flg_AutoTrigerOrder := False, �ڵ�û��üũ ����';
    mmoCSLog.Lines.Add(nString);
    ckbCSAutoMain.Enabled := True;
    tmrAutoCSMainChange.Enabled := False; // �ڵ� û�� �������� ���� ����
    stgCSList2.Enabled := True;
//    SpeedButton12.Enabled := True;
    btnCSQtnSetting.Enabled := True;
    edt��������.Enabled := True;
    btnCSAllQtnSetting.Enabled := True;
    exit;
  end;

  // ���⼭ ���� �������� ������ ������ Ȯ���� ��.....
  // ���� ���� Ȯ��...
  // �� ���� Ȯ�ΰ� �ش� Row�� Ȯ��
  // û�� ���ɼ��� Ȯ���ߴ���...
  //
  nReadyflg := true;
  nReadyQtnflg := True;
  if strTofloatDef(ldtû��UpJiSu.Text,0) < 0.01 then nReadyflg := False;

  for I := 0 to stgCSList2.Rowcount -1 do begin
    if stgCSList2.Cells[0,i] <> '' then begin
      if ABS(strTointDef(stgCSList2.Cells[2,i], -1)) < ABS(strTointDef(stgCSList2.Cells[3,i], 0)) then nReadyQtnflg := False; // �Ѽ����� 1ȸ �ֹ� �������� ������
    end;
  end;

  if nReadyflg = False then begin
    showmessage('������ ���� �ȸ¾ƿ�.');
    ckbChungSanAutoOrder.Checked := False;
    exit;
  end;

  if nReadyQtnflg = False then begin
    showmessage('�ֹ� ���� ������ ���� �ȸ¾ƿ�.');
    ckbChungSanAutoOrder.Checked := False;
    exit;
  end;

  stgCSList2.Enabled := False;
  btnCSQtnSetting.Enabled := False;
  edt��������.Enabled := False;
  btnCSAllQtnSetting.Enabled := False;
  ckbCSAutoMain.Enabled := False;

  InsertCSValue;

  // �����
  YMSCSBYCal;
  // ���⼭ ���ʹ� ����Ϲ� ���� �⺻�� ���� ��� 2�ܰ�.
  edtCSBY.Text := formatfloat('0.00',_YMSTotalCSBY);
  edtCSSetBY.Text := formatfloat('0.00',_YMSUnitCSBY);

  // ���� �� �ٷ� û�� ����Ǿ� ������ �������� �� ����.(���Խð��� ���� ����)
  if ckbCSJSInOut.Checked then begin
    if ((strTofloatDef(SunMul,-11) < (_CSJSUpTrigger + 0.005)) and (strTofloatDef(SunMul,-11) > (_CSJSDownTrigger - 0.005))) or (_CSBiYong <  (_CSBiYongTrgger + 0.005)) then
    begin
      showmessage('�ٷ� û�� ����Ǵ� ����/��� �������Դϴ�.');
      ckbChungSanAutoOrder.Checked := False;
      exit;
    end;
  end else begin
    if ((strTofloatDef(SunMul,-11) > (_CSJSUpTrigger - 0.005)) or (strTofloatDef(SunMul,-11) < (_CSJSDownTrigger +0.005))) or (_CSBiYong <  (_CSBiYongTrgger + 0.005)) then
    begin
      showmessage('�ٷ� û�� ����Ǵ� ����/��� �������Դϴ�.');
      ckbChungSanAutoOrder.Checked := False;
      exit;
    end;
  end;

  if ckbCSAutoMain.Checked then
      tmrAutoCSMainChange.Enabled := true  // �ڵ� û�� �������� ���� Ÿ�̸� ����
  else tmrAutoCSMainChange.Enabled := False;

  nString := formatdatetime('hhmmss',now) +  '-�Ϲ�����: ' + formatfloat('#0.00',_CSJSDownTrigger);
  nString := nString + ' �������: ' + formatfloat('#0.00',_CSJSUpTrigger);
  mmoCSLog.Lines.Add(nString);
  nString := formatdatetime('hhmmss',now) + '-û�극��: ' + formatfloat('#0.00',_CSBiYongTrgger);
  if rbtCSSetBiYong.Checked then
    nString := nString + ' ������: ' + formatfloat('#0.00',_YMSUnitCSBY)
  else if rbtCSToTalBiYong.Checked then
    nString := nString + ' ������: ' + formatfloat('#0.00',_YMSTotalCSBY);
  mmoCSLog.Lines.Add(nString);

  flg_ChungSan := true;
end;

procedure TfYMS_CS.FormActivate(Sender: TObject);
begin
  if First_Activate then begin
    Left := 945;
    Top := 0;//520-3;
    First_Activate := False;
  end;
end;

procedure TfYMS_CS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SaveUIValue;
  action := Cafree;
//  action := CaHide;
end;

procedure TfYMS_CS.FormDestroy(Sender: TObject);
var nBoolean : boolean;
begin
//  nBoolean := CSOrderThread.Terminated;
end;

procedure TfYMS_CS.VisibleChanging;
begin
 // inherited;
end;

procedure TfYMS_CS.FormShow(Sender: TObject);
var i : integer;
begin
  First_Activate := True;
  StringGrid7.Cells[0,0] := '�����ڵ�';
  StringGrid7.ColWidths[0] := 90;
  StringGrid7.Cells[1,0] := ' ȣ  ��';
  StringGrid7.Cells[2,0] := '�Ѽ���';
  StringGrid7.ColWidths[2] := 40;
  StringGrid7.Cells[3,0] := '1ȸ��';
  StringGrid7.ColWidths[3] := 40;
  StringGrid7.Cells[4,0] := 'PT';
  StringGrid7.ColWidths[4] := 30;
  StringGrid7.Cells[5,0] := '���';
  StringGrid7.ColWidths[5] := 30;
  StringGrid7.Cells[6,0] := 'Row';
  StringGrid7.ColWidths[6] := 30;

  stgCSList2.ColWidths[0] := 90;
  stgCSList2.ColWidths[2] := 40;
  stgCSList2.ColWidths[3] := 40;
  stgCSList2.ColWidths[4] := 30;
  stgCSList2.ColWidths[5] := 30;
  stgCSList2.ColWidths[6] := 30;

  StringGrid3.Cells[0,0] := '�����ڵ�';
  StringGrid3.ColWidths[0] := 90;
  StringGrid3.Cells[1,0] := ' ȣ  ��';
  StringGrid3.Cells[2,0] := '�Ѽ���';
  StringGrid3.ColWidths[2] := 40;
  StringGrid3.Cells[3,0] := '1ȸ��';
  StringGrid3.ColWidths[3] := 40;
  StringGrid3.Cells[4,0] := 'PT';
  StringGrid3.ColWidths[4] := 30;
  StringGrid3.Cells[5,0] := '���';
  StringGrid3.ColWidths[5] := 30;
  StringGrid3.Cells[6,0] := 'Row';
  StringGrid3.ColWidths[6] := 30;

  stgWCSList.ColWidths[0] := 90;
  stgWCSList.ColWidths[2] := 40;
  stgWCSList.ColWidths[3] := 40;
  stgWCSList.ColWidths[4] := 30;
  stgWCSList.ColWidths[5] := 30;
  stgWCSList.ColWidths[6] := 30;


  StringGrid5.ColWidths[0] := 63;
  StringGrid5.Cells[0,0] := ' ��Key';
  StringGrid5.ColWidths[1] := 43;
  StringGrid5.Cells[1,0] := '�ֹ�No';
  StringGrid5.ColWidths[2] := 63;
  StringGrid5.Cells[2,0] := ' �����ڵ�';
  StringGrid5.ColWidths[3] := 28;
  StringGrid5.Cells[3,0] := '����';
  StringGrid5.ColWidths[4] := 38;
  StringGrid5.Cells[4,0] := '�ֹ���';
  StringGrid5.ColWidths[5] := 38;
  StringGrid5.Cells[5,0] := '�ּ���';
  StringGrid5.ColWidths[6] := 38;
  StringGrid5.Cells[6,0] := 'ü�ᰡ';
  StringGrid5.ColWidths[7] := 38;
  StringGrid5.Cells[7,0] := ' ü��';
  StringGrid5.ColWidths[8] := 38;
  StringGrid5.Cells[8,0] := '��ü��';
  StringGrid5.ColWidths[9] := 42;
  StringGrid5.Cells[9,0] := '����ȣ';
  StringGrid5.ColWidths[10] := 7;
  StringGrid5.Cells[10,0] := '';

  stgCSMainOrder.ColWidths[0] := 63;
  stgCSMainOrder.ColWidths[1] := 43;
  stgCSMainOrder.ColWidths[2] := 63;
  stgCSMainOrder.ColWidths[3] := 28;
  stgCSMainOrder.ColWidths[4] := 38;
  stgCSMainOrder.ColWidths[5] := 38;
  stgCSMainOrder.ColWidths[6] := 38;
  stgCSMainOrder.ColWidths[7] := 38;
  stgCSMainOrder.ColWidths[8] := 38;
  stgCSMainOrder.ColWidths[9] := 42;
  stgCSMainOrder.ColWidths[10] := 7;

  StringGrid2.ColWidths[0] := 63;
  StringGrid2.Cells[0,0] := ' ��Key';
  StringGrid2.ColWidths[1] := 43;
  StringGrid2.Cells[1,0] := '�ֹ�No';
  StringGrid2.ColWidths[2] := 63;
  StringGrid2.Cells[2,0] := ' �����ڵ�';
  StringGrid2.ColWidths[3] := 28;
  StringGrid2.Cells[3,0] := '����';
  StringGrid2.ColWidths[4] := 38;
  StringGrid2.Cells[4,0] := '�ֹ���';
  StringGrid2.ColWidths[5] := 38;
  StringGrid2.Cells[5,0] := '�ּ���';
  StringGrid2.ColWidths[6] := 38;
  StringGrid2.Cells[6,0] := 'ü�ᰡ';
  StringGrid2.ColWidths[7] := 38;
  StringGrid2.Cells[7,0] := ' ü��';
  StringGrid2.ColWidths[8] := 38;
  StringGrid2.Cells[8,0] := '��ü��';
  StringGrid2.ColWidths[9] := 42;
  StringGrid2.Cells[9,0] := '����ȣ';
  StringGrid2.ColWidths[10] := 7;
  StringGrid2.Cells[10,0] := '';

  stgCSWGOrder.ColWidths[0] := 63;
  stgCSWGOrder.ColWidths[1] := 43;
  stgCSWGOrder.ColWidths[2] := 63;
  stgCSWGOrder.ColWidths[3] := 28;
  stgCSWGOrder.ColWidths[4] := 38;
  stgCSWGOrder.ColWidths[5] := 38;
  stgCSWGOrder.ColWidths[6] := 38;
  stgCSWGOrder.ColWidths[7] := 38;
  stgCSWGOrder.ColWidths[8] := 38;
  stgCSWGOrder.ColWidths[9] := 42;
  stgCSWGOrder.ColWidths[10] := 7;
  StringGrid7.Selection := TGridRect(Rect(-1, -1, -1, -1));
  stgCSList2.Selection := TGridRect(Rect(-1, -1, -1, -1));

  StringGrid3.Selection := TGridRect(Rect(-1, -1, -1, -1));
  stgWCSList.Selection := TGridRect(Rect(-1, -1, -1, -1));

  CSContinueCNTTrigger := strTofloatDef(ledCSCNT.Text,0.5); // �����ȣ�� �����̻� ���ӵǾ�� �Ǵ��� ����.
  OpenUIValue;
  InsertCSValue;

  // �����
  YMSCSBYCal;

  // ���⼭ ���ʹ� ����Ϲ� ���� �⺻�� ���� ��� 2�ܰ�.
  edtCSBY.Text := formatfloat('0.00',_YMSTotalCSBY);
  edtCSSetBY.Text := formatfloat('0.00',_YMSUnitCSBY);
end;

procedure TfYMS_CS.gbYMSCSAddMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  (sender As TWincontrol).Perform( WM_SysCommand, $F012, 0 );
end;

procedure TfYMS_CS.SpeedButton10Click(Sender: TObject);
begin
  YMSCSBasicSetting(_PriceInfoDGPosition, strTointDef(edtCSWGPosition.Text,3), edtAll��������.Text, edt��������.Text);
end;

procedure TfYMS_CS.SpeedButton1Click(Sender: TObject);
begin
  YMSListAdd(_PriceInfoDGPosition, 0, ledtYMSSCTotalQtnAdd.Text, ledtYMSSCUnitQtnAdd.Text);
end;

procedure TfYMS_CS.YMSListAdd(nDGPos, nWGPos : integer; nTotalQtn, nUnitQtn : string);
var nHeangSaGa : single;
    I, nWGPosition : integer;
begin
  _CSDGPos := nDGPos; // ȭ��ǥ�� ���Ϸ� ���� ����� ����ϱ� ����
  nWGPosition := nDGPos - nWGPos;
  edtYMSCSAddJMRow.Text := intTostr(nWGPosition);// Row ��ȣ
  nHeangSaGa :=  _MaxHSG - nWGPosition*2.5 ;
  if rdbYMSCSAddCall.Checked then begin
    ledtYMSCSJongMokAdd.Text := '201' +_DCode + copy(formatfloat('#0.0',nHeangSaGa),1,3); // �ֹ���ȣ �Է�
//    stgCSList2.Cells[1,nListPos] := Formatfloat('#0.00',_DWHSGListInfo[0,nWGPosition]) ;// �ŵ�ȣ��
//    stgCSList2.Cells[2,nListPos] := nTotalQtn ;// �Ѽ���
//    stgCSList2.Cells[3,nListPos] := nUnitQtn ;// 1ȸ ����
//    stgCSList2.Cells[4,nListPos] := '0';// �������� // 00:������   03:���尡   05:���Ǻ�������   06:������������
//    stgCSList2.Cells[6,nListPos] := edtYMSCSAddJMRow.Text;// Row ��ȣ
  end else if rdbYMSCSAddPut.Checked then begin
    ledtYMSCSJongMokAdd.Text := '301' +_DCode + copy(formatfloat('#0.0',nHeangSaGa),1,3); // �ֹ���ȣ �Է�
//    stgCSList2.Cells[1,nListPos] := Formatfloat('#0.00',_DWHSGListInfo[0,nWGPosition]) ;// �ŵ�ȣ��
//    stgCSList2.Cells[2,nListPos] := nTotalQtn ;// �Ѽ���
//    stgCSList2.Cells[3,nListPos] := nUnitQtn ;// 1ȸ ����
//    stgCSList2.Cells[4,nListPos] := '0';// �������� // 00:������   03:���尡   05:���Ǻ�������   06:������������
//    stgCSList2.Cells[6,nListPos] := edtYMSCSAddJMRow.Text;// Row ��ȣ
  end;
end;

procedure TfYMS_CS.SpeedButton4Click(Sender: TObject);
var nString : string;
begin
  if MessageDlg('�ڵ� �Ÿ� �����ϰڽ��ϱ�?',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    flg_ChungSan := False;
    nString := formatdatetime('hhmmss',now) + '-�ڵ�û�� ����';
    mmoCSLog.Lines.Add(nString);
    ckbChungSanAutoOrder.Enabled := True;
    ckbChungSanAutoOrder.Checked := false;
    stgCSList2.Enabled := True;
    btnCSQtnSetting.Enabled := True;
    edt��������.Enabled := True;
    btnCSAllQtnSetting.Enabled := true;
    btnCSAutoStart.Glyph.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Start_Off.bmp');
  end;
end;

procedure TfYMS_CS.SpinButton10DownClick(Sender: TObject);
begin
  ldtû����Level.Text := formatfloat('#0.0#',(strTofloatDef(ldtû����Level.Text,0) - 0.01));
end;

procedure TfYMS_CS.SpinButton10UpClick(Sender: TObject);
begin
  ldtû����Level.Text := formatfloat('#0.0#',(strTofloatDef(ldtû����Level.Text,0) + 0.01));
end;

procedure TfYMS_CS.SpinButton11DownClick(Sender: TObject);
begin
  YMSCSArrowSetting(-1);
end;

procedure TfYMS_CS.SpinButton11UpClick(Sender: TObject);
begin
  YMSCSArrowSetting(1);
end;

procedure TfYMS_CS.YMSCSArrowSetting(nUpDown : integer);
var I, nRow : integer;
    nHeangSaGa : single;
    nCode : string;
begin
  for I := 0 to 9 do begin
    nCode := stgCSList2.Cells[0,i];
    nRow := strTointDef(stgCSList2.Cells[6,i],-99);
    if nCode <> '' then begin
      if (copy(nCode,8,1) = '2') or (copy(nCode,8,1) = '7') then
        nHeangSaGa := strTointDef(copy(nCode,6,3),0) + 0.5
      else nHeangSaGa := strTointDef(copy(nCode,6,3),0);
      nHeangSaGa := nHeangSaGa + nUpDown*2.5;
      nRow := nRow - nUpDown; // 25 - (+1) = 24;
      stgCSList2.Cells[0,i] := copy(nCode,1,5) + copy(formatfloat('#0.0',nHeangSaGa),1,3); // �ֹ���ȣ �Է�
      if copy(nCode,1,3) = '201' then begin
        if strTointDef(stgCSList2.Cells[2,i],0) > 0 then        // �ż�
          stgCSList2.Cells[1,i] := Formatfloat('#0.00',_DWHSGListInfo[0,nRow]) // �ŵ�ȣ��
        else if strTointDef(stgCSList2.Cells[2,i],0) < 0 then        // �ŵ�
          stgCSList2.Cells[1,i] := Formatfloat('#0.00',_DWHSGListInfo[1,nRow]); // �ż�ȣ��
      end else if copy(nCode,1,3) = '301' then begin
        if strTointDef(stgCSList2.Cells[2,i],0) > 0 then        // �ż�
          stgCSList2.Cells[1,i] := Formatfloat('#0.00',_DWHSGListInfo[6,nRow]) // �ŵ�ȣ��
        else if strTointDef(stgCSList2.Cells[2,i],0) < 0 then        // �ŵ�
          stgCSList2.Cells[1,i] := Formatfloat('#0.00',_DWHSGListInfo[5,nRow]); // �ż�ȣ��
      end;
      stgCSList2.Cells[6,i] := intTostr(nRow);// Row ��ȣ
    end;
  end;

  InsertVerYMSCSJM;
  // �����
  YMSCSBYCal;
  // ���⼭ ���ʹ� ����Ϲ� ���� �⺻�� ���� ��� 2�ܰ�.
  for i := 0 to 9 do begin
    if stgCSList2.Cells[5,i] ='����'  then begin
      nRow := strTointDef(stgCSList2.Cells[6,i], _PriceInfoDGPosition);
      ldtû��UpJiSu.Text :=  formatfloat('0.#',_MaxHSG - (nRow - 2)*2.5);
      ldtû��DownJiSu.Text :=  formatfloat('0.#',_MaxHSG - (nRow + 2)*2.5);
      break;
    end;
  end;
  edtCSBY.Text := formatfloat('0.00',_YMSTotalCSBY);
  edtCSSetBY.Text := formatfloat('0.00',_YMSUnitCSBY);
  if rbtCSSetBiYong.Checked then ldtû����Level.Text :=  formatfloat('0.00',_YMSUnitCSBY - 0.4 ) // 0.4 ���� ����
  else ldtû����Level.Text :=  formatfloat('0.00',_YMSTotalCSBY - 0.4 );
end;

procedure TfYMS_CS.SpinButton1DownClick(Sender: TObject);
begin
  YMSListAdd(_CSDGPos+1, 0, ledtYMSSCTotalQtnAdd.Text, ledtYMSSCUnitQtnAdd.Text);
end;

procedure TfYMS_CS.SpinButton1UpClick(Sender: TObject);
begin
  YMSListAdd(_CSDGPos-1, 0, ledtYMSSCTotalQtnAdd.Text, ledtYMSSCUnitQtnAdd.Text);
end;

procedure TfYMS_CS.SpinButton8DownClick(Sender: TObject);
begin
  ldtû��UpJiSu.Text := formatfloat('#0.0#',(strTofloatDef(ldtû��UpJiSu.Text,0) - 0.05));
end;

procedure TfYMS_CS.SpinButton8UpClick(Sender: TObject);
begin
  ldtû��UpJiSu.Text := formatfloat('#0.0#',(strTofloatDef(ldtû��UpJiSu.Text,0) + 0.05));
end;

procedure TfYMS_CS.SpinButton9DownClick(Sender: TObject);
begin
  ldtû��DownJiSu.Text := formatfloat('#0.0#',(strTofloatDef(ldtû��DownJiSu.Text,0) - 0.05));
end;

procedure TfYMS_CS.SpinButton9UpClick(Sender: TObject);
begin
  ldtû��DownJiSu.Text := formatfloat('#0.0#',(strTofloatDef(ldtû��DownJiSu.Text,0) + 0.05));
end;

procedure TfYMS_CS.YMSCSBasicSetting(nDGPos, nWGPos : integer; nTotalQtn, nUnitQtn : string);
var nHeangSaGa : single;
    I, nWGPosition : integer;
begin
  _CSDGPos := nDGPos; // ȭ��ǥ�� ���Ϸ� ���� ����� ����ϱ� ����
  nWGPosition := nDGPos - nWGPos;
  nHeangSaGa :=  _MaxHSG - nWGPosition*2.5 ;
  stgCSList2.Cells[0,0] := '201' +_DCode + copy(formatfloat('#0.0',nHeangSaGa),1,3); // �ֹ���ȣ �Է�
  stgCSList2.Cells[1,0] := Formatfloat('#0.00',_DWHSGListInfo[1,nWGPosition]) ;// �ż�ȣ��
  stgCSList2.Cells[2,0] := nTotalQtn ;// �Ѽ���
  stgCSList2.Cells[3,0] := nUnitQtn ;// 1ȸ ����
  stgCSList2.Cells[4,0] := '0';// �������� // 00:������   03:���尡   05:���Ǻ�������   06:������������
  stgCSList2.Cells[6,0] := intTostr(nWGPosition);// Row ��ȣ

  nHeangSaGa :=  _MaxHSG - nDGPos*2.5 ;
  stgCSList2.Cells[0,1] := '201' +_DCode + copy(formatfloat('#0.0',nHeangSaGa),1,3); // �ֹ���ȣ �Է�
  stgCSList2.Cells[1,1] := Formatfloat('#0.00',_DWHSGListInfo[0,nDGPos]) ;// �ŵ�ȣ��
  stgCSList2.Cells[2,1] := '-' + nTotalQtn ;// �Ѽ���
  stgCSList2.Cells[3,1] := '-' + nUnitQtn ;// 1ȸ ����
  stgCSList2.Cells[4,1] := '0';// �������� // 00:������   03:���尡   05:���Ǻ�������   06:������������
  stgCSList2.Cells[6,1] := intTostr(nDGPos);// Row ��ȣ

  nHeangSaGa :=  _MaxHSG-nDGPos*2.5 ;
  stgCSList2.Cells[0,2] := '301' +_DCode + copy(formatfloat('#0.0',nHeangSaGa),1,3); // �ֹ���ȣ �Է�
  stgCSList2.Cells[1,2] := Formatfloat('#0.00',_DWHSGListInfo[6,nDGPos]) ;// �ŵ�ȣ��
  stgCSList2.Cells[2,2] := '-' + nTotalQtn ;// �Ѽ���
  stgCSList2.Cells[3,2] := '-' + nUnitQtn ;// 1ȸ ����
  stgCSList2.Cells[4,2] := '0';// �������� // 00:������   03:���尡   05:���Ǻ�������   06:������������
  stgCSList2.Cells[6,2] := intTostr(nDGPos);// Row ��ȣ

  nWGPosition := nDGPos + nWGPos;
  nHeangSaGa :=  _MaxHSG - nWGPosition*2.5 ;
  stgCSList2.Cells[0,3] := '301' +_DCode + copy(formatfloat('#0.0',nHeangSaGa),1,3); // �ֹ���ȣ �Է�
  stgCSList2.Cells[1,3] := Formatfloat('#0.00',_DWHSGListInfo[5,nWGPosition]) ;// �ż�ȣ��
  stgCSList2.Cells[2,3] := nTotalQtn ;// �Ѽ���
  stgCSList2.Cells[3,3] := nUnitQtn ;// 1ȸ ����
  stgCSList2.Cells[4,3] := '0';// �������� // 00:������   03:���尡   05:���Ǻ�������   06:������������
  stgCSList2.Cells[6,3] := intTostr(nWGPosition);// Row ��ȣ

  InsertVerYMSCSJM;
  // �����
  YMSCSBYCal;
  // ���⼭ ���ʹ� ����Ϲ� ���� �⺻�� ���� ��� 2�ܰ�.
  ldtû��UpJiSu.Text :=  formatfloat('0.#',_MaxHSG - (nDGPos - 2)*2.5);
  ldtû��DownJiSu.Text :=  formatfloat('0.#',_MaxHSG - (nDGPos + 2)*2.5);
  edtCSBY.Text := formatfloat('0.00',_YMSTotalCSBY);
  edtCSSetBY.Text := formatfloat('0.00',_YMSUnitCSBY);
  if rbtCSSetBiYong.Checked then ldtû����Level.Text :=  formatfloat('0.00',_YMSUnitCSBY - 0.4 ) // 10% ���� ����
  else ldtû����Level.Text :=  formatfloat('0.00',_YMSTotalCSBY - 0.4 );
end;

procedure TfYMS_CS.YMSCSBYCal;
var i : integer;
begin
  ///  1. ���������� ����Ͽ� �Ѻ��� ��������� �����Ѵ�. �Ѵ� ���� ����Ѵ�.
  ///      _YMSTotalBY, _YMSUnitBY
  _YMSTotalCsBY := 0;
  _YMSUnitCSBY :=0;
  for I := 0 to 9 do begin
    if _YMSCSListInfo[0,i] <> ''  then begin
      _YMSTotalCsBY := _YMSTotalCsBY + strTofloatDef(_YMSCSListInfo[1,i],0) * strTointDef(_YMSCSListInfo[2,i],0);
      _YMSUnitCSBY := _YMSUnitCSBY + strTofloatDef(_YMSCSListInfo[1,i],0) * (strTointDef(_YMSCSListInfo[3,i],0) / abs(strTointDef(_YMSCSListInfo[3,i],0)));
    end;
  end;

  if rbtCSToTalBiYong.Checked then _CSBiYong := _YMSTotalCsBY
  else if rbtCSSetBiYong.Checked then  _CSBiYong := _YMSUnitCSBY;
end;

procedure TfYMS_CS.InsertVerYMSCSJM;
var i : integer;
begin
  _YMSCSListJMQtn := 0;
  for i := 0 to 9 do begin //_YMSGCListJMQtn -1 do begin
    if stgCSList2.Cells[0,i] <> '' then begin
      _YMSCSListInfo[0,i] := stgCSList2.Cells[0,i] ;
      _YMSCSListInfo[1,i] := stgCSList2.Cells[1,i] ; //ȣ��
      _YMSCSListInfo[2,i] := stgCSList2.Cells[2,i] ;//�Ѽ���
      _YMSCSListInfo[3,i] := stgCSList2.Cells[3,i] ; // 1ȸ����
      _YMSCSListInfo[4,i] := stgCSList2.Cells[4,i] ;// ���尡
      _YMSCSListInfo[5,i] := stgCSList2.Cells[5,i] ;//
      _YMSCSListInfo[6,i] := stgCSList2.Cells[6,i] ; //Row
      _YMSCSListJMQtn := _YMSCSListJMQtn + 1;
    end else begin
      _YMSCSListInfo[0,i] := '';
      _YMSCSListInfo[1,i] := '';//ȣ��
      _YMSCSListInfo[2,i] := '';//�Ѽ���
      _YMSCSListInfo[3,i] := '';// 1ȸ����
      _YMSCSListInfo[4,i] := '';// ���尡
      _YMSCSListInfo[5,i] := '';//
      _YMSCSListInfo[6,i] := ''; //Row
    end;
  end;
end;

procedure TfYMS_CS.ldtû��DownJiSuChange(Sender: TObject);
begin
  _CSJSDownTrigger :=  strTofloatDef(ldtû��DownJiSu.Text,-999999);
//  mmoCSLog.Lines.Add('�Ϲ�û��Ʈ��������: ' + formatfloat('#0.00',_CSJSDownTrigger));
end;

procedure TfYMS_CS.ldtû��UpJiSuChange(Sender: TObject);
begin
  _CSJSUpTrigger :=  strTofloatDef(ldtû��UpJiSu.Text,999999);
//  mmoCSLog.Lines.Add('���û��Ʈ��������: ' + formatfloat('#0.00',_CSJSUpTrigger));
end;

procedure TfYMS_CS.ldtû����LevelChange(Sender: TObject);
begin
  _CSBiYongTrgger := strTofloatDef(ldtû����Level.Text,0);
//  mmoCSLog.Lines.Add('û���뷹��: ' + formatfloat('#0.00',_CSBiYongTrgger));
end;

procedure TfYMS_CS.ledCSCNTChange(Sender: TObject);
begin
  CSContinueCNTTrigger := strTofloatDef(ledCSCNT.Text,0.5); // �����ȣ�� �����̻� ���ӵǾ�� �Ǵ��� ����.
end;

procedure TfYMS_CS.rdbCSList10Click(Sender: TObject);
begin
  pCSListSelect;
end;

procedure TfYMS_CS.rdbCSList17Click(Sender: TObject);
begin
  pCSListSelect;
end;

procedure TfYMS_CS.rdbCSList18Click(Sender: TObject);
begin
  pCSListSelect;
end;

procedure TfYMS_CS.rdbCSList19Click(Sender: TObject);
begin
  pCSListSelect;
end;

procedure TfYMS_CS.rdbCSList1Click(Sender: TObject);
begin
  pCSListSelect;
end;

procedure TfYMS_CS.rdbCSList20Click(Sender: TObject);
begin
  pCSListSelect;
end;

procedure TfYMS_CS.rdbCSList2Click(Sender: TObject);
begin
  pCSListSelect;
end;

procedure TfYMS_CS.rdbCSList3Click(Sender: TObject);
begin
  pCSListSelect;
end;

procedure TfYMS_CS.rdbCSList4Click(Sender: TObject);
begin
  pCSListSelect;
end;

procedure TfYMS_CS.rdbCSList5Click(Sender: TObject);
begin
  pCSListSelect;
end;

procedure TfYMS_CS.rdbCSList6Click(Sender: TObject);
begin
  pCSListSelect;
end;

procedure TfYMS_CS.rdbCSList7Click(Sender: TObject);
begin
  pCSListSelect;
end;

procedure TfYMS_CS.rdbCSList8Click(Sender: TObject);
begin
  pCSListSelect;
end;

procedure TfYMS_CS.rdbCSList9Click(Sender: TObject);
begin
  pCSListSelect;
end;

procedure TfYMS_CS.rdbYMSCSAddCallClick(Sender: TObject);
begin
  ledtYMSCSJongMokAdd.Text := '2' + copy(ledtYMSCSJongMokAdd.Text,2,Length(ledtYMSCSJongMokAdd.Text)-1);
end;

procedure TfYMS_CS.rdbYMSCSAddPutClick(Sender: TObject);
begin
  ledtYMSCSJongMokAdd.Text := '3' + copy(ledtYMSCSJongMokAdd.Text,2,Length(ledtYMSCSJongMokAdd.Text)-1);
end;

procedure TfYMS_CS.pCSListSelect;
begin
  if rdbCSList1.Checked then CSListSelectNo := 0
  else if rdbCSList2.Checked then CSListSelectNo := 1
  else if rdbCSList3.Checked then CSListSelectNo := 2
  else if rdbCSList4.Checked then CSListSelectNo := 3
  else if rdbCSList5.Checked then CSListSelectNo := 4
  else if rdbCSList6.Checked then CSListSelectNo := 5
  else if rdbCSList7.Checked then CSListSelectNo := 6
  else if rdbCSList8.Checked then CSListSelectNo := 7
  else if rdbCSList9.Checked then CSListSelectNo := 8
  else if rdbCSList10.Checked then CSListSelectNo := 9
//  else if rdbCSList11.Checked then CSListSelectNo := 10
//  else if rdbCSList12.Checked then CSListSelectNo := 11
//  else if rdbCSList13.Checked then CSListSelectNo := 12
//  else if rdbCSList14.Checked then CSListSelectNo := 13
//  else if rdbCSList15.Checked then CSListSelectNo := 14
//  else if rdbCSList16.Checked then CSListSelectNo := 15
  else if rdbCSList17.Checked then CSListSelectNo := 16
  else if rdbCSList18.Checked then CSListSelectNo := 17
  else if rdbCSList19.Checked then CSListSelectNo := 18
  else if rdbCSList20.Checked then CSListSelectNo := 19;
end;

procedure TfYMS_CS.stgCSList2DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var intValue, iX, iY : integer;
begin
  // ���� ��ȣ�� ���� �� ����, �ż� ����, �ŵ� �Ķ�
  with stgCSList2 do
  begin
    iY := Rect.Top + 2;
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
//    Canvas.TextOut(Rect.Left+2, Rect.Top, Cells[ACol, ARow]);
    iX := (Rect.Left + Rect.Right) div 2;
    SetTextAlign(Canvas.Handle, TA_CENTER);
    Canvas.TextRect(Rect, iX, iY, Cells[Acol,Arow]);
  end;
end;

procedure TfYMS_CS.stgCSList2Exit(Sender: TObject);
begin
  stgCSList2.Selection := TGridRect(Rect(-1, -1, -1, -1));
end;

procedure TfYMS_CS.stgCSList2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  InsertCSValue;
end;

procedure TfYMS_CS.stgCSList2MouseLeave(Sender: TObject);
begin
  stgCSList2.Selection := TGridRect(Rect(-1, -1, -1, -1));
end;

procedure TfYMS_CS.stgCSList2MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
//  stgCSList2.Selection := TGridRect(Rect(-1, -1, -1, -1));
end;

procedure TfYMS_CS.stgCSList2MouseWheelDown(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  Handled := True;
end;

procedure TfYMS_CS.stgCSList2MouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  Handled := True;
end;

procedure TfYMS_CS.stgCSList2SelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
begin
  case ARow of
    0: rdbCSList1.Checked := True;
    1: rdbCSList2.Checked := True;
    2: rdbCSList3.Checked := True;
    3: rdbCSList4.Checked := True;
    4: rdbCSList5.Checked := True;
    5: rdbCSList6.Checked := True;
    6: rdbCSList7.Checked := True;
    7: rdbCSList8.Checked := True;
    8: rdbCSList9.Checked := True;
    9: rdbCSList10.Checked := True;
//    10: rdbCSList11.Checked := True;
//    11: rdbCSList12.Checked := True;
//    12: rdbCSList13.Checked := True;
//    13: rdbCSList14.Checked := True;
//    14: rdbCSList15.Checked := True;
//    15: rdbCSList16.Checked := True;
    16: rdbCSList17.Checked := True;
    17: rdbCSList18.Checked := True;
    18: rdbCSList19.Checked := True;
    19: rdbCSList20.Checked := True;
  end;
end;

procedure TfYMS_CS.stgWCSListDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var intValue, iX, iY : integer;
begin
  // ���� ��ȣ�� ���� �� ����, �ż� ����, �ŵ� �Ķ�
  with stgWCSList do
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
//    Canvas.TextOut(Rect.Left+2, Rect.Top, Cells[ACol, ARow]);
    iY := Rect.Top + 2;
    iX := (Rect.Left + Rect.Right) div 2;
    SetTextAlign(Canvas.Handle, TA_CENTER);
    Canvas.TextRect(Rect, iX, iY, Cells[Acol,Arow]);
  end;
end;

procedure TfYMS_CS.stgWCSListExit(Sender: TObject);
begin
  stgWCSList.Selection := TGridRect(Rect(-1, -1, -1, -1));
end;

procedure TfYMS_CS.stgWCSListMouseLeave(Sender: TObject);
begin
  stgWCSList.Selection := TGridRect(Rect(-1, -1, -1, -1));
end;

procedure TfYMS_CS.stgWCSListMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  stgWCSList.Selection := TGridRect(Rect(-1, -1, -1, -1));
end;

procedure TfYMS_CS.stgWCSListMouseWheelDown(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  Handled := True;
end;

procedure TfYMS_CS.stgWCSListMouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  Handled := True;
end;

procedure TfYMS_CS.stgWCSListSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
begin
  case ARow of
    0: rdbCSList17.Checked := True;
    1: rdbCSList18.Checked := True;
    2: rdbCSList19.Checked := True;
    3: rdbCSList20.Checked := True;
  end;
end;

procedure TfYMS_CS.StringGrid3MouseLeave(Sender: TObject);
begin
  StringGrid3.Selection := TGridRect(Rect(-1, -1, -1, -1));
end;

procedure TfYMS_CS.StringGrid3MouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  Handled := True;
end;

procedure TfYMS_CS.StringGrid3MouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  Handled := True;
end;

procedure TfYMS_CS.StringGrid7MouseLeave(Sender: TObject);
begin
  StringGrid7.Selection := TGridRect(Rect(-1, -1, -1, -1));
end;

procedure TfYMS_CS.StringGrid7MouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  Handled := True;
end;

procedure TfYMS_CS.StringGrid7MouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  Handled := True;
end;

procedure TfYMS_CS.tmrAutoCSMainChangeTimer(Sender: TObject);
var aRow , nMinPrice, nMaxPrice, nSingle: single;
    i, nMinRow, nMaxRow, nQtn : integer;
begin
  // 1. �ִ밪�� �ּҰ��� ���Ѵ�.
  // 2. �ִ밪�� �ּҰ��� ������ �����Ѵ�.
  tmrAutoCSMainChange.Enabled := False;
  nMinPrice := 999;
  nMinRow := 99;
  for I := 0 to stgCSList2.RowCount -1 do begin
    stgCSList2.Cells[5,i] := '';
    if stgCSList2.Cells[0,i] <> '' then begin
      nSingle := strTofloatDef(stgCSList2.Cells[1,i],0);
      if nSingle < nMinPrice then begin
        nMinPrice := nSingle;
        nMinRow := i;
      end;
      stgCSList2.Cells[4,i] := '3';
    end;
  end;
  stgCSList2.Cells[4,nMinRow] := '0';  //�ּҰ����� ���簡�� �ֹ�
  stgCSList2.Cells[5,nMinRow] := '�ܰ�'; // ���� �ܰ� ����

  nMaxPrice := 0;
  nMaxRow := 99;
  for I := 0 to stgCSList2.RowCount -1 do begin
    if i <> nMinRow then stgCSList2.Cells[5,i] := '';
    if stgCSList2.Cells[0,i] <> '' then begin
      nSingle := strTofloatDef(stgCSList2.Cells[1,i],0);
      if nSingle > nMaxPrice then begin
        nMaxPrice := nSingle;
        nMaxRow := i;
      end;
      if i <> nMinRow then stgCSList2.Cells[4,i] := '3';
    end;
  end;
  stgCSList2.Cells[4,nMaxRow] := '0';  //�ִ밡���� �ŵ�ȣ�� -1 �� �ֹ�
  stgCSList2.Cells[5,nMaxRow] := '����'; // ���� ���� ����

  InsertCSValue;
  tmrAutoCSMainChange.Enabled := True;
end;

procedure TfYMS_CS.MainJMMiCGCancel;
var i : integer;
    nClientKey, nOrgNo, nNCGQtn, nPrice, nPriceType, nGubun : integer;
    nString : string;
begin
///  ���⼭���� �������� ��ü�� ó��
  for I := 0 to 499 do begin
    if _CSJMDataList[i].OrderNo <> 0 then begin
      nOrgNo := _CSJMDataList[i].OrderNo;
      nNCGQtn := _CSJMDataList[i].MCGQtn;
      nPrice := round(_CSJMDataList[i].JMPrice * 100);
      if (nNCGQtn > 0) and (nOrgNo > 0) then begin
        nPriceType := 0; // ������
        nClientKey :=  99999999;
        nGubun := 4;
        //21 ���� if fHBOMain.DongbuAPI1.SendFOrder(nClientKey,Acnt,AcntPwd,nGubun,_CSJMDataList[i].JMCode,nPriceType,nNCGQtn,nPrice,nOrgNo) = false then
//        begin
//          nString := formatdatetime('hhmmss' , now) + '����-���� ���� ��ü�� ��� �ֹ��� �����߽��ϴ�.';
//          mmoCSLog.Lines.Add(nString);
//          exit;
//        end else begin
//          nString := formatdatetime('hhmmss' , now) + '�������� ' + _CSJMDataList[i].JMCode + ' ��ü�� ��� ó��';
//          mmoCSLog.Lines.Add(nString);
//          delay(50);
//        end;
      end;
    end;
  end;
end;

procedure TfYMS_CS.WGJMMiCGCancel;
var i, nQtn : integer;
    nClientKey, nOrgNo, nNCGQtn, nPrice, nPriceType, nGubun : integer;
    nString : string;
begin
///  ���⼭���� �������� ��ü�� ó��
  for I := 0 to 499 do begin
    if _CSWGJMDataList[i].MCGQtn > 0 then begin
      nOrgNo := _CSWGJMDataList[i].OrderNo;
      nQtn := _CSWGJMDataList[i].MCGQtn;
      nPrice := round(_CSWGJMDataList[i].JMPrice * 100);
      if (nQtn > 0) and (nOrgNo > 0) then begin
        nPriceType := 3; // ���尡
        nClientKey :=  99999999;
        nGubun := 4;   // ���
        //21 ���� if fHBOMain.DongbuAPI1.SendFOrder(nClientKey,Acnt,AcntPwd,nGubun,_CSWGJMDataList[i].JMCode,nPriceType,nQtn,nPrice,nOrgNo) = false then
//        begin
//          nString := formatdatetime('hhmmss' , now) + '����-�ܰ� ����' + _CSWGJMDataList[i].JMCode + ' ��ü�� ��� �ֹ��� �����߽��ϴ�.';
//          mmoCSLog.Lines.Add(nString);
//          flg_ChungSan := False;
//          CSStop;     // û�� ������ ó�� �Լ�
//          ckbChungSanAutoOrder.Checked := False; // û�� �ڵ� �ֹ� ����
//          exit;
//        end else begin
//          nString := formatdatetime('hhmmss' , now) + '�ܰ����� ' + _CSWGJMDataList[i].JMCode + '�ֹ���ȣ:' + intTostr(nOrgNo) + '  ��ü�� �ֹ� ��� ó��';
//          mmoCSLog.Lines.Add(nString);
//          delay(50);
//        end;
      end;
    end;
  end;
end;

procedure TfYMS_CS.tmrCSSubOrderTimer(Sender: TObject);
var i : integer;
    nOrgNo, nPriceType, nGubun, nPrice, nQtn : integer;
    nString : string;
    nMainCGSum, nMainAllQtn, nMainMCGSum : integer; //�������� ��ü ü�����, ���ֹ� ����, �� ��ü�� ����
    nQtn1time : array[0..9] of integer; // 1ȸ �ֹ� ����
    nAllOrder_OK :  boolean;
    nClientKey, nMainCGQtn, nWGCGQtn, nJMQtn : integer; // �ܰ� ���尡 ���� ���� ����
begin
///  1. ���� ���� ü��� ���� ��ŭ ������ ���� �ֹ� �Ѵ�.
///  2. ��ü �ֹ��� �� ������ üũ�Ѵ�.
///  3. ��ü �ֹ��� ������ �ܰ��ֹ��� ���尡�� �����Ѵ�.
///  4. �ֹ��� �����Ǹ� ��ü��� ����� �ֹ� ����Ѵ�.
  tmrCSSubOrder.Enabled := False;

  if flg_ChungSan = False then begin
    MainJMMiCGCancel;
    WGJMMiCGCancel;
    tmrCSSubOrder.Enabled := False;
    CSStop;     // û�� ������ ó�� �Լ�
    exit;
  end;

  nJMQtn := 0;  // ���� ������ 2�� �����̸� SubTimer ó�� ���ϰ� �Ϸ���...
  for I := 0 to 9 do      // ���� �ִ� ���� 20 ��
    if _YMSCSListInfo[0,i] <> '' then nJMQtn := nJMQtn + 1;

  nMainCGSum := 0;
  nMainAllQtn := 0;
  nMainMCGSum := 0;
  for I := 0 to 499 do begin
    // �����ֹ� ü�� ���� �հ踦 ���Ѵ�.
    if _CSJMDataList[i].JMKey <> 0 then begin
      nMainCGQtn := ABS(_CSJMDataList[i].JMQtn) - _CSJMDataList[i].MCGQtn;
      nWGCGQtn :=  ABS(_CSWGJMDataList[i].JMQtn) - _CSWGJMDataList[i].MCGQtn;
      nWGCGQtn := nMainCGQtn - nWGCGQtn;// ���� ü�� ���� - �ܰ� ü�� ����  5-3= 2...... 3-5= -2
      if nWGCGQtn > 0 then begin
        WGJMMiCGModify(i, nWGCGQtn); // ���� ü�� ������ �ܰ� ü�� �������� ������ �ܰ� ���尡 �����Ͽ� ü���Ѵ�.
      end;
      nMainAllQtn := nMainAllQtn + ABS(_CSJMDataList[i].JMQtn);  // �ֹ� ������
      nMainMCGSum := nMainMCGSum + ABS(_CSJMDataList[i].MCGQtn); // ��ü�� ���� ��.
    end else break;
  end;

  nMainCGSum := nMainAllQtn - nMainMCGSum; // ���� ���� ü�� ���� = �ֹ������� - ��ü�� ���� ��.

  if nJMQtn > 2 then begin
    nQtn := 0;
    for I := 0 to 9 do begin   // û�긮��Ʈ ����� �� ���ΰ� �ܰ��� ������ ���� �� �ֹ�.
      if (_YMSCSListInfo[5,i] <> '����') and (_YMSCSListInfo[5,i] <> '�ܰ�') and (_YMSCSListInfo[0,i] <> '') then begin
        if ABS(strTointdef(_YMSCSListInfo[2,i],0)) > _CSOrderedQty[i] then begin                                       // �� ��ǥ �������� �ֹ��� ������ ������
          nQtn1time[i] := strTointDef(_YMSCSListInfo[3,i],0);// == 1ȸ ���� (��ȣ ����)        ;//// û�� ����Ʈ���� [  �����ڵ�[0], ���簡[1], �Ѽ���[2], 1ȸ����[3], PT[4], ���[5], RowNo[6]  ]
          nQtn :=  nMainCGSum - _CSOrderedQty[i]; // �������� ü�� ���� - �ش� ���� �ֹ��� ���� = �ֹ��ؾ� �ϴ� ����
          if nQtn > ABS(nQtn1time[i]) then nQtn := ABS(nQtn1time[i]);
          if (ABS(strTointdef(_YMSCSListInfo[2,i],0)) - _CSOrderedQty[i]) < nQtn then nQtn := (ABS(strTointdef(_YMSCSListInfo[2,i],0)) - _CSOrderedQty[i]); // ��ü ���� - �ֹ��� ���� = �ܿ� ����, ���� 1ȸ �ֹ��������� ������ ����.
          if nQtn > 0 then begin
            nOrgNo := 0; // �ֹ���ȣ
            nPriceType := strTointDef(_YMSCSListInfo[4,i],-1); // PT ����Ÿ��
            nClientKey :=  99999999;
            if strTointDef(_YMSCSListInfo[3,i],0) < 0 then nGubun := 1    //�ŵ�
            else if strTointDef(_YMSCSListInfo[3,i],0) > 0 then nGubun := 2; //�ż�
            nPrice := Round(strTofloatDef(_YMSCSListInfo[1,i],0) * 100);

            //21 ���� if fHBOMain.DongbuAPI1.SendFOrder(nClientKey,Acnt,AcntPwd,nGubun,_YMSCSListInfo[0,i],nPriceType,nQtn,nPrice,nOrgNo) = false then
//            begin
//              showmessage('����-�ֹ��� �����߽��ϴ�.') ;
//              nString := formatdatetime('hhmmss' , now) + '����-�ֹ��� �����߽��ϴ�.';
//              mmoCSLog.Lines.Add(nString);
//              flg_ChungSan := False;
//              CSStop;     // û�� ������ ó�� �Լ�
//              ckbChungSanAutoOrder.Checked := False; // ���� �ڵ� �ֹ� ����
//              exit;
//            end else begin
//              _CSOrderedQty[i] := _CSOrderedQty[i] + nQtn;
//              nString := formatdatetime('hhmmss' , now) + '[���� '+_YMSCSListInfo[0,i] + '][���� ' + intTostr(nQtn) + '][�ֹ��� ' ;
//              nString := nString + formatfloat('#0.0#',nPrice * 0.01)  + ']';
//              mmoCSLog.Lines.Add(nString);
//            end;
          end;
        end else if _CSOrderedQty[i] <> 0 then _OrdDone_flg[i] := True; // �ֹ� �Ϸ� ����� Ȯ��
      end;
    end;


    nAllOrder_OK := True;
    for I := 0 to 9 do begin
      if (_YMSCSListInfo[5,i] <> '����') and (_YMSCSListInfo[5,i] <> '�ܰ�') and (_YMSCSListInfo[0,i] <> '') then
        if _OrdDone_flg[i] = False then nAllOrder_OK := False;
    end;
  end else nAllOrder_OK := True;

  if nAllOrder_OK and (nMainMCGSum = 0) and (nMainAllQtn > 0) then begin // ������ ������ ��� �ֹ��� �Ϸ� �ǰ� �������� ��ü���� 0�̸�
    // �ܰ� ���� ��ü���� ���尡�� ����
//    WGJMMiCGCancel;
    CSCompleteProcess; // �Ϸ� ǥ�ÿ� ���� �� ó��
    tmrCSSubOrder.Enabled := False;
  end;
  tmrCSSubOrder.Enabled := True;
end;

procedure TfYMS_CS.tmrYMSCSPriceTimer(Sender: TObject);
var i, nRowNo : integer;
    strJMCode, strYMonthCode, strOldHoga, strNewHoga : string;
    nMMType : string; // �ż� �ŵ� Ȯ��
begin
  tmrYMSCSPrice.Enabled := False;
  ///  1. ���� Ȯ��
  for i := 0 to stgCSList2.RowCount -1 do begin
    strJMCode := _YMSCSListInfo[0,i];
    if strJMCode <> '' then begin
      strYMonthCode := copy(strJMCode, 4,2); ///  2. ���� �� ���� Ȯ��
      nRowNo := strTointDef(_YMSCSListInfo[6,i],-1);  ///  3. Row��ȣ Ȯ��
      nMMType := copy(_YMSCSListInfo[2,i],1,1);   ///  4. �ż�, �ŵ� Ȯ�� - �̰ų� �����̰ų�.
      strOldHoga := _YMSCSListInfo[1,i]; // ���� ȣ�� Ȯ��
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
          else strNewHoga := formatfloat('#0.00',_DWHSGListInfo[0,nRowNo]);
        end else if (copy(strJMCode,1,3) = '301') then begin // ǲ�̸�
          if (nMMType = '-') then strNewHoga := formatfloat('#0.00',_CWHSGListInfo[5,nRowNo])
          else strNewHoga := formatfloat('#0.00',_DWHSGListInfo[6,nRowNo]);
        end;
      end else if strYMonthCode = _CCWCode then begin //������ �ڵ��̸�
        if (copy(strJMCode,1,3) = '201') then begin   // ���̸�
          if (nMMType = '-') then strNewHoga := formatfloat('#0.00',_CCWHSGListInfo[1,nRowNo])
          else strNewHoga := formatfloat('#0.00',_DWHSGListInfo[0,nRowNo]);
        end else if (copy(strJMCode,1,3) = '301') then begin // ǲ�̸�
          if (nMMType = '-') then strNewHoga := formatfloat('#0.00',_CCWHSGListInfo[5,nRowNo])
          else strNewHoga := formatfloat('#0.00',_DWHSGListInfo[6,nRowNo]);
        end;
      end else if strYMonthCode = _WWCode then begin //���� �ڵ��̸�
        if (copy(strJMCode,1,3) = '201') then begin   // ���̸�
          if (nMMType = '-') then strNewHoga := formatfloat('#0.00',_WWHSGListInfo[1,nRowNo])
          else strNewHoga := formatfloat('#0.00',_DWHSGListInfo[0,nRowNo]);
        end else if (copy(strJMCode,1,3) = '301') then begin // ǲ�̸�
          if (nMMType = '-') then strNewHoga := formatfloat('#0.00',_WWHSGListInfo[5,nRowNo])
          else strNewHoga := formatfloat('#0.00',_DWHSGListInfo[6,nRowNo]);
        end;
      end;
      if strOldHoga <> strNewHoga then begin
        _YMSCSListInfo[1,i] := strNewHoga;   ///  5. �ٸ��� ǥ��
        stgCSList2.Cells[1,i] := strNewHoga;
        // �����
        YMSCSBYCal;
        if rbtCSToTalBiYong.Checked then _CSBiYong := _YMSTotalCsBY
        else if rbtCSSetBiYong.Checked then  _CSBiYong := _YMSUnitCSBY;

        edtCSBY.Text := formatfloat('0.00',_YMSTotalCsBY);
        edtCSSetBY.Text := formatfloat('0.00',_YMSUnitCSBY);
      end;
    end;
  end;
  tmrYMSCSPrice.Enabled := True;
end;

procedure TfYMS_CS.tmrYMSCSInsertGridTimer(Sender: TObject);
var i, nJMNo, nIndex : integer;
    strTemp : string;
begin
  if _CSMainIndex > -1 then begin
    nIndex := _CSMainIndex;
    _CSMainIndex := -1;
    stgCSMainOrder.Cells[0,nIndex] := intTostr(_CSJMDataList[nIndex].JMKey);
    stgCSMainOrder.Cells[1,nIndex] := intTostr(_CSJMDataList[nIndex].OrderNo);
    stgCSMainOrder.Cells[2,nIndex] := _CSJMDataList[nIndex].JMCode;
//        stgCSMainOrder.Cells[3,nIndex] := intTostr(_CSJMDataList[nIndex].MMGB);
    stgCSMainOrder.Cells[4,nIndex] := formatfloat('#0.0#',_CSJMDataList[nIndex].JMPrice);
    stgCSMainOrder.Cells[5,nIndex] := intTostr(_CSJMDataList[nIndex].JMQtn);
    stgCSMainOrder.Cells[6,nIndex] := formatfloat('#0.0#',_CSJMDataList[nIndex].CGPrice);
    stgCSMainOrder.Cells[7,nIndex] := intTostr(_CSJMDataList[nIndex].CGQtn);
    stgCSMainOrder.Cells[8,nIndex] := intTostr(_CSJMDataList[nIndex].MCGQtn);
//        stgCSMainOrder.Cells[9,nIndex] := intTostr(_CSJMDataList[nIndex].WJMNo);
//        stgCSMainOrder.Cells[10,nIndex] := _CSJMDataList[nIndex].UH;
  end;

  if _CSWGIndex > -1 then begin
    nIndex := _CSWGIndex;
    _CSWGIndex := -1;
    stgCSWGOrder.Cells[0,nIndex] := intTostr(_CSWGJMDataList[nIndex].JMKey);
    stgCSWGOrder.Cells[1,nIndex] := intTostr(_CSWGJMDataList[nIndex].OrderNo);
    stgCSWGOrder.Cells[2,nIndex] := _CSWGJMDataList[nIndex].JMCode;
//        stgCSWGOrder.Cells[3,nIndex] := intTostr(_CSWGJMDataList[nIndex].MMGB);
    stgCSWGOrder.Cells[4,nIndex] := formatfloat('#0.0#',_CSWGJMDataList[nIndex].JMPrice);
    stgCSWGOrder.Cells[5,nIndex] := intTostr(_CSWGJMDataList[nIndex].JMQtn);
    stgCSWGOrder.Cells[6,nIndex] := formatfloat('#0.0#',_CSWGJMDataList[nIndex].CGPrice);
    stgCSWGOrder.Cells[7,nIndex] := intTostr(_CSWGJMDataList[nIndex].CGQtn);
    stgCSWGOrder.Cells[8,nIndex] := intTostr(_CSWGJMDataList[nIndex].MCGQtn);
//        stgCSWGOrder.Cells[9,nIndex] := intTostr(_CSWGJMDataList[nIndex].WJMNo);
//        stgCSWGOrder.Cells[10,nIndex] := _CSWGJMDataList[nIndex].UH;
  end;
end;

procedure TfYMS_CS.CSCompleteProcess;
var nString : string;
    i : integer;
begin

  stgCSList2.Enabled := True;
  btnCSQtnSetting.Enabled := True;
  edt��������.Enabled := True;
  btnCSAllQtnSetting.Enabled := True;

  ckbChungSanAutoOrder.Enabled := True;
  ckbChungSanAutoOrder.Checked := false;
  btnCSAutoStart.Glyph.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Start_Off.bmp');

  /// ���� �����ϰ� �� ������ üũ
//  delay(1000); // 1�ʰ� ��� �� �ֹ� �Ϸ� Ȯ��
//  bAllQtnCheck := True;
  nString := formatdatetime('hhmmss' , now) + ' û��Ϸ�';
  mmoCSLog.Lines.Add(nString);
  nString := '[�����ڵ�], [���簡], [���ֹ�����], [1ȸ����], [PT4], [���], [RowNo], [������ǥ����]';
  mmoCSLog.Lines.Add(nString);
  for I := 0 to 9 do begin
    if _YMSCSListInfo[0,i] <> '' then begin  // �����ڵ尡 ������..
      nString := '[' + _YMSCSListInfo[0,i] + ']' + '[' + _YMSCSListInfo[1,i] + ']' +'[' + _YMSCSListInfo[2,i] + ']' +'[' + _YMSCSListInfo[3,i] + ']';
      nString := nString + '[' + _YMSCSListInfo[4,i] + ']' + '[' + _YMSCSListInfo[5,i] + ']' +'[' + _YMSCSListInfo[6,i] + ']' +'[' + _YMSCSListInfo[7,i] + ']';
      mmoCSLog.Lines.Add(nString);
    end;
  end;

  for I := 0 to 499 do begin
    if stgCSMainOrder.Cells[0,i] = '' then break
    else begin
      stgCSMainOrder.Cells[0,i] := intTostr(_CSJMDataList[i].JMKey);
      stgCSMainOrder.Cells[1,i] := intTostr(_CSJMDataList[i].OrderNo);
      stgCSMainOrder.Cells[2,i] := _CSJMDataList[i].JMCode;
      stgCSMainOrder.Cells[3,i] := intTostr(_CSJMDataList[i].MMGB);
      stgCSMainOrder.Cells[4,i] := formatfloat('#0.0#',_CSJMDataList[i].JMPrice);
      stgCSMainOrder.Cells[5,i] := intTostr(_CSJMDataList[i].JMQtn);
      stgCSMainOrder.Cells[6,i] := formatfloat('#0.0#',_CSJMDataList[i].CGPrice);
      stgCSMainOrder.Cells[7,i] := intTostr(_CSJMDataList[i].CGQtn);
      stgCSMainOrder.Cells[8,i] := intTostr(_CSJMDataList[i].MCGQtn);
      stgCSMainOrder.Cells[9,i] := intTostr(_CSJMDataList[i].WJMNo);
      stgCSMainOrder.Cells[10,i] := _CSJMDataList[i].UH;
      stgCSWGOrder.Cells[0,i] := intTostr(_CSWGJMDataList[i].JMKey);
      stgCSWGOrder.Cells[1,i] := intTostr(_CSWGJMDataList[i].OrderNo);
      stgCSWGOrder.Cells[2,i] := _CSWGJMDataList[i].JMCode;
      stgCSWGOrder.Cells[3,i] := intTostr(_CSWGJMDataList[i].MMGB);
      stgCSWGOrder.Cells[4,i] := formatfloat('#0.0#',_CSWGJMDataList[i].JMPrice);
      stgCSWGOrder.Cells[5,i] := intTostr(_CSWGJMDataList[i].JMQtn);
      stgCSWGOrder.Cells[6,i] := formatfloat('#0.0#',_CSWGJMDataList[i].CGPrice);
      stgCSWGOrder.Cells[7,i] := intTostr(_CSWGJMDataList[i].CGQtn);
      stgCSWGOrder.Cells[8,i] := intTostr(_CSWGJMDataList[i].MCGQtn);
      stgCSWGOrder.Cells[9,i] := intTostr(_CSWGJMDataList[i].WJMNo);
      stgCSWGOrder.Cells[10,i] := _CSWGJMDataList[i].UH;
    end;
  end;
end;

procedure TfYMS_CS.WGJMMiCGModify(nNo, nQtn : integer);
var i : integer;
    nClientKey, nOrgNo, nNCGQtn, nPrice, nPriceType, nGubun, nPreMCGQtn : integer;
    nString : string;
begin
///  ���⼭���� �������� ��ü�� ó��

  if _CSWGJMDataList[nNo].MCGQtn > 0 then begin
    nPreMCGQtn :=  _CSWGJMDataList[nNo].MCGQtn;
//    if _CSWGJMDataList[nNo].WJMNo > 0 then
//      nOrgNo := _CSWGJMDataList[nNo].WJMNo
//    else nOrgNo := _CSWGJMDataList[nNo].OrderNo;
    nOrgNo := _CSWGJMDataList[nNo].OrderNo;
    nPrice := round(_CSWGJMDataList[nNo].JMPrice * 100);
    if (nQtn > 0) and (nOrgNo > 0) then begin
      nPriceType := 3; // ���尡
      nClientKey :=  nOrgNo;
      nGubun := 3;   // ����
      //21 ���� if fHBOMain.DongbuAPI1.SendFOrder(nClientKey,Acnt,AcntPwd,nGubun,_CSWGJMDataList[nNo].JMCode,nPriceType,nQtn,nPrice,nOrgNo) = false then
//      begin
//        nString := formatdatetime('hhmmss' , now) + '����-�ܰ� ����' + _CSWGJMDataList[i].JMCode + ' ��ü�� ���� �ֹ��� �����߽��ϴ�.';
//        mmoCSLog.Lines.Add(nString);
//        flg_ChungSan := False;
//        CSStop;     // û�� ������ ó�� �Լ�
//        ckbChungSanAutoOrder.Checked := False; // û�� �ڵ� �ֹ� ����
//        exit;
//      end else begin
//        _CSWGJMDataList[nNo].MCGQtn := nPreMCGQtn - nQtn;     // �ܰ� ��ü�� = ���� ��ü�� - ���� �ֹ�..
//        _CSWGJMDataList[nNo].CGQtn := _CSWGJMDataList[nNo].JMQtn - _CSWGJMDataList[nNo].MCGQtn; // �ܰ� ü��= �ܰ� �ֹ����� - ��ü�� ����; ���� API���� ���� �ʰ� ���尡 �ֹ��̹Ƿ� �׳� ����. ü�� ������ �𸥴�. ���尡 �̱� ����
//        _CSWGIndex := nNo;
//        nString := formatdatetime('hhmmss' , now) + '�ܰ����� ' + _CSWGJMDataList[nNo].JMCode + '�ֹ���ȣ:' + intTostr(nOrgNo) + '  ��ü�� ���尡 ó��';
//        mmoCSLog.Lines.Add(nString);
//      end;
    end;
  end;
end;

//{ TCSOrderThread } // û��� �����ֹ��� �ܰ� �ֹ��� ������ ȭ�鿡 �Ѹ��� ������
//
//procedure TCSOrderThread.Execute;
//begin
//  inherited;
//  FreeOnTerminate := True; // Terminate�Լ��� ȣ��Ǹ� �����θ� ������Ŵ. FormDestory ����
//  while Not Terminated do
//  begin
//    // SyncRx�Լ��� ����ȭ�Ͽ� �����Ѵ�.
//    // �����忡�� VCL�� ���� �������ϸ� ������ �߻��Ѵ�.
//    // �׷��� Synchronize��� ������ �Լ��� �̿��Ͽ� �Լ��� ��� ȣ���ϴ� ����� �Ѵ�.
//    Synchronize(SyncRx); // synchronize����ϸ� �Լ��� while �� ���� �� �ٸ� �۾��� �ȵ� �� �ִ�.
////    Sleep(2);
//    WaitForSingleObject(handle, 1);
//  end;
//end;
//
//procedure TCSOrderThread.SyncRx;
//var i, nJMNo, nIndex : integer;
//    strTemp : string;
//begin
//  try
//    with  fYMS_CS do begin
//      if _CSMainIndex > -1 then begin
//        nIndex := _CSMainIndex;
//        _CSMainIndex := -1;
//        stgCSMainOrder.Cells[0,nIndex] := intTostr(_CSJMDataList[nIndex].JMKey);
//        stgCSMainOrder.Cells[1,nIndex] := intTostr(_CSJMDataList[nIndex].OrderNo);
//        stgCSMainOrder.Cells[2,nIndex] := _CSJMDataList[nIndex].JMCode;
////        stgCSMainOrder.Cells[3,nIndex] := intTostr(_CSJMDataList[nIndex].MMGB);
//        stgCSMainOrder.Cells[4,nIndex] := formatfloat('#0.0#',_CSJMDataList[nIndex].JMPrice);
//        stgCSMainOrder.Cells[5,nIndex] := intTostr(_CSJMDataList[nIndex].JMQtn);
//        stgCSMainOrder.Cells[6,nIndex] := formatfloat('#0.0#',_CSJMDataList[nIndex].CGPrice);
//        stgCSMainOrder.Cells[7,nIndex] := intTostr(_CSJMDataList[nIndex].CGQtn);
//        stgCSMainOrder.Cells[8,nIndex] := intTostr(_CSJMDataList[nIndex].MCGQtn);
////        stgCSMainOrder.Cells[9,nIndex] := intTostr(_CSJMDataList[nIndex].WJMNo);
////        stgCSMainOrder.Cells[10,nIndex] := _CSJMDataList[nIndex].UH;
//      end;
//
//      if _CSWGIndex > -1 then begin
//        nIndex := _CSWGIndex;
//        _CSWGIndex := -1;
//        stgCSWGOrder.Cells[0,nIndex] := intTostr(_CSWGJMDataList[nIndex].JMKey);
//        stgCSWGOrder.Cells[1,nIndex] := intTostr(_CSWGJMDataList[nIndex].OrderNo);
//        stgCSWGOrder.Cells[2,nIndex] := _CSWGJMDataList[nIndex].JMCode;
////        stgCSWGOrder.Cells[3,nIndex] := intTostr(_CSWGJMDataList[nIndex].MMGB);
//        stgCSWGOrder.Cells[4,nIndex] := formatfloat('#0.0#',_CSWGJMDataList[nIndex].JMPrice);
//        stgCSWGOrder.Cells[5,nIndex] := intTostr(_CSWGJMDataList[nIndex].JMQtn);
//        stgCSWGOrder.Cells[6,nIndex] := formatfloat('#0.0#',_CSWGJMDataList[nIndex].CGPrice);
//        stgCSWGOrder.Cells[7,nIndex] := intTostr(_CSWGJMDataList[nIndex].CGQtn);
//        stgCSWGOrder.Cells[8,nIndex] := intTostr(_CSWGJMDataList[nIndex].MCGQtn);
////        stgCSWGOrder.Cells[9,nIndex] := intTostr(_CSWGJMDataList[nIndex].WJMNo);
////        stgCSWGOrder.Cells[10,nIndex] := _CSWGJMDataList[nIndex].UH;
//      end;
//    end;
//  except
//
//  end;
//end;

end.

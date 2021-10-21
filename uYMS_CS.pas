unit uYMS_CS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.ExtCtrls,
  Vcl.Buttons, Vcl.Samples.Spin, Vcl.Mask;

type
//  TCSOrderThread = class(TThread)   // 청산 주문시 메인종목과 외가 종목 주문 정보 화면 표시
//    public
//
//    protected
//      procedure Execute; override;
//      procedure SyncRx;
//    end;

//  BTJM = record // 배팅 주문에 필요한 변수
//    JMKey : integer;
//    OrderNo : integer;
//    JMCode : string[8];
//    MMGB : integer; // 매매구분
//    JMPrice : single ; // 주문가
//    JMQtn : integer; //주문수량
//    CGPrice : single ;// 체결가
//    CGQtn : integer; // 체결수량
//    MCGQtn : integer;// 미체결 수량
//    WJMNo : integer; // 원주문번호
//    UH : string[20]; // 유형 - 용도 모름
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
    ldt청산비용Level: TLabeledEdit;
    edtCSBY: TEdit;
    edtCSSetBY: TEdit;
    edtCSSetQtn: TEdit;
    Button23: TButton;
    rbtCSToTalBiYong: TRadioButton;
    rbtCSSetBiYong: TRadioButton;
    ledCSCNT: TLabeledEdit;
    ldt청산UpJiSu: TLabeledEdit;
    ldt청산DownJiSu: TLabeledEdit;
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
    edt수량셋팅: TEdit;
    btnCSQtnSetting: TButton;
    edtAll수량셋팅: TEdit;
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
    procedure ldt청산비용LevelChange(Sender: TObject);
    procedure ldt청산UpJiSuChange(Sender: TObject);
    procedure ldt청산DownJiSuChange(Sender: TObject);
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
    First_Activate : boolean; //화면 정렬용
    _CSDGPos : integer;
    _YMSTotalCSBY, _YMSUnitCSBY : single; // 양매수 토탈비용, 양매수단위 비용.
    _YMSCSListInfo : array[0..7,0..9] of string;  // 청산 리스트정보 [  종목코드[0], 현재가[1], 총주문수량[2], 1회수량[3], PT[4], 비고[5], RowNo[6], 최종목표수량[7]  ]
    _YMSWeekCSListInfo : array[0..7,0..3] of string;  // 위클리청산 리스트정보 [  종목코드[0], 현재가[1], 총주문수량[2], 1회수량[3], PT[4], 비고[5], RowNo[6], 최종목표수량[7]  ]
    _YMSCSListJMQtn, CSListSelectNo : integer; // 양매수 청산 종목 개수
//    _YMSCSListInfo : array[0..7,0..19] of string;  // 청산 리스트정보 [  종목코드[0], 현재가[1], 총주문수량[2], 1회수량[3], PT[4], 비고[5], RowNo[6], 최종목표수량[7]  ]
    _CSTotalQtn : array[0..9] of integer; // 청산 리스트 정보 중 종 주문할 수량

    _CSMainOrderTime ,_CSWGOrderTime , _CSMain1timeQtn, _CSWG1TimeQtn, _CSMainLastQtn, _CSWGLastQtn : integer; // 청산 시 메인종목과 외가 종목 주문 횟수, 최대  20회  , 마지막 나머지 주문 수량
    flg_ChungSan : boolean;
    _CSOrderedQty : array[0..9] of integer;  // 청산시 나머지 종목 주문 된 수량
    _OrdDone_flg : array[0..9] of boolean; // 나머지 종목들 주문 완료 여부
    CSContinueCNT : integer;
    CSContinueCNTTrigger : single;
    _CSBiYong : single; // 토탈비용, 셋트비용=단위비용 //청산 목록에 있는 종목 비용
    _CSJSUpTrigger, _CSJSDownTrigger, _CSBiYongTrgger : single; // 청산지수트리거상방, 청산지수트리거하방, 청산비용트리거
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

procedure TfYMS_CS.SaveUIValue; // 포지션 매매 화면의 최종값을 저장한다.
var nString : string;
    i,j : integer;
begin
  mmoSaveUIValue.clear;
  nString := '청산상방레벨:' + ldt청산UpJiSu.Text;
  mmoSaveUIValue.Lines.Add(nString);

  nString := '청산하방레벨:' + ldt청산DownJiSu.Text;
  mmoSaveUIValue.Lines.Add(nString);

  if ckbCSJSInOut.Checked then
    nString := '청산안쪽레벨:True'
  else nString := '청산안쪽레벨:False';
  mmoSaveUIValue.Lines.Add(nString);

  nString := '청산비용레벨:' + ldt청산비용Level.Text;
  mmoSaveUIValue.Lines.Add(nString);

  nString := '청산총수량:' + edtAll수량셋팅.Text;
  mmoSaveUIValue.Lines.Add(nString);

  nString := '청산단위수량:' + edt수량셋팅.Text;
  mmoSaveUIValue.Lines.Add(nString);

  // 여기서부터 양매수 청산 종목 저장
  for I := 0 to 9 do begin
    nString := '청산종목,' + intTostr(i) + ',';
    for j := 0 to 7 do begin
      nString := nString + stgCSList2.Cells[j,i] + ',';
    end;
    mmoSaveUIValue.Lines.Add(nString);
  end;

  nString := '청산시작:' + edtCSStartTime.Text;
  mmoSaveUIValue.Lines.Add(nString);

  nString := '청산끝:' + edtCSStopTime.Text;
  mmoSaveUIValue.Lines.Add(nString);

  nString := '외가위치:' + edtCSWGPosition.Text;
  mmoSaveUIValue.Lines.Add(nString);

  nString := ExtractFilePath(paramstr(0)) + 'YMSCSUIValue.ini'; // 포지션 매매
  mmoSaveUIValue.Lines.SaveToFile(nString);
end;

procedure TfYMS_CS.OpenUIValue; // 포지션 매매 화면의 최종값을 불러오기한다.
var nString : string;
    i,j : integer;
    nDataList : TStringList;   // 구분자에 의해 나누어진 string 배열
begin
  nDataList := TStringList.Create;
  nDataList.Delimiter := ','; // 구분자
  mmoSaveUIValue.Clear;
  nString := ExtractFilePath(paramstr(0)) + 'YMSCSUIValue.ini';
  mmoSaveUIValue.Lines.LoadFromFile(nString);

  for I := 0 to mmoSaveUIValue.Lines.Count -1 do
  begin
    nString := mmoSaveUIValue.Lines.Strings[i];
    if pos('청산상방레벨:',nString) > 0 then ldt청산UpJiSu.Text := copy(nString,8,Length(nString) - 7)
    else if pos('청산하방레벨:',nString) > 0 then ldt청산DownJiSu.Text := copy(nString,8,Length(nString) - 7)
    else if (pos('청산안쪽레벨:',nString) > 0) and (pos('True',nString) > 0) then
            ckbCSJSInOut.Checked := True
    else if (pos('청산안쪽레벨:',nString) > 0) and (pos('False',nString) > 0) then
            ckbCSJSInOut.Checked := False
    else if pos('청산비용레벨:',nString) > 0 then ldt청산비용Level.Text := copy(nString,8,Length(nString) - 7)
    else if pos('청산총수량:',nString) > 0 then edtAll수량셋팅.Text := copy(nString,7,Length(nString) - 6)
    else if pos('청산단위수량:',nString) > 0 then edt수량셋팅.Text := copy(nString,8,Length(nString) - 7)
    else if pos('청산종목',nString) > 0 then begin
      nDataList.DelimitedText := nString;
      for j := 2 to 7 do
        stgCSList2.Cells[j-2,strTointDef(nDataList[1],0)] := nDataList[j];

    end else if pos('청산시작:',nString) > 0 then edtCSStartTime.Text := copy(nString,6,Length(nString) - 5)
    else if pos('청산끝:',nString) > 0 then edtCSStopTime.Text := copy(nString,5,Length(nString) - 4)
    else if pos('외가위치:',nString) > 0 then edtCSWGPosition.Text := copy(nString,6,Length(nString) - 5);
  end;
end;

procedure TfYMS_CS.CSOrderInfoClear;
var i : integer;
begin
// 메인주문정보와 외가 주문 정보 초기화
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
      if nQtn < 0 then nQtn := strTointDef(edtAll수량셋팅.Text,0)* (-1)
      else  nQtn := strTointDef(edtAll수량셋팅.Text,0);
      stgCSList2.Cells[2,i] := intTostr(nQtn);
    end;
  end;
  edtCSSetQtn.Text := edtAll수량셋팅.Text;
  InsertCSValue;
end;

procedure TfYMS_CS.btnCSAutoStartClick(Sender: TObject);
var nString : string;
begin
  if MessageDlg('자동 매매 실행하겠습니까?',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    if flg_ChungSan and flg_ChungSan then begin
      ckbCSAutoMain.Enabled := False;
      ckbChungSanAutoOrder.Enabled := False;
      CSOrderInfoClear; // 메인종목과 외가종목의 주문 정보 초기화

      nString := formatdatetime('hhmmss',now) + '-자동청산 시작';
      mmoCSLog.Lines.Add(nString);
      btnCSAutoStart.Glyph.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Start_Red.bmp');
      ChungSan7;
    end else begin
      nString := formatdatetime('hhmmss',now) + '- 자동 청산 정지';
      mmoCSLog.Lines.Add(nString);
      ckbCSAutoMain.Enabled := True;
      ckbChungSanAutoOrder.Enabled := True;
      btnCSAutoStart.Glyph.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Start_Off.bmp');
      CSOrderInfoClear; // 메인종목과 외가종목의 주문 정보 초기화
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
  stgCSList2.Cells[4,nMinRow] := '0';  //최소가격은 현재가로 주문
  stgCSList2.Cells[5,nMinRow] := '외가'; // 가장 외가 지정
  _YMSCSListInfo[4,nMinRow] := '0';
  _YMSCSListInfo[5,nMinRow] := '외가';

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
  stgCSList2.Cells[4,nMaxRow] := '0';  //최대가격은 매도호가 -1 로 주문
  stgCSList2.Cells[5,nMaxRow] := '기준'; // 기준 종목 지정
  _YMSCSListInfo[4,nMaxRow] := '0';
  _YMSCSListInfo[5,nMaxRow] := '기준';

  nCSMain1TimeQtn := strTointDef(edt수량셋팅.Text,-1);
  snTemp :=  strTointDef(stgCSList2.Cells[2,nMaxRow],0) div nCSMain1TimeQtn ;
  nCSMain1TimeQtn := ABS(snTemp);
  nCSMainLastQtn :=  strTointDef(stgCSList2.Cells[2,nMaxRow],0) mod nCSMain1TimeQtn ;
  if ABS(nCSMainLastQtn) > 0 then nCSMain1TimeQtn := nCSMain1TimeQtn + 1;

  if nCSMain1TimeQtn > 500 then begin     //101
    showmessage('주문 횟수가 최대 500 넘을 수 없습니다.');
    exit;
  end;

  if nCSMain1TimeQtn < 501 then begin
    for I := 0 to stgCSList2.RowCount -1 do begin
      if stgCSList2.Cells[0,i] <> '' then begin
        nQtn := strTointDef(stgCSList2.Cells[2,i],-1);
        if ABS(nQtn) < ABS(strTointDef(edt수량셋팅.Text,0)) then begin
          stgCSList2.Cells[3,i] := stgCSList2.Cells[2,i];
        end else begin
          if nQtn < 0 then begin
            nQtn := strTointDef(edt수량셋팅.Text,0)* (-1);
          end else  nQtn := strTointDef(edt수량셋팅.Text,0);
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
  stgCSList2.Cells[1,nListPos] := Formatfloat('#0.00',_DWHSGListInfo[0,strTointDef(edtYMSCSAddJMRow.Text,-1)]) ;// 매도호가
  stgCSList2.Cells[2,nListPos] := ledtYMSSCTotalQtnAdd.Text ;// 총수량
  stgCSList2.Cells[3,nListPos] := ledtYMSSCUnitQtnAdd.Text ;// 1회 수량
  stgCSList2.Cells[4,nListPos] := '0';// 가격유형 // 00:지정가   03:시장가   05:조건부지정가   06:최유리지정가
  stgCSList2.Cells[6,nListPos] := edtYMSCSAddJMRow.Text;// Row 번호
  insertCSValue;
  gbYMSCSAdd.Visible := False;
end;

procedure TfYMS_CS.ChungSan7;  // 최고가는 매도하면 매도호가로 , 매수하면 매수호가로 => 채결되면 2~3번째 가격은 시장가, 최저가는 현재가로 주문... 결과 확인 안함.
var i : integer;
    nString : string;
    nWhile_flg : boolean; // while문 빠져나오는 플래그
    nTime_flg : boolean; // 거래시간 플래그
    nCSSignal_flg : boolean; //메인 종목 주문했는지 확인, 청산 조건이 맞는지
    MJAllOrdered_flg : boolean; //메인종목 전부 주문 완료했다는 플래그
    MJOrderInt : integer; // 메인종목 주문 간격
    nClientKey, JMNo, nMaxtime, Time_Out : integer; // 주문 순서 , 메인과 외가 중 주문 회수가 많은 것.
begin
{
//////// 2019. 02. 20 /////////////
///  1. 청산 조건 확인
///    1.1 선물지수와 비용을 동시 비교
///    1.2 조건 만족 지속시간 지정.  예) 0.5초
///  2. 청산 조건 시 청산 시작
///    2.1 외가 현재가로 주문
///    2.2 메인종목을 매도호가 -1틱으로 주문
///    2.3  2.1과 2.2를 1초(변경가능) 간격으로 반복 주문
///    2.4  주문된 리스트를 변수에 저장
///  3. 2.2 주문 후 체결확인 타이머 작동 ---------타이머 용도 : 메인 종목 체결 확인 및 나머지 시장가 주문
///    3.1 매인종목 체결 시 나머지 2종목 시장가 주문
///    3.2 외가 미체결 시장가 변경 처리
///    3.3 전체 체결 확인하여 청산 종료
///  4. 청산 중지나 문제 발생 시 미체결 취소
}

  nString := '[종목코드][주문수량][최종목표수량]' ;
  mmoCSLog.Lines.Add(nString);
  for I := 0 to 9 do begin     // 종목 최대 수량 20 종
    _CSOrderedQty[i] := 0; // 주문된 수량 초기화
    _OrdDone_flg[i] := False; // 나머지 종목 주문 완료 플레그
    //_YMSCSListInfo : array[0..7,0..19] of string;  // 청산 리스트정보 [  종목코드[0], 현재가[1], 총주문수량[2], 1회수량[3], PT[4], 비고[5], RowNo[6], 최종목표수량[7]  ]
    if _YMSCSListInfo[0,i] <> '' then begin
      nString := '['+_YMSCSListInfo[0,i] + '][' + _YMSCSListInfo[2,i] + '][' + _YMSCSListInfo[7,i] + ']  ';
      mmoCSLog.Lines.Add(nString);
    end;
  end;

//  nMainJMOrdered_flg := False;

  nWhile_flg := true;
  CSContinueCNT := 0;
  while nWhile_flg do // 구축수량이 완성되면 빠져나온다.........
  begin
    nTime_flg := True;
    nString := copy(formatdatetime('hhmmss',now),1,6);
    if (strTointDef(nString,0) < strTointDef(edtCSStartTime.Text,100000) )
      or (strTointDef(nString,0) > strTointDef(edtCSStopTime.Text,150000))then
        nTime_flg := False;

    if flg_ChungSan = False then
    begin
      CSStop;     // 청산 중지시 처리 함수
      exit; //
    end;

    nCSSignal_flg := False;

    // 지수와 비용 중 둘 중 하나만 걸려도 청산 시도.
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

    if (CSContinueCNT > (CSContinueCNTTrigger*100 - 1)) and (nTime_flg)  then begin // 10msec * 100번 = 1초
        nCSSignal_flg := true;
        nWhile_flg := False;
        if tmrAutoCSMainChange.Enabled = True then
              tmrAutoCSMainChange.Enabled := False;
    end else nCSSignal_flg := False;
    delay(10); // while문 동작 간격
  end;

  if nCSSignal_flg then begin

    tmrCSSubOrder.Enabled := True; // 종목개수가 3개 이상이면  나머지 종목들 처리 시작
    MJAllOrdered_flg := False;
//    MJOrderInt := Round(strTofloatDef(ledtMJOrderInt.Text,999)*1000) ; // delay(10)이여서 100을 곱함. 10msec * 100번 = 1초

    if _CSMainOrderTime > _CSWGOrderTime then
      nMaxtime := _CSMainOrderTime
    else nMaxtime := _CSWGOrderTime;

    JMNo := 0;
    for I := 0 to nMaxtime - 1 do begin

      if flg_ChungSan = False then begin
        MainJMMiCGCancel;
        WGJMMiCGCancel;
        tmrCSSubOrder.Enabled := False;
        CSStop;     // 청산 중지시 처리 함수
        exit;
      end;

      JMNo := JMNo + 1;
      if (_CSWGOrderTime > (JMNo-1)) then begin    // 18 > 17
        nClientKey := 22000000 + JMNo * 1000; // 외가 주문 Key
        CSWGOrder(nClientKey, _CSWG1TimeQtn); // 외가 종목 주문 한다.
        // 여기서 부터 주문 접수 확인
        Time_Out := 0;
        repeat
          if (Time_Out > 600000) OR (flg_ChungSan = false) then begin
            flg_ChungSan := False;
            CSStop;     // 청산 중지시 처리 함수
            exit;
          end;
          delay(10);
          inc(Time_Out);
        until _CSWGJMDataList[JMNo-1].OrderNo > 0;
      end;

      if (_CSMainOrderTime > (JMNo-1)) then begin   //4 > 3
        nClientKey := 11000000 + JMNo * 1000; // strToint(copy(nNow,3,6)); //11595999 // 메인 주문 Key
        CSMainOrder(nClientKey, _CSMain1timeQtn); // 메인 종목 주문 한다.
        // 여기서 부터 주문 접수 확인
        Time_Out := 0;
        repeat
          if (Time_Out > 600000) OR (flg_ChungSan = false) then begin
            flg_ChungSan := False;
            CSStop;     // 청산 중지시 처리 함수
            exit;
          end;
          delay(10);
          inc(Time_Out);
        until _CSJMDataList[JMNo-1].OrderNo > 0;
      end;

//      delay(MJOrderInt); // while문 동작 간격
    end;

    if flg_ChungSan = False then exit;

    if _CSWGLastQtn  <> 0 then  begin
      nClientKey := 22000000 + (JMNo+1) * 1000; // s외가 주문 Key
      CSWGOrder(nClientKey, _CSWGLastQtn); // 외가 종목 나머지 수량 주문 한다.
      // 여기서 부터 주문 접수 확인
      Time_Out := 0;
      repeat
        if (Time_Out > 600000) OR (flg_ChungSan = false) then begin
          flg_ChungSan := False;
          CSStop;     // 청산 중지시 처리 함수
          exit;
        end;
        delay(10);
        inc(Time_Out);
      until _CSWGJMDataList[JMNo].OrderNo > 0;
    end;
    delay(50);
    if _CSMainLastQtn <> 0 then  begin
      nClientKey := 11000000 + (JMNo+1) * 1000; // 메인 주문 Key
      CSMainOrder(nClientKey, _CSMainLastQtn); // 메인 종목 나머지 수량 주문 한다.
      // 여기서 부터 주문 접수 확인
      Time_Out := 0;
      repeat
        if (Time_Out > 600000) OR (flg_ChungSan = false) then begin
          flg_ChungSan := False;
          CSStop;     // 청산 중지시 처리 함수
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
    nMainJMOffsetQtn : integer ;// 기준 종목의 초기 수량
    nPriceType : integer;
//    nMainJMOrdered_flg : boolean;
begin
////////////////여기서부터 메인 종목 주문 시작//////////////////


  nOrgNo := 0; // 주문번호
  //  nQtn:= 0;
  for I := 0 to 9 do begin
    if (_YMSCSListInfo[5,i] = '기준') then begin
      if copy(_YMSCSListInfo[0,i],1,1) = '2' then nMainJMOffsetQtn := Round(DonbuJanGoListInfo[2,strTointDef(_YMSCSListInfo[6,i],-1)])     // 메인 종목의 처음 보유 수량
      else if copy(_YMSCSListInfo[0,i],1,1) = '3' then nMainJMOffsetQtn := Round(DonbuJanGoListInfo[6,strTointDef(_YMSCSListInfo[6,i],-1)]); // 메인 종목의 처음 보유 수량

      nPriceType := strTointDef(_YMSCSListInfo[4,i],0); // 가격 타입 ... 시장가, 지정가

      if nQtn < 0 then begin  // 매도이면...
        nGubun := 1;    //매도
        if copy(_YMSCSListInfo[0,i],1,1) = '2' then  begin
          nPrice := Round(_DWHSGListInfo[0,strTointDef(_YMSCSListInfo[6,i],-1)] * 100);      // 콜 매도 호가
          if nPrice > 999 then nPrice := nPrice - 5
          else nPrice := nPrice - 1;
        end else if copy(_YMSCSListInfo[0,i],1,1) = '3' then  begin
          nPrice := Round(_DWHSGListInfo[6,strTointDef(_YMSCSListInfo[6,i],-1)] * 100);      // 풋 매도 호가
          if nPrice > 999 then nPrice := nPrice - 5
          else nPrice := nPrice - 1;
        end;
      end else if nQtn > 0 then begin   // 매수이면...
        nGubun := 2; //매수
        if copy(_YMSCSListInfo[0,i],1,1) = '2' then  begin
          nPrice := Round(_DWHSGListInfo[1,strTointDef(_YMSCSListInfo[6,i],-1)] * 100);      // 콜 매수 호가
          if nPrice > 999 then nPrice := nPrice + 5
          else nPrice := nPrice + 1;
        end else if copy(_YMSCSListInfo[0,i],1,1) = '3' then  begin
          nPrice := Round(_DWHSGListInfo[5,strTointDef(_YMSCSListInfo[6,i],-1)] * 100);      // 풋 매수 호가
          if nPrice > 999 then nPrice := nPrice + 5
          else nPrice := nPrice + 1;
        end;
      end;

      if nQtn = 0 then begin
//        nMainJMOrdered_flg := True; //  메인 종목보다 타 종목이 많을 경우를 위해 처리 18.12.03
      end else begin
        //21 박현 if fHBOMain.DongbuAPI1.SendFOrder(nClientKey,Acnt,AcntPwd,nGubun,_YMSCSListInfo[0,i],nPriceType,ABS(nQtn),nPrice,nOrgNo) = false then
//        begin
//          nString := formatdatetime('hhmmss' , now) + '동부- 메인 청산 주문이 실패했습니다.';
//          mmoCSLog.Lines.Add(nString);
//          flg_ChungSan := False;
//
//          CSStop;     // 청산 중지시 처리 함수
//          ckbChungSanAutoOrder.Checked := False; // 구축 자동 주문 끄기
//          exit;
//        end else begin
////          nMainJMOrdered_flg := True;
//      //        nWhile_flg := False;
//          nString := formatdatetime('hhmmss' , now) + '[종목 '+_YMSCSListInfo[0,i] + '][수량 ' + intTostr(nQtn) + '][주문가 ' ;
//          nString := nString + formatfloat('#0.0#',nPrice * 0.01) + '][보유수량 ' + intTostr(nMainJMOffsetQtn) + ']';
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
    strWGCode : string; // 외가 종목 코드
    nPriceType : integer;
begin
// 1. 가장 외가 주문

  nOrgNo := 0; // 주문번호
//  nQtn:= 0;
  for I := 0 to 9 do begin
    if (_YMSCSListInfo[5,i] = '외가') then begin
      strWGCode := _YMSCSListInfo[0,i];
      nPriceType := strTointDef(_YMSCSListInfo[4,i],0); // 가격 타입 ... 시장가, 지정가

      if nQtn < 0 then begin  // 매도이면...
        nGubun := 1;    //매도
        if copy(_YMSCSListInfo[0,i],1,1) = '2' then  begin
          nPrice := Round(_DWHSGListInfo[0,strTointDef(_YMSCSListInfo[6,i],-1)] * 100);      // 콜 매도 호가
        end else if copy(_YMSCSListInfo[0,i],1,1) = '3' then  begin
          nPrice := Round(_DWHSGListInfo[6,strTointDef(_YMSCSListInfo[6,i],-1)] * 100);      // 풋 매도 호가
        end;
      end else if nQtn > 0 then begin   // 매수이면...
        nGubun := 2; //매수
        if copy(_YMSCSListInfo[0,i],1,1) = '2' then  begin
          nPrice := Round(_DWHSGListInfo[1,strTointDef(_YMSCSListInfo[6,i],-1)] * 100);      // 콜 매수 호가
        end else if copy(_YMSCSListInfo[0,i],1,1) = '3' then  begin
          nPrice := Round(_DWHSGListInfo[5,strTointDef(_YMSCSListInfo[6,i],-1)] * 100);      // 풋 매수 호가
        end;
      end;

      //21 박현 if fHBOMain.DongbuAPI1.SendFOrder(nClientKey,Acnt,AcntPwd,nGubun,strWGCode,nPriceType,ABS(nQtn),nPrice,nOrgNo) = false then
//      begin
//        nString := formatdatetime('hhmmss' , now) + '동부- 외가청산 주문이 실패했습니다.';
//        mmoCSLog.Lines.Add(nString);
//        flg_ChungSan := False;
//        CSStop;     // 청산 중지시 처리 함수
////        nWhile_flg := False;
//        ckbChungSanAutoOrder.Checked := False; // 구축 자동 주문 끄기
//        exit;
//      end else begin
////        nMainJMOrdered_flg := True;
//        nString := formatdatetime('hhmmss' , now) + '[종목 '+ strWGCode + '][수량 ' + intTostr(nQtn) + '][주문가 ' ;
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
  nString := formatdatetime('yymmdd hhmmss',now) + '-flg_AutoTrigerOrder = False, 자동주문빠져나옴.';
  mmoCSLog.Lines.Add(nString);
  stgCSList2.Enabled := True;
//  SpeedButton12.Enabled := True;
  btnCSQtnSetting.Enabled := True;
  edt수량셋팅.Enabled := True;
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
      stgWCSList.Cells[1,nWno] := '0'; // 호가 _JangoList[1,j];
      stgWCSList.Cells[2,nWno] := _JangoList[1,j]; // 총수량
      stgWCSList.Cells[3,nWno] := edt수량셋팅.text;// 1회량_JangoList[3,j];
      stgWCSList.Cells[4,nWno] := '3';// 시장가 ; _JangoList[4,j];
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

//  _CSDGPos := nDGPos; // 화살표로 위하래 종목 변경시 사용하기 위해
//  nWGPosition := nDGPos - nWGPos;
//  nHeangSaGa :=  _MaxHSG - nWGPosition*2.5 ;
//  stgCSList2.Cells[0,0] := '201' +_DCode + copy(formatfloat('#0.0',nHeangSaGa),1,3); // 주문번호 입력
//  stgCSList2.Cells[1,0] := Formatfloat('#0.00',_DWHSGListInfo[1,nWGPosition]) ;// 매수호가
//  stgCSList2.Cells[2,0] := nTotalQtn ;// 총수량
//  stgCSList2.Cells[3,0] := nUnitQtn ;// 1회 수량
//  stgCSList2.Cells[4,0] := '0';// 가격유형 // 00:지정가   03:시장가   05:조건부지정가   06:최유리지정가
//  stgCSList2.Cells[6,0] := intTostr(nWGPosition);// Row 번호
//
//  _YMSWeekCSListInfo
end;

procedure TfYMS_CS.InsertWeekCSValue;   //위클리 변수 삽입
var i,j, snTemp, nRow  : integer;
    strT : string; // 임시 변수
begin
  for I := 0 to 6 do begin   // 기준항목과 RowNo제외
    for j := 0 to 9 do begin
      _YMSWeekCSListInfo[i,j] := stgWCSList.Cells[i,j];
      if (i = 6) and (stgWCSList.Cells[0,j] <> '') then begin
        strT := stgWCSList.Cells[0,j];
        if (copy(strT,8,1) = '2') or (copy(strT,8,1) = '7') then  strT := copy(strT,6,3) + '.5'      // 선물지수를 기준으로 Row값이 달라질 수 있어서...
        else strT := copy(strT,6,3);
        nRow := Round((_MaxHSG - strTofloatDef(strT,0)) / 2.5);
        _YMSWeekCSListInfo[6,j] := intTostr(nRow);
        stgWCSList.Cells[6,j] := _YMSWeekCSListInfo[6,j];
      end else  if i = 2 then
        _CSTotalQtn[j] := strTointDef(stgWCSList.Cells[i,j],0);    // 준비 체크시 처음 총 수량을 따로 저장한다. 청산 총비용 계산용.
    end;
  end;

  /// 최종 보유하게 될 수량을 기록
  for I := 0 to 9 do begin
    if _YMSWeekCSListInfo[0,i] <> '' then begin  // 종목코드가 있으면..
      if copy(_YMSWeekCSListInfo[0,i],1,1) = '2' then begin // 콜이면...
        _YMSWeekCSListInfo[7,i] := intTostr(Round(DonbuJanGoListInfo[2,strTointDef(_YMSWeekCSListInfo[6,i],-1)]) + strTointDef(_YMSWeekCSListInfo[2,i],0)) ;//     intTostr(strTointdef(stg잔고.Cells[2,strTointDef(_YMSWeekCSListInfo[6,i],-1)],0) + strTointDef(_YMSWeekCSListInfo[2,i],0));
      end else if copy(_YMSWeekCSListInfo[0,i],1,1) = '3' then begin  /// 풋이면...
        _YMSWeekCSListInfo[7,i] := intTostr(Round(DonbuJanGoListInfo[6,strTointDef(_YMSWeekCSListInfo[6,i],-1)]) + strTointDef(_YMSWeekCSListInfo[2,i],0));//intTostr(strTointdef(stg잔고.Cells[6,strTointDef(_YMSWeekCSListInfo[6,i],-1)],0) + strTointDef(_YMSWeekCSListInfo[2,i],0));
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
  if MessageDlg('저장할꺼야????',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    nString := ExtractFilePath(paramstr(0)) + 'AutoMeaMeaMemo\자동청산-' + FormatDateTime('yymmdd hhmmss' , Now) + '.txt';
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
    // 비용계산
  YMSCSBYCal;
  // 여기서 부터는 상방하방 지수 기본값 삽입 등가의 2외가.
  edtCSBY.Text := formatfloat('0.00',_YMSTotalCSBY);
  edtCSSetBY.Text := formatfloat('0.00',_YMSUnitCSBY);

end;

procedure TfYMS_CS.InsertCSValue;
var i,j, snTemp, nRow  : integer;
    strT : string; // 임시 변수
begin
  for I := 0 to 6 do begin   // 기준항목과 RowNo제외
    for j := 0 to 9 do begin
      _YMSCSListInfo[i,j] := stgCSList2.Cells[i,j];
      if (i = 6) and (stgCSList2.Cells[0,j] <> '') then begin
        strT := stgCSList2.Cells[0,j];
        if (copy(strT,8,1) = '2') or (copy(strT,8,1) = '7') then  strT := copy(strT,6,3) + '.5'      // 선물지수를 기준으로 Row값이 달라질 수 있어서...
        else strT := copy(strT,6,3);
        nRow := Round((_MaxHSG - strTofloatDef(strT,0)) / 2.5);
        _YMSCSListInfo[6,j] := intTostr(nRow);
        stgCSList2.Cells[6,j] := _YMSCSListInfo[6,j];
      end else  if i = 2 then
        _CSTotalQtn[j] := strTointDef(stgCSList2.Cells[i,j],0);    // 준비 체크시 처음 총 수량을 따로 저장한다. 청산 총비용 계산용.
    end;
  end;

  /// 최종 보유하게 될 수량을 기록
  for I := 0 to 9 do begin
    if _YMSCSListInfo[0,i] <> '' then begin  // 종목코드가 있으면..
      if copy(_YMSCSListInfo[0,i],1,1) = '2' then begin // 콜이면...
        _YMSCSListInfo[7,i] := intTostr(Round(DonbuJanGoListInfo[2,strTointDef(_YMSCSListInfo[6,i],-1)]) + strTointDef(_YMSCSListInfo[2,i],0)) ;//     intTostr(strTointdef(stg잔고.Cells[2,strTointDef(_YMSCSListInfo[6,i],-1)],0) + strTointDef(_YMSCSListInfo[2,i],0));
      end else if copy(_YMSCSListInfo[0,i],1,1) = '3' then begin  /// 풋이면...
        _YMSCSListInfo[7,i] := intTostr(Round(DonbuJanGoListInfo[6,strTointDef(_YMSCSListInfo[6,i],-1)]) + strTointDef(_YMSCSListInfo[2,i],0));//intTostr(strTointdef(stg잔고.Cells[6,strTointDef(_YMSCSListInfo[6,i],-1)],0) + strTointDef(_YMSCSListInfo[2,i],0));
      end;
    end;
  end;

  _CSMainLastQtn := 0;
  _CSWGLastQtn := 0;
  _CSMainOrderTime := 0;
  _CSWGOrderTime := 0;


  for I := 0 to 9 do begin
    if _YMSCSListInfo[5,i] = '기준' then
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
    if _YMSCSListInfo[5,i] = '외가' then
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
//  lbCS완료msg.Visible := False;
  flg_ChungSan := False; //청산 flg
  if ckbChungSanAutoOrder.Checked = False then
  begin
    flg_ChungSan := False;
    nString := formatdatetime('hhmmss',now) + '-flg_AutoTrigerOrder := False, 자동청산체크 해제';
    mmoCSLog.Lines.Add(nString);
    ckbCSAutoMain.Enabled := True;
    tmrAutoCSMainChange.Enabled := False; // 자동 청산 메일종목 변경 해제
    stgCSList2.Enabled := True;
//    SpeedButton12.Enabled := True;
    btnCSQtnSetting.Enabled := True;
    edt수량셋팅.Enabled := True;
    btnCSAllQtnSetting.Enabled := True;
    exit;
  end;

  // 여기서 부터 설정값에 문제가 없는지 확인할 것.....
  // 종목 개수 확인...
  // 주 종목 확인과 해당 Row값 확인
  // 청산 가능수량 확인했는지...
  //
  nReadyflg := true;
  nReadyQtnflg := True;
  if strTofloatDef(ldt청산UpJiSu.Text,0) < 0.01 then nReadyflg := False;

  for I := 0 to stgCSList2.Rowcount -1 do begin
    if stgCSList2.Cells[0,i] <> '' then begin
      if ABS(strTointDef(stgCSList2.Cells[2,i], -1)) < ABS(strTointDef(stgCSList2.Cells[3,i], 0)) then nReadyQtnflg := False; // 총수량이 1회 주문 수량보다 작으면
    end;
  end;

  if nReadyflg = False then begin
    showmessage('설정이 뭔가 안맞아요.');
    ckbChungSanAutoOrder.Checked := False;
    exit;
  end;

  if nReadyQtnflg = False then begin
    showmessage('주문 수량 설정이 뭔가 안맞아요.');
    ckbChungSanAutoOrder.Checked := False;
    exit;
  end;

  stgCSList2.Enabled := False;
  btnCSQtnSetting.Enabled := False;
  edt수량셋팅.Enabled := False;
  btnCSAllQtnSetting.Enabled := False;
  ckbCSAutoMain.Enabled := False;

  InsertCSValue;

  // 비용계산
  YMSCSBYCal;
  // 여기서 부터는 상방하방 지수 기본값 삽입 등가의 2외가.
  edtCSBY.Text := formatfloat('0.00',_YMSTotalCSBY);
  edtCSSetBY.Text := formatfloat('0.00',_YMSUnitCSBY);

  // 실행 시 바로 청산 진행되어 버리는 설정값일 때 중지.(진입시간은 검토 안함)
  if ckbCSJSInOut.Checked then begin
    if ((strTofloatDef(SunMul,-11) < (_CSJSUpTrigger + 0.005)) and (strTofloatDef(SunMul,-11) > (_CSJSDownTrigger - 0.005))) or (_CSBiYong <  (_CSBiYongTrgger + 0.005)) then
    begin
      showmessage('바로 청산 진행되는 지수/비용 설정값입니다.');
      ckbChungSanAutoOrder.Checked := False;
      exit;
    end;
  end else begin
    if ((strTofloatDef(SunMul,-11) > (_CSJSUpTrigger - 0.005)) or (strTofloatDef(SunMul,-11) < (_CSJSDownTrigger +0.005))) or (_CSBiYong <  (_CSBiYongTrgger + 0.005)) then
    begin
      showmessage('바로 청산 진행되는 지수/비용 설정값입니다.');
      ckbChungSanAutoOrder.Checked := False;
      exit;
    end;
  end;

  if ckbCSAutoMain.Checked then
      tmrAutoCSMainChange.Enabled := true  // 자동 청산 메일종목 변경 타이머 동작
  else tmrAutoCSMainChange.Enabled := False;

  nString := formatdatetime('hhmmss',now) +  '-하방지수: ' + formatfloat('#0.00',_CSJSDownTrigger);
  nString := nString + ' 상방지수: ' + formatfloat('#0.00',_CSJSUpTrigger);
  mmoCSLog.Lines.Add(nString);
  nString := formatdatetime('hhmmss',now) + '-청산레벨: ' + formatfloat('#0.00',_CSBiYongTrgger);
  if rbtCSSetBiYong.Checked then
    nString := nString + ' 현재비용: ' + formatfloat('#0.00',_YMSUnitCSBY)
  else if rbtCSToTalBiYong.Checked then
    nString := nString + ' 현재비용: ' + formatfloat('#0.00',_YMSTotalCSBY);
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
  StringGrid7.Cells[0,0] := '종목코드';
  StringGrid7.ColWidths[0] := 90;
  StringGrid7.Cells[1,0] := ' 호  가';
  StringGrid7.Cells[2,0] := '총수량';
  StringGrid7.ColWidths[2] := 40;
  StringGrid7.Cells[3,0] := '1회량';
  StringGrid7.ColWidths[3] := 40;
  StringGrid7.Cells[4,0] := 'PT';
  StringGrid7.ColWidths[4] := 30;
  StringGrid7.Cells[5,0] := '비고';
  StringGrid7.ColWidths[5] := 30;
  StringGrid7.Cells[6,0] := 'Row';
  StringGrid7.ColWidths[6] := 30;

  stgCSList2.ColWidths[0] := 90;
  stgCSList2.ColWidths[2] := 40;
  stgCSList2.ColWidths[3] := 40;
  stgCSList2.ColWidths[4] := 30;
  stgCSList2.ColWidths[5] := 30;
  stgCSList2.ColWidths[6] := 30;

  StringGrid3.Cells[0,0] := '종목코드';
  StringGrid3.ColWidths[0] := 90;
  StringGrid3.Cells[1,0] := ' 호  가';
  StringGrid3.Cells[2,0] := '총수량';
  StringGrid3.ColWidths[2] := 40;
  StringGrid3.Cells[3,0] := '1회량';
  StringGrid3.ColWidths[3] := 40;
  StringGrid3.Cells[4,0] := 'PT';
  StringGrid3.ColWidths[4] := 30;
  StringGrid3.Cells[5,0] := '비고';
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
  StringGrid5.Cells[0,0] := ' 고객Key';
  StringGrid5.ColWidths[1] := 43;
  StringGrid5.Cells[1,0] := '주문No';
  StringGrid5.ColWidths[2] := 63;
  StringGrid5.Cells[2,0] := ' 종목코드';
  StringGrid5.ColWidths[3] := 28;
  StringGrid5.Cells[3,0] := '구분';
  StringGrid5.ColWidths[4] := 38;
  StringGrid5.Cells[4,0] := '주문가';
  StringGrid5.ColWidths[5] := 38;
  StringGrid5.Cells[5,0] := '주수량';
  StringGrid5.ColWidths[6] := 38;
  StringGrid5.Cells[6,0] := '체결가';
  StringGrid5.ColWidths[7] := 38;
  StringGrid5.Cells[7,0] := ' 체결';
  StringGrid5.ColWidths[8] := 38;
  StringGrid5.Cells[8,0] := '미체결';
  StringGrid5.ColWidths[9] := 42;
  StringGrid5.Cells[9,0] := '원번호';
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
  StringGrid2.Cells[0,0] := ' 고객Key';
  StringGrid2.ColWidths[1] := 43;
  StringGrid2.Cells[1,0] := '주문No';
  StringGrid2.ColWidths[2] := 63;
  StringGrid2.Cells[2,0] := ' 종목코드';
  StringGrid2.ColWidths[3] := 28;
  StringGrid2.Cells[3,0] := '구분';
  StringGrid2.ColWidths[4] := 38;
  StringGrid2.Cells[4,0] := '주문가';
  StringGrid2.ColWidths[5] := 38;
  StringGrid2.Cells[5,0] := '주수량';
  StringGrid2.ColWidths[6] := 38;
  StringGrid2.Cells[6,0] := '체결가';
  StringGrid2.ColWidths[7] := 38;
  StringGrid2.Cells[7,0] := ' 체결';
  StringGrid2.ColWidths[8] := 38;
  StringGrid2.Cells[8,0] := '미체결';
  StringGrid2.ColWidths[9] := 42;
  StringGrid2.Cells[9,0] := '원번호';
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

  CSContinueCNTTrigger := strTofloatDef(ledCSCNT.Text,0.5); // 구축신호가 몇초이상 지속되어야 되는지 설정.
  OpenUIValue;
  InsertCSValue;

  // 비용계산
  YMSCSBYCal;

  // 여기서 부터는 상방하방 지수 기본값 삽입 등가의 2외가.
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
  YMSCSBasicSetting(_PriceInfoDGPosition, strTointDef(edtCSWGPosition.Text,3), edtAll수량셋팅.Text, edt수량셋팅.Text);
end;

procedure TfYMS_CS.SpeedButton1Click(Sender: TObject);
begin
  YMSListAdd(_PriceInfoDGPosition, 0, ledtYMSSCTotalQtnAdd.Text, ledtYMSSCUnitQtnAdd.Text);
end;

procedure TfYMS_CS.YMSListAdd(nDGPos, nWGPos : integer; nTotalQtn, nUnitQtn : string);
var nHeangSaGa : single;
    I, nWGPosition : integer;
begin
  _CSDGPos := nDGPos; // 화살표로 위하래 종목 변경시 사용하기 위해
  nWGPosition := nDGPos - nWGPos;
  edtYMSCSAddJMRow.Text := intTostr(nWGPosition);// Row 번호
  nHeangSaGa :=  _MaxHSG - nWGPosition*2.5 ;
  if rdbYMSCSAddCall.Checked then begin
    ledtYMSCSJongMokAdd.Text := '201' +_DCode + copy(formatfloat('#0.0',nHeangSaGa),1,3); // 주문번호 입력
//    stgCSList2.Cells[1,nListPos] := Formatfloat('#0.00',_DWHSGListInfo[0,nWGPosition]) ;// 매도호가
//    stgCSList2.Cells[2,nListPos] := nTotalQtn ;// 총수량
//    stgCSList2.Cells[3,nListPos] := nUnitQtn ;// 1회 수량
//    stgCSList2.Cells[4,nListPos] := '0';// 가격유형 // 00:지정가   03:시장가   05:조건부지정가   06:최유리지정가
//    stgCSList2.Cells[6,nListPos] := edtYMSCSAddJMRow.Text;// Row 번호
  end else if rdbYMSCSAddPut.Checked then begin
    ledtYMSCSJongMokAdd.Text := '301' +_DCode + copy(formatfloat('#0.0',nHeangSaGa),1,3); // 주문번호 입력
//    stgCSList2.Cells[1,nListPos] := Formatfloat('#0.00',_DWHSGListInfo[0,nWGPosition]) ;// 매도호가
//    stgCSList2.Cells[2,nListPos] := nTotalQtn ;// 총수량
//    stgCSList2.Cells[3,nListPos] := nUnitQtn ;// 1회 수량
//    stgCSList2.Cells[4,nListPos] := '0';// 가격유형 // 00:지정가   03:시장가   05:조건부지정가   06:최유리지정가
//    stgCSList2.Cells[6,nListPos] := edtYMSCSAddJMRow.Text;// Row 번호
  end;
end;

procedure TfYMS_CS.SpeedButton4Click(Sender: TObject);
var nString : string;
begin
  if MessageDlg('자동 매매 중지하겠습니까?',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    flg_ChungSan := False;
    nString := formatdatetime('hhmmss',now) + '-자동청산 정지';
    mmoCSLog.Lines.Add(nString);
    ckbChungSanAutoOrder.Enabled := True;
    ckbChungSanAutoOrder.Checked := false;
    stgCSList2.Enabled := True;
    btnCSQtnSetting.Enabled := True;
    edt수량셋팅.Enabled := True;
    btnCSAllQtnSetting.Enabled := true;
    btnCSAutoStart.Glyph.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Start_Off.bmp');
  end;
end;

procedure TfYMS_CS.SpinButton10DownClick(Sender: TObject);
begin
  ldt청산비용Level.Text := formatfloat('#0.0#',(strTofloatDef(ldt청산비용Level.Text,0) - 0.01));
end;

procedure TfYMS_CS.SpinButton10UpClick(Sender: TObject);
begin
  ldt청산비용Level.Text := formatfloat('#0.0#',(strTofloatDef(ldt청산비용Level.Text,0) + 0.01));
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
      stgCSList2.Cells[0,i] := copy(nCode,1,5) + copy(formatfloat('#0.0',nHeangSaGa),1,3); // 주문번호 입력
      if copy(nCode,1,3) = '201' then begin
        if strTointDef(stgCSList2.Cells[2,i],0) > 0 then        // 매수
          stgCSList2.Cells[1,i] := Formatfloat('#0.00',_DWHSGListInfo[0,nRow]) // 매도호가
        else if strTointDef(stgCSList2.Cells[2,i],0) < 0 then        // 매도
          stgCSList2.Cells[1,i] := Formatfloat('#0.00',_DWHSGListInfo[1,nRow]); // 매수호가
      end else if copy(nCode,1,3) = '301' then begin
        if strTointDef(stgCSList2.Cells[2,i],0) > 0 then        // 매수
          stgCSList2.Cells[1,i] := Formatfloat('#0.00',_DWHSGListInfo[6,nRow]) // 매도호가
        else if strTointDef(stgCSList2.Cells[2,i],0) < 0 then        // 매도
          stgCSList2.Cells[1,i] := Formatfloat('#0.00',_DWHSGListInfo[5,nRow]); // 매수호가
      end;
      stgCSList2.Cells[6,i] := intTostr(nRow);// Row 번호
    end;
  end;

  InsertVerYMSCSJM;
  // 비용계산
  YMSCSBYCal;
  // 여기서 부터는 상방하방 지수 기본값 삽입 등가의 2외가.
  for i := 0 to 9 do begin
    if stgCSList2.Cells[5,i] ='기준'  then begin
      nRow := strTointDef(stgCSList2.Cells[6,i], _PriceInfoDGPosition);
      ldt청산UpJiSu.Text :=  formatfloat('0.#',_MaxHSG - (nRow - 2)*2.5);
      ldt청산DownJiSu.Text :=  formatfloat('0.#',_MaxHSG - (nRow + 2)*2.5);
      break;
    end;
  end;
  edtCSBY.Text := formatfloat('0.00',_YMSTotalCSBY);
  edtCSSetBY.Text := formatfloat('0.00',_YMSUnitCSBY);
  if rbtCSSetBiYong.Checked then ldt청산비용Level.Text :=  formatfloat('0.00',_YMSUnitCSBY - 0.4 ) // 0.4 낮게 설정
  else ldt청산비용Level.Text :=  formatfloat('0.00',_YMSTotalCSBY - 0.4 );
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
  ldt청산UpJiSu.Text := formatfloat('#0.0#',(strTofloatDef(ldt청산UpJiSu.Text,0) - 0.05));
end;

procedure TfYMS_CS.SpinButton8UpClick(Sender: TObject);
begin
  ldt청산UpJiSu.Text := formatfloat('#0.0#',(strTofloatDef(ldt청산UpJiSu.Text,0) + 0.05));
end;

procedure TfYMS_CS.SpinButton9DownClick(Sender: TObject);
begin
  ldt청산DownJiSu.Text := formatfloat('#0.0#',(strTofloatDef(ldt청산DownJiSu.Text,0) - 0.05));
end;

procedure TfYMS_CS.SpinButton9UpClick(Sender: TObject);
begin
  ldt청산DownJiSu.Text := formatfloat('#0.0#',(strTofloatDef(ldt청산DownJiSu.Text,0) + 0.05));
end;

procedure TfYMS_CS.YMSCSBasicSetting(nDGPos, nWGPos : integer; nTotalQtn, nUnitQtn : string);
var nHeangSaGa : single;
    I, nWGPosition : integer;
begin
  _CSDGPos := nDGPos; // 화살표로 위하래 종목 변경시 사용하기 위해
  nWGPosition := nDGPos - nWGPos;
  nHeangSaGa :=  _MaxHSG - nWGPosition*2.5 ;
  stgCSList2.Cells[0,0] := '201' +_DCode + copy(formatfloat('#0.0',nHeangSaGa),1,3); // 주문번호 입력
  stgCSList2.Cells[1,0] := Formatfloat('#0.00',_DWHSGListInfo[1,nWGPosition]) ;// 매수호가
  stgCSList2.Cells[2,0] := nTotalQtn ;// 총수량
  stgCSList2.Cells[3,0] := nUnitQtn ;// 1회 수량
  stgCSList2.Cells[4,0] := '0';// 가격유형 // 00:지정가   03:시장가   05:조건부지정가   06:최유리지정가
  stgCSList2.Cells[6,0] := intTostr(nWGPosition);// Row 번호

  nHeangSaGa :=  _MaxHSG - nDGPos*2.5 ;
  stgCSList2.Cells[0,1] := '201' +_DCode + copy(formatfloat('#0.0',nHeangSaGa),1,3); // 주문번호 입력
  stgCSList2.Cells[1,1] := Formatfloat('#0.00',_DWHSGListInfo[0,nDGPos]) ;// 매도호가
  stgCSList2.Cells[2,1] := '-' + nTotalQtn ;// 총수량
  stgCSList2.Cells[3,1] := '-' + nUnitQtn ;// 1회 수량
  stgCSList2.Cells[4,1] := '0';// 가격유형 // 00:지정가   03:시장가   05:조건부지정가   06:최유리지정가
  stgCSList2.Cells[6,1] := intTostr(nDGPos);// Row 번호

  nHeangSaGa :=  _MaxHSG-nDGPos*2.5 ;
  stgCSList2.Cells[0,2] := '301' +_DCode + copy(formatfloat('#0.0',nHeangSaGa),1,3); // 주문번호 입력
  stgCSList2.Cells[1,2] := Formatfloat('#0.00',_DWHSGListInfo[6,nDGPos]) ;// 매도호가
  stgCSList2.Cells[2,2] := '-' + nTotalQtn ;// 총수량
  stgCSList2.Cells[3,2] := '-' + nUnitQtn ;// 1회 수량
  stgCSList2.Cells[4,2] := '0';// 가격유형 // 00:지정가   03:시장가   05:조건부지정가   06:최유리지정가
  stgCSList2.Cells[6,2] := intTostr(nDGPos);// Row 번호

  nWGPosition := nDGPos + nWGPos;
  nHeangSaGa :=  _MaxHSG - nWGPosition*2.5 ;
  stgCSList2.Cells[0,3] := '301' +_DCode + copy(formatfloat('#0.0',nHeangSaGa),1,3); // 주문번호 입력
  stgCSList2.Cells[1,3] := Formatfloat('#0.00',_DWHSGListInfo[5,nWGPosition]) ;// 매수호가
  stgCSList2.Cells[2,3] := nTotalQtn ;// 총수량
  stgCSList2.Cells[3,3] := nUnitQtn ;// 1회 수량
  stgCSList2.Cells[4,3] := '0';// 가격유형 // 00:지정가   03:시장가   05:조건부지정가   06:최유리지정가
  stgCSList2.Cells[6,3] := intTostr(nWGPosition);// Row 번호

  InsertVerYMSCSJM;
  // 비용계산
  YMSCSBYCal;
  // 여기서 부터는 상방하방 지수 기본값 삽입 등가의 2외가.
  ldt청산UpJiSu.Text :=  formatfloat('0.#',_MaxHSG - (nDGPos - 2)*2.5);
  ldt청산DownJiSu.Text :=  formatfloat('0.#',_MaxHSG - (nDGPos + 2)*2.5);
  edtCSBY.Text := formatfloat('0.00',_YMSTotalCSBY);
  edtCSSetBY.Text := formatfloat('0.00',_YMSUnitCSBY);
  if rbtCSSetBiYong.Checked then ldt청산비용Level.Text :=  formatfloat('0.00',_YMSUnitCSBY - 0.4 ) // 10% 낮게 설정
  else ldt청산비용Level.Text :=  formatfloat('0.00',_YMSTotalCSBY - 0.4 );
end;

procedure TfYMS_CS.YMSCSBYCal;
var i : integer;
begin
  ///  1. 전역변수를 사용하여 총비용과 단위비용을 적용한다. 둘다 동시 계산한다.
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
      _YMSCSListInfo[1,i] := stgCSList2.Cells[1,i] ; //호가
      _YMSCSListInfo[2,i] := stgCSList2.Cells[2,i] ;//총수량
      _YMSCSListInfo[3,i] := stgCSList2.Cells[3,i] ; // 1회수량
      _YMSCSListInfo[4,i] := stgCSList2.Cells[4,i] ;// 시장가
      _YMSCSListInfo[5,i] := stgCSList2.Cells[5,i] ;//
      _YMSCSListInfo[6,i] := stgCSList2.Cells[6,i] ; //Row
      _YMSCSListJMQtn := _YMSCSListJMQtn + 1;
    end else begin
      _YMSCSListInfo[0,i] := '';
      _YMSCSListInfo[1,i] := '';//호가
      _YMSCSListInfo[2,i] := '';//총수량
      _YMSCSListInfo[3,i] := '';// 1회수량
      _YMSCSListInfo[4,i] := '';// 시장가
      _YMSCSListInfo[5,i] := '';//
      _YMSCSListInfo[6,i] := ''; //Row
    end;
  end;
end;

procedure TfYMS_CS.ldt청산DownJiSuChange(Sender: TObject);
begin
  _CSJSDownTrigger :=  strTofloatDef(ldt청산DownJiSu.Text,-999999);
//  mmoCSLog.Lines.Add('하방청산트리거지수: ' + formatfloat('#0.00',_CSJSDownTrigger));
end;

procedure TfYMS_CS.ldt청산UpJiSuChange(Sender: TObject);
begin
  _CSJSUpTrigger :=  strTofloatDef(ldt청산UpJiSu.Text,999999);
//  mmoCSLog.Lines.Add('상방청산트리거지수: ' + formatfloat('#0.00',_CSJSUpTrigger));
end;

procedure TfYMS_CS.ldt청산비용LevelChange(Sender: TObject);
begin
  _CSBiYongTrgger := strTofloatDef(ldt청산비용Level.Text,0);
//  mmoCSLog.Lines.Add('청산비용레벨: ' + formatfloat('#0.00',_CSBiYongTrgger));
end;

procedure TfYMS_CS.ledCSCNTChange(Sender: TObject);
begin
  CSContinueCNTTrigger := strTofloatDef(ledCSCNT.Text,0.5); // 구축신호가 몇초이상 지속되어야 되는지 설정.
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
  // 수량 부호에 따라 색 지정, 매수 빨깡, 매도 파랑
  with stgCSList2 do
  begin
    iY := Rect.Top + 2;
    intValue := strTointDef(Cells[2,ARow],0);
    // 셀 별 어브젝트가 설정되었는지 확인
    if Assigned(Objects[ACol, ARow]) then
    begin
      // 색을 셀에 채우기
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
  // 수량 부호에 따라 색 지정, 매수 빨깡, 매도 파랑
  with stgWCSList do
  begin
    intValue := strTointDef(Cells[2,ARow],0);
    // 셀 별 어브젝트가 설정되었는지 확인
    if Assigned(Objects[ACol, ARow]) then
    begin
      // 색을 셀에 채우기
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
  // 1. 최대값과 최소값을 구한다.
  // 2. 최대값과 최소값을 변수에 저장한다.
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
  stgCSList2.Cells[4,nMinRow] := '0';  //최소가격은 현재가로 주문
  stgCSList2.Cells[5,nMinRow] := '외가'; // 가장 외가 지정

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
  stgCSList2.Cells[4,nMaxRow] := '0';  //최대가격은 매도호가 -1 로 주문
  stgCSList2.Cells[5,nMaxRow] := '기준'; // 기준 종목 지정

  InsertCSValue;
  tmrAutoCSMainChange.Enabled := True;
end;

procedure TfYMS_CS.MainJMMiCGCancel;
var i : integer;
    nClientKey, nOrgNo, nNCGQtn, nPrice, nPriceType, nGubun : integer;
    nString : string;
begin
///  여기서부터 메인종목 미체결 처리
  for I := 0 to 499 do begin
    if _CSJMDataList[i].OrderNo <> 0 then begin
      nOrgNo := _CSJMDataList[i].OrderNo;
      nNCGQtn := _CSJMDataList[i].MCGQtn;
      nPrice := round(_CSJMDataList[i].JMPrice * 100);
      if (nNCGQtn > 0) and (nOrgNo > 0) then begin
        nPriceType := 0; // 지정가
        nClientKey :=  99999999;
        nGubun := 4;
        //21 박현 if fHBOMain.DongbuAPI1.SendFOrder(nClientKey,Acnt,AcntPwd,nGubun,_CSJMDataList[i].JMCode,nPriceType,nNCGQtn,nPrice,nOrgNo) = false then
//        begin
//          nString := formatdatetime('hhmmss' , now) + '동부-메인 종목 미체결 취소 주문이 실패했습니다.';
//          mmoCSLog.Lines.Add(nString);
//          exit;
//        end else begin
//          nString := formatdatetime('hhmmss' , now) + '메인종목 ' + _CSJMDataList[i].JMCode + ' 미체결 취소 처리';
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
///  여기서부터 메인종목 미체결 처리
  for I := 0 to 499 do begin
    if _CSWGJMDataList[i].MCGQtn > 0 then begin
      nOrgNo := _CSWGJMDataList[i].OrderNo;
      nQtn := _CSWGJMDataList[i].MCGQtn;
      nPrice := round(_CSWGJMDataList[i].JMPrice * 100);
      if (nQtn > 0) and (nOrgNo > 0) then begin
        nPriceType := 3; // 시장가
        nClientKey :=  99999999;
        nGubun := 4;   // 취소
        //21 박현 if fHBOMain.DongbuAPI1.SendFOrder(nClientKey,Acnt,AcntPwd,nGubun,_CSWGJMDataList[i].JMCode,nPriceType,nQtn,nPrice,nOrgNo) = false then
//        begin
//          nString := formatdatetime('hhmmss' , now) + '동부-외가 종목' + _CSWGJMDataList[i].JMCode + ' 미체결 취소 주문이 실패했습니다.';
//          mmoCSLog.Lines.Add(nString);
//          flg_ChungSan := False;
//          CSStop;     // 청산 중지시 처리 함수
//          ckbChungSanAutoOrder.Checked := False; // 청산 자동 주문 끄기
//          exit;
//        end else begin
//          nString := formatdatetime('hhmmss' , now) + '외가종목 ' + _CSWGJMDataList[i].JMCode + '주문번호:' + intTostr(nOrgNo) + '  미체결 주문 취소 처리';
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
    nMainCGSum, nMainAllQtn, nMainMCGSum : integer; //메인종목 전체 체결수량, 총주문 수량, 총 미체결 수량
    nQtn1time : array[0..9] of integer; // 1회 주문 수량
    nAllOrder_OK :  boolean;
    nClientKey, nMainCGQtn, nWGCGQtn, nJMQtn : integer; // 외가 시장가 변경 위한 변수
begin
///  1. 매인 종목 체결된 수량 만큼 나머지 수량 주문 한다.
///  2. 전체 주문이 끝 났는지 체크한다.
///  3. 전체 주문이 끝나면 외가주문을 시장가로 변경한다.
///  4. 주문이 중지되면 미체결된 종목들 주문 취소한다.
  tmrCSSubOrder.Enabled := False;

  if flg_ChungSan = False then begin
    MainJMMiCGCancel;
    WGJMMiCGCancel;
    tmrCSSubOrder.Enabled := False;
    CSStop;     // 청산 중지시 처리 함수
    exit;
  end;

  nJMQtn := 0;  // 종목 개수가 2개 이하이면 SubTimer 처리 안하게 하려고...
  for I := 0 to 9 do      // 종목 최대 수량 20 종
    if _YMSCSListInfo[0,i] <> '' then nJMQtn := nJMQtn + 1;

  nMainCGSum := 0;
  nMainAllQtn := 0;
  nMainMCGSum := 0;
  for I := 0 to 499 do begin
    // 메인주문 체결 수량 합계를 구한다.
    if _CSJMDataList[i].JMKey <> 0 then begin
      nMainCGQtn := ABS(_CSJMDataList[i].JMQtn) - _CSJMDataList[i].MCGQtn;
      nWGCGQtn :=  ABS(_CSWGJMDataList[i].JMQtn) - _CSWGJMDataList[i].MCGQtn;
      nWGCGQtn := nMainCGQtn - nWGCGQtn;// 매인 체결 수량 - 외가 체결 수량  5-3= 2...... 3-5= -2
      if nWGCGQtn > 0 then begin
        WGJMMiCGModify(i, nWGCGQtn); // 메인 체결 수랴이 외가 체결 수량보다 많으면 외가 시장가 변경하여 체결한다.
      end;
      nMainAllQtn := nMainAllQtn + ABS(_CSJMDataList[i].JMQtn);  // 주문 수량합
      nMainMCGSum := nMainMCGSum + ABS(_CSJMDataList[i].MCGQtn); // 미체결 수량 합.
    end else break;
  end;

  nMainCGSum := nMainAllQtn - nMainMCGSum; // 메인 종목 체결 수량 = 주문수량합 - 미체결 수량 합.

  if nJMQtn > 2 then begin
    nQtn := 0;
    for I := 0 to 9 do begin   // 청산리스트 종목들 중 메인과 외가를 제외한 종목 들 주문.
      if (_YMSCSListInfo[5,i] <> '기준') and (_YMSCSListInfo[5,i] <> '외가') and (_YMSCSListInfo[0,i] <> '') then begin
        if ABS(strTointdef(_YMSCSListInfo[2,i],0)) > _CSOrderedQty[i] then begin                                       // 총 목표 수량보다 주문된 수량이 작으면
          nQtn1time[i] := strTointDef(_YMSCSListInfo[3,i],0);// == 1회 수량 (부호 있음)        ;//// 청산 리스트정보 [  종목코드[0], 현재가[1], 총수량[2], 1회수량[3], PT[4], 비고[5], RowNo[6]  ]
          nQtn :=  nMainCGSum - _CSOrderedQty[i]; // 메인종목 체결 수량 - 해당 종목 주문된 수량 = 주문해야 하는 수량
          if nQtn > ABS(nQtn1time[i]) then nQtn := ABS(nQtn1time[i]);
          if (ABS(strTointdef(_YMSCSListInfo[2,i],0)) - _CSOrderedQty[i]) < nQtn then nQtn := (ABS(strTointdef(_YMSCSListInfo[2,i],0)) - _CSOrderedQty[i]); // 전체 수량 - 주문된 수량 = 잔여 수량, 현재 1회 주문수량보다 작으면 변경.
          if nQtn > 0 then begin
            nOrgNo := 0; // 주문번호
            nPriceType := strTointDef(_YMSCSListInfo[4,i],-1); // PT 가격타입
            nClientKey :=  99999999;
            if strTointDef(_YMSCSListInfo[3,i],0) < 0 then nGubun := 1    //매도
            else if strTointDef(_YMSCSListInfo[3,i],0) > 0 then nGubun := 2; //매수
            nPrice := Round(strTofloatDef(_YMSCSListInfo[1,i],0) * 100);

            //21 박현 if fHBOMain.DongbuAPI1.SendFOrder(nClientKey,Acnt,AcntPwd,nGubun,_YMSCSListInfo[0,i],nPriceType,nQtn,nPrice,nOrgNo) = false then
//            begin
//              showmessage('동부-주문이 실패했습니다.') ;
//              nString := formatdatetime('hhmmss' , now) + '동부-주문이 실패했습니다.';
//              mmoCSLog.Lines.Add(nString);
//              flg_ChungSan := False;
//              CSStop;     // 청산 중지시 처리 함수
//              ckbChungSanAutoOrder.Checked := False; // 구축 자동 주문 끄기
//              exit;
//            end else begin
//              _CSOrderedQty[i] := _CSOrderedQty[i] + nQtn;
//              nString := formatdatetime('hhmmss' , now) + '[종목 '+_YMSCSListInfo[0,i] + '][수량 ' + intTostr(nQtn) + '][주문가 ' ;
//              nString := nString + formatfloat('#0.0#',nPrice * 0.01)  + ']';
//              mmoCSLog.Lines.Add(nString);
//            end;
          end;
        end else if _CSOrderedQty[i] <> 0 then _OrdDone_flg[i] := True; // 주문 완료 됬는지 확인
      end;
    end;


    nAllOrder_OK := True;
    for I := 0 to 9 do begin
      if (_YMSCSListInfo[5,i] <> '기준') and (_YMSCSListInfo[5,i] <> '외가') and (_YMSCSListInfo[0,i] <> '') then
        if _OrdDone_flg[i] = False then nAllOrder_OK := False;
    end;
  end else nAllOrder_OK := True;

  if nAllOrder_OK and (nMainMCGSum = 0) and (nMainAllQtn > 0) then begin // 나머지 종목의 모든 주문이 완료 되고 메인종목 미체결이 0이면
    // 외가 종목 미체결을 시장가로 변경
//    WGJMMiCGCancel;
    CSCompleteProcess; // 완료 표시와 문자 등 처리
    tmrCSSubOrder.Enabled := False;
  end;
  tmrCSSubOrder.Enabled := True;
end;

procedure TfYMS_CS.tmrYMSCSPriceTimer(Sender: TObject);
var i, nRowNo : integer;
    strJMCode, strYMonthCode, strOldHoga, strNewHoga : string;
    nMMType : string; // 매수 매도 확인
begin
  tmrYMSCSPrice.Enabled := False;
  ///  1. 월물 확인
  for i := 0 to stgCSList2.RowCount -1 do begin
    strJMCode := _YMSCSListInfo[0,i];
    if strJMCode <> '' then begin
      strYMonthCode := copy(strJMCode, 4,2); ///  2. 종목 중 월물 확인
      nRowNo := strTointDef(_YMSCSListInfo[6,i],-1);  ///  3. Row번호 확인
      nMMType := copy(_YMSCSListInfo[2,i],1,1);   ///  4. 매수, 매도 확인 - 이거나 숫자이거나.
      strOldHoga := _YMSCSListInfo[1,i]; // 기존 호가 확인
      if strYMonthCode = _DCode then begin //당월 코드이면
        if (copy(strJMCode,1,3) = '201') then begin   // 콜이면
          if (nMMType = '-') then strNewHoga := formatfloat('#0.00',_DWHSGListInfo[1,nRowNo])
          else strNewHoga := formatfloat('#0.00',_DWHSGListInfo[0,nRowNo]);
        end else if (copy(strJMCode,1,3) = '301') then begin // 풋이면
          if (nMMType = '-') then strNewHoga := formatfloat('#0.00',_DWHSGListInfo[5,nRowNo])
          else strNewHoga := formatfloat('#0.00',_DWHSGListInfo[6,nRowNo]);
        end;
      end else if strYMonthCode = _CWCode then begin //차월 코드이면
        if (copy(strJMCode,1,3) = '201') then begin   // 콜이면
          if (nMMType = '-') then strNewHoga := formatfloat('#0.00',_CWHSGListInfo[1,nRowNo])
          else strNewHoga := formatfloat('#0.00',_DWHSGListInfo[0,nRowNo]);
        end else if (copy(strJMCode,1,3) = '301') then begin // 풋이면
          if (nMMType = '-') then strNewHoga := formatfloat('#0.00',_CWHSGListInfo[5,nRowNo])
          else strNewHoga := formatfloat('#0.00',_DWHSGListInfo[6,nRowNo]);
        end;
      end else if strYMonthCode = _CCWCode then begin //차차월 코드이면
        if (copy(strJMCode,1,3) = '201') then begin   // 콜이면
          if (nMMType = '-') then strNewHoga := formatfloat('#0.00',_CCWHSGListInfo[1,nRowNo])
          else strNewHoga := formatfloat('#0.00',_DWHSGListInfo[0,nRowNo]);
        end else if (copy(strJMCode,1,3) = '301') then begin // 풋이면
          if (nMMType = '-') then strNewHoga := formatfloat('#0.00',_CCWHSGListInfo[5,nRowNo])
          else strNewHoga := formatfloat('#0.00',_DWHSGListInfo[6,nRowNo]);
        end;
      end else if strYMonthCode = _WWCode then begin //원월 코드이면
        if (copy(strJMCode,1,3) = '201') then begin   // 콜이면
          if (nMMType = '-') then strNewHoga := formatfloat('#0.00',_WWHSGListInfo[1,nRowNo])
          else strNewHoga := formatfloat('#0.00',_DWHSGListInfo[0,nRowNo]);
        end else if (copy(strJMCode,1,3) = '301') then begin // 풋이면
          if (nMMType = '-') then strNewHoga := formatfloat('#0.00',_WWHSGListInfo[5,nRowNo])
          else strNewHoga := formatfloat('#0.00',_DWHSGListInfo[6,nRowNo]);
        end;
      end;
      if strOldHoga <> strNewHoga then begin
        _YMSCSListInfo[1,i] := strNewHoga;   ///  5. 다르면 표기
        stgCSList2.Cells[1,i] := strNewHoga;
        // 비용계산
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
  edt수량셋팅.Enabled := True;
  btnCSAllQtnSetting.Enabled := True;

  ckbChungSanAutoOrder.Enabled := True;
  ckbChungSanAutoOrder.Checked := false;
  btnCSAutoStart.Glyph.LoadFromFile(ExtractFilePath(paramstr(0)) + 'Start_Off.bmp');

  /// 최종 보유하게 될 수량을 체크
//  delay(1000); // 1초가 대기 후 주문 완료 확인
//  bAllQtnCheck := True;
  nString := formatdatetime('hhmmss' , now) + ' 청산완료';
  mmoCSLog.Lines.Add(nString);
  nString := '[종목코드], [현재가], [총주문수량], [1회수량], [PT4], [비고], [RowNo], [최종목표수량]';
  mmoCSLog.Lines.Add(nString);
  for I := 0 to 9 do begin
    if _YMSCSListInfo[0,i] <> '' then begin  // 종목코드가 있으면..
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
///  여기서부터 메인종목 미체결 처리

  if _CSWGJMDataList[nNo].MCGQtn > 0 then begin
    nPreMCGQtn :=  _CSWGJMDataList[nNo].MCGQtn;
//    if _CSWGJMDataList[nNo].WJMNo > 0 then
//      nOrgNo := _CSWGJMDataList[nNo].WJMNo
//    else nOrgNo := _CSWGJMDataList[nNo].OrderNo;
    nOrgNo := _CSWGJMDataList[nNo].OrderNo;
    nPrice := round(_CSWGJMDataList[nNo].JMPrice * 100);
    if (nQtn > 0) and (nOrgNo > 0) then begin
      nPriceType := 3; // 시장가
      nClientKey :=  nOrgNo;
      nGubun := 3;   // 정정
      //21 박현 if fHBOMain.DongbuAPI1.SendFOrder(nClientKey,Acnt,AcntPwd,nGubun,_CSWGJMDataList[nNo].JMCode,nPriceType,nQtn,nPrice,nOrgNo) = false then
//      begin
//        nString := formatdatetime('hhmmss' , now) + '동부-외가 종목' + _CSWGJMDataList[i].JMCode + ' 미체결 정정 주문이 실패했습니다.';
//        mmoCSLog.Lines.Add(nString);
//        flg_ChungSan := False;
//        CSStop;     // 청산 중지시 처리 함수
//        ckbChungSanAutoOrder.Checked := False; // 청산 자동 주문 끄기
//        exit;
//      end else begin
//        _CSWGJMDataList[nNo].MCGQtn := nPreMCGQtn - nQtn;     // 외가 미체결 = 기존 미체결 - 현재 주문..
//        _CSWGJMDataList[nNo].CGQtn := _CSWGJMDataList[nNo].JMQtn - _CSWGJMDataList[nNo].MCGQtn; // 외가 체결= 외가 주문수량 - 미체결 수량; 동부 API에서 받지 않고 시장가 주문이므로 그냥 적용. 체결 가격은 모른다. 시장가 이기 때문
//        _CSWGIndex := nNo;
//        nString := formatdatetime('hhmmss' , now) + '외가종목 ' + _CSWGJMDataList[nNo].JMCode + '주문번호:' + intTostr(nOrgNo) + '  미체결 시장가 처리';
//        mmoCSLog.Lines.Add(nString);
//      end;
    end;
  end;
end;

//{ TCSOrderThread } // 청산시 메인주문과 외가 주문의 정보를 화면에 뿌리는 쓰레드
//
//procedure TCSOrderThread.Execute;
//begin
//  inherited;
//  FreeOnTerminate := True; // Terminate함수가 호출되면 스스로를 해제시킴. FormDestory 참조
//  while Not Terminated do
//  begin
//    // SyncRx함수를 동기화하여 실행한다.
//    // 쓰레드에서 VCL를 직접 엑세스하면 오류가 발생한다.
//    // 그래서 Synchronize라는 쓰레드 함수를 이용하여 함수를 대신 호출하는 기능을 한다.
//    Synchronize(SyncRx); // synchronize사용하면 함수내 while 문 동작 시 다른 작업이 안될 수 있다.
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

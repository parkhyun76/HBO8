unit uDevelop;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  VclTee.TeeGDIPlus, VCLTee.TeEngine, VCLTee.Series, VCLTee.TeeProcs,
  VCLTee.Chart;

type
  TTestThread = class(TThread)   // 월별 현재가 불러온 값 화면 표시
    public

    protected
      procedure Execute; override;
      procedure SyncRx;
    end;

  TfDevelop = class(TForm)
    Memo1: TMemo;
    Button52: TButton;
    Button55: TButton;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Button3: TButton;
    Label3: TLabel;
    Button4: TButton;
    Button5: TButton;
    Timer1: TTimer;
    Memo2: TMemo;
    Button6: TButton;
    Edit1: TEdit;
    Label4: TLabel;
    Button7: TButton;
    Button8: TButton;
    Memo3: TMemo;
    Button9: TButton;
    Label5: TLabel;
    Button10: TButton;
    Timer2: TTimer;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button52Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button55Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
  private
    { Private declarations }
    TestThread1 : TTestThread;    // 쓰레드 정의
  public
    { Public declarations }

    procedure VisibleChanging; override;
  end;

var
  fDevelop: TfDevelop;
    textarray : array[0..9999] of string;
    intarray : array[0..9999] of single;
    strThread : string; // 쓰레드 변수 테스트
    intThread : integer; //쓰레드 테스트 변수
    _AVGChartStep : integer;

implementation
uses uHBO2_Main;
{$R *.dfm}

function CaseString(Src : string; TagList: array of string): Integer;
var i: integer;
begin
	Result:=-1;
	for i:=0 to Length(TagList)-1 do
	begin
		if CompareText(Src, TagList[i]) = 0 then
		begin
			Result:=i;
			Break;
		end;
	end;
end;

function CaseStringInt(Src : integer; TagList: array of integer): Integer;
var i: integer;
begin
	Result:=-1;
	for i:=0 to Length(TagList)-1 do
	begin
		if Src =TagList[i] then
		begin
			Result:=i;
			Break;
		end;
	end;
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

procedure TfDevelop.Button10Click(Sender: TObject);
begin
//  intThread := 0;
//  if TestThread1.Suspended = true then TestThread1.Resume
//  else TestThread1.Suspend;
end;

procedure TfDevelop.Button1Click(Sender: TObject);
var nString : string;
begin
  nString := ExtractFilePath(paramstr(0)) + '개발내용메모.txt';
  Memo1.Lines.LoadFromFile(nString);
end;

procedure TfDevelop.Button2Click(Sender: TObject);
begin
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//	유안타증권 Open API 입력코드 예제입니다.
//	[160001] 선물옵션주문 - 입력블록
  fHBOMain.YouantaFOOrder(Acnt,AcntPwd,'2','M','201RB395','1','0','1','S');//acc,pwd,매도/매수,지정가/시장가,종목코드,주문수량,주문가격,선물/옵션,주문조건
end;

var  _MaxData, _MinData, _NowData : single;

procedure TfDevelop.Button3Click(Sender: TObject);
var
  i: Integer;
begin
  _MaxData := -999;
  _MinData := 999999999999999;
 for i := 0 to 9999 do begin
  textarray[i] := formatfloat('00000000',i*10000);
  intarray[i] := i*10000;
 end;
 showmessage('끝');
end;

procedure TfDevelop.Button4Click(Sender: TObject);
var index, i : integer;
begin
  label3.Caption := '0';
//  delay(1000);
  label1.Caption := formatdatetime('hhmmsszzz',now);

  for I := 0 to Length(intarray) -1 do  begin

    if _MaxData < intarray[i] then begin
      _MaxData := intarray[i] ;
    end;
    if _MinData > intarray[i] then begin
      _MinData := intarray[i];
    end;
  end;




//  index := CaseStringint(99990000,intarray);
  label3.Caption := intTostr(index);
  label2.Caption := formatdatetime('hhmmsszzz',now);
end;

procedure TfDevelop.Button52Click(Sender: TObject);
var nString : string;
begin
  if MessageDlg('저장할꺼야????',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    nString := ExtractFilePath(paramstr(0)) + '개발내용메모.txt';
    Memo1.Lines.SaveToFile(nString);
  end;
end;

procedure TfDevelop.Button55Click(Sender: TObject);
begin
  Memo1.Clear;
end;

procedure TfDevelop.Button7Click(Sender: TObject);
var nSingle, nSunMul, nMaxHSG : single;
    i : integer;
    nString : string;
begin

  nSunMul := strTofloatDef(Edit1.Text,0);
  nSingle :=nSunMul - 2.5 * Trunc(nSunMul/2.5) ;
  if nSingle < 1.25 then  nSingle := (nSunMul - nSingle)
    else  nSingle := (nSunMul - nSingle) + 2.5;
  nMaxHSG := nSingle + 75;
  // _JWCode, _DCode, _CWCode, _CCWCode, _WWCode
  Memo2.Clear;
  for I := 0 to 65 do begin
    nString := '201' + _DCode + formatfloat('0.#',nMaxHSG - i*2.5);
    nString := copy(nString,1,8);
    Memo2.Lines.Add(nString);
    nString := '301' + _DCode + formatfloat('0.#',nMaxHSG - i*2.5);
    nString := copy(nString,1,8);
    Memo2.Lines.Add(nString);
  end;

  for I := 0 to 65 do begin
    nString := '201' + _CWCode + formatfloat('0.#',nMaxHSG - i*2.5);
    nString := copy(nString,1,8);
    Memo2.Lines.Add(nString);
    nString := '301' + _CWCode + formatfloat('0.#',nMaxHSG - i*2.5);
    nString := copy(nString,1,8);
    Memo2.Lines.Add(nString);
  end;
  for I := 0 to 65 do begin
    nString := '201' + _CCWCode + formatfloat('0.#',nMaxHSG - i*2.5);
    nString := copy(nString,1,8);
    Memo2.Lines.Add(nString);
    nString := '301' + _CCWCode + formatfloat('0.#',nMaxHSG - i*2.5);
    nString := copy(nString,1,8);
    Memo2.Lines.Add(nString);
  end;
  for I := 0 to 65 do begin
    nString := '201' + _WWCode + formatfloat('0.#',nMaxHSG - i*2.5);
    nString := copy(nString,1,8);
    Memo2.Lines.Add(nString);
    nString := '301' + _WWCode + formatfloat('0.#',nMaxHSG - i*2.5);
    nString := copy(nString,1,8);
    Memo2.Lines.Add(nString);
  end;
end;

procedure TfDevelop.Button8Click(Sender: TObject);
var i : integer;
begin
//  for I := 0 to 65 do begin
//    Memo3.Lines.Add(_DWJMList[i*2]);
//    Memo3.Lines.Add(_DWJMList[i*2+1]);
//  end;
//  for I := 0 to 65 do begin
//    Memo3.Lines.Add(_CWJMList[i*2]);
//    Memo3.Lines.Add(_CWJMList[i*2+1]);
//  end;
//  for I := 0 to 65 do begin
//    Memo3.Lines.Add(_CCWJMList[i*2]);
//    Memo3.Lines.Add(_CCWJMList[i*2+1]);
//  end;
//  for I := 0 to 65 do begin
//    Memo3.Lines.Add(_WWJMList[i*2]);
//    Memo3.Lines.Add(_WWJMList[i*2+1]);
//  end;
end;

procedure TfDevelop.Button9Click(Sender: TObject);
begin
//  Label5.Caption := formatfloat('#0.',DWHSGListInfo[3,30]) + formatfloat('#0.0#',DWHSGListInfo[2,30]);
  _DongBuNowPriceCode := '20903275';// + _DCode + copy(formatfloat('#0.0',_MaxHSG-i*2.5),1,3); // 콜 옵션
//21 박현   fHBOMain.DongbuAPI1.ReqOptionHoga(_DongBuNowPriceCode);
end;

procedure TfDevelop.FormClose(Sender: TObject; var Action: TCloseAction);
var nBoolean : boolean;
begin
//  nBoolean := TestThread1.Terminated;
  action := Cafree;
//  action := CaHide;
end;

procedure TfDevelop.FormCreate(Sender: TObject);
begin
  _AVGChartStep := 0;
//  TestThread1 := TTestThread.Create(True); // 쓰레드 생성, 실행은 안함
end;

procedure TfDevelop.VisibleChanging;
begin
 // inherited;
end;

procedure TfDevelop.Timer2Timer(Sender: TObject);
begin
  Label3.Caption := strThread;
end;

procedure TfDevelop.Timer3Timer(Sender: TObject);
begin
end;

{ TRecieveAPIThread }

procedure TTestThread.Execute;
begin
  inherited;
  FreeOnTerminate := True; // Terminate함수가 호출되면 스스로를 해제시킴. FormDestory 참조
  while Not Terminated do
  begin
    // SyncRx함수를 동기화하여 실행한다.
    // 쓰레드에서 VCL를 직접 엑세스하면 오류가 발생한다.
    // 그래서 Synchronize라는 쓰레드 함수를 이용하여 함수를 대신 호출하는 기능을 한다.
    Synchronize(SyncRx); // synchronize사용하면 함수내 while 문 동작 시 다른 작업이 안될 수 있다.
//    Sleep(1);
    WaitForSingleObject(handle, 300);
  end;
end;

procedure TTestThread.SyncRx;
var nInt, i : integer;
    strTemp : string;
begin
  try
//    strThread := formatdatetime('hhmmss',now);
    intThread := intThread + 1;
    strThread := intTostr(intThread);
  except

  end;
end;

end.

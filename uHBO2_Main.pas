///----------------------------  다음 할 일    --------------------------------///
///  메인창과 sub 창으로 구분
///  1. 메인 창에 API 넣고 받은 메세지를 바로 전달만 함.
///  2. sub 창에서 받은 메세지를 처리 함.
/// ---------------------------///
unit uHBO2_Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, System.UITypes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.OleCtrls, Math, ComObj, DateUtils,
  Vcl.Menus, Vcl.StdCtrls, Vcl.CheckLst, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Grids,
  VclTee.TeeGDIPlus, VCLTee.TeEngine, VCLTee.Series, VCLTee.TeeProcs, MaskUtils ,
  VCLTee.Chart, Vcl.ExtDlgs, Vcl.Imaging.jpeg, Vcl.WinXCtrls, Vcl.Buttons,
  MMSystem, Vcl.OleServer,
  Vcl.Samples.Spin, System.ImageList, Vcl.ImgList, Vcl.ToolWin, YuantaCOMLib_TLB;

type
  TfHBOMain = class(TForm)
    StatusBar1: TStatusBar;
    tmrNow: TTimer;
    mmoSetting: TMemo;
    TrayIcon1: TTrayIcon;
    MainMenu1: TMainMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    N6: TMenuItem;
    N11: TMenuItem;
    N21: TMenuItem;
    N31: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N19: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    Timer1: TTimer;
    N1: TMenuItem;
    N2: TMenuItem;
    N25: TMenuItem;
    N110: TMenuItem;
    N26: TMenuItem;
    N32: TMenuItem;
    N41: TMenuItem;
    N51: TMenuItem;
    N27: TMenuItem;
    N61: TMenuItem;
    N28: TMenuItem;
    N29: TMenuItem;
    N30: TMenuItem;
    N33: TMenuItem;
    N71: TMenuItem;
    N81: TMenuItem;
    N91: TMenuItem;
    N101: TMenuItem;
    N111: TMenuItem;
    N121: TMenuItem;
    N34: TMenuItem;
    N210: TMenuItem;
    N35: TMenuItem;
    N211: TMenuItem;
    N36: TMenuItem;
    N42: TMenuItem;
    N52: TMenuItem;
    N62: TMenuItem;
    N72: TMenuItem;
    N82: TMenuItem;
    N92: TMenuItem;
    N102: TMenuItem;
    N112: TMenuItem;
    N122: TMenuItem;
    N131: TMenuItem;
    N141: TMenuItem;
    N151: TMenuItem;
    N161: TMenuItem;
    N37: TMenuItem;
    Panel1: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    Label33: TLabel;
    Label8: TLabel;
    lbeDBAcc: TLabel;
    SpeedButton1: TSpeedButton;
    pnlTitle: TPanel;
    btnPyungGaChongEak: TButton;
    Button35: TButton;
    Button42: TButton;
    Button7: TButton;
    cbbDongBuAcc: TComboBox;
    cbbName: TComboBox;
    ckbSuEic: TCheckBox;
    dtpNowTime: TDateTimePicker;
    dtpToday: TDateTimePicker;
    edtDMonth: TEdit;
    edtDongBuPW: TEdit;
    edtJanJonDate: TEdit;
    edtKP200: TEdit;
    edtSMCMDJL: TEdit;
    edtSMCMSJL: TEdit;
    edtSMSMS: TEdit;
    edtSunMul: TEdit;
    edtSunMulDyungLak: TEdit;
    stgJyungGuaKyumHyunHwang: TStringGrid;
    UpDown1: TUpDown;
    Button1: TButton;
    Button2: TButton;
    mmoSaveUIValue: TMemo;
    sbnPriceUpdate: TSpeedButton;
    tmrSuEic: TTimer;
    N5: TMenuItem;
    YuantaAPI1: TYuantaAPI;
    procedure N4Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure N23Click(Sender: TObject);
    procedure DongbuAPI1Connected(ASender: TObject; hDongbuApi: Integer);
    procedure DongbuAPI1Disconnected(Sender: TObject);
    procedure DongbuAPI1ReceiveData(ASender: TObject; nReqID: Integer;
      const szMsgCode, szMsg, szData: WideString);
    procedure DongbuAPI1ReceiveRTData(ASender: TObject; const szName, szField,
      szData: WideString);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure TrayIcon1DblClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure cbbNameChange(Sender: TObject);
    procedure edtDMonthChange(Sender: TObject);
    procedure N110Click(Sender: TObject);
    procedure N26Click(Sender: TObject);
    procedure N32Click(Sender: TObject);
    procedure N41Click(Sender: TObject);
    procedure N51Click(Sender: TObject);
    procedure N27Click(Sender: TObject);
    procedure N61Click(Sender: TObject);
    procedure N28Click(Sender: TObject);
    procedure N29Click(Sender: TObject);
    procedure N30Click(Sender: TObject);
    procedure N33Click(Sender: TObject);
    procedure N71Click(Sender: TObject);
    procedure N81Click(Sender: TObject);
    procedure N91Click(Sender: TObject);
    procedure N101Click(Sender: TObject);
    procedure N111Click(Sender: TObject);
    procedure N121Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure N210Click(Sender: TObject);
    procedure N35Click(Sender: TObject);
    procedure N211Click(Sender: TObject);
    procedure N36Click(Sender: TObject);
    procedure N42Click(Sender: TObject);
    procedure N52Click(Sender: TObject);
    procedure N62Click(Sender: TObject);
    procedure N72Click(Sender: TObject);
    procedure N82Click(Sender: TObject);
    procedure N92Click(Sender: TObject);
    procedure N102Click(Sender: TObject);
    procedure N112Click(Sender: TObject);
    procedure N122Click(Sender: TObject);
    procedure N131Click(Sender: TObject);
    procedure N141Click(Sender: TObject);
    procedure N151Click(Sender: TObject);
    procedure N161Click(Sender: TObject);
    procedure N37Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N31Click(Sender: TObject);
    procedure Panel1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BasicFrameOpen;
    procedure N24Click(Sender: TObject);
    procedure SpeedButton1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure sbnPriceUpdateClick(Sender: TObject);
    procedure Button35Click(Sender: TObject);
    procedure tmrSuEicTimer(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure YuantaAPI1Login(ASender: TObject; nResult: Integer;
      const bstrMsg: WideString);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure YuantaAPI1ReceiveData(ASender: TObject; nReqID: Integer;
      const bstrDSOID: WideString);
    procedure YuantaAPI1ReceiveRealData(ASender: TObject; nReqID: Integer;
      const bstrAutoID: WideString);
    function YouantaFOOrder(nACC, nPWD, nJumun_Gubun, nMeme_gubun, nJMCode, // 유안타 선물옵션 주문
      nQtn, nPrice, nJang_gubun, nFutu_ord_if: string) : integer;
  private
    procedure AppException(Sender: TObject; E: Exception);
    procedure DBSOJuMun(nData: WideString);
    procedure DongbuJango_Parshing(nData: WideString; ASender: TObject);
    procedure DongbuCheaGul_Parshing(nData: WideString);
    procedure DonbuPoungga_Parshing(nData: WideString);
    procedure DongbuSusuRyu_Parshing(nData: WideString);
    procedure DBOAbleQty(nData: WideString);
    procedure DongbuOptionHoGa_Parshing(nData: WideString);
    procedure DongbuRTSunMul(nszField, nData: WideString);
    procedure DBRTSMHG(nszField, nData: WideString);
    procedure DongbuRTNowPrice(nszField, nData: WideString);
    procedure DongbuRTOption5HG(nszField, nData: WideString);
    procedure DongbuRTSunOpCheaGeal_Parshing(nszField, nData: WideString);
    procedure DongbuRTJango_Parshing(nData: WideString);
    procedure PyungGaChongEak;
    procedure DongBuSunOpJanGo;
    procedure DongBuSunOpPyungGaJango;
    procedure DongbuHG전광판(index: integer; nszField: string;
      nDataArray: array of string);
    procedure Dongbu5HG전광판(index: integer; nszField: string;
      nDataArray: array of string);
    procedure Dongbu전광판(index: integer; nszField: string;
      nDataArray: array of string);
    procedure pOptionManki(nDateTime: TdateTime);
    procedure DongbuSunMulHoGa_Parshing(nData: WideString);
    procedure Dongbu잔고(index: integer; nszField: string;
      nDataArray: array of string);
    procedure YearMonthCode;
    procedure DongbuHGCCW전광판(index: integer; nszField: string;
      nDataArray: array of string);
    procedure DongbuHGCW전광판(index: integer; nszField: string;
      nDataArray: array of string);
    procedure DongbuHGWW전광판(index: integer; nszField: string;
      nDataArray: array of string);
    procedure DongbuCW전광판(index: integer; nszField: string;
      nDataArray: array of string);
    procedure DongbuCCW전광판(index: integer; nszField: string;
      nDataArray: array of string);
    procedure DongbuWW전광판(index: integer; nszField: string;
      nDataArray: array of string);
    procedure Dongbu5HGCCW전광판(index: integer; nszField: string;
      nDataArray: array of string);
    procedure Dongbu5HGCW전광판(index: integer; nszField: string;
      nDataArray: array of string);
    procedure Dongbu5HGWW전광판(index: integer; nszField: string;
      nDataArray: array of string);
    procedure PGSCSMain체결List(index: integer; nDataArray: array of string);
    procedure PGSCSWG체결List(index: integer; nDataArray: array of string);
    procedure MainOpenUIValue;
    procedure MainSaveUIValue;
    procedure TSCallCGList1(index: integer; nDataArray: array of string);
    procedure TSCallCGList2(index: integer; nDataArray: array of string);
    procedure TSPutCGList1(index: integer; nDataArray: array of string);
    procedure TSPutCGList2(index: integer; nDataArray: array of string);
    procedure YMSGC체결List(index: integer; nDataArray: array of string);
    procedure WeeklyHG전광판(index: integer; nszField: string;
      nDataArray: array of string);
    procedure CustomExceptionHandler(Sender: TObject; E: Exception);
    procedure YuantaJuMun(strOrderNo: WideString);



    { Private declarations }

  public
    { Public declarations }
    procedure VisibleChanging; override;
  end;


const
  nszNameList: array[0..12]of String = ('S31','S32','X22','SC0','SH0','SH2','OC0' ,'OH0','OH2','XF2','XF3','XX1','XX2');

type
  BTJM = record // 배팅 주문에 필요한 변수
    JMKey : integer;
    OrderNo : integer;
    JMCode : string[8];
    MMGB : integer; // 매매구분
    JMPrice : single ; // 주문가
    JMQtn : integer; //주문수량
    CGPrice : single ;// 체결가
    CGQtn : integer; // 체결수량
    MCGQtn : integer;// 미체결 수량
    WJMNo : integer; // 원주문번호
    UH : string[20]; // 유형 - 용도 모름
  end;

  CGInfo = record // 체결정보 저장
    JMKey : integer;
    OrderNo : integer;
    JMCode : string[8];
    MMGB : string[3]; // 매매구분
    JMPrice : single ; // 주문가
    JMQtn : integer; //주문수량
    CGPrice : single ;// 체결가
    CGQtn : integer; // 체결수량
    MCGQtn : integer;// 미체결 수량
    WJMNo : integer; // 원주문번호
    AccNo : string[17]; // 계좌번호
  end;

  YMDList = record // 양매도 종목 저장 변수
    JMCode : string[8];
    MIPrice : single; // 매입가
    HGPrice : single ; // 호가
    TTQtn : integer; // 토탈수량
    UnitQtn : integer ;// 1회주문 수량
    PriceType : integer; // 가격 타입, 시장가=3, 지정가=0
    ReMark : string[2];// 비고, 신규, 보유
    RowNo : integer; // Row번호
  end;

var
  fHBOMain: TfHBOMain;
    // 동부 수신 변수 모음
    DongbuRecieve_Type : Integer; //수신항목 1:계좌조회, 2: 평가액조회, 3:잔고 4:미정...
    DongbuSunMulHoGaDataLenArray : array[0..53] of integer = (1,7,7,7,7,7,7,7,7,7,8,7,7,7,8,6,7,1,7,6,4,6,7,4,6,7,4,6,7,4,6,7,4,6,7,7,6,4,7,6,4,7,6,4,7,6,4,7,6,4,5,6,6,5);
    DongbuSunMulHoGaDataArry : array[0..53] of string;
    DongbuOptionHoGaDataLenArray1 : array[0..48] of integer = (1,7,7,7,7,7,7,7,7,7,8,7,7,7,8,6,8,7,2,7,7,20,7,7,4,7,7,4,7,7,4,7,7,4,7,7,7,7,4,7,7,4,7,7,4,7,7,4,6);//옵션호가 데이터 변수길이
    DongbuOptionHoGaDataLenArray2 : array[0..48] of integer = (1,7,7,7,7,7,7,7,7,7,8,7,7,7,8,6,8,7,2,7,7,26,7,7,4,7,7,4,7,7,4,7,7,4,7,7,7,7,4,7,7,4,7,7,4,7,7,4,6);//옵션호가 데이터 변수길이
    DongbuOptionHoGaDataLenArray3 : array[0..48] of integer = (1,7,7,7,7,7,7,7,7,7,8,7,7,7,8,6,8,7,2,7,7,30,7,7,4,7,7,4,7,7,4,7,7,4,7,7,7,7,4,7,7,4,7,7,4,7,7,4,6);//옵션호가 데이터 변수길이
    DongbuOptionHoGaDataArry : array[0..53] of string;
    DongbuRTJangoDataArry : array[0..26] of string;  //실시간잔고수신데이터변수
    DongbuRTJangoDataLenArry : array[0..26] of Integer = (20,20,15,3,15,15,6,6,6,6,6,1,12,15,15,3,8,15,15,15,15,15,15,15,15,15,15);// 실시간잔고수신데이터의 각각 길이
    DongbuRTNowPriceDataArry : array[0..84] of string; // 실시간 옵션 현재가 데이터 변수
//    DongbuRTNowPriceDataLenArry : array[0..84] of Integer = (8,3,6,6,7,7,6,6,7,7,6,6,7,7,6,6,6,6,7,7,7,7,8,8,11,1,7,7,7,7,6,6,7,7,6,6,4,4,4,4,4,5,4,4,4,4,4,4,7,7,7,7,7,7,7,7,6,7,7,7,4,4,4,4,4,4,4,4,4,4,"7",6,6,9,9,7,9,7,7,8,7,5,1,7,7);// 실시간 옵션 현재가 정보
    DongbuRTNowPriceDataLenArry : array[0..84] of Integer = (8,3,6,6,7,7,6,6,7,7,6,6,7,7,6,6,6,6,7,7,7,7,8,8,11,1,7,7,7,7,6,6,7,7,6,6,4,4,4,4,4,5,4,4,4,4,4,4,7,7,7,7,7,7,7,7,6,7,7,7,4,4,4,4,4,4,4,4,4,4,8,6,6,9,9,7,9,7,7,8,7,5,1,7,7);// 실시간 옵션 현재가 정보
    DongbuRTOption5HGDataArry : array[0..46] of string; // 실시간 옵션 호가(5호가)변수
    DongbuRTOption5HGDataLenArry : array[0..46] of Integer = (8,3,7,7,6,6,7,7,6,6,7,7,6,6,6,6,6,7,7,6,6,7,7,6,6,4,4,4,4,4,5,4,4,4,4,4,5,4,4,4,4,4,4,4,4,4,4); // 실시간 옵션호가 데이터 길이
    DongbuRTSunOpCheGealDataArry : array[0..27] of string; // 실시간 옵션 체결 데이터 변수 -> 동부API.doc 메뉴얼과다름.
    DongbuRTSunOpCheGealDataLenArry : array[0..27] of Integer = (20,3,17,9,20,9,15,3,2,2,2,1,4,15,12,15,15,12,12,12,15,15,2,12,3,40,10,50);
    DBSOJuMunDataArray : array[0..4] of string; // 선옵 주문
    DBSOJuMunDataLenArray : array[0..4] of Integer = (4,8,9,6,100); // 선옵주문 데이터 변수 길이
    DongbuJangoDataArryO : array[0..8] of string;  //잔고수신처음부분(종합)데이터변수
    DongbuJangoDataLenArryO : array[0..8] of Integer = (17,17,17,17,17,17,9,4,1);  //잔고수신처음부분(종합)데이터변수길이
    DongbuJangoDataArryG : array[0..24] of string;//  잔고수신데이터의 실제 데이터부분(보유 종목수에 따라 레코드 수가 달라짐)
    DongbuJangoDataLenArryG : array[0..24] of integer = (15,3,3,15,15,15,15,15,12,6,15,9,15,15,12,6,6,6,6,1,15,3,15,15,15);// 변수길이
    DongbuPounggaDataArry : array[0..13] of string;  //
    DongbuPounggaDataLenArry : array[0..13] of Integer = (15 ,15,15,15,15,14,15,14,15,14,15,14,15,15);
    DongbuSusuRyuDataArry : array[0..2] of string;  //수수료, 평가예탁금총액
    DongbuSusuRyuDataLenArry : array[0..2] of Integer = (15,15,15);
    DongbuRTSunMulDataArry : array[0..74] of string; // 동부 실시간 선물가격
    DongbuRTSunMulDataLenArry : array[0..74] of Integer = (8,2,6,7,7,7,7,7,7,11,1,7,7,6,7,7,6,6,7,7,6,6,7,7,6,6,6,6,7,7,6,6,7,7,6,6,4,4,4,4,4,5,4,4,4,4,4,5,7,7,6,7,7,7,7,7,4,4,4,4,4,4,4,4,4,4,7,7,7,9,9,9,1,7,7);
    DongbuRTSH0DataArry : array[0..47] of string; // 동부 실시간 선물호가
    DongbuRTSH0DataLenArry : array[0..47] of Integer = (8,2,7,7,6,6,7,7,6,6,7,7,6,6,6,6,6,7,7,6,6,7,7,6,6,4,4,4,4,4,5,4,4,4,4,4,5,4,4,4,4,4,4,4,4,4,4,7);
    SunMulJonmokCode : string ; //선물종목코드
    DongbuCheaGulDataArryO : array[0..3] of string;  //당일 채결(종합) 데이터변수
    DongbuCheaGulDataLenArryO : array[0..3] of Integer = (100,4,4,5);  //당일 채결(종합) 데이터변수길이
    DongbuCheaGulDataArryG : array[0..11] of string;  //당일 채결 데이터변수
    DongbuCheaGulDataLenArryG : array[0..11] of Integer = (9,9,15,3,8,6,15,15,13,15,15,40);  //당일 채결 데이터변수길이


    DonbuJanGoListInfo : array[0..8,0..65] of Single;// 양매수 청산에 사용...당월물 잔고 데이터 9*51  행렬 처리

    // uHBO2_Main에 가지고 있어야 할 변수
    _deposits_flg : boolean; // 증거금 블래그  Fasle는 문제없음...True는 증거금 부족
    _First_Activate :boolean; // 처음실행 여부..

    YearCode : string;
    delay_stop_flg : boolean;
//    _CurrentTime : integer; // 현재 시각 저장용

    Acnt ,AcntPwd : string; // 계좌번호, 비밀번호
    ManKi, ManKiDate : string; // 옵션 만기월, 만기일

    //여기서부터는 잔고 저장 변수
    _JangoList : array[0..5,0..49] of string; // 잔고 리스트   종목, 수량, 매매가, 현재가,매도/매입, 미체결
    _JangoJMQtn : integer; // 보유 종목 개수

    /////////////////////
    SuEik, SuEikRyul, GCSunMul, CSSunMul, MokPyoBiYong : string;
    GCSMSMessage : string; // 구축 문자 보낼 메세지.
    HandleDongbuApi : integer;
    _CManKi, _CCManki, _WManki : string; // 차월, 차차월, 원월 (201902, 201903, 201904)

    // ReceiveData에 들어 왔다는 플래그 (RT 아님)
    _JMRecieveflg, _JGRecieveflg, _CGReceiveflg, _CGQtnReceiveflg, _OHReceiveflg : integer; // _JMRecieveflg = 주문 접수, _JGRecieveflg = 잔고 , _CGReceiveflg = 체결리스트, _CGQtnReceiveflg=청산가능수량, _OHReceiveflg = 옵션호가
    _JGIndex : integer; // 잔고인덱스
    _OrdAblQty : array[0..2] of string; // 주문/청산 가능수량  [종목코드,주문가능수량, 청산가능수량]
    // RTReceiveData
    _SunMulRTflg, _SunMulRTHGflg,  _OTNowRTflg, _OT5HGRTflg, _JGRTflg : integer;// _SunMulRTflg=선물실시간 , _OTNowRTflg = 옵션실시간현재가, _OT5HGRTflg = 옵션5호가실시간, _SOCGRTflg= 선옵체결실시간, _JGRTflg=잔고실시간

    // 체결관련 변수

    _CGRTReceiveflg : integer; // 실시간 선옵체결,

    /// 여기서 부터는 모든 체결을 저장하는 변수
    AllCGInfo : array[0..9999] of CGInfo;    // 추세 매매에 사용
    AllOrderNo : array[0..9999] of integer;    // function CaseInt를 이용하여 해당 주문번호 위치 찾기
    LastONIndex : integer; // 마지막에 저장된 OrderNoIndex
    _CSDataArray : array[0..9] of string; //주문번호, 종목코드, 매매구분, 주문가격,주문량,체결가격, 체결수량, 미체결량, 원주문번호, 유형
    _JuMunQtnError_flg, _JuMunOK_flg : integer; // -2,-1,0,1,2, 주문이 정상적으로 접수되어서.. OrderNo가 0 이상이면 들어오면

    //양매수 구축 변수
    _YMSGCCGList : array[0..3] of BTJM;
    _YMSGCOrderNo : array[0..3] of integer;
    _SunMulRTChartflg : array[0..19] of boolean; // 양매수 차트용 변수로 선물현재가 입력 확인
    _SunMulRTChartStep : integer;

    // 양매수 청산 변수
    _CSJMDataList, _CSWGJMDataList : array[0..499] of BTJM; // 500회 까지 저장 가능, 청산주문데이터 리스트, 청산외가주문데이터... 배팅주문 구조체 사용.
    _MJOrderNo : array[0..499] of integer; // 최대 500회 청산시 메인종목목 외가종목 오더넘버 리스트
    _WGOrderNo : array[0..499] of integer;

    // 타임스프레드 변수
    _TimeCallInfo1, _TimeCallInfo2, _TimePutInfo1, _TimePutInfo2 : array[0..102] of BTJM;    // 0,1,2는 가격 찾는 용도로 사용
    _TimeCallOrderNo1, _TimeCallOrderNo2, _TimePutOrderNo1, _TimePutOrderNo2 : array[0..102] of integer; //오더넘버 리스

    // 등가양매도 변수
    _YMDList : array[0..3] of YMDList; // 양매도 종목들, 실제 양매도 자동 매매에 사용됨
    _YMDJMDataList: array[0..3] of BTJM; // 양매도 배팅주문 구조체 사용.
    _YMDNewBY, _YMDOldBY, _YMDRatio : single;
    // 만기월별 코드
    _MonthCode, _YearNow, _JWCode, _DCode, _CWCode, _CCWCode, _WWCode : string;
    _MaxHSG : single; //최고행사가 지정 ,기본 395
    _DWHSGListInfo, _CWHSGListInfo, _CCWHSGListInfo, _WWHSGListInfo : array[0..8,0..65] of Single;// 당월물 가격 정보 데이터 12*65  행렬 처리
    _DongBuNowPriceCode, _DongBuSunMulCode : string; // 키움 복수현재가를 동부로 변경하면서 만든 변수.
    _DWRTIndex, _CWRTIndex, _CCWRTIndex, _WWRTIndex, _WeeklyRTIndex : array[0..65] of boolean; // 옵션 가격 정보 받을 때 화면에 해당 종목만 갱신하기 위한 변수

    _WeeklyPriceListInfo : array[0..2,0..65] of Single;// 위클리 가격 정보 데이터
    _WeeklyMonthCode, _WeeklyNowPriceCode : string;

    _HeangSaGaList : array[0..65] of string; // 66개
     _IndexJG :  integer; // 행사가 리스트 인덱스, 잔고 인덱스
     _PriceInfoDGPosition, _PriceInfoWPosition : integer; // 등가와 외가 위치
     SunMul, DyungLak, KP200: string;
     _SMCMDJL, _SMCMSJL, _SMSMS : integer; // 선물총매도잔량, 선물총매수잔량, 선물순매수잔량

     //추세 매매용
//     _ema_aMin1  : single = 0.0198019801980;       //100평  2/(n+1)  2/(100+1)
//     _ema_aMin2  : single = 0.0165289256198;       //120평
//     _ema_aMid1  : single = 0.0019980019980;       //1000평
//     _ema_aMid2  : single = 0.0016652789342;       //1200평
//     _ema_aMax1  : single = 0.0003999200160;       //5000평
//     _ema_aMax2  : single = 0.0003845414343;       //5200평

    _ema_aMin1, _ema_aMin2, _ema_aMin3, _ema_aMin4  : single;// 최소 이평 계수값
    _ema_aMid1, _ema_aMid2, _ema_aMid3, _ema_aMid4  : single;// 중간 이평 계수값
    _ema_aMax1, _ema_aMax2, _ema_aMax3, _ema_aMax4  : single;// 최대 이평 계수값

     _emaMin1, _emaMin2, _emaMin3, _emaMin4 : single; // 최소 이평
     _emaMid1, _emaMid2, _emaMid3, _emaMid4 : single; // 중간 이평
     _emaMax1, _emaMax2, _emaMax3, _emaMax4 : single; // 최대 이평

     _SunMulAVGflg : integer;
//     First_Exe, First_Exe_EyP : boolean; // First_Exe : 당월 변경확인용, First_Exe_EyP : 이평선용
     _EPyGapMax11, _EPyGapMax12, _EPyGapMax13, _EPyGapMax14, _EPyGapMax21, _EPyGapMax22, _EPyGapMax23, _EPyGapMax24 : single;   // 5000이평과 100이평의 갭( = 100-5000, =100- 1000);
     _EPyGapMax31, _EPyGapMax32, _EPyGapMax33, _EPyGapMax34, _EPyGapMax41, _EPyGapMax42, _EPyGapMax43, _EPyGapMax44 : single;
     _EPyGapMid11, _EPyGapMid12, _EPyGapMid13, _EPyGapMid14, _EPyGapMid21, _EPyGapMid22, _EPyGapMid23, _EPyGapMid24 : single;
     _EPyGapMid31, _EPyGapMid32, _EPyGapMid33, _EPyGapMid34, _EPyGapMid41, _EPyGapMid42, _EPyGapMid43, _EPyGapMid44 : single;

     _ClientKey : string; //유안타 주문Key
implementation

uses uLogin, uPriceInfo,uWeeklyPriceInfo, uAutoOrder, uYMS_GC, uYMS_CS, uYMD, uPositionSE, uSelectJM, uTimeSpread, uCheaGealList, uJango, uDevelop, uChuSea;
//      uChuSea1, uChuSea2, uChuSea3, uChuSea4, uChuSea5, uChuSea6,
//      uChuSea7, uChuSea8, uChuSea9, uChuSea10, uChuSea11, uChuSea12, uChuSeaList,
//      uEPyChuSea1, uEPyChuSea2, uEPyChuSea3, uEPyChuSea4, uEPyChuSea5, uEPyChuSea6, uEPyChuSea7, uEPyChuSea8,
//      uEPyChuSea9, uEPyChuSea10, uEPyChuSea11, uEPyChuSea12, uEPyChuSea13, uEPyChuSea14, uEPyChuSea15, uEPyChuSea16, uEPyChart ;

{$R *.dfm}

function RemoveComma(src: string): string;   // 콤마제거
var
i: integer;
begin
  result := '';
  for i := 1 to length(src) do
  if copy(src, i, 1) <> ',' then result := result + copy(src, i, 1);
end;

function gfDel32(s: string): string;  //공백제거
begin
 while not(pos(' ',s)=0) do delete(s,pos(' ',s),1);
 result:=s;
end;

function CaseInt(Src : integer; TagList: array of integer): Integer;  // 정수배열에서 해당 값 위치 찾기
var i: integer;
begin
	Result:=-1;
	for i:=0 to Length(TagList)-1 do
	begin
		if Src = TagList[i] then
		begin
			Result:=i;
			Break;
		end;
	end;
end;

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

function EMA_function(alpha : Real; latest, stored : Real): Real;
begin
  Result := (alpha*latest) + ((1-alpha)*stored);
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

function NthOfWeek( nDay: byte; Day: TDateTime ):TDateTime;
// Day 가 포함된 주(Week)의 nDay번째 요일의 날짜를 돌려줌
// nDay = 1 (일요일) ~ 7 (토요일)
// 예) 이번주 금요일 := NthOfWeek(6,Date);
// 다음주 화요일 := NthOfWeek(3+7,Date);
begin
  result := Day - DayOfWeek( Day ) + nDay;
end;

function FirstOfMonth( Day: TDateTime ):TDateTime;
// Day가 포함된 달의 첫째날을 돌려줌
var nDay,nMonth,nYear: word;
begin
  DecodeDate(Day,nYear,nMonth,nDay);
  result := EncodeDate(nYear,nMonth,1);
end;


function NthOfNthWeek( nDay,nWeek: byte; Day: TDateTime ):TDateTime;
// Day 가 포함된 달의 nWeek번째 주 nDay요일의 날짜를 돌려줌
// 예) 이번달의 2째주 수요일 := NthOfNthWeek(4,2,Date);
// Logic
// 1) 해당월의 첫날을 구함
// 2) if 첫날의 요일 <= 원하는 요일 then nWeek를 1감소
// 3) 첫날이 포함된주의 원하는 요일을 구한다음
// nWeek주(nWeek*7)를 더함.
var FirstDay: TDateTime;
begin
  FirstDay := FirstOfMonth(Day);
  if DayOfWeek( FirstDay ) <= nDay then dec(nWeek);
  result := NthOfWeek( nDay, FirstDay ) + ( 7 * nWeek );
end;

procedure TfHBOMain.YearMonthCode;
begin
  _YearNow := copy(ManKi,1,4);
  if copy(ManKi,5,2) = '10' then begin
    _MonthCode := 'A';
    _JWCode := pYearCode(_YearNow) + '9';
  end else if copy(ManKi,5,2) = '11' then begin
    _MonthCode := 'B';
    _JWCode := pYearCode(_YearNow) + 'A';
  end else if copy(ManKi,5,2) = '12' then begin
    _MonthCode := 'C';
    _JWCode := pYearCode(_YearNow) + 'B';
  end else begin
    _MonthCode := copy(ManKi,6,1);
    if copy(Manki,5,2) = '01'  then begin
      _JWCode := pYearCode(intTostr(strToint(_YearNow)-1)) + 'C';
    end else _JWCode := pYearCode(_YearNow) + intTostr(strToint(_MonthCode) - 1);
  end;
  _DCode := pYearCode(_YearNow)+_MonthCode;

  if _MonthCode = '7' then begin
    _CWCode := pYearCode(_YearNow)+'8';
    _CCWCode := pYearCode(_YearNow)+'9';
    _WWCode := pYearCode(_YearNow)+ 'A';
  end else if _MonthCode = '8' then begin
    _CWCode := pYearCode(_YearNow)+'9';
    _CCWCode := pYearCode(_YearNow)+'A';
    _WWCode := pYearCode(_YearNow)+ 'B';
  end else if _MonthCode = '9' then begin
    _CWCode := pYearCode(_YearNow)+'A';
    _CCWCode := pYearCode(_YearNow)+'B';
    _WWCode := pYearCode(_YearNow)+ 'C';
  end else if _MonthCode = 'A' then begin
    _CWCode := pYearCode(_YearNow)+'B';
    _CCWCode := pYearCode(_YearNow)+'C';
    _YearNow := intTostr(strToint(_YearNow) + 1);
    _WWCode := pYearCode(_YearNow)+ '1';
  end else if _MonthCode = 'B' then begin
    _CWCode := pYearCode(_YearNow)+  'C';
    _YearNow := intTostr(strToint(_YearNow) + 1);
    _CCWCode := pYearCode(_YearNow) + '1';
    _YearNow := intTostr(strToint(_YearNow));
    _WWCode := pYearCode(_YearNow) + '2';
  end else if _MonthCode = 'C' then begin
    _YearNow := intTostr(strToint(_YearNow) + 1);
    _CWCode := pYearCode(_YearNow) + '1';
    _YearNow := intTostr(strToint(_YearNow));
    _CCWCode := pYearCode(_YearNow) + '2';
    _YearNow := intTostr(strToint(_YearNow));
    _WWCode := pYearCode(_YearNow) + '3';
  end else begin
    _CWCode := pYearCode(_YearNow) + intTostr(strToint(_MonthCode) + 1);
    _CCWCode := pYearCode(_YearNow) + intTostr(strToint(_MonthCode) + 2);
    _WWCode := pYearCode(_YearNow) + intTostr(strToint(_MonthCode) + 3);
  end;
end;

procedure TfHBOMain.AppException(Sender : TObject; E : Exception);
begin
//  LogMessage := E.Message + ' - ' + FormatDateTime('yyyy-mm-dd hh:mm:ss', Now);
//  SaveLog;
  exit;
end;

procedure SetVolume(NewVolume: DWORD);   //경보음 소리 볼륨 설정
begin
  NewVolume:=MAKEWPARAM(NewVolume, NewVolume);
  waveOutSetVolume(0, NewVolume);
end;

procedure TfHBOMain.DongbuAPI1Connected(ASender: TObject; hDongbuApi: Integer);
begin
  HandleDongbuApi := hDongbuApi;
end;

procedure TfHBOMain.DongbuAPI1Disconnected(Sender: TObject);
begin
  HandleDongbuApi := 0;
  StatusBar1.Panels[4].Text := '동부-로그인실패';
end;

procedure TfHBOMain.DongbuAPI1ReceiveData(ASender: TObject; nReqID: Integer;
  const szMsgCode, szMsg, szData: WideString);
var nMsgCode, nMsg, nData : WideString;
//    nString : string;
begin
  nMsgCode := szMsgCode;   //메세지코드(최종 부적격사유)
  nMsg := szMsg;         //메시지
  StatusBar1.Panels[2].Text := '동부수신:' + nMsg;
  //000100001001000000000N01218모의투자 장종료 상태입니다
  //    0001        00001001    000000000      N01218      모의투자 장종료 상태입니다
  //주문번호cnt      주문key     주문No      메세지코드     Msgcm                                                        '                                                                   '

  if pos('증거금부족',StatusBar1.Panels[2].Text) > 0 then
  begin
    _deposits_flg := True;// boolean; // 증거금 블래그  Fasle는 문제없음...True는 증거금 부족
    EXIT;
  end else if pos('수량이',StatusBar1.Panels[2].Text) > 0 then begin
    _JuMunQtnError_flg := -1;
    exit;
  end else if pos('불가',StatusBar1.Panels[2].Text) > 0 then begin
    _JuMunQtnError_flg := -2;
    exit;
  end;

  nData := szData;
  case nReqID of
    1: DBSOJuMun(nData);// 선옵주문
    2: DongbuJango_Parshing(nData, ASender);// 선옵잔고
    3: ;// 선옵잔고2
    4: DongbuCheaGul_Parshing(nData); // 주문 완료 후 채결 리스트 받기// 선옵체결리스트
    5: DonbuPoungga_Parshing(nData);// 선옵 평가현황
    6: DongbuSusuRyu_Parshing(nData); // 수수료, 평가예탁금총액// 수수료
    7: ;//옵션종목별매도증거금
    8: DBOAbleQty(nData);// 선옵 신규/청산 가능 수량
    9: ; //REQ_STK_ORDER = 9       	‘주식 주
    10: ;//REQ_STK_JANGO = 10      	‘주식 잔고
    11: ;//REQ_STK_CHE = 11         	‘주식 체결
    12: ;//REQ_STK_EVAK= 12         	‘주식 평가현황
    13: ;//REQ_CME_ORDER = 13,
    14: ;//REQ_CME_JANGO = 14,
    15: ;//REQ_CME_CHEGYUL = 15,
    16: ;//REQ_CME_MICHE = 16,
    17: ;//REQ_CME_EVAL = 17,
    18: ;//REQ_CME_QTY = 18,
    19: ;//REQ_STK_HOGA = 19,
    20: ;//REQ_STK_TODAYINVEST = 20,
    21: ;//REQ_STK_ORDER_QTY = 21,
    22: DongbuSunMulHoGa_Parshing(nData);//REQ_FUT_HOGA = 22,              ‘ 선물 호가
    23: DongbuOptionHoGa_Parshing(nData);//REQ_OPT_HOGA = 23,              ‘ 옵션호가
    24: ;//REQ_STK_TODAYBUYSELL= 24      ‘ 주식당일매매보고서
    25: ;//REQ_STK_BUYSELLLIST= 25         ‘일자별매매내역
    26: ;//REQ_STK_INOUTLIST = 26          ‘거래내역
    27: ;//REQ_STK_CONDITIONSEARCH_LIST = 27,     //조건검색리스트
    28: ;//REQ_STK_CONDITIONSEARCH = 28           //조건검색
  end;
end;

procedure TfHBOMain.DongbuSunMulHoGa_Parshing(nData : WideString);   //선물호가 파싱
var nString, sDate, sTemp: string;
    nParshingLength, i, nMankiMonth, nInt : integer;
//    nDataArray : array[0..4] of string; // 매수잔량, 매도잔량 , 매수호가, 매도호가,현재가
begin
// 동부API.doc
  nParshingLength := 0;
  for i := 0 to 16 do // 54까지 이지만
  begin
    nString := Copy(nData, nParshingLength +1 , DongbuSunMulHoGaDataLenArray[i]);
    nParshingLength := nParshingLength + DongbuSunMulHoGaDataLenArray[i];
    DongbuSunMulHoGaDataArry[i] := nString;
  end;

  sDate := ManKiDate;//Label8.Caption;// FormatDateTime('yyyymmdd',now);     //yyyy-mm-dd

  sTemp := '101' + YearCode;         //101NC000

  if StrToInt(Copy(sDate,6,2)) < 4 then nMankiMonth := 3
  else if StrToInt(Copy(sDate,6,2)) < 7 then  nMankiMonth := 6
  else if StrToInt(Copy(sDate,6,2)) < 10 then nMankiMonth := 9
  else nMankiMonth := 12;

  if nMankiMonth =  3 then sTemp := sTemp + '3000'
  else if nMankiMonth = 6 then sTemp := sTemp + '6000'
  else if nMankiMonth = 9 then sTemp := sTemp + '9000'
  else sTemp := sTemp + 'C000';

  if _DongBuSunMulCode = sTemp then begin
    SunMul := gfDel32(DongbuSunMulHoGaDataArry[1]); // 현재가
    nInt := strTointDef(gfDel32(DongbuSunMulHoGaDataArry[0]),-1); // '1':상한, '2':상승, '3':보합,'4':하한, '5':하락, '6':기세상한,'7':기세상승, '8':기세하한
    nString := gfDel32(DongbuSunMulHoGaDataArry[2]);
    if nInt > 3 then DyungLak := '-' + nString
    else DyungLak := '+' + nString;

//    nString := gfDel32(DongbuSunMulHoGaDataArry[2]);
//    if copy(nString,1,1) = '-' then DyungLak := nString
//    else DyungLak := '+' + nString;

    if strTofloatDef(DyungLak,0) > 0 then begin
      edtSunMul.Font.Color := clRed;
      edtSunMul.Color := clGray;
      edtSunMulDyungLak.Font.Color := clRed;
      edtSunMulDyungLak.Color := clGray;
    end else if strTofloatDef(DyungLak,0) < 0 then begin
      edtSunMul.Font.Color := clBlue;
      edtSunMul.Color := clAqua;
      edtSunMulDyungLak.Font.Color := clBlue;
      edtSunMulDyungLak.Color := clAqua;
    end  else begin
      edtSunMul.Font.Color := clWhite;
      edtSunMul.Color := clGrayText;
      edtSunMulDyungLak.Font.Color := clWhite;
      edtSunMul.Color := clGrayText;
    end;
    edtSunMul.Text := Sunmul;
    edtSunMulDyungLak.Text := DyungLak;
    edtKP200.Text :=  gfDel32(DongbuSunMulHoGaDataArry[16]); //kp200
    kp200 :=  gfDel32(DongbuSunMulHoGaDataArry[16]); //kp200
    _SunMulRTflg := 1;
  end;


end;

procedure TfHBOMain.DongbuAPI1ReceiveRTData(ASender: TObject; const szName,
  szField, szData: WideString);
var nszName, nszField, nData : WideString;
begin
  nszName := szName;
  nszField := szField;
  nData := szData;
  case CaseString(nszName, nszNameList) of
    0: ;   //"S31"           '현물현재가
    1: ;  // "S32"           '현물현재가
    2: ;  //"X22"             '현물호가
    3: DongbuRTSunMul(nszField, nData);  //"SC0"            '선물 현재가  ,, Main에서 저장
    4: DBRTSMHG(nszField, nData);   //"SH0"           '선물 호가(5호가)
    5: ;   //"SH2"           '선물 호가
    6: DongbuRTNowPrice(nszField, nData);   //"OC0"           '옵션 현재가
    7: DongbuRTOption5HG(nszField, nData);   //"OH0"           '옵션 호가(5호가)
    8: ;   //"OH2"           '옵션 호가
    9: DongbuRTSunOpCheaGeal_Parshing(nszField,nData);   //"XF2"           '선옵체결
    10: DongbuRTJango_Parshing(nData);  //"XF3"           '선옵잔고
    11: ;  //"XX1"           '주식체결
    12: ;  //"XX2"           '주식잔고
  end;
end;

procedure TfHBOMain.DongbuRTJango_Parshing(nData : WideString);  // 동부 실시간 잔고
var nString : string;
    nParshingLength, i , nInt: integer;
    nReal : Real;
    nDataArray : array[0..3] of string; // 보유수량, 미체결, 매입가격, 보유구분명
begin
  nParshingLength := 0;
  for i := 0 to 26 do
  begin
    nString := Copy(nData, nParshingLength +1 , DongbuRTJangoDataLenArry[i]);
    nParshingLength := nParshingLength + DongbuRTJangoDataLenArry[i];
    DongbuRTJangoDataArry[i] := nString;
    nString :=  IntToStr(i) +'::' + IntToStr(DongbuRTJangoDataLenArry[i]) + ':::' + nString;
  end;

  if Pos(Acnt, DongbuRTJangoDataArry[1]) = 0 then
    exit;

  // 여기서 부터는 각 unit에서 DongbuRTSunOpCheGealDataArry 변수를 이용해서 처리
  nInt :=  strTointDef(gfDel32(DongbuRTJangoDataArry[4]),0);//      보유수량    // 보유수량, 미체결, 매입가격, 보유구분명
  nDataArray[0] := intTostr(nInt);
  nReal :=  strTofloatDef(gfDel32(DongbuRTJangoDataArry[12]),0) * 0.00001;
  nDataArray[2] := formatfloat('#0.00#',nReal);//      매입가격
  nInt :=  strTointDef(DongbuRTJangoDataArry[17],0);//'미채결';
  nDataArray[1] := intTostr(nInt);//미체결수량
  nDataArray[3] := gfDel32(DongbuRTJangoDataArry[3]);//      보유구분명
  nString := gfDel32(DongbuRTJangoDataArry[2]);
  for I := 0 to 49 do begin
    if _JangoList[0,i] = nString then begin
      _JGIndex := i;
//      _JangoList[0,_JGIndex] := gfDel32(DongbuRTJangoDataArry[2]);  //종목
      _JangoList[1,_JGIndex] := nDataArray[0];  // 수량
      _JangoList[2,_JGIndex] := nDataArray[2];  // 매입가격
      _JangoList[4,_JGIndex] := nDataArray[3];  // 매도/매입 구분
      _JangoList[5,_JGIndex] := nDataArray[1]; // 미체결
      break;
    end;
  end;

  if _JGIndex = -1 then begin
    _JangoList[0,_JangoJMQtn] := gfDel32(DongbuRTJangoDataArry[2]);  //종목
    _JangoList[1,_JangoJMQtn] := nDataArray[0];  // 수량
    _JangoList[2,_JangoJMQtn] := nDataArray[2];  // 매입가격
    _JangoList[4,_JangoJMQtn] := nDataArray[3];  // 매도/매입 구분
    _JangoList[5,_JangoJMQtn] := nDataArray[1]; // 미체결
    _JGIndex := _JangoJMQtn;
    _JangoJMQtn := _JangoJMQtn+1;
  end;
end;

procedure TfHBOMain.DongbuRTSunOpCheaGeal_Parshing(nszField, nData: WideString);   //선옵체결 실시간
var nString, nCode, nACCNo : string;
    nParshingLength, i, nInt, nIndex, nCGQtn, nOrderNo : integer;
    nReal : Real;
//    nDataArray : array[0..9] of string; //주문번호, 종목코드, 매매구분, 주문가격,주문량,체결가격, 체결수량, 미체결량, 원주문번호, 유형
begin                                   // 이전 코드 ---- 주문번호, 주문수량, 주문가격, 미체결수량 , 매매구분
//동부API.doc 파일 참고 할 것

  nParshingLength := 0;
  for i := 0 to 27 do    //
  begin
    nString := Copy(nData, nParshingLength +1 , DongbuRTSunOpCheGealDataLenArry[i]);
    nParshingLength := nParshingLength + DongbuRTSunOpCheGealDataLenArry[i];
    DongbuRTSunOpCheGealDataArry[i] := nString;
  end;

  ///
  /// 계좌번호롤 필터링 해야 함.
  ///  원주문번호 저장해야 함.
  ///
  ///
//  nString := copy(ManKi,5,2);
//  if strTointDef(nString,0) = 10 then nString := 'A'
//  else if strTointDef(nString,0) = 11 then nString := 'B'
//  else if strTointDef(nString,0) = 12 then nString := 'C'
//  else nString := copy(nString,2,1);
  nACCNo := gfDel32(DongbuRTSunOpCheGealDataArry[2]);
  nCode := gfDel32(DongbuRTSunOpCheGealDataArry[6]);
  _CSDataArray[1] := nCode; // 종목코드

  nString := gfDel32(DongbuRTSunOpCheGealDataArry[3]);
  nOrderNo := strTointDef(nString,0);// 주문번호
  _CSDataArray[0] := intTostr(nOrderNo);//      주문번호    // 주문번호, 주문수량, 주문가격, 미체결수량 , 매매구분
  _CSDataArray[2] := gfDel32(DongbuRTSunOpCheGealDataArry[7]);//
  nString := gfDel32(DongbuRTSunOpCheGealDataArry[14]);
  nReal :=  strTofloatDef(nString,0); //주문가격
  _CSDataArray[3] := formatfloat('#0.0##',nReal);//  주문가격
  nString := gfDel32(DongbuRTSunOpCheGealDataArry[13]);
  nInt :=  strTointDef(nString,0); //주문수량
  _CSDataArray[4] := intTostr(nInt);//  주문수량
  nString := gfDel32(DongbuRTSunOpCheGealDataArry[17]);
  nReal :=  strTofloatDef(nString,0); //체결가격
  _CSDataArray[5] := formatfloat('#0.0##',nReal);//  체결가격
  nString := gfDel32(DongbuRTSunOpCheGealDataArry[15]);
  nCGQtn :=  strTointDef(nString,0); //체결수량
  _CSDataArray[6] := intTostr(nCGQtn);//  체결수량
  nString := gfDel32(DongbuRTSunOpCheGealDataArry[20]);
  nInt :=  strTointDef(nString,0); //미체결 수량
  _CSDataArray[7] := intTostr(nInt);//   미체결수량
  nString := gfDel32(DongbuRTSunOpCheGealDataArry[5]);
  nInt :=  strTointDef(nString,0); //원주문번호
  _CSDataArray[8] := intTostr(nInt);// 원주문번호
//  _CSDataArray[9] := '유형 모름';//유형

//  nIndex := CaseInt(nOrderNo,AllOrderNo);
//  if nIndex > -1 then begin
//    AllCGInfo[nIndex].OrderNo := nOrderNo;
//    AllCGInfo[nIndex].JMCode := _CSDataArray[1];
//    AllCGInfo[nIndex].MMGB := _CSDataArray[2];//strTointDef(_CSDataArray[2],-99);  // 0 : 매수,   1 : 매도  , 2: 정정,   3: 취소
//    AllCGInfo[nIndex].JMPrice := strTofloatDef(_CSDataArray[3],0);
//    AllCGInfo[nIndex].JMQtn := strTointDef(_CSDataArray[4],0);
//    AllCGInfo[nIndex].CGPrice := strTofloatDef(_CSDataArray[5],0);
////    AllCGInfo[nIndex].CGQtn := strTointDef(_CSDataArray[6],0);
//    AllCGInfo[nIndex].MCGQtn := strTointDef(_CSDataArray[7],0);
//    AllCGInfo[nIndex].CGQtn := AllCGInfo[nIndex].JMQtn - AllCGInfo[nIndex].MCGQtn;
//    AllCGInfo[nIndex].WJMNo := strTointDef(_CSDataArray[8],0);
//    AllCGInfo[nIndex].AccNo := nACCNo;
//    nCSIndex := nIndex; // 추세 인덱스
//  end else if nIndex = -1 then begin
//    AllCGInfo[LastONIndex].OrderNo := nOrderNo;
//    AllCGInfo[LastONIndex].JMCode := _CSDataArray[1];
//    AllCGInfo[LastONIndex].MMGB := _CSDataArray[2];//strTointDef(_CSDataArray[2],-99);  // 0 : 매수,   1 : 매도  , 2: 정정,   3: 취소
//    AllCGInfo[LastONIndex].JMPrice := strTofloatDef(_CSDataArray[3],0);
//    AllCGInfo[LastONIndex].JMQtn := strTointDef(_CSDataArray[4],0);
//    AllCGInfo[LastONIndex].CGPrice := strTofloatDef(_CSDataArray[5],0);
////    AllCGInfo[nIndex].CGQtn := strTointDef(_CSDataArray[6],0);
//    AllCGInfo[LastONIndex].MCGQtn := strTointDef(_CSDataArray[7],0);
//    AllCGInfo[LastONIndex].CGQtn := AllCGInfo[LastONIndex].JMQtn - AllCGInfo[LastONIndex].MCGQtn;
//    AllCGInfo[LastONIndex].WJMNo := strTointDef(_CSDataArray[8],0);
//    AllCGInfo[LastONIndex].AccNo := nACCNo;
//    AllOrderNo[LastONIndex] :=  nOrderNo;
//    nCSIndex := LastONIndex; // 추세 인덱스
//    LastONIndex := LastONIndex + 1;
//  end;

//  nIndex := CaseString(_CSDataArray[0], _MJOrderNo);  //
//  if (nIndex > -1) then PGSCSMain체결List(nIndex,_CSDataArray)
//  else if nIndex = -1 then begin
//    nIndex := CaseString(_CSDataArray[0], _WGOrderNo);  //
//    if (nIndex > -1) then PGSCSWG체결List(nIndex,_CSDataArray);
//  end;

  nIndex := Caseint(nOrderNo, _YMSGCOrderNo);  //
  if (nIndex > -1) then begin
    YMSGC체결List(nIndex,_CSDataArray);
    exit;
  end;

  nIndex := Caseint(nOrderNo, _WGOrderNo);  //
  if (nIndex > -1) then begin
    PGSCSWG체결List(nIndex,_CSDataArray);
    exit;
  end;

  nIndex := Caseint(nOrderNo, _MJOrderNo);  //
  if (nIndex > -1) then begin
    PGSCSMain체결List(nIndex,_CSDataArray);
    exit;
  end;

//  nIndex := Caseint(nOrderNo, _TimeCallOrderNo1);  //
//  if nIndex > -1 then begin
//    TSCallCGList1(nIndex,_CSDataArray);
//    exit;
//  end;

//  nIndex := Caseint(nOrderNo, _TimeCallOrderNo2);  //
//  if nIndex > -1 then begin
//    TSCallCGList2(nIndex,_CSDataArray);
//    exit;
//  end;

//  nIndex := Caseint(nOrderNo, _TimePutOrderNo1);  //
//  if nIndex > -1 then begin
//    TSPutCGList1(nIndex,_CSDataArray);
//    exit;
//  end;

//  nIndex := Caseint(nOrderNo, _TimePutOrderNo2);  //
//  if nIndex > -1 then begin
//    TSPutCGList2(nIndex,_CSDataArray);
//    exit;
//  end;
end;

procedure TfHBOMain.YMSGC체결List(index: integer; nDataArray: array of string);
begin
  if _YMSGCCGList[index].OrderNo = strTointDef(nDataArray[0],0) then begin
    _YMSGCCGList[index].JMCode := nDataArray[1];
    _YMSGCCGList[index].MMGB := strTointDef(nDataArray[2],0); // 가격구분 00지정가, 03 시장가.
    _YMSGCCGList[index].JMPrice := strTofloatDef(nDataArray[3],0);
    _YMSGCCGList[index].JMQtn := strTointDef(nDataArray[4],0);
    _YMSGCCGList[index].CGPrice := strTofloatDef(nDataArray[5],0);
//    _YMSGCCGList[index].CGQtn := strTointDef(nDataArray[6],0);
    _YMSGCCGList[index].MCGQtn := strTointDef(nDataArray[7],0);
    _YMSGCCGList[index].CGQtn := _YMSGCCGList[index].JMQtn - _YMSGCCGList[index].MCGQtn;
  end;
end;

function TfHBOMain.YouantaFOOrder(nACC, nPWD, nJumun_Gubun, nMeme_gubun, nJMCode, nQtn, nPrice, nJang_gubun, nFutu_ord_if : string): integer;
begin
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//	유안타증권 Open API 입력코드 예제입니다.
//	[160001] 선물옵션주문 - 입력블록
  with fHBOMain do begin
    YuantaAPI1.YOA_SetTRInfo('160001','InBlock1');			// TR정보(TR명, Block명)를 설정합니다.
    YuantaAPI1.YOA_SetFieldString('acnt_aid', nACC,0);		// 계좌번호 값을 설정합니다.
    YuantaAPI1.YOA_SetFieldString('passwd', nPWD,0);		// 비밀번호 값을 설정합니다.
    YuantaAPI1.YOA_SetFieldString('jumun_gubun',nJumun_Gubun,0);		// 주문구분1매도2매수 값을 설정합니다.
    YuantaAPI1.YOA_SetFieldString('meme_gubun',nMeme_gubun,0);		// 매매구분L지정M시장C조건부B최유 값을 설정합니다.
    YuantaAPI1.YOA_SetFieldString('jong_code',nJMCode,0);		// 종목코드 값을 설정합니다.
    YuantaAPI1.YOA_SetFieldString('order_cnt', nQtn,0);		// 주문수량 값을 설정합니다.
    YuantaAPI1.YOA_SetFieldString('order_price',nPrice,0);		// 주문가격 값을 설정합니다.
    YuantaAPI1.YOA_SetFieldString('jang_gubun',nJang_gubun,0);		// 선물옵션구분0선물1옵션2개별3코 값을 설정합니다.
    YuantaAPI1.YOA_SetFieldString('futu_ord_if',nFutu_ord_if,0);		// 주문조건S일반I일부충족F전량충족 값을 설정합니다.
    var nReturn : integer;
    result := YuantaAPI1.YOA_Request('160001', true, -1);
//    if result > 999 then begin
//      delay(500);
//    end else begin
//      showmessage('옵션 주문 실패');
//    end;
  end;
end;

procedure TfHBOMain.YuantaAPI1Login(ASender: TObject; nResult: Integer;
  const bstrMsg: WideString);
begin
  HandleDongbuApi := 1;//로그인 flg
end;

procedure TfHBOMain.YuantaAPI1ReceiveData(ASender: TObject; nReqID: Integer;
  const bstrDSOID: WideString);
var strData : string;
    i, nIndex, nCnt : integer;
    nDataArray : array[0..4] of string; // 매수잔량, 매도잔량 , 매수호가, 매도호가,현재가
begin
  if bstrDSOID = '350001' then begin // 선물 현재가
    _SunMulRTflg := 1;
    YuantaAPI1.YOA_SetTRInfo( '350001', 'OutBlock1' );			// TR정보(TR명, Block명)를 설정합니다.
    strData := YuantaAPI1.YOA_GetFieldString( 'jongname', 0 );		// 종목코드설명 값을 가져옵합니다.
    sunmul := copy(YuantaAPI1.YOA_GetFieldString( 'last', 0 ),1,6);		// 현재가 값을 가져옵합니다.
    DyungLak := copy(YuantaAPI1.YOA_GetFieldString( 'debi',0 ),1,4);		// 전일대비 값을 가져옵합니다.
  end else if bstrDSOID = '360001' then begin             // 옵션 현재가
   	YuantaAPI1.YOA_SetTRInfo( '360001', 'OutBlock1' );			// TR정보(TR명, Block명)를 설정합니다.
    strData:= YuantaAPI1.YOA_GetFieldString( 'jongname',                 0 );		// 종목명(설명) 값을 가져옵합니다.
    strData:= YuantaAPI1.YOA_GetFieldString( 'last',                     0 );		// 현재가 값을 가져옵합니다.
//    strData:= YuantaAPI1.YOA_GetFieldString( 'debi',                     0 );		// 전일대비 값을 가져옵합니다.
//    strData:= YuantaAPI1.YOA_GetFieldString( 'debirate',                 0 );		// 등락율 값을 가져옵합니다.
//    strData:= YuantaAPI1.YOA_GetFieldString( 'standardprice',            0 );		// 기준가 값을 가져옵합니다.

    strData:= YuantaAPI1.YOA_GetFieldString( 'medoprice',                0 );		// 매도호가 값을 가져옵합니다.
    strData:= YuantaAPI1.YOA_GetFieldString( 'mesuprice',                0 );		// 매수호가 값을 가져옵합니다.

    nDataArray[2] := YuantaAPI1.YOA_GetFieldString( 'mesuprice',0);//      매수호가
    nDataArray[3] := YuantaAPI1.YOA_GetFieldString( 'medoprice',0);//      매도호가
    nDataArray[4] := YuantaAPI1.YOA_GetFieldString( 'last',0 );//      현재가,

    strData := copy(_DongBuNowPriceCode,6,3);   //201N6315
    if (copy(strData,3,1) = '2') or (copy(strData,3,1) = '7') then strData := strData + '.5';
    nIndex := CaseString(strData, _HeangSaGaList);  //행사가 리스트와 비교하여 전광판 그리드의 Row번호 설정

    if nIndex in [0..65] then begin
      DongbuHG전광판(nIndex, _DongBuNowPriceCode, nDataArray);
    end;
     _DongBuNowPriceCode := '-';
  end else if  bstrDSOID = '160001' then begin // 선옵 주문
    YuantaAPI1.YOA_SetTRInfo( '160001', 'OutBlock1' );			// TR정보(TR명, Block명)를 설정합니다.
    strData := YuantaAPI1.YOA_GetFieldString( 'msg', 0 );		// 메세지 값을 가져옵합니다.  '모의투자 매수주문이 완료 되었습니다.    '#$A'주문번호 : 5356'
    strData := YuantaAPI1.YOA_GetFieldString( 'org_no', 0 );		// 원주문번호 값을 가져옵합니다.
    YuantaJuMun(strData);
  end else if  bstrDSOID = '251002' then begin // 선물옵션당일평가= 잔고

    YuantaAPI1.YOA_SetTRInfo( '251002', 'OutBlock1' );			// TR정보(TR명, Block명)를 설정합니다.
    nCnt := strTointDef(YuantaAPI1.YOA_GetFieldString( 'list_cnt',0 ),0);		// 총조회건수 값을 가져옵합니다.
//    strData := YuantaAPI1.YOA_GetFieldString( 'jang_gubun',               0 );		// 시장구분 값을 가져옵합니다.
    _JangoJMQtn := nCnt;
    YuantaAPI1.YOA_SetTRInfo( '251002', 'OutBlock2' );			// TR정보(TR명, Block명)를 설정합니다.
    for I := 0 to nCnt -1 do begin
      //_JangoList : array[0..5,0..49] of string; // 잔고 리스트   종목, 수량, 매매가, 현재가,매도/매입, 미체결
                                                            //      0     1       2       3     4          5

      _JangoList[0,i] := YuantaAPI1.YOA_GetFieldString( 'jong_code',                i);		// 종목코드 값을 가져옵합니다.
//      strData := YuantaAPI1.YOA_GetFieldString( 'jong_name',                i);		// 종목명 값을 가져옵합니다.
      _JangoList[4,i] := YuantaAPI1.YOA_GetFieldString( 'buy_sell_tp',              i);		// 매수/매도구분 값을 가져옵합니다.
      _JangoList[1,i] := YuantaAPI1.YOA_GetFieldString( 'now_amount',i);		// 보유잔량 값을 가져옵합니다.
      _JangoList[1,i] := copy(_JangoList[1,i],1,pos('.',_JangoList[1,i]) -1);
      _JangoList[2,i] := YuantaAPI1.YOA_GetFieldString( 'buy_price',                i);		// 매입가 값을 가져옵합니다.
//      strData := YuantaAPI1.YOA_GetFieldString( 'total_buy_price',          i);		// 매입가액 값을 가져옵합니다.
      _JangoList[3,i] := YuantaAPI1.YOA_GetFieldString( 'now_price', i);		// 현재가 값을 가져옵합니다.
//      _JangoList[3,i] := YuantaAPI1.YOA_GetFieldString( 'total_now_price',          i);		// 현재가액 값을 가져옵합니다.
//      strData := YuantaAPI1.YOA_GetFieldString( 'medoprice',                i);		// 매도호가 값을 가져옵합니다.
//      strData := YuantaAPI1.YOA_GetFieldString( 'medovol',                  i);		// 매도잔량 값을 가져옵합니다.
//      strData := YuantaAPI1.YOA_GetFieldString( 'mesuprice',                i);		// 매수호가 값을 가져옵합니다.
//      strData := YuantaAPI1.YOA_GetFieldString( 'mesuvol',                  i);		// 매수잔량 값을 가져옵합니다.
//      strData := YuantaAPI1.YOA_GetFieldString( 'vol',                      i);		// 약정수량 값을 가져옵합니다.
      _JangoList[5,i] := YuantaAPI1.YOA_GetFieldString( 'openvol',                  i);		// 미결제약정수량 값을 가져옵합니다.
      _JangoList[5,i] := copy(_JangoList[5,i],1,pos('.',_JangoList[5,i]) -1);
//      strData := YuantaAPI1.YOA_GetFieldString( 'maemae_son',               i);		// 매매손익 값을 가져옵합니다.
//      strData := YuantaAPI1.YOA_GetFieldString( 'clear_son',                i);		// 청산손익 값을 가져옵합니다.
//      strData := YuantaAPI1.YOA_GetFieldString( 'total_son',                i);		// 총손익 값을 가져옵합니다.
//      strData := YuantaAPI1.YOA_GetFieldString( 'unit',                     i);		// 종목별단위금액 값을 가져옵합니다.
//      strData := YuantaAPI1.YOA_GetFieldString( 'autocode',                 i);		// 오토시세용종목코드 값을 가져옵합니다.

//      YuantaAPI1.YOA_SetTRInfo( '251002', 'OutBlock3' );			// TR정보(TR명, Block명)를 설정합니다.
//      strData := YuantaAPI1.YOA_GetFieldString( 'next',                     i);		// 다음여부 값을 가져옵합니다.
//      strData := YuantaAPI1.YOA_GetFieldString( 'son',                      i);		// 평가손익 값을 가져옵합니다.
//      strData := YuantaAPI1.YOA_GetFieldString( 'clear_son',                i);		// 청산분손익 값을 가져옵합니다.
//      strData := YuantaAPI1.YOA_GetFieldString( 'total_son',                i);		// 총손익 값을 가져옵합니다.
//      strData := YuantaAPI1.YOA_GetFieldString( 'today_total_son',          i);		// 당일총손익 값을 가져옵합니다.
//      strData := YuantaAPI1.YOA_GetFieldString( 'total_property',           i);		// 추정예탁 값을 가져옵합니다.
//      strData := YuantaAPI1.YOA_GetFieldString( 'buy_opt_amt',              i);		// 매수옵션현재가액 값을 가져옵합니다.
//      strData := YuantaAPI1.YOA_GetFieldString( 'sell_opt_amt',             i);		// 매도옵션현재가액 값을 가져옵합니다.
//      strData := YuantaAPI1.YOA_GetFieldString( 'd1yesu',                   i);		// d+1예수금_오토처리용 값을 가져옵합니다.
//      strData := YuantaAPI1.YOA_GetFieldString( 'cmsn',                     i);		// 수수료 값을 가져옵합니다.
//      strData := YuantaAPI1.YOA_GetFieldString( 'call_sell_amt',            i);		// 콜매도옵션평가액 값을 가져옵합니다.
//      strData := YuantaAPI1.YOA_GetFieldString( 'call_buy_amt',             i);		// 콜매수옵션평가액 값을 가져옵합니다.
//      strData := YuantaAPI1.YOA_GetFieldString( 'put_sell_amt',             i);		// 풋매도옵션평가액 값을 가져옵합니다.
//      strData := YuantaAPI1.YOA_GetFieldString( 'put_buy_amt',              i);		// 풋매수옵션평가액 값을 가져옵합니다.
      _JGIndex := i;
    end;
  end;
end;

procedure TfHBOMain.YuantaJuMun(strOrderNo : WideString);  // 선옵주문
var nString : string;
    i, nCnt : integer;     // nCnt는 청산 시 메인종목과 가장 외가 종목의 주문 순서가 몇번째인지 체크하는 용도
begin
  _JMRecieveflg := 1;

  case strTointDef(copy(_ClientKey,1,2),0) of          // 주문시 생성해야 함.
    01 : begin   // 양매수 구축
      nCnt := strTointDef(copy(_ClientKey,3,3),0);  // 주문순서  ClientKey = 11010000,   33010000
      if _YMSGCCGList[nCnt].JMKey = -1 then begin
        _YMSGCCGList[nCnt].JMKey :=  strTointDef(_ClientKey,-8);   // 주문키 입력
        _YMSGCCGList[nCnt].OrderNo := strTointDef(strOrderNo,0);         // 주문번호 입력
        _YMSGCOrderNo[nCnt] := _YMSGCCGList[nCnt].OrderNo;
      end;
    end;
    11: begin   // 청산 메인 주문
      nCnt := strTointDef(copy(_ClientKey,3,3),0)-1;  // 주문순서  ClientKey = 11010000,   33010000
      if _CSJMDataList[nCnt].JMKey = -1 then begin
        _CSJMDataList[nCnt].JMKey :=  strTointDef(DBSOJuMunDataArray[1],-8);   // 주문키 입력
        _CSJMDataList[nCnt].OrderNo := strTointDef(strOrderNo,0);         // 주문번호 입력
        _MJOrderNo[nCnt] := _CSJMDataList[nCnt].OrderNo;
        _CSMainIndex := nCnt;
      end;
    end;
    22: begin // 청산 외가 주문
      nCnt := strTointDef(copy(_ClientKey,3,3),0)-1;  // 주문순서  ClientKey = 11010000,   33010000
      if _CSWGJMDataList[nCnt].JMKey = -1 then begin
        _CSWGJMDataList[nCnt].JMKey :=  strTointDef(_ClientKey,-8);   // 주문키 입력
        _CSWGJMDataList[nCnt].OrderNo := strTointDef(strOrderNo,0);         // 주문번호 입력
        _WGOrderNo[nCnt] := _CSWGJMDataList[nCnt].OrderNo;
        _CSWGIndex :=  nCnt;
      end;
    end;
//    33 : begin  // 양매도 주문
//        nCnt := strTointDef(copy(DBSOJuMunDataArray[1],4,1),0)-1;  // 주문순서  ClientKey
//        if _YMDJMDataList[nCnt].JMKey = -1 then begin
//          _YMDJMDataList[nCnt].JMKey :=  strTointDef(DBSOJuMunDataArray[1],-8);   // 주문키 입력
//          _YMDJMDataList[nCnt].OrderNo := strTointDef(DBSOJuMunDataArray[2],0);         // 주문번호 입력
//          _YMDOrderNo[nCnt] := _YMDJMDataList[nCnt].OrderNo;
//          _YMDIndex :=  nCnt;
//        end;
//    end;
//    44 : begin  // 타임콜1 당월
//        nCnt := strTointDef(copy(DBSOJuMunDataArray[1],3,3),0);
//        _TimeCallInfo1[nCnt].JMKey :=  strTointDef(DBSOJuMunDataArray[1],-8);   // 주문키 입력
//        _TimeCallInfo1[nCnt].OrderNo := strTointDef(DBSOJuMunDataArray[2],0);         // 주문번호 입력
//        _TimeCallOrderNo1[nCnt] := _TimeCallInfo1[nCnt].OrderNo;
//        _JuMunQtnError_flg := 1;
//        _JuMunOK_flg := 1;
//    end;
//    55 : begin  // 타임콜2차월
//        nCnt := strTointDef(copy(DBSOJuMunDataArray[1],3,3),0);
//        _TimeCallInfo2[nCnt].JMKey :=  strTointDef(DBSOJuMunDataArray[1],-8);   // 주문키 입력
//        _TimeCallInfo2[nCnt].OrderNo := strTointDef(DBSOJuMunDataArray[2],0);         // 주문번호 입력
//        _TimeCallOrderNo2[nCnt] := _TimeCallInfo2[nCnt].OrderNo;
//        _JuMunQtnError_flg := 1;
//        _JuMunOK_flg := 1;
//    end;
//    66 : begin  // 타임풋1당월
//        nCnt := strTointDef(copy(DBSOJuMunDataArray[1],3,3),0);
//        _TimePutInfo1[nCnt].JMKey :=  strTointDef(DBSOJuMunDataArray[1],-8);   // 주문키 입력
//        _TimePutInfo1[nCnt].OrderNo := strTointDef(DBSOJuMunDataArray[2],0);         // 주문번호 입력
//        _TimePutOrderNo1[nCnt] := _TimePutInfo1[nCnt].OrderNo;
//        _JuMunQtnError_flg := 1;
//        _JuMunOK_flg := 1;
//    end;
//    77 : begin  // 타임풋2차월
//        nCnt := strTointDef(copy(DBSOJuMunDataArray[1],3,3),0);
//        _TimePutInfo2[nCnt].JMKey :=  strTointDef(DBSOJuMunDataArray[1],-8);   // 주문키 입력
//        _TimePutInfo2[nCnt].OrderNo := strTointDef(DBSOJuMunDataArray[2],0);         // 주문번호 입력
//        _TimePutOrderNo2[nCnt] := _TimePutInfo2[nCnt].OrderNo;
//        _JuMunQtnError_flg := 1;
//        _JuMunOK_flg := 1;
//    end;
  end;
  _ClientKey := '';
end;


procedure TfHBOMain.YuantaAPI1ReceiveRealData(ASender: TObject; nReqID: Integer;
  const bstrAutoID: WideString);
var nIndex : integer;
    strData, nJMCode : string;
    nDataArray : array[0..4] of string; // 매수잔량, 매도잔량 , 매수호가, 매도호가, 현재가
begin
  strData := nReqID.ToString;
  strData := bstrAutoID;

  if bstrAutoID = '41' then begin // 실시간 현재가
    YuantaAPI1.YOA_SetTRInfo( '41', 'OutBlock1');			// TR정보(TR명, Block명)를 설정합니다.
    nJMCode := YuantaAPI1.YOA_GetFieldString( 'jongcode',        0);		// 종목코드 값을 가져옵니다.
    if nJMCode = _DongBuSunMulCode then begin
      sunmul := copy(YuantaAPI1.YOA_GetFieldString( 'last',0),1,7);		// 현재가 값을 가져옵니다.
      DyungLak := copy(YuantaAPI1.YOA_GetFieldString( 'change', 0),1,5);		// 전일대비 값을 가져옵니다.
      _SunMulRTflg := 1;
      _SunMulRTChartflg[_SunMulRTChartStep] := True;
    end else begin
      strData := copy(nJMCode,6,3);   //201N6315
      if (copy(strData,3,1) = '2') or (copy(strData,3,1) = '7') then strData := strData + '.5';
      nIndex := CaseString(strData, _HeangSaGaList);  //행사가 리스트와 비교하여 전광판 그리드의 Row번호 설정
      nDataArray[4] := YuantaAPI1.YOA_GetFieldString( 'last',            0);		// 현재가 값을 가져옵니다.
      Dongbu전광판(nIndex, nJMCode, nDataArray);
    end;
  end else if bstrAutoID = '42' then begin  //실시간 호가
    YuantaAPI1.YOA_SetTRInfo( '42', 'OutBlock1' );			// TR정보(TR명, Block명)를 설정합니다.
    nJMCode := YuantaAPI1.YOA_GetFieldString( 'jongcode',0);// 종목코드 값을 가져옵니다.
    strData := copy(nJMCode,6,3);   //201N6315
    if (copy(strData,3,1) = '2') or (copy(strData,3,1) = '7') then strData := strData + '.5';
    nIndex := CaseString(strData, _HeangSaGaList);  //행사가 리스트와 비교하여 전광판 그리드의 Row번호 설정
    nDataArray[3] := YuantaAPI1.YOA_GetFieldString( 'medoprice',   0 );		// 최우선매도호가 값을 가져옵니다.
    nDataArray[2] := YuantaAPI1.YOA_GetFieldString( 'mesuprice',   0 );		// 최우선매수호가 값을 가져옵니다.
  	nDataArray[1] := YuantaAPI1.YOA_GetFieldString( 'medovol',     0 );		// 매도호가잔량 값을 가져옵니다.
  	nDataArray[0] := YuantaAPI1.YOA_GetFieldString( 'mesuvol',     0 );		// 매수호가잔량 값을 가져옵니다.
    Dongbu5HG전광판(nIndex, nJMCode, nDataArray);
  end else if bstrAutoID = '71' then begin  //실시간 주문확인 및 체결
  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //	유안타증권 Open API 출력코드 예제입니다.
    //	[71] REAL_PA - 출력블록
      YuantaAPI1.YOA_SetTRInfo( '71', 'OutBlock1' );			// TR정보(TR명, Block명)를 설정합니다.
      strData := YuantaAPI1.YOA_GetFieldString( 'tr_code',                  0 );		// TR CODE(1) 0:OR01 1:CH01 2:HO01 값을 가져옵합니다.
      //_CSDataArray : array[0..9] of string; //주문번호, 종목코드, 매매구분, 주문가격,주문량,체결가격, 체결수량(합), 미체결량, 원주문번호, 유형
                                              //  0          1         2         3       4        5         6            7           8       9
      _CSDataArray[0] := YuantaAPI1.YOA_GetFieldString( 'ordno',                    0 );		// 주문접수번호(거래소) 값을 가져옵합니다.
//      strData := YuantaAPI1.YOA_GetFieldString( 'autocancel',               0 );		// 자동취소여부 값을 가져옵합니다.
//      strData := YuantaAPI1.YOA_GetFieldString( 'mdmtp',                    0 );		// 매체구분 값을 가져옵합니다.
//      strData := YuantaAPI1.YOA_GetFieldString( 'filler',                   0 );		// filler 값을 가져옵합니다.
//      strData := YuantaAPI1.YOA_GetFieldString( 'cheno',                    0 );		// 체결번호(c.yak_num) 값을 가져옵합니다.
      _CSDataArray[8] := YuantaAPI1.YOA_GetFieldString( 'origno',                   0 );		// 원주문번호(0) 값을 가져옵합니다.
//      strData := YuantaAPI1.YOA_GetFieldString( 'jumunno',                  0 );		// 내부주문번호 값을 가져옵합니다.
//      strData := YuantaAPI1.YOA_GetFieldString( 'bpjumunno',                0 );		// 지점별 주문번호 값을 가져옵합니다.
      _CSDataArray[3] := YuantaAPI1.YOA_GetFieldString( 'jumunuv',                  0 );		// 주문단가(jumun_su) 값을 가져옵합니다.
      _CSDataArray[4] := YuantaAPI1.YOA_GetFieldString( 'jumunqty',                 0 );		// 주문수량(jumun_price) 값을 가져옵합니다.
//      strData := YuantaAPI1.YOA_GetFieldString( 'corqty',                   0 );		// 정정/취소 수량 값을 가져옵합니다.
      _CSDataArray[6] := YuantaAPI1.YOA_GetFieldString( 'cheuv',                    0 );		// 체결단가(c.yak_price) 값을 가져옵합니다.
//      strData := YuantaAPI1.YOA_GetFieldString( 'cheqty',                   0 );		// 체결수량(c.yak_su) 값을 가져옵합니다.
      _CSDataArray[5] := YuantaAPI1.YOA_GetFieldString( 'chesum',                   0 );		// 체결수량합 값을 가져옵합니다.
      _CSDataArray[7] := intToStr(strTointDef(_CSDataArray[4],-1) - strTointDef(_CSDataArray[5],-9999));
//      strData := YuantaAPI1.YOA_GetFieldString( 'shyak',                    0 );		// S 근월물 체결가 값을 가져옵합니다.
//      strData := YuantaAPI1.YOA_GetFieldString( 'lnyak',                    0 );		// S 원월물 체결가 값을 가져옵합니다.
//      strData := YuantaAPI1.YOA_GetFieldString( 'bp_time',                  0 );		// data 수신 발생시간 값을 가져옵합니다.
//      strData := YuantaAPI1.YOA_GetFieldString( 'tr_time',                  0 );		// 체결시간(c.yak_time) 값을 가져옵합니다.
//      strData := YuantaAPI1.YOA_GetFieldString( 'op_id',                    0 );		// 고객 Login ID(user_id) 값을 가져옵합니다.
//      strData := YuantaAPI1.YOA_GetFieldString( 'custseq',                  0 );		// 계좌번호(cust_no) 값을 가져옵합니다.
      _CSDataArray[2] := YuantaAPI1.YOA_GetFieldString( 'gubun48',                  0 );		// 매수(4) 매도(8) 값을 가져옵합니다.
      _CSDataArray[1] := YuantaAPI1.YOA_GetFieldString( 'stkcode',                  0 );		// 종목코드(c.jongcode) 값을 가져옵합니다.
//      strData := YuantaAPI1.YOA_GetFieldString( 'stkname',                  0 );		// 종목명(' ... ') 값을 가져옵합니다.
//      strData := YuantaAPI1.YOA_GetFieldString( 'jununjong',                0 );		// L:지정가 M:시장가 C:조건부지정 값을 가져옵합니다.
//      strData := YuantaAPI1.YOA_GetFieldString( 'reject',                   0 );		// 거부사유 코드 값을 가져옵합니다.
//      strData := YuantaAPI1.YOA_GetFieldString( 'hokatp',                   0 );		// 호가유형 값을 가져옵합니다.
//      strData := YuantaAPI1.YOA_GetFieldString( 'futu_ord_if',              0 );		// 주문조건 값을 가져옵합니다.
//      strData := YuantaAPI1.YOA_GetFieldString( 'trtime2',                  0 );		// 시간 HH:MM:SS 값을 가져옵합니다.
//      strData := YuantaAPI1.YOA_GetFieldString( 'price',                    0 );		// 체결가 또는 주문가 값을 가져옵합니다.
//    nACCNo := gfDel32(DongbuRTSunOpCheGealDataArry[2]);
//    nCode := gfDel32(DongbuRTSunOpCheGealDataArry[6]);
//    _CSDataArray[1] := nCode; // 종목코드

    nIndex := Caseint(_CSDataArray[0].ToInteger, _YMSGCOrderNo);  //
    if (nIndex > -1) then begin
      YMSGC체결List(nIndex,_CSDataArray);
      exit;
    end;

    nIndex := Caseint(_CSDataArray[0].ToInteger, _WGOrderNo);  //
    if (nIndex > -1) then begin
      PGSCSWG체결List(nIndex,_CSDataArray);
      exit;
    end;

    nIndex := Caseint(_CSDataArray[0].ToInteger, _MJOrderNo);  //
    if (nIndex > -1) then begin
      PGSCSMain체결List(nIndex,_CSDataArray);
      exit;
    end;
  end;
end;

procedure TfHBOMain.TSPutCGList2(index : integer; nDataArray : array of string); // 포지션 청산체결리스트 등록   주문번호, 주문수량, 주문가격, 미체결수량 , 매매구분
begin
////주문번호, 종목코드, 매매구분, 주문가격,주문량,체결가격, 체결수량, 미체결량, 원주문번호, 유형
//
  if _TimePutInfo2[index].OrderNo = strTointDef(nDataArray[0],0) then begin
    _TimePutInfo2[index].JMCode := nDataArray[1];
    _TimePutInfo2[index].MMGB := strTointDef(nDataArray[2],0);  // 가격구분 00지정가, 03 시장가.
    _TimePutInfo2[index].JMPrice := strTofloatDef(nDataArray[3],0);
    _TimePutInfo2[index].JMQtn := strTointDef(nDataArray[4],0);
    _TimePutInfo2[index].CGPrice := strTofloatDef(nDataArray[5],0);
    _TimePutInfo2[index].MCGQtn := strTointDef(nDataArray[7],0);
    _TimePutInfo2[index].CGQtn := _TimePutInfo2[index].JMQtn - _TimePutInfo2[index].MCGQtn;
    _TimePutInfo2[index].WJMNo := strTointDef(nDataArray[8],0);
//    _TimePutInfo2[index].UH := '';
  end;
end;

procedure TfHBOMain.TSPutCGList1(index : integer; nDataArray : array of string); // 포지션 청산체결리스트 등록   주문번호, 주문수량, 주문가격, 미체결수량 , 매매구분
begin
////주문번호, 종목코드, 매매구분, 주문가격,주문량,체결가격, 체결수량, 미체결량, 원주문번호, 유형
//
  if _TimePutInfo1[index].OrderNo = strTointDef(nDataArray[0],0) then begin
    _TimePutInfo1[index].JMCode := nDataArray[1];
    _TimePutInfo1[index].MMGB := strTointDef(nDataArray[2],0);  // 가격구분 00지정가, 03 시장가.
    _TimePutInfo1[index].JMPrice := strTofloatDef(nDataArray[3],0);
    _TimePutInfo1[index].JMQtn := strTointDef(nDataArray[4],0);
    _TimePutInfo1[index].CGPrice := strTofloatDef(nDataArray[5],0);
    _TimePutInfo1[index].MCGQtn := strTointDef(nDataArray[7],0);
    _TimePutInfo1[index].CGQtn := _TimePutInfo1[index].JMQtn - _TimePutInfo1[index].MCGQtn;
    _TimePutInfo1[index].WJMNo := strTointDef(nDataArray[8],0);
//    _TimePutInfo1[index].UH := '';
  end;
end;

procedure TfHBOMain.TSCallCGList2(index : integer; nDataArray : array of string); // 포지션 청산체결리스트 등록   주문번호, 주문수량, 주문가격, 미체결수량 , 매매구분
begin
////주문번호, 종목코드, 매매구분, 주문가격,주문량,체결가격, 체결수량, 미체결량, 원주문번호, 유형
//
  if _TimeCallInfo2[index].OrderNo = strTointDef(nDataArray[0],0) then begin
    _TimeCallInfo2[index].JMCode := nDataArray[1];
    _TimeCallInfo2[index].MMGB := strTointDef(nDataArray[2],0);  // 가격구분 00지정가, 03 시장가.
    _TimeCallInfo2[index].JMPrice := strTofloatDef(nDataArray[3],0);
    _TimeCallInfo2[index].JMQtn := strTointDef(nDataArray[4],0);
    _TimeCallInfo2[index].CGPrice := strTofloatDef(nDataArray[5],0);
    _TimeCallInfo2[index].MCGQtn := strTointDef(nDataArray[7],0);
    _TimeCallInfo2[index].CGQtn := _TimeCallInfo2[index].JMQtn - _TimeCallInfo2[index].MCGQtn;
    _TimeCallInfo2[index].WJMNo := strTointDef(nDataArray[8],0);
//    _TimeCallInfo2[index].UH := '';
  end;
end;

procedure TfHBOMain.TSCallCGList1(index : integer; nDataArray : array of string); // 포지션 청산체결리스트 등록   주문번호, 주문수량, 주문가격, 미체결수량 , 매매구분
begin
////주문번호, 종목코드, 매매구분, 주문가격,주문량,체결가격, 체결수량, 미체결량, 원주문번호, 유형
//
  if _TimeCallInfo1[index].OrderNo = strTointDef(nDataArray[0],0) then begin
    _TimeCallInfo1[index].JMCode := nDataArray[1];
    _TimeCallInfo1[index].MMGB := strTointDef(nDataArray[2],0);  // 가격구분 00지정가, 03 시장가.
    _TimeCallInfo1[index].JMPrice := strTofloatDef(nDataArray[3],0);
    _TimeCallInfo1[index].JMQtn := strTointDef(nDataArray[4],0);
    _TimeCallInfo1[index].CGPrice := strTofloatDef(nDataArray[5],0);
    _TimeCallInfo1[index].MCGQtn := strTointDef(nDataArray[7],0);
    _TimeCallInfo1[index].CGQtn := _TimeCallInfo1[index].JMQtn - _TimeCallInfo1[index].MCGQtn;
    _TimeCallInfo1[index].WJMNo := strTointDef(nDataArray[8],0);
//    _TimeCallInfo1[index].UH := '';
  end;
end;

procedure TfHBOMain.Panel1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  (sender As TWincontrol).Perform( WM_SysCommand, $F012, 0 );
end;

procedure TfHBOMain.PGSCSMain체결List(index : integer; nDataArray : array of string); // 포지션 청산체결리스트 등록   주문번호, 주문수량, 주문가격, 미체결수량 , 매매구분
begin
////주문번호, 종목코드, 매매구분, 주문가격,주문량,체결가격, 체결수량, 미체결량, 원주문번호, 유형
//
  if _CSJMDataList[index].OrderNo = strTointDef(nDataArray[0],0) then begin
    _CSJMDataList[index].JMCode := nDataArray[1];
    _CSJMDataList[index].MMGB := strTointDef(nDataArray[2],0);  // 가격구분 00지정가, 03 시장가.
    _CSJMDataList[index].JMPrice := strTofloatDef(nDataArray[3],0);
    _CSJMDataList[index].JMQtn := strTointDef(nDataArray[4],0);
    _CSJMDataList[index].CGPrice := strTofloatDef(nDataArray[5],0);
//    _CSJMDataList[index].CGQtn := strTointDef(nDataArray[6],0);
    _CSJMDataList[index].MCGQtn := strTointDef(nDataArray[7],0);
    _CSJMDataList[index].CGQtn := _CSJMDataList[index].JMQtn - _CSJMDataList[index].MCGQtn;
//    _CSJMDataList[index].WJMNo := strTointDef(nDataArray[8],0);
//    _CSJMDataList[index].UH := '';
    _CSMainIndex := index;
  end;
//      else if (_CSJMDataList[index].WJMNo = strTointDef(nDataArray[8],0)) then  begin
////  end else if (_CSJMDataList[index].WJMNo <> 0) and (_CSJMDataList[index].WJMNo = strTointDef(nDataArray[8],0)) then  begin
//    _CSJMDataList[index].OrderNo := strTointDef(nDataArray[0],0);
//    _CSJMDataList[index].JMCode := nDataArray[1];
//    _CSJMDataList[index].MMGB := strTointDef(nDataArray[2],0);
//    _CSJMDataList[index].JMPrice := strTofloatDef(nDataArray[3],0);
//    _CSJMDataList[index].JMQtn := strTointDef(nDataArray[4],0);
//    _CSJMDataList[index].CGPrice := strTofloatDef(nDataArray[5],0);
//    _CSJMDataList[index].CGQtn := strTointDef(nDataArray[6],0);
//    _CSJMDataList[index].MCGQtn := strTointDef(nDataArray[7],0);
//    _CSJMDataList[index].WJMNo := strTointDef(nDataArray[8],0);
//    _CSJMDataList[index].UH := '';
//  end;
//  _CSMainIndex := index;
end;

procedure TfHBOMain.PGSCSWG체결List(index: integer; nDataArray: array of string);
begin
  if _CSWGJMDataList[index].OrderNo = strTointDef(nDataArray[0],0) then begin
    _CSWGJMDataList[index].JMCode := nDataArray[1];
    _CSWGJMDataList[index].MMGB := strTointDef(nDataArray[2],0); // 가격구분 00지정가, 03 시장가.
    _CSWGJMDataList[index].JMPrice := strTofloatDef(nDataArray[3],0);
    _CSWGJMDataList[index].JMQtn := strTointDef(nDataArray[4],0);
    _CSWGJMDataList[index].CGPrice := strTofloatDef(nDataArray[5],0);
//    _CSWGJMDataList[index].CGQtn := strTointDef(nDataArray[6],0);
    _CSWGJMDataList[index].MCGQtn := strTointDef(nDataArray[7],0);
    _CSWGJMDataList[index].CGQtn := _CSWGJMDataList[index].JMQtn - _CSWGJMDataList[index].MCGQtn;
//    _CSWGJMDataList[index].WJMNo := strTointDef(nDataArray[8],0);
//    _CSWGJMDataList[index].UH := '';
    _CSWGIndex := index;
  end;
//      else if (_CSWGJMDataList[index].WJMNo = strTointDef(nDataArray[8],0)) then  begin
////  end else if (_CSWGJMDataList[index].WJMNo <> 0) and (_CSWGJMDataList[index].WJMNo = strTointDef(nDataArray[8],0)) then  begin
//    _CSWGJMDataList[index].OrderNo := strTointDef(nDataArray[0],0);
//    _CSWGJMDataList[index].JMCode := nDataArray[1];
//    _CSWGJMDataList[index].MMGB := strTointDef(nDataArray[2],0);
//    _CSWGJMDataList[index].JMPrice := strTofloatDef(nDataArray[3],0);
//    _CSWGJMDataList[index].JMQtn := strTointDef(nDataArray[4],0);
//    _CSWGJMDataList[index].CGPrice := strTofloatDef(nDataArray[5],0);
//    _CSWGJMDataList[index].CGQtn := strTointDef(nDataArray[6],0);
//    _CSWGJMDataList[index].MCGQtn := strTointDef(nDataArray[7],0);
//    _CSWGJMDataList[index].WJMNo := strTointDef(nDataArray[8],0);
//    _CSWGJMDataList[index].UH := '';
//  end;

//  _CSWGIndex := index;
end;

procedure TfHBOMain.edtDMonthChange(Sender: TObject);
var nInteger : integer;
    strDate : string;
begin
  nInteger := strTointDef(copy(edtDMonth.Text,5,2), 0);
  if nInteger = 00 then // 00월이면
  begin
    nInteger := strTointDef(edtDMonth.Text, 0) - 88; // 201800 - 88 = 201812
    edtDMonth.Text := intTostr(nInteger);
  end else if nInteger = 13 then // 13월이면
  begin
    nInteger := strTointDef(edtDMonth.Text, 0) + 88; // 201813 + 88 = 201901
    edtDMonth.Text := intTostr(nInteger);
  end;
//  MonthCal;  // 차월, 차차월, 원원물 입력해주는 함수
  ManKi := edtDMonth.Text;
  nInteger := strTointDef(Manki,0);
  _CManki := intTostr(nInteger+1); //201912 + 1 = 201913
  if strToint(copy(_CManki,5,2)) > 12 then _CManki := intTostr(nInteger + 100 - strToint(copy(_CManki,5,2)) + 2); // 201912 + 100 - 13 +2 = 202001
  _CCManki := intTostr(nInteger+2); //201912 + 1 = 201913
  if strToint(copy(_CCManki,5,2)) > 12 then _CCManki := intTostr(nInteger + 100 - strToint(copy(_CCManki,5,2)) + 4); // 201912+100 - 14 + 4 = 202002
  _WManki := intTostr(nInteger+3); //201912 + 1 = 201913
  if strToint(copy(_WManki,5,2)) > 12 then _WManki := intTostr(nInteger + 100 - strToint(copy(_WManki,5,2)) + 6); // 201912+100 - 15 + 6 = 202002

  strDate := copy(ManKi,1,4) + '-' + copy(ManKi,5,2) + '-01';
  pOptionManki(StrToDate(strDate));
  edtJanJonDate.Text := FloatToStr(DaySpan(Date-1, StrToDate(ManKiDate)));//Label8.Caption)));
  strDate := DateToStr(Date);

  YearMonthCode;

  if _First_Activate = True then begin
    sbnPriceUpdate.Font.Color := clFuchsia;
    sbnPriceUpdate.Caption := '가격확인';
   IF Assigned(fPriceInfo) then begin
      with fPriceInfo do begin
        WCaptionshow;
      end;
    end;
  end;

end;

procedure TfHBOMain.DongbuRTOption5HG(nszField, nData: WideString);   //전광판용
var nString,nMonthCode : string;
    nParshingLength, i, nIndex : integer;
    nDataArray : array[0..3] of string; // 매수잔량, 매도잔량 , 매수호가, 매도호가
begin
//동부API.doc 파일의 74page 참고 할 것

  nParshingLength := 0;
  for i := 0 to 5 do    //총 46개가 있음. 그중 필요한 것만 사용.
  begin
    nString := Copy(nData, nParshingLength +1 , DongbuRTOption5HGDataLenArry[i]);
    nParshingLength := nParshingLength + DongbuRTOption5HGDataLenArry[i];
    DongbuRTOption5HGDataArry[i] := nString;
  end;

//  nDataArray[0] := gfDel32(DongbuRTOption5HGDataArry[5]);//      매수잔량
//  nDataArray[1] := gfDel32(DongbuRTOption5HGDataArry[4]);//      매도잔량
  nDataArray[2] := gfDel32(DongbuRTOption5HGDataArry[3]);//      매수우선호가
  nDataArray[3] := gfDel32(DongbuRTOption5HGDataArry[2]);//      매도우선호가

  nString := copy(nszField,6,3);   //201N6315
  if (copy(nString,3,1) = '2') or (copy(nString,3,1) = '7') then nString := nString + '.5';
  nIndex := CaseString(nString, _HeangSaGaList);  //행사가 리스트와 비교하여 전광판 그리드의 Row번호 설정
  nMonthCode :=copy(nszField,4,2);

  if nIndex in [0..65] then begin
    if nMonthCode = _DCode then begin
      Dongbu5HG전광판(nIndex, nszField, nDataArray);
//      for I := 0 to 3 do begin
//        if nszField = _YMDList[i].JMCode then begin
//          if _YMDList[i].TTQtn > 0 then begin  // 수량이 0보다 크면  매수이니까... 매도호가 입력
//            _YMDList[i].HGPrice := strTofloatDef(nDataArray[3],0);   // 매수이면 매도호가
//          end else _YMDList[i].HGPrice := strTofloatDef(nDataArray[2],0); // 매도이면 매수호가
//
//          // 양매도는 무조건 신규는 매도, 청산은 매수로 고정!!!!!!!
//          _YMDNewBY := _YMDList[2].HGPrice  + _YMDList[3].HGPrice;
//          _YMDNewBY := _YMDNewBY * (-1);
//          _YMDOldBY := _YMDList[0].HGPrice  + _YMDList[1].HGPrice;
//          if _YMDList[1].HGPrice > 0 then begin
//            if _YMDList[0].HGPrice < _YMDList[1].HGPrice then
//              _YMDRatio :=  _YMDList[0].HGPrice / _YMDList[1].HGPrice // 0.25 : 1.0 => 0.25/1      1/0.25 = 4
//            else if _YMDList[0].HGPrice > _YMDList[1].HGPrice then
//              _YMDRatio :=  _YMDList[1].HGPrice / _YMDList[0].HGPrice; // 0.25 : 1.0 => 0.25/1      1/0.25 = 4
//          end;
//          _YMDRTIndex := i;
//          break;
//        end;
//      end;

    end else if nMonthCode = _CWCode then Dongbu5HGCW전광판(nIndex, nszField, nDataArray)
    else if nMonthCode = _CCWCode then Dongbu5HGCCW전광판(nIndex, nszField, nDataArray)
    else if nMonthCode = _WWCode then Dongbu5HGWW전광판(nIndex, nszField, nDataArray);
  end;
end;

procedure TfHBOMain.Dongbu5HGWW전광판(index : integer; nszField: string; nDataArray : array of string);
begin
  if copy(nszField,1,3) = '201' then // 콜옵션이면...
  begin
    _WWHSGListInfo[1,index] := strTofloatDef(nDataArray[2],0); // 매수 호가
    _WWHSGListInfo[0,index] := strTofloatDef(nDataArray[3],0); // 매도 호가
//    _WWRTCallIndex[Index] := True;
  end else if copy(nszField,1,3) = '301' then // Put옵션이면...
  begin
    _WWHSGListInfo[6,index] := strTofloatDef(nDataArray[3],0); // 매도 호가
    _WWHSGListInfo[5,index] := strTofloatDef(nDataArray[2],0); // 매수 호가
//    _WWRTPutIndex[Index] := True;
  end;
  _WWRTIndex[Index] := True;

end;

procedure TfHBOMain.Dongbu5HGCCW전광판(index : integer; nszField: string; nDataArray : array of string);
begin
  if copy(nszField,1,3) = '201' then // 콜옵션이면...
  begin
    _CCWHSGListInfo[1,index] := strTofloatDef(nDataArray[2],0); // 매수 호가
    _CCWHSGListInfo[0,index] := strTofloatDef(nDataArray[3],0); // 매도 호가
//    _CCWRTCallIndex[Index] := True;
  end else if copy(nszField,1,3) = '301' then // Put옵션이면...
  begin
    _CCWHSGListInfo[6,index] := strTofloatDef(nDataArray[3],0); // 매도 호가
    _CCWHSGListInfo[5,index] := strTofloatDef(nDataArray[2],0); // 매수 호가
//    _CCWRTPutIndex[Index] := True;
  end;
  _CCWRTIndex[Index] := True;

end;

procedure TfHBOMain.Dongbu5HGCW전광판(index : integer; nszField: string; nDataArray : array of string);
begin
  if copy(nszField,1,3) = '201' then // 콜옵션이면...
  begin
    _CWHSGListInfo[1,index] := strTofloatDef(nDataArray[2],0); // 매수 호가
    _CWHSGListInfo[0,index] := strTofloatDef(nDataArray[3],0); // 매도 호가
//    _CWRTCallIndex[Index] := True;
  end else if copy(nszField,1,3) = '301' then // Put옵션이면...
  begin
    _CWHSGListInfo[6,index] := strTofloatDef(nDataArray[3],0); // 매도 호가
    _CWHSGListInfo[5,index] := strTofloatDef(nDataArray[2],0); // 매수 호가
//    _CWRTPutIndex[Index] := True;
  end;
  _CWRTIndex[Index] := True;

end;

procedure TfHBOMain.Dongbu5HG전광판(index : integer; nszField: string; nDataArray : array of string);
begin
  if copy(nszField,1,3) = '201' then // 콜옵션이면...
  begin
    _DWHSGListInfo[1,index] := strTofloatDef(nDataArray[2],0); // 매수 호가
    _DWHSGListInfo[0,index] := strTofloatDef(nDataArray[3],0); // 매도 호가
//    _DWHSGListInfo[2,index] := strTofloatDef(nDataArray[4],0); // 현재가
//    _DWRTCallIndex[index] := True;
//    _DWYMDCSCallIndex[index] := True;
  end else if copy(nszField,1,3) = '301' then // Put옵션이면...
  begin
    _DWHSGListInfo[6,index] := strTofloatDef(nDataArray[3],0); // 매도 호가
    _DWHSGListInfo[5,index] := strTofloatDef(nDataArray[2],0); // 매수 호가
//    _DWHSGListInfo[4,index] := strTofloatDef(nDataArray[4],0); // 현재가
//    _DWRTPutIndex[index] := True;
//    _DWYMDCSPutIndex[index] := True;
  end;
  _DWRTIndex[index] := True;

end;

procedure TfHBOMain.VisibleChanging;
begin
 // inherited;
end;

procedure TfHBOMain.DongbuRTNowPrice(nszField, nData: WideString);   //전광판용
var nString : string;
    nParshingLength, i, nIndex : integer;
    nDataArray : array[0..4] of string; // 매수잔량, 매도잔량 , 매수호가, 매도호가,현재가
begin
//동부API.doc 파일의 56page 참고 할 것

  nParshingLength := 0;
  for i := 0 to 70 do    //84까지 있으나 70 Kp200까지만 필요하여 70까지만 함.
  begin
    nString := Copy(nData, nParshingLength +1 , DongbuRTNowPriceDataLenArry[i]);
    nParshingLength := nParshingLength + DongbuRTNowPriceDataLenArry[i];
    DongbuRTNowPriceDataArry[i] := nString;
    nString :=  IntToStr(i) +'::' + IntToStr(DongbuRTJangoDataLenArry[i]) + ':::' + nString;
//    mmoLog.Lines.Add(nString);
  end;

  KP200 := copy(DongbuRTNowPriceDataArry[70],3,6);//코스피200 kospi200
//  edtKP200.Text := KP200;

  if copy(nszField,4,2) = _DCode then begin  // 만기월이 코드랑 맞으면 수행
    nDataArray[4] := gfDel32(DongbuRTNowPriceDataArry[18]);//      현재가,

    nString := copy(nszField,6,3);   //201N6315
    if (copy(nString,3,1) = '2') or (copy(nString,3,1) = '7') then nString := nString + '.5';
    nIndex := CaseString(nString, _HeangSaGaList);  //행사가 리스트와 비교하여 전광판 그리드의 Row번호 설정
    if nIndex in [0..65] then Dongbu전광판(nIndex, nszField, nDataArray);

  end else if copy(nszField,4,2) = _CWCode then begin  // 만기월이 코드랑 맞으면 수행
    nDataArray[4] := gfDel32(DongbuRTNowPriceDataArry[18]);//      현재가,

    nString := copy(nszField,6,3);   //201N6315
    if (copy(nString,3,1) = '2') or (copy(nString,3,1) = '7') then nString := nString + '.5';
    nIndex := CaseString(nString, _HeangSaGaList);  //행사가 리스트와 비교하여 전광판 그리드의 Row번호 설정
    if nIndex in [0..65] then DongbuCW전광판(nIndex, nszField, nDataArray);
  end else if copy(nszField,4,2) = _CCWCode then begin  // 만기월이 코드랑 맞으면 수행
    nDataArray[4] := gfDel32(DongbuRTNowPriceDataArry[18]);//      현재가,

    nString := copy(nszField,6,3);   //201N6315
    if (copy(nString,3,1) = '2') or (copy(nString,3,1) = '7') then nString := nString + '.5';
    nIndex := CaseString(nString, _HeangSaGaList);  //행사가 리스트와 비교하여 전광판 그리드의 Row번호 설정
    if nIndex in [0..65] then DongbuCCW전광판(nIndex, nszField, nDataArray);
  end else if copy(nszField,4,2) = _WWCode then begin  // 만기월이 코드랑 맞으면 수행
    nDataArray[4] := gfDel32(DongbuRTNowPriceDataArry[18]);//      현재가,

    nString := copy(nszField,6,3);   //201N6315
    if (copy(nString,3,1) = '2') or (copy(nString,3,1) = '7') then nString := nString + '.5';
    nIndex := CaseString(nString, _HeangSaGaList);  //행사가 리스트와 비교하여 전광판 그리드의 Row번호 설정
    if nIndex in [0..65] then DongbuWW전광판(nIndex, nszField, nDataArray);
  end else if copy(nszField,4,2) = _WeeklyMonthCode then begin  // 위클리이면
    nDataArray[4] := gfDel32(DongbuRTNowPriceDataArry[18]);//      현재가,

    nString := copy(nszField,6,3);   //201N6315
    if (copy(nString,3,1) = '2') or (copy(nString,3,1) = '7') then nString := nString + '.5';
    nIndex := CaseString(nString, _HeangSaGaList);  //행사가 리스트와 비교하여 전광판 그리드의 Row번호 설정
    if nIndex in [0..65] then WeeklyHG전광판(nIndex, nszField, nDataArray);
  end;
end;

procedure TfHBOMain.DongbuWW전광판(index : integer; nszField: string; nDataArray : array of string);    // 현재가 기준
begin
  if copy(nszField,1,3) = '201' then // 콜옵션이면...
  begin
    _WWHSGListInfo[2,index] := strTofloatDef(nDataArray[4],0); // 콜현재가
//    _WWRTCallIndex[Index] := True;
  end else if copy(nszField,1,3) = '301' then // Put옵션이면...
  begin
    _WWHSGListInfo[4,index] := strTofloatDef(nDataArray[4],0); // 풋현재가
//    _WWRTPutIndex[Index] := True;
  end;
  _WWRTIndex[Index] := True;

end;

procedure TfHBOMain.DongbuCCW전광판(index : integer; nszField: string; nDataArray : array of string);    // 현재가 기준
begin
  if copy(nszField,1,3) = '201' then // 콜옵션이면...
  begin
    _CCWHSGListInfo[2,index] := strTofloatDef(nDataArray[4],0); // 콜현재가
//    _CCWRTCallIndex[Index] := True;
  end else if copy(nszField,1,3) = '301' then // Put옵션이면...
  begin
    _CCWHSGListInfo[4,index] := strTofloatDef(nDataArray[4],0); // 풋현재가
//    _CCWRTPutIndex[Index] := True;
  end;
  _CCWRTIndex[Index] := True;

end;

procedure TfHBOMain.DongbuCW전광판(index : integer; nszField: string; nDataArray : array of string);    // 현재가 기준
begin
  if copy(nszField,1,3) = '201' then // 콜옵션이면...
  begin
    _CWHSGListInfo[2,index] := strTofloatDef(nDataArray[4],0); // 콜현재가
//    _CWRTCallIndex[Index] := True;
  end else if copy(nszField,1,3) = '301' then // Put옵션이면...
  begin
    _CWHSGListInfo[4,index] := strTofloatDef(nDataArray[4],0); // 풋현재가
//    _CWRTPutIndex[Index] := True;
  end;
  _CWRTIndex[Index] := True;

end;

procedure TfHBOMain.Dongbu전광판(index : integer; nszField: string; nDataArray : array of string);    // 현재가 기준
begin
  if copy(nszField,1,3) = '201' then // 콜옵션이면...
  begin
    _DWHSGListInfo[2,index] := strTofloatDef(nDataArray[4],0); // 콜현재가
//    _DWRTCallIndex[index] := True;
  end else if copy(nszField,1,3) = '301' then // Put옵션이면...
  begin
    _DWHSGListInfo[4,index] := strTofloatDef(nDataArray[4],0); // 풋현재가
//    _DWRTPutIndex[index] := True;
  end;
  _DWRTIndex[index] := True;
end;

procedure TfHBOMain.MainSaveUIValue; // 화면의 최종값을 저장한다.
var nString : string;
begin
  mmoSaveUIValue.clear;
  nString := '이름:' + cbbName.Text;
  mmoSaveUIValue.Lines.Add(nString);
  nString := 'Account:' + cbbDongBuAcc.Text;
  mmoSaveUIValue.Lines.Add(nString);
  nString := 'IDPW:' + edtDongBuPW.Text;
  mmoSaveUIValue.Lines.Add(nString);
  nString := '투자금:' + stgJyungGuaKyumHyunHwang.Cells[0,1];
  mmoSaveUIValue.Lines.Add(nString);
  nString := ExtractFilePath(paramstr(0)) + 'Main_UIValue.ini';
  mmoSaveUIValue.Lines.SaveToFile(nString);
end;

procedure TfHBOMain.MainOpenUIValue; // 화면의 최종값을 불러오기한다.
var nString : string;
    i : integer;
//    nSingle : single;
begin
  mmoSaveUIValue.Clear;
  nString := ExtractFilePath(paramstr(0)) + 'Main_UIValue.ini';
  mmoSaveUIValue.Lines.LoadFromFile(nString);

  for I := 0 to mmoSaveUIValue.Lines.Count -1 do
  begin
    nString := mmoSaveUIValue.Lines.Strings[i];
    if pos('이름:',nString) > 0 then  cbbName.Text := copy(nString,4,Length(nString) - 3)
    else if pos('Account:',nString) > 0 then  cbbDongBuAcc.Text := copy(nString,9,Length(nString) - 8)
    else if pos('IDPW:',nString) > 0 then  edtDongBuPW.Text := copy(nString,6,Length(nString) - 5)
    else if pos('투자금:',nString) > 0 then  stgJyungGuaKyumHyunHwang.Cells[0,1] := copy(nString,5,Length(nString) - 4);
  end;
end;

procedure TfHBOMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  MainSaveUIValue;
  
  try
    IF Assigned(fYMS_GC) then begin
      fYMS_GC.Close;
    end;

    IF Assigned(fYMS_CS) then begin
      fYMS_CS.Close;
    end;

    IF Assigned(fYMD) then begin
      fYMD.Close;
    end;

    IF Assigned(fTimeSpread) then begin
      fTimeSpread.Close;
    end;

    IF Assigned(fPriceInfo) then begin
      fPriceInfo.Close;
    end;

    IF Assigned(fJango) then begin
      fJango.Close;
    end;
  except

  end;
end;

procedure TfHBOMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  try
    if HandleDongbuApi = 1 then begin
      YuantaApi1.YOA_UnRegistAllAuto; // 실시간 등록 해지
      YuantaApi1.YOA_UnInitial;
    end;
  except

  end;
end;

type
  EInvalidBalance = class(Exception);

procedure TfHBOMain.CustomExceptionHandler(Sender: TObject; E: Exception);
begin
  if E is EInvalidBalance then
    statusbar1.Panels[1].Text := formatdatetime('hhmmss',now) + ' - Handling Invalid Balance Execption'
  else
    Application.ShowException(E);
end;

procedure TfHBOMain.FormCreate(Sender: TObject);
begin
  Application.OnException := CustomExceptionHandler;
//  HorzScrollBar.Range := 500; // set the range to an higher number
//  ShowScrollBar(Handle, SB_BOTH, True);
//  HorzScrollBar.Range := 1000;;
//  AutoScroll := False;
end;

procedure TfHBOMain.FormShow(Sender: TObject);
var i, j, nWeekNo, nDayNo : integer;
    nDateTime : TDateTime;
    nSTring, sTemp, sDate : string;
    nMankiMonth : integer;
begin
  if _First_Activate = False then begin
    LastONIndex := 0;
    for I := 0 to 5 do begin    // 잔고 변수 초기화
      for j := 0 to 49 do begin
        _JangoList[i,j] := '';
      end;
    end;

    for I := 0 to 9999 do
      AllOrderNo[i] := 0; // 모든 주문번호 초기화

    for I := 0 to 65 do begin
      _DWRTIndex[i] := False;
      _CWRTIndex[i] := False;
      _CCWRTIndex[i] := False;
      _WWRTIndex[i] := False;

//      _DWRTCallIndex[i] := False;
//      _CWRTCallIndex[i] := False;
//      _CCWRTCallIndex[i] := False;
//      _WWRTCallIndex[i] := False;
//
//      _DWRTPutIndex[i] := False;
//      _CWRTPutIndex[i] := False;
//      _CCWRTPutIndex[i] := False;
//      _WWRTPutIndex[i] := False;
    end;

    //여기서 부터 만기월 찾기
    dtpToday.Date := now;
    nDateTime := now;
    nWeekNo := WeekOfTheMonth(nDateTime); // 몇째주인지 파악
    nDayNo := DayofWeek(nDateTime);
    if (nWeekNo = 1) and (strTointDef(copy(formatdatetime('yymmdd',nDateTime),5,2),0) > 20) then begin    // 5주차처리
      nSTring := formatdateTime('yyyymmdd',now + 7);
      edtDMonth.Text := copy(nString,1,6);
    end else if ((nWeekNo = 2) and (nDayNo = 1)) then begin // 3째주이고 일요일이면...nWeekNo =2 가되고 nDayNo = 1이 된다.
      nSTring := formatdateTime('yyyymmdd',now + 25);
      edtDMonth.Text := copy(nString,1,6);
    end else if ((nWeekNo = 2) and (nDayNo > 5)) or (nWeekNo > 2) then begin // 4 : 목요일
      nSTring := formatdateTime('yyyymmdd',now + 25);
      edtDMonth.Text := copy(nString,1,6);
    end else begin
      nSTring := formatdateTime('yyyymmdd',now);
      edtDMonth.Text := copy(nString,1,6);
    end;

    sDate := ManKiDate;
    pYearCode(copy(sDate,1,4));
    sTemp := '101' + YearCode;         //101NC000

    if StrToInt(Copy(sDate,6,2)) < 4 then nMankiMonth := 3
    else if StrToInt(Copy(sDate,6,2)) < 7 then  nMankiMonth := 6
    else if StrToInt(Copy(sDate,6,2)) < 10 then nMankiMonth := 9
    else nMankiMonth := 12;

    if nMankiMonth =  3 then sTemp := sTemp + '3000'
    else if nMankiMonth = 6 then sTemp := sTemp + '6000'
    else if nMankiMonth = 9 then sTemp := sTemp + '9000'
    else sTemp := sTemp + 'C000';

    _DongBuSunMulCode := sTemp;

    Caption := Caption + ' - ' + ExtractFilePath(paramstr(0));

    MainOpenUIValue;
    cbbNameChange(Sender);

    stgJyungGuaKyumHyunHwang.Cells[0,0] :=  '   투자원금';
    stgJyungGuaKyumHyunHwang.Cells[1,0] :=  '평가예탁금총액';
    stgJyungGuaKyumHyunHwang.Cells[2,0] :=  '   평가손익';
    stgJyungGuaKyumHyunHwang.Cells[3,0] :=  '    손익률';
    stgJyungGuaKyumHyunHwang.Cells[4,0] :=  '  현종목손익';
    stgJyungGuaKyumHyunHwang.Cells[5,0] :=  ' 주문가능총액';
    stgJyungGuaKyumHyunHwang.Cells[6,0] :=  '위탁증거금총액';
    stgJyungGuaKyumHyunHwang.Cells[7,0] :=  '  인출가능액';
    stgJyungGuaKyumHyunHwang.Cells[8,0] :=  ' 당일실현손익';
  end;
  _First_Activate := True;
end;

procedure TfHBOMain.pOptionManki(nDateTime : TdateTime);
var Nowdate, ThisMonthThursday : tDateTime;
begin
  Nowdate := nDateTime;
  ThisMonthThursday := NthOfNthWeek(5,2,Nowdate);
  if Nowdate < ThisMonthThursday then
  begin
    ManKiDate := FormatDateTime('yyyy-mm-dd',ThisMonthThursday);
  end else begin

   ThisMonthThursday := NthOfNthWeek(5,2,FirstOfMonth( FirstOfMonth(Nowdate) + 32 ));
   ManKiDate := FormatDateTime('yyyy-mm-dd',ThisMonthThursday);
  end;
  Label8.Caption :=ManKiDate;
end;

procedure TfHBOMain.DBRTSMHG(nszField, nData: WideString);   // 선물호가 SH0
var nString,sDate, sTemp : string;
    nParshingLength, i, nMankiMonth : integer;
//    nDataArray : array[0..3] of string; // 매수잔량, 매도잔량 , 매수호가, 매도호가,현재가
begin
//동부API.doc 파일의 68page 참고 할 것

  nParshingLength := 0;
  for i := 0 to 47 do
  begin
    nString := Copy(nData, nParshingLength +1 , DongbuRTSH0DataLenArry[i]);
    nParshingLength := nParshingLength + DongbuRTSH0DataLenArry[i];
    DongbuRTSH0DataArry[i] := nString;
  end;

  /// 해당 월이 맞으면 수행하게 만든다.
  sDate := ManKiDate;//Label8.Caption;// FormatDateTime('yyyymmdd',now);     //yyyy-mm-dd

  sTemp := '101' + YearCode;         //101NC000

  if StrToInt(Copy(sDate,6,2)) < 4 then nMankiMonth := 3
  else if StrToInt(Copy(sDate,6,2)) < 7 then  nMankiMonth := 6
  else if StrToInt(Copy(sDate,6,2)) < 10 then nMankiMonth := 9
  else nMankiMonth := 12;

  if nMankiMonth =  3 then sTemp := sTemp + '3000'
  else if nMankiMonth = 6 then sTemp := sTemp + '6000'
  else if nMankiMonth = 9 then sTemp := sTemp + '9000'
  else sTemp := sTemp + 'C000';

  if DongbuRTSH0DataArry[0] = sTemp then begin
    _SMCMDJL := strTointDef(gfDel32(DongbuRTSH0DataArry[14]),0); // 총매도호가잔량   ok
    _SMCMSJL := strTointDef(gfDel32(DongbuRTSH0DataArry[15]),0); // 총매수호가잔량   ok
    _SMSMS := strTointDef(gfDel32(DongbuRTSH0DataArry[47]),0); //순매수잔량
    _SunMulRTHGflg := 1;
//    edtSMCMDJL.Text := intTostr(strTointDef(gfDel32(DongbuRTSH0DataArry[14]),0)); // 총매도호가잔량   ok
//    edtSMCMSJL.Text := intTostr(strTointDef(gfDel32(DongbuRTSH0DataArry[15]),0)); // 총매수호가잔량   ok
//    intTemp := strTointDef(gfDel32(DongbuRTSH0DataArry[47]),0);
//    if intTemp > 0 then begin
//      edtSMSMS.Color := clGray;
//      edtSMSMS.Font.Color := clRed;
//      edtSMSMS.text := '+' + intTostr(intTemp);
//    end else if intTemp < 0 then begin
//      edtSMSMS.Color := clAqua;
//      edtSMSMS.Font.Color := clBlue;
//      edtSMSMS.text := intTostr(intTemp); // 호가총잔량차이    ok
//    end else begin
//      edtSMSMS.Color := clGray;
//      edtSMSMS.Font.Color := clWhite;
//      edtSMSMS.text := intTostr(intTemp); // 호가총잔량차이    ok
//    end;
  end;
end;

procedure TfHBOMain.DongbuRTSunMul(nszField, nData: WideString);   // 선물 현재가와 등락
var nString : string;
    nParshingLength, i : integer;
    nSingle : single;
begin
  nParshingLength := 0;
  for i := 0 to 11 do    // 74까지 있지만 앞부분만 사용.
  begin
    nString := Copy(nData, nParshingLength +1 , DongbuRTSunMulDataLenArry[i]);
    nParshingLength := nParshingLength + DongbuRTSunMulDataLenArry[i];
    DongbuRTSunMulDataArry[i] := nString;
  end;
//  sDate := ManKiDate;     //Label8.Caption;// FormatDateTime('yyyymmdd',now);     //yyyy-mm-dd
////
//  sTemp := '101' + YearCode;         //101NC000
//
//  if StrToInt(Copy(sDate,6,2)) < 4 then nMankiMonth := 3
//  else if StrToInt(Copy(sDate,6,2)) < 7 then  nMankiMonth := 6
//  else if StrToInt(Copy(sDate,6,2)) < 10 then nMankiMonth := 9
//  else nMankiMonth := 12;
//
//  if nMankiMonth =  3 then sTemp := sTemp + '3000'
//  else if nMankiMonth = 6 then sTemp := sTemp + '6000'
//  else if nMankiMonth = 9 then sTemp := sTemp + '9000'
//  else sTemp := sTemp + 'C000';

//  if DongbuRTSunMulDataArry[0] = sTemp then begin
  if DongbuRTSunMulDataArry[0] = _DongBuSunMulCode then begin
    SunMul := gfDel32(DongbuRTSunMulDataArry[3]); // 현재가
//    nSunMul := strTofloatDef(SunMul,0);
    { 이평선 계산 시작
    if First_Exe_EyP then begin
      _emaMin1 := nSunMul;//strTofloatDef(SunMul,0);
//      _emaMin2 := nSunMul;
//      _emaMin3 := nSunMul;
//      _emaMin4 := nSunMul;

      _emaMid1 := nSunMul;
      _emaMid2 := nSunMul;
      _emaMid3 := nSunMul;
      _emaMid4 := nSunMul;

      _emaMax1 := nSunMul;
      _emaMax2 := nSunMul;
      _emaMax3 := nSunMul;
      _emaMax4 := nSunMul;

      _SunMulAVGflg := 1;
      First_Exe_EyP := False;
    end else begin
      // 이동평균 계산하기..
      _emaMin1 := EMA_function(_ema_aMin1, nSunMul, _emaMin1);
//      _emaMin2 := EMA_function(_ema_aMin2, nSunMul, _emaMin2);
//      _emaMin3 := EMA_function(_ema_aMin3, nSunMul, _emaMin3);
//      _emaMin4 := EMA_function(_ema_aMin4, nSunMul, _emaMin4);

      _emaMid1 := EMA_function(_ema_aMid1, nSunMul, _emaMid1);
      _emaMid2 := EMA_function(_ema_aMid2, nSunMul, _emaMid2);
      _emaMid3 := EMA_function(_ema_aMid3, nSunMul, _emaMid3);
      _emaMid4 := EMA_function(_ema_aMid4, nSunMul, _emaMid4);

      _emaMax1 := EMA_function(_ema_aMax1, nSunMul, _emaMax1);
      _emaMax2 := EMA_function(_ema_aMax2, nSunMul, _emaMax2);
      _emaMax3 := EMA_function(_ema_aMax3, nSunMul, _emaMax3);
      _emaMax4 := EMA_function(_ema_aMax4, nSunMul, _emaMax4);

      _EPyGapMax11 :=  _emaMin1 -  _emaMax1;     // 5000이평과 100평의 차이, + 이면 100평이 5000평 위에 있음.
      _EPyGapMax12 :=  _emaMin1 -  _emaMax2;
      _EPyGapMax13 :=  _emaMin1 -  _emaMax3;
      _EPyGapMax14 :=  _emaMin1 -  _emaMax4;

//      _EPyGapMax21 :=  _emaMin2 -  _emaMax1;
//      _EPyGapMax22 :=  _emaMin2 -  _emaMax2;
//      _EPyGapMax23 :=  _emaMin2 -  _emaMax3;
//      _EPyGapMax24 :=  _emaMin2 -  _emaMax4;

//      _EPyGapMax31 :=  _emaMin3 -  _emaMax1;     // 5000이평과 100평의 차이, + 이면 100평이 5000평 위에 있음.
//      _EPyGapMax32 :=  _emaMin3 -  _emaMax2;
//      _EPyGapMax33 :=  _emaMin3 -  _emaMax3;
//      _EPyGapMax34 :=  _emaMin3 -  _emaMax4;

//      _EPyGapMax41 :=  _emaMin4 -  _emaMax1;
//      _EPyGapMax42 :=  _emaMin4 -  _emaMax2;
//      _EPyGapMax43 :=  _emaMin4 -  _emaMax3;
//      _EPyGapMax44 :=  _emaMin4 -  _emaMax4;

      _EPyGapMid11 :=  _emaMin1 -  _emaMid1;     // 1000이평과 120평의 차이, + 이면 120평이 1000평 위에 있음.
      _EPyGapMid12 :=  _emaMin1 -  _emaMid2;
      _EPyGapMid13 :=  _emaMin1 -  _emaMid3;
      _EPyGapMid14 :=  _emaMin1 -  _emaMid4;

//      _EPyGapMid21 :=  _emaMin2 -  _emaMid1;
//      _EPyGapMid22 :=  _emaMin2 -  _emaMid2;
//      _EPyGapMid23 :=  _emaMin2 -  _emaMid3;
//      _EPyGapMid24 :=  _emaMin2 -  _emaMid4;

//      _EPyGapMid31 :=  _emaMin3 -  _emaMid1;     // 1000이평과 120평의 차이, + 이면 120평이 1000평 위에 있음.
//      _EPyGapMid32 :=  _emaMin3 -  _emaMid2;
//      _EPyGapMid33 :=  _emaMin3 -  _emaMid3;
//      _EPyGapMid34 :=  _emaMin3 -  _emaMid4;
//
//      _EPyGapMid41 :=  _emaMin4 -  _emaMid1;
//      _EPyGapMid42 :=  _emaMin4 -  _emaMid2;
//      _EPyGapMid43 :=  _emaMin4 -  _emaMid3;
//      _EPyGapMid44 :=  _emaMin4 -  _emaMid4;

      _SunMulAVGflg := 1;
    end;
    이평선 계산 끝      }

    nString := gfDel32(DongbuRTSunMulDataArry[11]);
    if copy(nString,1,1) = '-' then DyungLak := nString
    else DyungLak := '+' + nString;
    _PriceInfoDGPosition := Trunc((_MaxHSG - strTofloatDef(SunMul,0))/2.5);
    nSingle := ( _MaxHSG - _PriceInfoDGPosition * 2.5)  - strTofloatDef(SunMul,0) ;//
    if nSingle > 1.25 then _PriceInfoDGPosition := _PriceInfoDGPosition + 1;
    _SunMulRTflg := 1;
    _SunMulRTChartflg[_SunMulRTChartStep] := True;
  end;
end;

procedure TfHBOMain.DBSOJuMun(nData : WideString);  // 선옵주문
var nString : string;
    nParshingLength, i, nCnt, nClientKey : integer;     // nCnt는 청산 시 메인종목과 가장 외가 종목의 주문 순서가 몇번째인지 체크하는 용도
begin
  nParshingLength := 0;
  for i := 0 to 4 do //
  begin
    nString := Copy(nData, nParshingLength +1 , DBSOJuMunDataLenArray[i]);
    nParshingLength := nParshingLength + DBSOJuMunDataLenArray[i];
    DBSOJuMunDataArray[i] := nString;
  end;
  _JMRecieveflg := 1;

//  /// 이하 처리는 각 unit에서 DBSOJuMunDataArray값을 이용하여 처리.
//  nIndex := CaseInt(strTointDef(DBSOJuMunDataArray[2],0),AllOrderNo);
//  if nIndex > -1 then begin
//    AllCGInfo[nIndex].JMKey := strTointDef(DBSOJuMunDataArray[1],-8);   // 주문키 입력
//    AllCGInfo[nIndex].OrderNo := strTointDef(DBSOJuMunDataArray[2],0);         // 주문번호 입력
//    if (AllCGInfo[nIndex].JMKey <> 0)  and (AllCGInfo[nIndex].OrderNo <> 0) then begin
//      _JuMunQtnError_flg := 1;
//      _JuMunOK_flg := 1;
//    end;
//
//  end else if nIndex = -1 then begin
//    AllCGInfo[LastONIndex].JMKey := strTointDef(DBSOJuMunDataArray[1],-8);   // 주문키 입력
//    AllCGInfo[LastONIndex].OrderNo := strTointDef(DBSOJuMunDataArray[2],0);         // 주문번호 입력
//    AllOrderNo[LastONIndex] :=  strTointDef(DBSOJuMunDataArray[2],0);
//    if (AllCGInfo[LastONIndex].JMKey <> 0)  and (AllCGInfo[LastONIndex].OrderNo <> 0) then begin
//      _JuMunQtnError_flg := 1;
//      _JuMunOK_flg := 1;
//    end;
//    LastONIndex := LastONIndex + 1;
//  end;


  nString := DBSOJuMunDataArray[1];
  nClientKey := strTointDef(copy(nString,1,2),0);
  case nClientKey of
    01 : begin   // 양매수 구축
      nCnt := strTointDef(copy(DBSOJuMunDataArray[1],3,3),0);  // 주문순서  ClientKey = 11010000,   33010000
      if _YMSGCCGList[nCnt].JMKey = -1 then begin
        _YMSGCCGList[nCnt].JMKey :=  strTointDef(DBSOJuMunDataArray[1],-8);   // 주문키 입력
        _YMSGCCGList[nCnt].OrderNo := strTointDef(DBSOJuMunDataArray[2],0);         // 주문번호 입력
        _YMSGCOrderNo[nCnt] := _YMSGCCGList[nCnt].OrderNo;
      end;
    end;
    11: begin   // 청산 메인 주문
      nCnt := strTointDef(copy(DBSOJuMunDataArray[1],3,3),0)-1;  // 주문순서  ClientKey = 11010000,   33010000
      if _CSJMDataList[nCnt].JMKey = -1 then begin
        _CSJMDataList[nCnt].JMKey :=  strTointDef(DBSOJuMunDataArray[1],-8);   // 주문키 입력
        _CSJMDataList[nCnt].OrderNo := strTointDef(DBSOJuMunDataArray[2],0);         // 주문번호 입력
        _MJOrderNo[nCnt] := _CSJMDataList[nCnt].OrderNo;
        _CSMainIndex := nCnt;
      end;
    end;
    22: begin // 청산 외가 주문
      nCnt := strTointDef(copy(DBSOJuMunDataArray[1],3,3),0)-1;  // 주문순서  ClientKey = 11010000,   33010000
      if _CSWGJMDataList[nCnt].JMKey = -1 then begin
        _CSWGJMDataList[nCnt].JMKey :=  strTointDef(DBSOJuMunDataArray[1],-8);   // 주문키 입력
        _CSWGJMDataList[nCnt].OrderNo := strTointDef(DBSOJuMunDataArray[2],0);         // 주문번호 입력
        _WGOrderNo[nCnt] := _CSWGJMDataList[nCnt].OrderNo;
        _CSWGIndex :=  nCnt;
      end;
    end;
    33 : begin  // 양매도 주문
        nCnt := strTointDef(copy(DBSOJuMunDataArray[1],4,1),0)-1;  // 주문순서  ClientKey
        if _YMDJMDataList[nCnt].JMKey = -1 then begin
          _YMDJMDataList[nCnt].JMKey :=  strTointDef(DBSOJuMunDataArray[1],-8);   // 주문키 입력
          _YMDJMDataList[nCnt].OrderNo := strTointDef(DBSOJuMunDataArray[2],0);         // 주문번호 입력
          _YMDOrderNo[nCnt] := _YMDJMDataList[nCnt].OrderNo;
          _YMDIndex :=  nCnt;
        end;
    end;
    44 : begin  // 타임콜1 당월
        nCnt := strTointDef(copy(DBSOJuMunDataArray[1],3,3),0);
        _TimeCallInfo1[nCnt].JMKey :=  strTointDef(DBSOJuMunDataArray[1],-8);   // 주문키 입력
        _TimeCallInfo1[nCnt].OrderNo := strTointDef(DBSOJuMunDataArray[2],0);         // 주문번호 입력
        _TimeCallOrderNo1[nCnt] := _TimeCallInfo1[nCnt].OrderNo;
        _JuMunQtnError_flg := 1;
        _JuMunOK_flg := 1;
    end;
    55 : begin  // 타임콜2차월
        nCnt := strTointDef(copy(DBSOJuMunDataArray[1],3,3),0);
        _TimeCallInfo2[nCnt].JMKey :=  strTointDef(DBSOJuMunDataArray[1],-8);   // 주문키 입력
        _TimeCallInfo2[nCnt].OrderNo := strTointDef(DBSOJuMunDataArray[2],0);         // 주문번호 입력
        _TimeCallOrderNo2[nCnt] := _TimeCallInfo2[nCnt].OrderNo;
        _JuMunQtnError_flg := 1;
        _JuMunOK_flg := 1;
    end;
    66 : begin  // 타임풋1당월
        nCnt := strTointDef(copy(DBSOJuMunDataArray[1],3,3),0);
        _TimePutInfo1[nCnt].JMKey :=  strTointDef(DBSOJuMunDataArray[1],-8);   // 주문키 입력
        _TimePutInfo1[nCnt].OrderNo := strTointDef(DBSOJuMunDataArray[2],0);         // 주문번호 입력
        _TimePutOrderNo1[nCnt] := _TimePutInfo1[nCnt].OrderNo;
        _JuMunQtnError_flg := 1;
        _JuMunOK_flg := 1;
    end;
    77 : begin  // 타임풋2차월
        nCnt := strTointDef(copy(DBSOJuMunDataArray[1],3,3),0);
        _TimePutInfo2[nCnt].JMKey :=  strTointDef(DBSOJuMunDataArray[1],-8);   // 주문키 입력
        _TimePutInfo2[nCnt].OrderNo := strTointDef(DBSOJuMunDataArray[2],0);         // 주문번호 입력
        _TimePutOrderNo2[nCnt] := _TimePutInfo2[nCnt].OrderNo;
        _JuMunQtnError_flg := 1;
        _JuMunOK_flg := 1;
    end;
  end;



//  if copy(DBSOJuMunDataArray[1],1,2) = '33'  then begin
//    nCSindex := strTointDef(copy(DBSOJuMunDataArray[1],8,1),-1);
//   case nCSindex of
//    0 : begin
//          if strTointDef(DBSOJuMunDataArray[1],-8) = 33020000 then begin    //추세 풋이면
//            _ChuSeaCGInfo[1].JMKey := strTointDef(DBSOJuMunDataArray[1],-8);   // 주문키 입력
//            _ChuSeaCGInfo[1].OrderNo := strTointDef(DBSOJuMunDataArray[2],0);         // 주문번호 입력
//          end else if strTointDef(DBSOJuMunDataArray[1],-8) = 33010000 then begin    //추세 콜이면
//            _ChuSeaCGInfo[0].JMKey := strTointDef(DBSOJuMunDataArray[1],-8);   // 주문키 입력
//            _ChuSeaCGInfo[0].OrderNo := strTointDef(DBSOJuMunDataArray[2],0);         // 주문번호 입력
//          end;
//        end;
//    1 : begin
//          if strTointDef(DBSOJuMunDataArray[1],-8) = 33020001 then begin    //추세 풋이면
//            _ChuSeaCGInfo1[1].JMKey := strTointDef(DBSOJuMunDataArray[1],-8);   // 주문키 입력
//            _ChuSeaCGInfo1[1].OrderNo := strTointDef(DBSOJuMunDataArray[2],0);         // 주문번호 입력
//          end else if strTointDef(DBSOJuMunDataArray[1],-8) = 33010001 then begin    //추세 콜이면
//            _ChuSeaCGInfo1[0].JMKey := strTointDef(DBSOJuMunDataArray[1],-8);   // 주문키 입력
//            _ChuSeaCGInfo1[0].OrderNo := strTointDef(DBSOJuMunDataArray[2],0);         // 주문번호 입력
//          end;
//        end;
//    2 : begin
//          if strTointDef(DBSOJuMunDataArray[1],-8) = 33020002 then begin    //추세 풋이면
//            _ChuSeaCGInfo2[1].JMKey := strTointDef(DBSOJuMunDataArray[1],-8);   // 주문키 입력
//            _ChuSeaCGInfo2[1].OrderNo := strTointDef(DBSOJuMunDataArray[2],0);         // 주문번호 입력
//          end else if strTointDef(DBSOJuMunDataArray[1],-8) = 33010002 then begin    //추세 콜이면
//            _ChuSeaCGInfo2[0].JMKey := strTointDef(DBSOJuMunDataArray[1],-8);   // 주문키 입력
//            _ChuSeaCGInfo2[0].OrderNo := strTointDef(DBSOJuMunDataArray[2],0);         // 주문번호 입력
//          end;
//        end;
//    3 : begin
//          if strTointDef(DBSOJuMunDataArray[1],-8) = 33020003 then begin    //추세 풋이면
//            _ChuSeaCGInfo3[1].JMKey := strTointDef(DBSOJuMunDataArray[1],-8);   // 주문키 입력
//            _ChuSeaCGInfo3[1].OrderNo := strTointDef(DBSOJuMunDataArray[2],0);         // 주문번호 입력
//          end else if strTointDef(DBSOJuMunDataArray[1],-8) = 33010003 then begin    //추세 콜이면
//            _ChuSeaCGInfo3[0].JMKey := strTointDef(DBSOJuMunDataArray[1],-8);   // 주문키 입력
//            _ChuSeaCGInfo3[0].OrderNo := strTointDef(DBSOJuMunDataArray[2],0);         // 주문번호 입력
//          end;
//        end;
//    4 : begin
//          if strTointDef(DBSOJuMunDataArray[1],-8) = 33020004 then begin    //추세 풋이면
//            _ChuSeaCGInfo4[1].JMKey := strTointDef(DBSOJuMunDataArray[1],-8);   // 주문키 입력
//            _ChuSeaCGInfo4[1].OrderNo := strTointDef(DBSOJuMunDataArray[2],0);         // 주문번호 입력
//          end else if strTointDef(DBSOJuMunDataArray[1],-8) = 33010004 then begin    //추세 콜이면
//            _ChuSeaCGInfo4[0].JMKey := strTointDef(DBSOJuMunDataArray[1],-8);   // 주문키 입력
//            _ChuSeaCGInfo4[0].OrderNo := strTointDef(DBSOJuMunDataArray[2],0);         // 주문번호 입력
//          end;
//        end;
//    5 : begin
//          if strTointDef(DBSOJuMunDataArray[1],-8) = 33020005 then begin    //추세 풋이면
//            _ChuSeaCGInfo5[1].JMKey := strTointDef(DBSOJuMunDataArray[1],-8);   // 주문키 입력
//            _ChuSeaCGInfo5[1].OrderNo := strTointDef(DBSOJuMunDataArray[2],0);         // 주문번호 입력
//          end else if strTointDef(DBSOJuMunDataArray[1],-8) = 33010005 then begin    //추세 콜이면
//            _ChuSeaCGInfo5[0].JMKey := strTointDef(DBSOJuMunDataArray[1],-8);   // 주문키 입력
//            _ChuSeaCGInfo5[0].OrderNo := strTointDef(DBSOJuMunDataArray[2],0);         // 주문번호 입력
//          end;
//        end;
//   end;
//
//
//    if strTointDef(DBSOJuMunDataArray[1],-8) > 33019999 then begin    //추세 풋이면
//      _ChuSeaCGInfo[1].JMKey := strTointDef(DBSOJuMunDataArray[1],-8);   // 주문키 입력
//      _ChuSeaCGInfo[1].OrderNo := strTointDef(DBSOJuMunDataArray[2],0);         // 주문번호 입력
//    end else if strTointDef(DBSOJuMunDataArray[1],-8) > 33009999 then begin    //추세 콜이면
//      _ChuSeaCGInfo[0].JMKey := strTointDef(DBSOJuMunDataArray[1],-8);   // 주문키 입력
//      _ChuSeaCGInfo[0].OrderNo := strTointDef(DBSOJuMunDataArray[2],0);         // 주문번호 입력
//    end;
//  end;
end;

procedure TfHBOMain.DongbuJango_Parshing(nData : WideString; ASender:TObject);   //잔고파싱
var nString : string;
    nParshingLength, i, j, nRecordNo, nIndex : integer;
    nDataArray : array[0..3] of string; // 미체결, 보유수량, 매입가격, 매수/매도 구분
    nReal : single;
    nJMListNo : integer;
begin
/// ----- TR In_Out 파일 중  TR13655 헤더 내용 참고 할 것---///

  nParshingLength := 0;
  for i := 0 to 7 do //처음 종합정보 수신
  begin
    nString := Copy(nData, nParshingLength +1 , DongbuJangoDataLenArryO[i]);
    nParshingLength := nParshingLength + DongbuJangoDataLenArryO[i];
    DongbuJangoDataArryO[i] := nString;
    if i = 7 then nRecordNo := strTointDef(nString,0);
  end;

  nString := Formatfloat('#,###',strTofloatDef(DongbuJangoDataArryO[1],0)); // 현재종목손익
  stgJyungGuaKyumHyunHwang.Cells[4,1] := nString;
  nString := Formatfloat('#,##0',strTofloatDef(DongbuJangoDataArryO[4],0)); // 당일실현손익
  stgJyungGuaKyumHyunHwang.Cells[8,1] := ' ' + nString;

  nJMListNo := 0;
  for i := 0 to nRecordNo -1 do
  begin
    for j := 0 to 24 do
    begin
      nString := Copy(nData, nParshingLength +1 , DongbuJangoDataLenArryG[j]);
      nParshingLength := nParshingLength + DongbuJangoDataLenArryG[j];
      DongbuJangoDataArryG[j] := nString;
    end;
    nString := copy(ManKi,5,2);
    if strTointDef(nString,0) = 10 then nString := 'A'
    else if strTointDef(nString,0) = 11 then nString := 'B'
    else if strTointDef(nString,0) = 12 then nString := 'C'
    else nString := copy(nString,2,1);

    nDataArray[0] := gfDel32(DongbuJangoDataArryG[7]);//      미체결    // 미체결, 보유수량, 매입가격, 매수/매도 구분
    nDataArray[1] := gfDel32(DongbuJangoDataArryG[6]);//      보유수량
    nReal :=  strTofloatDef(gfDel32(DongbuJangoDataArryG[8]),0) * 0.00001; //      매입가격
    nDataArray[2] := formatfloat('#0.00#',nReal);
    nDataArray[3] := gfDel32(DongbuJangoDataArryG[2]);//      매수/매도 구분
    if copy(gfDel32(DongbuJangoDataArryG[0]),5,1) = nString then  //월이 같으면
    begin
      nString := copy(gfDel32(DongbuJangoDataArryG[0]),6,3);//;   //201N6315
      if (copy(nString,3,1) = '2') or (copy(nString,3,1) = '7') then nString := nString + '.5';
      nIndex := CaseString(nString, _HeangSaGaList);  //행사가 리스트와 비교하여 전광판 그리드의 Row번호 설정

      if (nIndex > -1) and (nIndex < 66) then Dongbu잔고(nIndex, gfDel32(DongbuJangoDataArryG[0]), nDataArray);
    end;
    if (strTointDef(nDataArray[1],-1) > 0) or (strTointDef(nDataArray[0],-1) > 0) then begin
      _JangoList[0,nJMListNo] := gfDel32(DongbuJangoDataArryG[0]);  //종목
      _JangoList[1,nJMListNo] := nDataArray[1];  // 수량
      _JangoList[2,nJMListNo] := nDataArray[2];  // 매매단가
//      _JangoList[3,nJMListNo] := ; // 현재가
      _JangoList[4,nJMListNo] := nDataArray[3];  // 매도/매입 구분
      _JangoList[5,nJMListNo] := nDataArray[0]; //미체결
      nJMListNo := nJMListNo + 1;
      _JangoJMQtn := nJMListNo;
      _JGIndex := 0;
    end;
  end;
//    case pageindex of
//      0: begin
//          //여기서부터 그리드에 넣어야 함.
//          nString := copy(ManKi,5,2);
//          if strTointDef(nString,0) = 10 then nString := 'A'
//          else if strTointDef(nString,0) = 11 then nString := 'B'
//          else if strTointDef(nString,0) = 12 then nString := 'C'
//          else nString := copy(nString,2,1);
//
//          nDataArray[0] := gfDel32(DongbuJangoDataArryG[7]);//      미체결    // 미체결, 보유수량, 매입가격, 매수/매도 구분
//          nDataArray[1] := gfDel32(DongbuJangoDataArryG[6]);//      보유수량
//          nReal :=  strTofloatDef(gfDel32(DongbuJangoDataArryG[8]),0) * 0.00001; //      매입가격
//          nDataArray[2] := formatfloat('#0.00#',nReal);
//          nDataArray[3] := gfDel32(DongbuJangoDataArryG[2]);//      매수/매도 구분
//          if copy(gfDel32(DongbuJangoDataArryG[0]),5,1) = nString then  //월이 같으면
//          begin
//            nString := copy(gfDel32(DongbuJangoDataArryG[0]),6,3);//;   //201N6315
//            if (copy(nString,3,1) = '2') or (copy(nString,3,1) = '7') then nString := nString + '.5';
//            nIndex := CaseString(nString, _HeangSaGaList);  //행사가 리스트와 비교하여 전광판 그리드의 Row번호 설정
//
//            if (nIndex > -1) and (nIndex < 66) then Dongbu잔고(nIndex, gfDel32(DongbuJangoDataArryG[0]), nDataArray);
//          end;
//
//          if strTointDef(nDataArray[1],0) > 0 then begin
//            strJG := gfDel32(DongbuJangoDataArryG[0]) + ',' + nDataArray[1] + ',' + nDataArray[2] + ',' + nDataArray[3];
//            clbJGListAll.Items.Add(strJG);
//          end;
//      end;
//      1: begin
//         //여기서부터 그리드에 넣어야 함.
//          nDataArray[0] := gfDel32(DongbuJangoDataArryG[7]);//      미체결    // 미체결, 보유수량, 매입가격, 매수/매도 구분
//          nDataArray[1] := gfDel32(DongbuJangoDataArryG[6]);//      보유수량
//          nReal :=  strTofloatDef(gfDel32(DongbuJangoDataArryG[8]),0) * 0.00001; //      매입가격
//          nDataArray[2] := formatfloat('#0.00#',nReal);
//          nDataArray[3] := gfDel32(DongbuJangoDataArryG[2]);//      매수/매도 구분
//          // 여기서부터 그리드에 넣음... 나중에 변수처리하고 함수 만들 것
//          nString := gfDel32(DongbuJangoDataArryG[0]);//;   //201N6315
//          if copy(nString,4,2) <> _JWCode then begin
//            if copy(nString,1,1) = '2' then begin
//              stg포지션LCall.Cells[0,i] := nString; // 종목코드
//              if nDataArray[3] = '매도' then
//                stg포지션LCall.Cells[2,i] := '-'+ nDataArray[1] // 보유수량
//              else stg포지션LCall.Cells[2,i] := '+'+ nDataArray[1]; // 보유수량
//              stg포지션LCall.Cells[1,i] := nDataArray[2];  // 매입가격
//              stg포지션LCall.Cells[3,i] := '';  // 비용 나중에 넣자
//              stg포지션LCall.Cells[4,i] := nDataArray[0]; // 미체결
//              nCallQtn := nCallQtn + 1;  //Call 종목이 먼저 들어오고 나중에 Put이 들어옴. Put 위치를 알기 위해..
//            end else if copy(nString,1,1) = '3' then begin
//              stg포지션LPut.Cells[0,i-nCallQtn-1] := nString; // 종목코드
//              if nDataArray[3] = '매도' then
//                stg포지션LPut.Cells[2,i-nCallQtn-1] := '-'+ nDataArray[1] // 보유수량
//              else stg포지션LPut.Cells[2,i-nCallQtn-1] := '+'+ nDataArray[1]; // 보유수량
//              stg포지션LPut.Cells[1,i-nCallQtn-1] := nDataArray[2];  // 매입가격
//              stg포지션LPut.Cells[3,i-nCallQtn-1] := '';  // 비용 나중에 넣자
//              stg포지션LPut.Cells[4,i-nCallQtn-1] := nDataArray[0]; // 미체결
//            end;
//            _PGSJanGo_flg := 1;
//          end;
//      end;
//    end;




  _JGRecieveflg := 1;
  // 이하 처리는 각 unit에서 DongbuJangoDataArryO 이용해서 처리
end;


procedure TfHBOMain.Dongbu잔고(index : integer; nszField: string; nDataArray : array of string); // 미체결, 보유수량, 매입가격, 매수/매도 구분
var nString : string;
begin
  if copy(nszField,1,3) = '201' then // 콜옵션이면...
  begin
    DonbuJanGoListInfo[1,index] := strTofloatDef(nDataArray[0],0);//미체결
    if nDataArray[3] = '매도' then
      nString := '-'+ nDataArray[1] // 보유수량
    else nString := '+'+ nDataArray[1]; // 보유수량
    DonbuJanGoListInfo[2,index] := strTofloatDef(nString ,0);//보유수량
    DonbuJanGoListInfo[3,index] := strTofloatDef(nDataArray[2],0);//매입가격
  end else if copy(nszField,1,3) = '301' then // Put옵션이면...
  begin
    DonbuJanGoListInfo[7,index] := strTofloatDef(nDataArray[0],0);//미체결

    if nDataArray[3] = '매도' then
      nString := '-'+ nDataArray[1] // 보유수량
    else nString := '+'+ nDataArray[1]; // 보유수량
    DonbuJanGoListInfo[6,index] := strTofloatDef(nString ,0);//보유수량
    DonbuJanGoListInfo[5,index] := strTofloatDef(nDataArray[2],0);//미체결
  end;

  _JGIndex := index;
end;

procedure TfHBOMain.DongbuCheaGul_Parshing(nData : WideString);   //체결 리스트 받기
var nString : string;
    nParshingLength, i : integer;
begin
  nParshingLength := 0;
//  nRecordNo :=0;
  for i := 0 to 3 do //
  begin
    nString := Copy(nData, nParshingLength +1 , DongbuCheaGulDataLenArryO[i]);
    nParshingLength := nParshingLength + DongbuCheaGulDataLenArryO[i];
    DongbuCheaGulDataArryO[i] := nString;
//    if i = 1 then nRecordNo := strTointDef(nString,0);
  end;
  _CGReceiveflg := 1;
  // 이후 처리는 각 unit에서 DongbuCheaGulDataArryO 이용해서 처리
end;

procedure TfHBOMain.DonbuPoungga_Parshing(nData : WideString);   //평가액파싱
var nString : string;
    nParshingLength, i : integer;
begin
// 동부API.doc 13page TR_15813 참조
  nParshingLength := 0;
  for i := 0 to 13 do //처음 종합정보 수신
  begin
    nString := Copy(nData, nParshingLength +1 , DongbuPounggaDataLenArry[i]);
    nParshingLength := nParshingLength + DongbuPounggaDataLenArry[i];
    DongbuPounggaDataArry[i] := nString;
  end;

  nString := Formatfloat('#,###',strTofloatDef(DongbuPounggaDataArry[3],0)); // 위탁증거금총액
  stgJyungGuaKyumHyunHwang.Cells[6,1] := '  ' + nString;
  nString := Formatfloat('#,###',strTofloatDef(DongbuPounggaDataArry[9],0)); // '주문가능총액'
  stgJyungGuaKyumHyunHwang.Cells[5,1] := '  ' + nString;
  nString := Formatfloat('#,###',strTofloatDef(DongbuPounggaDataArry[11],0)); // 인출가능총금액
  stgJyungGuaKyumHyunHwang.Cells[7,1] := '  ' + nString;
end;

procedure TfHBOMain.DongbuSusuRyu_Parshing(nData : WideString);   //평가액파싱
var nString : string;
    sngWonKym,sngTemp : single;
    nParshingLength, i: integer;
begin
// 동부API.doc 13page TR_15813 참조
  nParshingLength := 0;
  for i := 0 to 2 do //처음 종합정보 수신
  begin
    nString := Copy(nData, nParshingLength +1 , DongbuSusuRyuDataLenArry[i]);
    nParshingLength := nParshingLength + DongbuSusuRyuDataLenArry[i];
    DongbuSusuRyuDataArry[i] := nString;
  end;

  nString := Formatfloat('#,###',strTofloatDef(DongbuSusuRyuDataArry[0],0)); // 평가예탁금총액
  stgJyungGuaKyumHyunHwang.Cells[1,1] := ' ' + nString;
  sngTemp := strTofloatDef(RemoveComma(nString),0);
  sngWonKym := strTofloatDef(RemoveComma(stgJyungGuaKyumHyunHwang.Cells[0,1]),0);
  stgJyungGuaKyumHyunHwang.Cells[2,1] := '  '+formatfloat('#,##0',sngTemp - sngWonKym ); // 평가손익  , 투자원금 대비
  stgJyungGuaKyumHyunHwang.Cells[3,1] := '   ' + formatfloat('#0.0#%', ((sngTemp-sngWonKym) / sngWonKym)*100); // 평가손익률, 투자원금 대비
end;

procedure TfHBOMain.DongBuSunOpPyungGaJango;
var nDate : string;
begin
  DongbuRecieve_Type := 2;
  nDate := FormatDateTime('YYYYMMDD',now);
  //21 박현 DongbuAPI1.ReqEval(Acnt, AcntPwd, nDate);
end;

procedure TfHBOMain.PyungGaChongEak;
var nDate : string;
begin
  DongbuRecieve_Type := 2;
  nDate := FormatDateTime('YYYYMMDD',now);
  //21 박현 DongbuAPI1.ReqFeeNAbleMoney(cbbDongBuAcc.Text, edtDongBuPW.Text, nDate);
end;

procedure TfHBOMain.SpeedButton1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  edtDongBuPW.PasswordChar := #0;
end;

procedure TfHBOMain.SpeedButton1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  edtDongBuPW.PasswordChar := '*';
end;

procedure TfHBOMain.sbnPriceUpdateClick(Sender: TObject);
var i : integer;
begin
  if sbnPriceUpdate.Caption = '가격확인' then begin
    sbnPriceUpdate.Font.Color := clWindow;
    sbnPriceUpdate.Caption := '가격';
  end;

  for I:= 0 to MDIChildCount -1 do
    if MDIChildren[i] is TfLogin then begin
      MDIChildren[i].show;
      exit;
    end;

  TfLogin.Create(Application);
end;

procedure TfHBOMain.Timer1Timer(Sender: TObject);
var nString : string;
begin
  nString := copy(formatdatetime('hhmmsszzz',now),7,1);
  if nString ='0' then
    dtpNowTime.Time := now;
//    _CurrentTime := strTointDef(formatdatetime('hhmmss',now),0);
  edtKP200.Text := KP200;
  if _SunMulRTflg = 1 then begin
    if strTofloatDef(DyungLak,0) > 0 then begin
      edtSunMul.Font.Color := clRed;
      edtSunMul.Color := clWhite;
      edtSunMulDyungLak.Font.Color := clRed;
      edtSunMulDyungLak.Color := clWhite;
    end else if strTofloatDef(DyungLak,0) < 0 then begin
      edtSunMul.Font.Color := clBlue;
      edtSunMul.Color := clAqua;
      edtSunMulDyungLak.Font.Color := clBlue;
      edtSunMulDyungLak.Color := clAqua;
    end  else begin
      edtSunMul.Font.Color := clBlack;
      edtSunMulDyungLak.Font.Color := clBlack;
    end;
    edtSunMul.Text := Sunmul;
    edtSunMulDyungLak.Text := DyungLak;
    _SunMulRTflg := -1;
  end;

  if _SunMulRTHGflg = 1 then begin
    _SMCMDJL := strTointDef(gfDel32(DongbuRTSH0DataArry[14]),0); // 총매도호가잔량   ok
    _SMCMSJL := strTointDef(gfDel32(DongbuRTSH0DataArry[15]),0); // 총매수호가잔량   ok
    _SMSMS := strTointDef(gfDel32(DongbuRTSH0DataArry[47]),0); //순매수잔량

    edtSMCMDJL.Text := intTostr(_SMCMDJL); // 총매도호가잔량   ok
    edtSMCMSJL.Text := intTostr(_SMCMSJL); // 총매수호가잔량   ok
    if _SMSMS > 0 then begin
      edtSMSMS.Color := clGray;
      edtSMSMS.Font.Color := clRed;
      edtSMSMS.text := '+' + intTostr(_SMSMS);
    end else if _SMSMS < 0 then begin
      edtSMSMS.Color := clAqua;
      edtSMSMS.Font.Color := clBlue;
      edtSMSMS.text := intTostr(_SMSMS); // 호가총잔량차이    ok
    end else begin
      edtSMSMS.Color := clGray;
      edtSMSMS.Font.Color := clWhite;
      edtSMSMS.text := intTostr(_SMSMS); // 호가총잔량차이    ok
    end;
    _SunMulRTHGflg := -1;
  end;
end;

procedure TfHBOMain.tmrSuEicTimer(Sender: TObject);
begin
  if HandleDongbuApi <> 0 then begin
    PyungGaChongEak;
//    delay(100);
//    _JangoJMQtn := 0; // 종목 개수 초기
//    DongBuSunOpJanGo;
  end;
end;

procedure TfHBOMain.TrayIcon1DblClick(Sender: TObject);
var i : integer;
begin
{ Hide the tray icon and show the window,
  setting its state property to wsNormal. }
  TrayIcon1.Visible := False;
  Show();
  for I:= 0 to MDIChildCount -1 do  begin
    MDIChildren[i].Show();
    MDIChildren[i].WindowState := wsNormal;
  end;
  WindowState := wsMaximized;
  Application.BringToFront();
end;

procedure TfHBOMain.DongBuSunOpJanGo;
begin
  //21 박현 DongbuAPI1.ReqJango(Acnt);
end;

procedure TfHBOMain.Button1Click(Sender: TObject);
begin
  if HandleDongbuApi <> 0 then begin
    PyungGaChongEak;
    delay(200);
    DongBuSunOpPyungGaJango; // 동부 선옵평가잔고
    delay(200);
    _JangoJMQtn := 0; // 종목 개수 초기화
    //21 박현 DongbuAPI1.ReqJango(Acnt); // 동부 선옵잔고
  end;
end;

procedure TfHBOMain.Button2Click(Sender: TObject);
begin
  HorzScrollBar.Position := 2000;
end;

procedure TfHBOMain.Button35Click(Sender: TObject);
begin
  MainSaveUIValue;
  try
    IF Assigned(fYMS_GC) then begin
      with fYMS_GC do begin
        YMSSaveUIValue;
        Hide();
        WindowState := wsMinimized;
      end;
    end;
  except
  end;
  try
    IF Assigned(fYMS_CS) then begin
      with fYMS_CS do begin
        SaveUIValue;
        Hide();
        WindowState := wsMinimized;
      end;
    end;
  except
  end;
  try

    IF Assigned(fYMD) then begin
      with fYMD do begin
        PSTSaveUIValue;
        Hide();
        WindowState := wsMinimized;
      end;
    end;
  except
  end;
  try

    IF Assigned(fTimeSpread) then begin
      with fTimeSpread do begin
        TSSaveUIValue;
        Hide();
        WindowState := wsMinimized;
      end;
    end;
  except
  end;
  try
    IF Assigned(fPriceInfo) then begin
      with fPriceInfo do begin
        Hide();
        WindowState := wsMinimized;
      end;
    end;
  except
  end;
  try
    IF Assigned(fWeeklyPriceInfo) then begin
      with fWeeklyPriceInfo do begin
        Hide();
        WindowState := wsMinimized;
      end;
    end;
  except
  end;
  try
    IF Assigned(fJango) then begin
      with fJango do begin
        Hide();
        WindowState := wsMinimized;
      end;
    end;
  except
  end;
  try
    IF Assigned(fLogin) then begin
      with fLogin do begin
        Hide();
        WindowState := wsMinimized;
      end;
    end;
  except
  end;

{ Hide the window and set its state variable to wsMinimized. }
  Hide();
  WindowState := wsMinimized;
  { Show the animated tray icon and also a hint balloon. }
  TrayIcon1.Visible := True;
  TrayIcon1.Animate := True;
  TrayIcon1.ShowBalloonHint;
end;

procedure TfHBOMain.cbbNameChange(Sender: TObject);
begin
  if cbbName.Text = '박현(모)' then begin
    cbbDongBuAcc.Text := cbbDongBuAcc.Items[0];
    Acnt := cbbDongBuAcc.Text;
    edtDongBuPW.Text := '0000';
    AcntPwd := edtDongBuPW.Text;
    pnlTitle.Color := clWhite;
  end else if cbbName.Text = '박현(A)' then begin
    cbbDongBuAcc.Text := cbbDongBuAcc.Items[1];
    Acnt := cbbDongBuAcc.Text;
    edtDongBuPW.Text := '2028';
    AcntPwd := edtDongBuPW.Text;
    pnlTitle.Color := clFuchsia;
  end else if cbbName.Text = '박현(A)' then begin
    cbbDongBuAcc.Text := cbbDongBuAcc.Items[2];
    Acnt := cbbDongBuAcc.Text;
    edtDongBuPW.Text := '2028';
    AcntPwd := edtDongBuPW.Text;
    pnlTitle.Color := clFuchsia;
  end;
end;

procedure TfHBOMain.DBOAbleQty(nData : WideString);  // 선옵주문/청산 가능수량
begin
  _OrdAblQty[1] := copy(nData,1,15);
  _OrdAblQty[2] := copy(nData,16,15);
  _CGQtnReceiveflg := 1;
end;

procedure TfHBOMain.DongbuOptionHoGa_Parshing(nData : WideString);   //옵션호가 파싱
var nString , nMonthCode: string;
    nParshingLength, i, nIndex : integer;
    nDataArray : array[0..4] of string; // 매수잔량, 매도잔량 , 매수호가, 매도호가,현재가
begin
// 동부API.doc
  nParshingLength := 0;
  if _DongBuNowPriceCode <> '-' then begin
    if Pos('음',nData) > 0 then begin
      for i := 0 to 37 do // 49까지 이지만
      begin
        nString := Copy(nData, nParshingLength +1 , DongbuOptionHoGaDataLenArray2[i]);
        nParshingLength := nParshingLength + DongbuOptionHoGaDataLenArray2[i];
        DongbuOptionHoGaDataArry[i] := nString;
    //    mmoLog.Lines.Add(nString);
      end;
    end else if Pos('용',nData) > 0 then begin
      for i := 0 to 37 do // 49까지 이지만
      begin
        nString := Copy(nData, nParshingLength +1 , DongbuOptionHoGaDataLenArray1[i]);
        nParshingLength := nParshingLength + DongbuOptionHoGaDataLenArray2[i];
        DongbuOptionHoGaDataArry[i] := nString;
    //    mmoLog.Lines.Add(nString);
      end;
    end else begin
      for i := 0 to 37 do // 49까지 이지만
      begin
        nString := Copy(nData, nParshingLength +1 , DongbuOptionHoGaDataLenArray3[i]);
        nParshingLength := nParshingLength + DongbuOptionHoGaDataLenArray3[i];
        DongbuOptionHoGaDataArry[i] := nString;
    //    mmoLog.Lines.Add(nString);
      end;
    end;

    KP200 := copy(gfDel32(DongbuOptionHoGaDataArry[16]),1,6);//코스피200 kospi200
    nDataArray[2] := gfDel32(DongbuOptionHoGaDataArry[36]);//      매수호가
    nDataArray[3] := gfDel32(DongbuOptionHoGaDataArry[35]);//      매도호가
    nDataArray[4] := gfDel32(DongbuOptionHoGaDataArry[1]);//      현재가,

    nString := copy(_DongBuNowPriceCode,6,3);   //201N6315
    if (copy(nString,3,1) = '2') or (copy(nString,3,1) = '7') then nString := nString + '.5';
    nIndex := CaseString(nString, _HeangSaGaList);  //행사가 리스트와 비교하여 전광판 그리드의 Row번호 설정
    nMonthCode := copy(_DongBuNowPriceCode,4,2);

    if nIndex in [0..65] then begin
      if nMonthCode = _DCode then DongbuHG전광판(nIndex, _DongBuNowPriceCode, nDataArray)
      else if nMonthCode = _CWCode then DongbuHGCW전광판(nIndex, _DongBuNowPriceCode, nDataArray)
      else if nMonthCode = _CCWCode then DongbuHGCCW전광판(nIndex, _DongBuNowPriceCode, nDataArray)
      else if nMonthCode = _WWCode then DongbuHGWW전광판(nIndex, _DongBuNowPriceCode, nDataArray);
    end;
    _DongBuNowPriceCode := '-';
  end;

  if _WeeklyNowPriceCode <> '-' then begin
    if Pos('음',nData) > 0 then begin
      for i := 0 to 37 do // 49까지 이지만
      begin
        nString := Copy(nData, nParshingLength +1 , DongbuOptionHoGaDataLenArray2[i]);
        nParshingLength := nParshingLength + DongbuOptionHoGaDataLenArray2[i];
        DongbuOptionHoGaDataArry[i] := nString;
    //    mmoLog.Lines.Add(nString);
      end;
    end else if Pos('용',nData) > 0 then begin
      for i := 0 to 37 do // 49까지 이지만
      begin
        nString := Copy(nData, nParshingLength +1 , DongbuOptionHoGaDataLenArray1[i]);
        nParshingLength := nParshingLength + DongbuOptionHoGaDataLenArray2[i];
        DongbuOptionHoGaDataArry[i] := nString;
    //    mmoLog.Lines.Add(nString);
      end;
    end else begin
      for i := 0 to 37 do // 49까지 이지만
      begin
        nString := Copy(nData, nParshingLength +1 , DongbuOptionHoGaDataLenArray3[i]);
        nParshingLength := nParshingLength + DongbuOptionHoGaDataLenArray3[i];
        DongbuOptionHoGaDataArry[i] := nString;
    //    mmoLog.Lines.Add(nString);
      end;
    end;
//    KP200 := copy(gfDel32(DongbuOptionHoGaDataArry[16]),1,6);//코스피200 kospi200
//    nDataArray[2] := gfDel32(DongbuOptionHoGaDataArry[36]);//      매수호가
//    nDataArray[3] := gfDel32(DongbuOptionHoGaDataArry[35]);//      매도호가
    nDataArray[4] := gfDel32(DongbuOptionHoGaDataArry[1]);//      현재가,

    nString := copy(_WeeklyNowPriceCode,6,3);   //201N6315
    if (copy(nString,3,1) = '2') or (copy(nString,3,1) = '7') then nString := nString + '.5';
    nIndex := CaseString(nString, _HeangSaGaList);  //행사가 리스트와 비교하여 전광판 그리드의 Row번호 설정
    nMonthCode := copy(_WeeklyNowPriceCode,4,2);

    if nIndex in [0..65] then begin
      if nMonthCode = _WeeklyMonthCode then WeeklyHG전광판(nIndex, _WeeklyNowPriceCode, nDataArray);
    end;

    _WeeklyNowPriceCode := '-';
  end;
end;

procedure TfHBOMain.WeeklyHG전광판(index : integer; nszField: string; nDataArray : array of string);
begin
 if copy(nszField,1,3) = '209' then // 콜옵션이면...
  begin
    _WeeklyPriceListInfo[0,index] := strTofloatDef(nDataArray[4],0); // 콜현재가
//    _WeeklyPriceListInfo[0,index] := strTofloatDef(nDataArray[3],0); // 매도호가
//    _WeeklyPriceListInfo[1,index] := strTofloatDef(nDataArray[2],0); // 매수호가
  end else if copy(nszField,1,3) = '309' then // Put옵션이면...
  begin
    _WeeklyPriceListInfo[2,index] := strTofloatDef(nDataArray[4],0); // 풋현재가
//    _WeeklyPriceListInfo[6,index] := strTofloatDef(nDataArray[3],0); // 매도호가
//    _WeeklyPriceListInfo[5,index] := strTofloatDef(nDataArray[2],0); // 매수호가
  end;
  _WeeklyRTIndex[Index] := True;
end;

procedure TfHBOMain.DongbuHGWW전광판(index : integer; nszField: string; nDataArray : array of string);
begin
  if copy(nszField,1,3) = '201' then // 콜옵션이면...
  begin
    _WWHSGListInfo[2,index] := strTofloatDef(nDataArray[4],0); // 콜현재가
    _WWHSGListInfo[0,index] := strTofloatDef(nDataArray[3],0); // 매도호가
    _WWHSGListInfo[1,index] := strTofloatDef(nDataArray[2],0); // 매수호가
//    _WWRTCallIndex[Index] := True;
  end else if copy(nszField,1,3) = '301' then // Put옵션이면...
  begin
    _WWHSGListInfo[4,index] := strTofloatDef(nDataArray[4],0); // 풋현재가
    _WWHSGListInfo[6,index] := strTofloatDef(nDataArray[3],0); // 매도호가
    _WWHSGListInfo[5,index] := strTofloatDef(nDataArray[2],0); // 매수호가
//    _WWRTPutIndex[Index] := True;
  end;
  _WWRTIndex[Index] := True;
end;

procedure TfHBOMain.DongbuHGCCW전광판(index : integer; nszField: string; nDataArray : array of string);
begin
  if copy(nszField,1,3) = '201' then // 콜옵션이면...
  begin
    _CCWHSGListInfo[2,index] := strTofloatDef(nDataArray[4],0); // 콜현재가
    _CCWHSGListInfo[0,index] := strTofloatDef(nDataArray[3],0); // 매도호가
    _CCWHSGListInfo[1,index] := strTofloatDef(nDataArray[2],0); // 매수호가
//    _CCWRTCallIndex[Index] := True;
  end else if copy(nszField,1,3) = '301' then // Put옵션이면...
  begin
    _CCWHSGListInfo[4,index] := strTofloatDef(nDataArray[4],0); // 풋현재가
    _CCWHSGListInfo[6,index] := strTofloatDef(nDataArray[3],0); // 매도호가
    _CCWHSGListInfo[5,index] := strTofloatDef(nDataArray[2],0); // 매수호가
//    _CCWRTPutIndex[Index] := True;
  end;
  _CCWRTIndex[Index] := True;

end;

procedure TfHBOMain.DongbuHGCW전광판(index : integer; nszField: string; nDataArray : array of string);
begin
  if copy(nszField,1,3) = '201' then // 콜옵션이면...
  begin
    _CWHSGListInfo[2,index] := strTofloatDef(nDataArray[4],0); // 콜현재가
    _CWHSGListInfo[0,index] := strTofloatDef(nDataArray[3],0); // 매도호가
    _CWHSGListInfo[1,index] := strTofloatDef(nDataArray[2],0); // 매수호가
//    _CWRTCallIndex[Index] := True;
  end else if copy(nszField,1,3) = '301' then // Put옵션이면...
  begin
    _CWHSGListInfo[4,index] := strTofloatDef(nDataArray[4],0); // 풋현재가
    _CWHSGListInfo[6,index] := strTofloatDef(nDataArray[3],0); // 매도호가
    _CWHSGListInfo[5,index] := strTofloatDef(nDataArray[2],0); // 매수호가
//    _CWRTPutIndex[Index] := True;
  end;
  _CWRTIndex[index] := True;

end;

procedure TfHBOMain.DongbuHG전광판(index : integer; nszField: string; nDataArray : array of string);
begin
 if copy(nszField,1,3) = '201' then // 콜옵션이면...
  begin
    _DWHSGListInfo[2,index] := strTofloatDef(nDataArray[4],0); // 콜현재가
    _DWHSGListInfo[0,index] := strTofloatDef(nDataArray[3],0); // 매도호가
    _DWHSGListInfo[1,index] := strTofloatDef(nDataArray[2],0); // 매수호가
//    _DWRTCallIndex[Index] := True;
  end else if copy(nszField,1,3) = '301' then // Put옵션이면...
  begin
    _DWHSGListInfo[4,index] := strTofloatDef(nDataArray[4],0); // 풋현재가
    _DWHSGListInfo[6,index] := strTofloatDef(nDataArray[3],0); // 매도호가
    _DWHSGListInfo[5,index] := strTofloatDef(nDataArray[2],0); // 매수호가
//    _DWRTPutIndex[Index] := True;
  end;
  _DWRTIndex[Index] := True;

end;

procedure TfHBOMain.N101Click(Sender: TObject);
var i : integer;
begin
//  for I:= 0 to MDIChildCount -1 do
//    if MDIChildren[i] is TfChuSea10 then begin
//      MDIChildren[i].show;
//      exit;
//    end;
//
//  TfChuSea10.Create(Application);

end;

procedure TfHBOMain.N102Click(Sender: TObject);
var i : integer;
begin
//  for I:= 0 to MDIChildCount -1 do
//    if MDIChildren[i] is TfEPyChuSea10 then begin
//      MDIChildren[i].show;
//      exit;
//    end;
//  TfEPyChuSea10.Create(Application);
end;

procedure TfHBOMain.N110Click(Sender: TObject);
var i : integer;
begin
//  for I:= 0 to MDIChildCount -1 do
//    if MDIChildren[i] is TfChuSea1 then begin
//      MDIChildren[i].show;
//      exit;
//    end;
//
//  TfChuSea1.Create(Application);
end;

procedure TfHBOMain.N111Click(Sender: TObject);
var i : integer;
begin
//  for I:= 0 to MDIChildCount -1 do
//    if MDIChildren[i] is TfChuSea11 then begin
//      MDIChildren[i].show;
//      exit;
//    end;
//
//  TfChuSea11.Create(Application);
end;

procedure TfHBOMain.N112Click(Sender: TObject);
var i : integer;
begin
//  for I:= 0 to MDIChildCount -1 do
//    if MDIChildren[i] is TfEPyChuSea11 then begin
//      MDIChildren[i].show;
//      exit;
//    end;
//  TfEPyChuSea11.Create(Application);
end;

procedure TfHBOMain.N11Click(Sender: TObject);
var i : integer;
begin
//  for I:= 0 to MDIChildCount -1 do
//    if MDIChildren[i] is TfYMS_GC then begin
//      MDIChildren[i].show;
//      exit;
//    end;
//
//  TfYMS_GC.Create(Application);
end;

procedure TfHBOMain.N121Click(Sender: TObject);
var i : integer;
begin
//  for I:= 0 to MDIChildCount -1 do
//    if MDIChildren[i] is TfChuSea12 then begin
//      MDIChildren[i].show;
//      exit;
//    end;
//
//  TfChuSea12.Create(Application);
end;

procedure TfHBOMain.N122Click(Sender: TObject);
var i : integer;
begin
//  for I:= 0 to MDIChildCount -1 do
//    if MDIChildren[i] is TfEPyChuSea12 then begin
//      MDIChildren[i].show;
//      exit;
//    end;
//  TfEPyChuSea12.Create(Application);
end;

procedure TfHBOMain.N131Click(Sender: TObject);
var i : integer;
begin
//  for I:= 0 to MDIChildCount -1 do
//    if MDIChildren[i] is TfEPyChuSea13 then begin
//      MDIChildren[i].show;
//      exit;
//    end;
//  TfEPyChuSea13.Create(Application);
end;

procedure TfHBOMain.N141Click(Sender: TObject);
var i : integer;
begin
//  for I:= 0 to MDIChildCount -1 do
//    if MDIChildren[i] is TfEPyChuSea14 then begin
//      MDIChildren[i].show;
//      exit;
//    end;
//  TfEPyChuSea14.Create(Application);
end;

procedure TfHBOMain.N151Click(Sender: TObject);
var i : integer;
begin
//  for I:= 0 to MDIChildCount -1 do
//    if MDIChildren[i] is TfEPyChuSea15 then begin
//      MDIChildren[i].show;
//      exit;
//    end;
//  TfEPyChuSea15.Create(Application);
end;

procedure TfHBOMain.N161Click(Sender: TObject);
var i : integer;
begin
//  for I:= 0 to MDIChildCount -1 do
//    if MDIChildren[i] is TfEPyChuSea16 then begin
//      MDIChildren[i].show;
//      exit;
//    end;
//  TfEPyChuSea16.Create(Application);
end;

procedure TfHBOMain.N16Click(Sender: TObject);
var i : integer;
begin
  for I:= 0 to MDIChildCount -1 do
    if MDIChildren[i] is TfPriceInfo then begin
      MDIChildren[i].show;
      exit;
    end;

  TfPriceInfo.Create(Application);
end;

procedure TfHBOMain.N1Click(Sender: TObject);
var i : integer;
begin
  for I:= 0 to MDIChildCount -1 do
    if MDIChildren[i] is TfAutoOrder then begin
      MDIChildren[i].show;
      exit;
    end;

  TfAutoOrder.Create(Application);
end;

procedure TfHBOMain.N210Click(Sender: TObject);
var i : integer;
begin
//  for I:= 0 to MDIChildCount -1 do
//    if MDIChildren[i] is TfEPyChart then begin
//      MDIChildren[i].show;
//      exit;
//    end;
//  TfEPyChart.Create(Application);
end;

procedure TfHBOMain.N211Click(Sender: TObject);
var i : integer;
begin
//  for I:= 0 to MDIChildCount -1 do
//    if MDIChildren[i] is TfEPyChuSea2 then begin
//      MDIChildren[i].show;
//      exit;
//    end;
//  TfEPyChuSea2.Create(Application);
end;

procedure TfHBOMain.N21Click(Sender: TObject);
var i : integer;
begin
  for I:= 0 to MDIChildCount -1 do
    if MDIChildren[i] is TfYMS_CS then begin
      MDIChildren[i].show;
      exit;
    end;

  TfYMS_CS.Create(Application);
//  TfYMS_CS.Create(Self);
end;

procedure TfHBOMain.N23Click(Sender: TObject);
var i : integer;
begin
  for I:= 0 to MDIChildCount -1 do
    if MDIChildren[i] is TfPositionSE then begin
      MDIChildren[i].show;
      exit;
    end;

  TfPositionSE.Create(Application);
end;

procedure TfHBOMain.N24Click(Sender: TObject);
var i : integer;
begin
  for I:= 0 to MDIChildCount -1 do
    if MDIChildren[i] is TfJango then begin
      MDIChildren[i].show;
      exit;
    end;

  TfJango.Create(Application);
end;

procedure TfHBOMain.N26Click(Sender: TObject);
var i : integer;
begin
//  for I:= 0 to MDIChildCount -1 do
//    if MDIChildren[i] is TfChuSea2 then begin
//      MDIChildren[i].show;
//      exit;
//    end;
//
//  TfChuSea2.Create(Application);
end;

procedure TfHBOMain.N27Click(Sender: TObject);
var i : integer;
begin
  for I:= 0 to MDIChildCount -1 do
    if MDIChildren[i] is TfDevelop then begin
      MDIChildren[i].show;
      exit;
    end;

  TfDevelop.Create(Application);
end;

procedure TfHBOMain.N28Click(Sender: TObject);
var i : integer;
begin
//  for I:= 0 to MDIChildCount -1 do
//    if MDIChildren[i] is TfChuSeaList then begin
//      MDIChildren[i].show;
//      exit;
//    end;
//  TfChuSeaList.Create(Application);
end;

procedure TfHBOMain.N29Click(Sender: TObject);
begin
//  IF NOT Assigned(fChuSea1) THEN begin
//    fChuSea1 := TfChuSea1.Create(self);
//  end else fChuSea1.Show;
//
//  IF NOT Assigned(fChuSea2) THEN begin
//    fChuSea2 := TfChuSea2.Create(self);
//  end else fChuSea2.Show;
//
//  IF NOT Assigned(fChuSea3) THEN begin
//    fChuSea3 := TfChuSea3.Create(self);
//  end else fChuSea3.Show;
//
//  IF NOT Assigned(fChuSea4) THEN begin
//    fChuSea4 := TfChuSea4.Create(self);
//  end else fChuSea4.Show;
//
//  IF NOT Assigned(fChuSea5) THEN begin
//    fChuSea5 := TfChuSea5.Create(self);
//  end else fChuSea5.Show;
//
//  IF NOT Assigned(fChuSea6) THEN begin
//    fChuSea6 := TfChuSea6.Create(self);
//  end else fChuSea6.Show;
//
//  IF NOT Assigned(fChuSea7) THEN begin
//    fChuSea7 := TfChuSea7.Create(self);
//  end else fChuSea7.Show;
//
//  IF NOT Assigned(fChuSea8) THEN begin
//    fChuSea8 := TfChuSea8.Create(self);
//  end else fChuSea8.Show;
//
//  IF NOT Assigned(fChuSea9) THEN begin
//    fChuSea9 := TfChuSea9.Create(self);
//  end else fChuSea9.Show;
//
//  IF NOT Assigned(fChuSea10) THEN begin
//    fChuSea10 := TfChuSea10.Create(self);
//  end else fChuSea10.Show;
//
//  IF NOT Assigned(fChuSea11) THEN begin
//    fChuSea11 := TfChuSea11.Create(self);
//  end else fChuSea11.Show;
//
//    IF NOT Assigned(fChuSea12) THEN begin
//    fChuSea12 := TfChuSea12.Create(self);
//  end else fChuSea12.Show;
end;

procedure TfHBOMain.N2Click(Sender: TObject);
var i : integer;
begin
  for I:= 0 to MDIChildCount -1 do
    if MDIChildren[i] is TfChuSea then begin
      MDIChildren[i].show;
      exit;
    end;

  TfChuSea.Create(Application);

end;

procedure TfHBOMain.N30Click(Sender: TObject);
begin
//  IF Assigned(fChuSea1) THEN begin
//    fChuSea1.btnReadyClick(Sender);
//  end;
//
//  IF Assigned(fChuSea2) THEN begin
//    fChuSea2.btnReadyClick(Sender);
//  end;
//
//  IF Assigned(fChuSea3) THEN begin
//    fChuSea3.btnReadyClick(Sender);
//  end;
//
//  IF Assigned(fChuSea4) THEN begin
//    fChuSea4.btnReadyClick(Sender);
//  end;
//
//  IF Assigned(fChuSea5) THEN begin
//    fChuSea5.btnReadyClick(Sender);
//  end;
//
//  IF Assigned(fChuSea6) THEN begin
//    fChuSea6.btnReadyClick(Sender);
//  end;
//
//  IF Assigned(fChuSea7) THEN begin
//    fChuSea7.btnReadyClick(Sender);
//  end;
//
//  IF Assigned(fChuSea8) THEN begin
//    fChuSea8.btnReadyClick(Sender);
//  end;
//
//  IF Assigned(fChuSea9) THEN begin
//    fChuSea9.btnReadyClick(Sender);
//  end;
//
//  IF Assigned(fChuSea10) THEN begin
//    fChuSea10.btnReadyClick(Sender);
//  end;
//
//  IF Assigned(fChuSea11) THEN begin
//    fChuSea11.btnReadyClick(Sender);
//  end;
//
//  IF Assigned(fChuSea12) THEN begin
//    fChuSea12.btnReadyClick(Sender);
//  end;
end;

procedure TfHBOMain.N31Click(Sender: TObject);
var i : integer;
begin
  for I:= 0 to MDIChildCount -1 do
    if MDIChildren[i] is TfYMD then begin
      MDIChildren[i].show;
      exit;
    end;

  TfYMD.Create(Application);
end;

procedure TfHBOMain.N32Click(Sender: TObject);
var i : integer;
begin
//  for I:= 0 to MDIChildCount -1 do
//    if MDIChildren[i] is TfChuSea3 then begin
//      MDIChildren[i].show;
//      exit;
//    end;
//
//  TfChuSea3.Create(Application);
end;

procedure TfHBOMain.N33Click(Sender: TObject);
begin
//  IF Assigned(fChuSea1) THEN begin
//    fChuSea1.Button53Click(Sender);
//  end;
//
//  IF Assigned(fChuSea2) THEN begin
//    fChuSea2.Button53Click(Sender);
//  end;
//
//  IF Assigned(fChuSea3) THEN begin
//    fChuSea3.Button53Click(Sender);
//  end;
//
//  IF Assigned(fChuSea4) THEN begin
//    fChuSea4.Button53Click(Sender);
//  end;
//
//  IF Assigned(fChuSea5) THEN begin
//    fChuSea5.Button53Click(Sender);
//  end;
//
//  IF Assigned(fChuSea6) THEN begin
//    fChuSea6.Button53Click(Sender);
//  end;
//
//  IF Assigned(fChuSea7) THEN begin
//    fChuSea7.Button53Click(Sender);
//  end;
//
//  IF Assigned(fChuSea8) THEN begin
//    fChuSea8.Button53Click(Sender);
//  end;
//
//  IF Assigned(fChuSea9) THEN begin
//    fChuSea9.Button53Click(Sender);
//  end;
//
//  IF Assigned(fChuSea10) THEN begin
//    fChuSea10.Button53Click(Sender);
//  end;
//
//  IF Assigned(fChuSea11) THEN begin
//    fChuSea11.Button53Click(Sender);
//  end;
//
//  IF Assigned(fChuSea12) THEN begin
//    fChuSea12.Button53Click(Sender);
//  end;
end;

procedure TfHBOMain.N35Click(Sender: TObject);
var i : integer;
begin
//  for I:= 0 to MDIChildCount -1 do
//    if MDIChildren[i] is TfEPyChuSea1 then begin
//      MDIChildren[i].show;
//      exit;
//    end;
//  TfEPyChuSea1.Create(Application);
end;

procedure TfHBOMain.N36Click(Sender: TObject);
var i : integer;
begin
//  for I:= 0 to MDIChildCount -1 do
//    if MDIChildren[i] is TfEPyChuSea3 then begin
//      MDIChildren[i].show;
//      exit;
//    end;
//  TfEPyChuSea3.Create(Application);
end;

procedure TfHBOMain.N37Click(Sender: TObject);
var i : integer;
begin
  for I:= 0 to MDIChildCount -1 do
    if MDIChildren[i] is TfTimeSpread then begin
      MDIChildren[i].show;
      exit;
    end;

  TfTimeSpread.Create(Application);
end;

procedure TfHBOMain.N41Click(Sender: TObject);
var i : integer;
begin
//  for I:= 0 to MDIChildCount -1 do
//    if MDIChildren[i] is TfChuSea4 then begin
//      MDIChildren[i].show;
//      exit;
//    end;
//
//  TfChuSea4.Create(Application);

end;

procedure TfHBOMain.N42Click(Sender: TObject);
var i : integer;
begin
//  for I:= 0 to MDIChildCount -1 do
//    if MDIChildren[i] is TfEPyChuSea4 then begin
//      MDIChildren[i].show;
//      exit;
//    end;
//  TfEPyChuSea4.Create(Application);
end;

procedure TfHBOMain.N4Click(Sender: TObject);
var i : integer;
begin
  for I:= 0 to MDIChildCount -1 do
    if MDIChildren[i] is TfLogin then begin
      MDIChildren[i].show;
      exit;
    end;

  TfLogin.Create(Application);
end;

procedure TfHBOMain.N51Click(Sender: TObject);
var i : integer;
begin
//  for I:= 0 to MDIChildCount -1 do
//    if MDIChildren[i] is TfChuSea5 then begin
//      MDIChildren[i].show;
//      exit;
//    end;
//
//  TfChuSea5.Create(Application);
end;

procedure TfHBOMain.N52Click(Sender: TObject);
var i : integer;
begin
//  for I:= 0 to MDIChildCount -1 do
//    if MDIChildren[i] is TfEPyChuSea5 then begin
//      MDIChildren[i].show;
//      exit;
//    end;
//  TfEPyChuSea5.Create(Application);
end;

procedure TfHBOMain.N5Click(Sender: TObject);
var i : integer;
begin
  for I:= 0 to MDIChildCount -1 do
    if MDIChildren[i] is TfWeeklyPriceInfo then begin
      MDIChildren[i].show;
      exit;
    end;

  TfWeeklyPriceInfo.Create(Application);
end;

procedure TfHBOMain.N61Click(Sender: TObject);
var i : integer;
begin
//  for I:= 0 to MDIChildCount -1 do
//    if MDIChildren[i] is TfChuSea6 then begin
//      MDIChildren[i].show;
//      exit;
//    end;
//
//  TfChuSea6.Create(Application);
end;

procedure TfHBOMain.N62Click(Sender: TObject);
var i : integer;
begin
//  for I:= 0 to MDIChildCount -1 do
//    if MDIChildren[i] is TfEPyChuSea6 then begin
//      MDIChildren[i].show;
//      exit;
//    end;
//  TfEPyChuSea6.Create(Application);
end;

procedure TfHBOMain.N71Click(Sender: TObject);
var i : integer;
begin
//  for I:= 0 to MDIChildCount -1 do
//    if MDIChildren[i] is TfChuSea7 then begin
//      MDIChildren[i].show;
//      exit;
//    end;
//
//  TfChuSea7.Create(Application);
end;

procedure TfHBOMain.N72Click(Sender: TObject);
var i : integer;
begin
//  for I:= 0 to MDIChildCount -1 do
//    if MDIChildren[i] is TfEPyChuSea7 then begin
//      MDIChildren[i].show;
//      exit;
//    end;
//  TfEPyChuSea7.Create(Application);
end;

procedure TfHBOMain.N81Click(Sender: TObject);
var i : integer;
begin
//  for I:= 0 to MDIChildCount -1 do
//    if MDIChildren[i] is TfChuSea8 then begin
//      MDIChildren[i].show;
//      exit;
//    end;
//
//  TfChuSea8.Create(Application);
end;

procedure TfHBOMain.N82Click(Sender: TObject);
var i : integer;
begin
//  for I:= 0 to MDIChildCount -1 do
//    if MDIChildren[i] is TfEPyChuSea8 then begin
//      MDIChildren[i].show;
//      exit;
//    end;
//  TfEPyChuSea8.Create(Application);
end;

procedure TfHBOMain.N91Click(Sender: TObject);
var i : integer;
begin
//  for I:= 0 to MDIChildCount -1 do
//    if MDIChildren[i] is TfChuSea9 then begin
//      MDIChildren[i].show;
//      exit;
//    end;
//
//  TfChuSea9.Create(Application);
end;

procedure TfHBOMain.N92Click(Sender: TObject);
var i : integer;
begin
//  for I:= 0 to MDIChildCount -1 do
//    if MDIChildren[i] is TfEPyChuSea9 then begin
//      MDIChildren[i].show;
//      exit;
//    end;
//  TfEPyChuSea9.Create(Application);
end;

procedure TfHBOMain.N9Click(Sender: TObject);
var i : integer;
begin
  for I:= 0 to MDIChildCount -1 do
    if MDIChildren[i] is TfCheaGealList then begin
      MDIChildren[i].show;
      exit;
    end;
  TfCheaGealList.Create(Application);
end;

procedure TfHBOMain.BasicFrameOpen;
begin
  IF NOT Assigned(fYMS_GC) THEN begin
    fYMS_GC := TfYMS_GC.Create(self);
  end else begin
    fYMS_GC.Show;
    fYMS_GC.FormShow(Self);
  end;

  IF NOT Assigned(fYMS_CS) THEN begin
    fYMS_CS := TfYMS_CS.Create(self);
  end else begin
    fYMS_CS.Show;
    fYMS_CS.FormShow(Self);
  end;

//  IF NOT Assigned(fYMD) THEN begin
//    fYMD := TfYMD.Create(self);
//  end else begin
//    fYMD.Show;
//    fYMD.FormShow(Self);
//  end;
//
//  IF NOT Assigned(fTimeSpread) THEN begin
//    fTimeSpread := TfTimeSpread.Create(self);
//  end else begin
//    fTimeSpread.Show;
//    fTimeSpread.FormShow(Self);
//  end;

  IF NOT Assigned(fPriceInfo) THEN begin
    fPriceInfo := TfPriceInfo.Create(self);
  end else begin
    fPriceInfo.Show;
    fPriceInfo.FormShow(Self);
  end;

//  IF NOT Assigned(fWeeklyPriceInfo) THEN begin
//    fWeeklyPriceInfo := TfWeeklyPriceInfo.Create(self);
//  end else begin
//    fWeeklyPriceInfo.Show;
//    fWeeklyPriceInfo.FormShow(Self);
//  end;

  IF NOT Assigned(fJango) THEN begin
    fJango := TfJango.Create(self);
  end else begin
    fJango.Show;
    fJango.FormShow(Self);
  end;
end;

end.


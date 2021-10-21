///----------------------------  ���� �� ��    --------------------------------///
///  ����â�� sub â���� ����
///  1. ���� â�� API �ְ� ���� �޼����� �ٷ� ���޸� ��.
///  2. sub â���� ���� �޼����� ó�� ��.
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
    function YouantaFOOrder(nACC, nPWD, nJumun_Gubun, nMeme_gubun, nJMCode, // ����Ÿ �����ɼ� �ֹ�
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
    procedure DongbuHG������(index: integer; nszField: string;
      nDataArray: array of string);
    procedure Dongbu5HG������(index: integer; nszField: string;
      nDataArray: array of string);
    procedure Dongbu������(index: integer; nszField: string;
      nDataArray: array of string);
    procedure pOptionManki(nDateTime: TdateTime);
    procedure DongbuSunMulHoGa_Parshing(nData: WideString);
    procedure Dongbu�ܰ�(index: integer; nszField: string;
      nDataArray: array of string);
    procedure YearMonthCode;
    procedure DongbuHGCCW������(index: integer; nszField: string;
      nDataArray: array of string);
    procedure DongbuHGCW������(index: integer; nszField: string;
      nDataArray: array of string);
    procedure DongbuHGWW������(index: integer; nszField: string;
      nDataArray: array of string);
    procedure DongbuCW������(index: integer; nszField: string;
      nDataArray: array of string);
    procedure DongbuCCW������(index: integer; nszField: string;
      nDataArray: array of string);
    procedure DongbuWW������(index: integer; nszField: string;
      nDataArray: array of string);
    procedure Dongbu5HGCCW������(index: integer; nszField: string;
      nDataArray: array of string);
    procedure Dongbu5HGCW������(index: integer; nszField: string;
      nDataArray: array of string);
    procedure Dongbu5HGWW������(index: integer; nszField: string;
      nDataArray: array of string);
    procedure PGSCSMainü��List(index: integer; nDataArray: array of string);
    procedure PGSCSWGü��List(index: integer; nDataArray: array of string);
    procedure MainOpenUIValue;
    procedure MainSaveUIValue;
    procedure TSCallCGList1(index: integer; nDataArray: array of string);
    procedure TSCallCGList2(index: integer; nDataArray: array of string);
    procedure TSPutCGList1(index: integer; nDataArray: array of string);
    procedure TSPutCGList2(index: integer; nDataArray: array of string);
    procedure YMSGCü��List(index: integer; nDataArray: array of string);
    procedure WeeklyHG������(index: integer; nszField: string;
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
  BTJM = record // ���� �ֹ��� �ʿ��� ����
    JMKey : integer;
    OrderNo : integer;
    JMCode : string[8];
    MMGB : integer; // �Ÿű���
    JMPrice : single ; // �ֹ���
    JMQtn : integer; //�ֹ�����
    CGPrice : single ;// ü�ᰡ
    CGQtn : integer; // ü�����
    MCGQtn : integer;// ��ü�� ����
    WJMNo : integer; // ���ֹ���ȣ
    UH : string[20]; // ���� - �뵵 ��
  end;

  CGInfo = record // ü������ ����
    JMKey : integer;
    OrderNo : integer;
    JMCode : string[8];
    MMGB : string[3]; // �Ÿű���
    JMPrice : single ; // �ֹ���
    JMQtn : integer; //�ֹ�����
    CGPrice : single ;// ü�ᰡ
    CGQtn : integer; // ü�����
    MCGQtn : integer;// ��ü�� ����
    WJMNo : integer; // ���ֹ���ȣ
    AccNo : string[17]; // ���¹�ȣ
  end;

  YMDList = record // ��ŵ� ���� ���� ����
    JMCode : string[8];
    MIPrice : single; // ���԰�
    HGPrice : single ; // ȣ��
    TTQtn : integer; // ��Ż����
    UnitQtn : integer ;// 1ȸ�ֹ� ����
    PriceType : integer; // ���� Ÿ��, ���尡=3, ������=0
    ReMark : string[2];// ���, �ű�, ����
    RowNo : integer; // Row��ȣ
  end;

var
  fHBOMain: TfHBOMain;
    // ���� ���� ���� ����
    DongbuRecieve_Type : Integer; //�����׸� 1:������ȸ, 2: �򰡾���ȸ, 3:�ܰ� 4:����...
    DongbuSunMulHoGaDataLenArray : array[0..53] of integer = (1,7,7,7,7,7,7,7,7,7,8,7,7,7,8,6,7,1,7,6,4,6,7,4,6,7,4,6,7,4,6,7,4,6,7,7,6,4,7,6,4,7,6,4,7,6,4,7,6,4,5,6,6,5);
    DongbuSunMulHoGaDataArry : array[0..53] of string;
    DongbuOptionHoGaDataLenArray1 : array[0..48] of integer = (1,7,7,7,7,7,7,7,7,7,8,7,7,7,8,6,8,7,2,7,7,20,7,7,4,7,7,4,7,7,4,7,7,4,7,7,7,7,4,7,7,4,7,7,4,7,7,4,6);//�ɼ�ȣ�� ������ ��������
    DongbuOptionHoGaDataLenArray2 : array[0..48] of integer = (1,7,7,7,7,7,7,7,7,7,8,7,7,7,8,6,8,7,2,7,7,26,7,7,4,7,7,4,7,7,4,7,7,4,7,7,7,7,4,7,7,4,7,7,4,7,7,4,6);//�ɼ�ȣ�� ������ ��������
    DongbuOptionHoGaDataLenArray3 : array[0..48] of integer = (1,7,7,7,7,7,7,7,7,7,8,7,7,7,8,6,8,7,2,7,7,30,7,7,4,7,7,4,7,7,4,7,7,4,7,7,7,7,4,7,7,4,7,7,4,7,7,4,6);//�ɼ�ȣ�� ������ ��������
    DongbuOptionHoGaDataArry : array[0..53] of string;
    DongbuRTJangoDataArry : array[0..26] of string;  //�ǽð��ܰ���ŵ����ͺ���
    DongbuRTJangoDataLenArry : array[0..26] of Integer = (20,20,15,3,15,15,6,6,6,6,6,1,12,15,15,3,8,15,15,15,15,15,15,15,15,15,15);// �ǽð��ܰ���ŵ������� ���� ����
    DongbuRTNowPriceDataArry : array[0..84] of string; // �ǽð� �ɼ� ���簡 ������ ����
//    DongbuRTNowPriceDataLenArry : array[0..84] of Integer = (8,3,6,6,7,7,6,6,7,7,6,6,7,7,6,6,6,6,7,7,7,7,8,8,11,1,7,7,7,7,6,6,7,7,6,6,4,4,4,4,4,5,4,4,4,4,4,4,7,7,7,7,7,7,7,7,6,7,7,7,4,4,4,4,4,4,4,4,4,4,"7",6,6,9,9,7,9,7,7,8,7,5,1,7,7);// �ǽð� �ɼ� ���簡 ����
    DongbuRTNowPriceDataLenArry : array[0..84] of Integer = (8,3,6,6,7,7,6,6,7,7,6,6,7,7,6,6,6,6,7,7,7,7,8,8,11,1,7,7,7,7,6,6,7,7,6,6,4,4,4,4,4,5,4,4,4,4,4,4,7,7,7,7,7,7,7,7,6,7,7,7,4,4,4,4,4,4,4,4,4,4,8,6,6,9,9,7,9,7,7,8,7,5,1,7,7);// �ǽð� �ɼ� ���簡 ����
    DongbuRTOption5HGDataArry : array[0..46] of string; // �ǽð� �ɼ� ȣ��(5ȣ��)����
    DongbuRTOption5HGDataLenArry : array[0..46] of Integer = (8,3,7,7,6,6,7,7,6,6,7,7,6,6,6,6,6,7,7,6,6,7,7,6,6,4,4,4,4,4,5,4,4,4,4,4,5,4,4,4,4,4,4,4,4,4,4); // �ǽð� �ɼ�ȣ�� ������ ����
    DongbuRTSunOpCheGealDataArry : array[0..27] of string; // �ǽð� �ɼ� ü�� ������ ���� -> ����API.doc �޴�����ٸ�.
    DongbuRTSunOpCheGealDataLenArry : array[0..27] of Integer = (20,3,17,9,20,9,15,3,2,2,2,1,4,15,12,15,15,12,12,12,15,15,2,12,3,40,10,50);
    DBSOJuMunDataArray : array[0..4] of string; // ���� �ֹ�
    DBSOJuMunDataLenArray : array[0..4] of Integer = (4,8,9,6,100); // �����ֹ� ������ ���� ����
    DongbuJangoDataArryO : array[0..8] of string;  //�ܰ����ó���κ�(����)�����ͺ���
    DongbuJangoDataLenArryO : array[0..8] of Integer = (17,17,17,17,17,17,9,4,1);  //�ܰ����ó���κ�(����)�����ͺ�������
    DongbuJangoDataArryG : array[0..24] of string;//  �ܰ���ŵ������� ���� �����ͺκ�(���� ������� ���� ���ڵ� ���� �޶���)
    DongbuJangoDataLenArryG : array[0..24] of integer = (15,3,3,15,15,15,15,15,12,6,15,9,15,15,12,6,6,6,6,1,15,3,15,15,15);// ��������
    DongbuPounggaDataArry : array[0..13] of string;  //
    DongbuPounggaDataLenArry : array[0..13] of Integer = (15 ,15,15,15,15,14,15,14,15,14,15,14,15,15);
    DongbuSusuRyuDataArry : array[0..2] of string;  //������, �򰡿�Ź���Ѿ�
    DongbuSusuRyuDataLenArry : array[0..2] of Integer = (15,15,15);
    DongbuRTSunMulDataArry : array[0..74] of string; // ���� �ǽð� ��������
    DongbuRTSunMulDataLenArry : array[0..74] of Integer = (8,2,6,7,7,7,7,7,7,11,1,7,7,6,7,7,6,6,7,7,6,6,7,7,6,6,6,6,7,7,6,6,7,7,6,6,4,4,4,4,4,5,4,4,4,4,4,5,7,7,6,7,7,7,7,7,4,4,4,4,4,4,4,4,4,4,7,7,7,9,9,9,1,7,7);
    DongbuRTSH0DataArry : array[0..47] of string; // ���� �ǽð� ����ȣ��
    DongbuRTSH0DataLenArry : array[0..47] of Integer = (8,2,7,7,6,6,7,7,6,6,7,7,6,6,6,6,6,7,7,6,6,7,7,6,6,4,4,4,4,4,5,4,4,4,4,4,5,4,4,4,4,4,4,4,4,4,4,7);
    SunMulJonmokCode : string ; //���������ڵ�
    DongbuCheaGulDataArryO : array[0..3] of string;  //���� ä��(����) �����ͺ���
    DongbuCheaGulDataLenArryO : array[0..3] of Integer = (100,4,4,5);  //���� ä��(����) �����ͺ�������
    DongbuCheaGulDataArryG : array[0..11] of string;  //���� ä�� �����ͺ���
    DongbuCheaGulDataLenArryG : array[0..11] of Integer = (9,9,15,3,8,6,15,15,13,15,15,40);  //���� ä�� �����ͺ�������


    DonbuJanGoListInfo : array[0..8,0..65] of Single;// ��ż� û�꿡 ���...����� �ܰ� ������ 9*51  ��� ó��

    // uHBO2_Main�� ������ �־�� �� ����
    _deposits_flg : boolean; // ���ű� ����  Fasle�� ��������...True�� ���ű� ����
    _First_Activate :boolean; // ó������ ����..

    YearCode : string;
    delay_stop_flg : boolean;
//    _CurrentTime : integer; // ���� �ð� �����

    Acnt ,AcntPwd : string; // ���¹�ȣ, ��й�ȣ
    ManKi, ManKiDate : string; // �ɼ� �����, ������

    //���⼭���ʹ� �ܰ� ���� ����
    _JangoList : array[0..5,0..49] of string; // �ܰ� ����Ʈ   ����, ����, �ŸŰ�, ���簡,�ŵ�/����, ��ü��
    _JangoJMQtn : integer; // ���� ���� ����

    /////////////////////
    SuEik, SuEikRyul, GCSunMul, CSSunMul, MokPyoBiYong : string;
    GCSMSMessage : string; // ���� ���� ���� �޼���.
    HandleDongbuApi : integer;
    _CManKi, _CCManki, _WManki : string; // ����, ������, ���� (201902, 201903, 201904)

    // ReceiveData�� ��� �Դٴ� �÷��� (RT �ƴ�)
    _JMRecieveflg, _JGRecieveflg, _CGReceiveflg, _CGQtnReceiveflg, _OHReceiveflg : integer; // _JMRecieveflg = �ֹ� ����, _JGRecieveflg = �ܰ� , _CGReceiveflg = ü�Ḯ��Ʈ, _CGQtnReceiveflg=û�갡�ɼ���, _OHReceiveflg = �ɼ�ȣ��
    _JGIndex : integer; // �ܰ��ε���
    _OrdAblQty : array[0..2] of string; // �ֹ�/û�� ���ɼ���  [�����ڵ�,�ֹ����ɼ���, û�갡�ɼ���]
    // RTReceiveData
    _SunMulRTflg, _SunMulRTHGflg,  _OTNowRTflg, _OT5HGRTflg, _JGRTflg : integer;// _SunMulRTflg=�����ǽð� , _OTNowRTflg = �ɼǽǽð����簡, _OT5HGRTflg = �ɼ�5ȣ���ǽð�, _SOCGRTflg= ����ü��ǽð�, _JGRTflg=�ܰ�ǽð�

    // ü����� ����

    _CGRTReceiveflg : integer; // �ǽð� ����ü��,

    /// ���⼭ ���ʹ� ��� ü���� �����ϴ� ����
    AllCGInfo : array[0..9999] of CGInfo;    // �߼� �Ÿſ� ���
    AllOrderNo : array[0..9999] of integer;    // function CaseInt�� �̿��Ͽ� �ش� �ֹ���ȣ ��ġ ã��
    LastONIndex : integer; // �������� ����� OrderNoIndex
    _CSDataArray : array[0..9] of string; //�ֹ���ȣ, �����ڵ�, �Ÿű���, �ֹ�����,�ֹ���,ü�ᰡ��, ü�����, ��ü�ᷮ, ���ֹ���ȣ, ����
    _JuMunQtnError_flg, _JuMunOK_flg : integer; // -2,-1,0,1,2, �ֹ��� ���������� �����Ǿ.. OrderNo�� 0 �̻��̸� ������

    //��ż� ���� ����
    _YMSGCCGList : array[0..3] of BTJM;
    _YMSGCOrderNo : array[0..3] of integer;
    _SunMulRTChartflg : array[0..19] of boolean; // ��ż� ��Ʈ�� ������ �������簡 �Է� Ȯ��
    _SunMulRTChartStep : integer;

    // ��ż� û�� ����
    _CSJMDataList, _CSWGJMDataList : array[0..499] of BTJM; // 500ȸ ���� ���� ����, û���ֹ������� ����Ʈ, û��ܰ��ֹ�������... �����ֹ� ����ü ���.
    _MJOrderNo : array[0..499] of integer; // �ִ� 500ȸ û��� ��������� �ܰ����� �����ѹ� ����Ʈ
    _WGOrderNo : array[0..499] of integer;

    // Ÿ�ӽ������� ����
    _TimeCallInfo1, _TimeCallInfo2, _TimePutInfo1, _TimePutInfo2 : array[0..102] of BTJM;    // 0,1,2�� ���� ã�� �뵵�� ���
    _TimeCallOrderNo1, _TimeCallOrderNo2, _TimePutOrderNo1, _TimePutOrderNo2 : array[0..102] of integer; //�����ѹ� ����

    // ���ŵ� ����
    _YMDList : array[0..3] of YMDList; // ��ŵ� �����, ���� ��ŵ� �ڵ� �Ÿſ� ����
    _YMDJMDataList: array[0..3] of BTJM; // ��ŵ� �����ֹ� ����ü ���.
    _YMDNewBY, _YMDOldBY, _YMDRatio : single;
    // ������� �ڵ�
    _MonthCode, _YearNow, _JWCode, _DCode, _CWCode, _CCWCode, _WWCode : string;
    _MaxHSG : single; //�ְ���簡 ���� ,�⺻ 395
    _DWHSGListInfo, _CWHSGListInfo, _CCWHSGListInfo, _WWHSGListInfo : array[0..8,0..65] of Single;// ����� ���� ���� ������ 12*65  ��� ó��
    _DongBuNowPriceCode, _DongBuSunMulCode : string; // Ű�� �������簡�� ���η� �����ϸ鼭 ���� ����.
    _DWRTIndex, _CWRTIndex, _CCWRTIndex, _WWRTIndex, _WeeklyRTIndex : array[0..65] of boolean; // �ɼ� ���� ���� ���� �� ȭ�鿡 �ش� ���� �����ϱ� ���� ����

    _WeeklyPriceListInfo : array[0..2,0..65] of Single;// ��Ŭ�� ���� ���� ������
    _WeeklyMonthCode, _WeeklyNowPriceCode : string;

    _HeangSaGaList : array[0..65] of string; // 66��
     _IndexJG :  integer; // ��簡 ����Ʈ �ε���, �ܰ� �ε���
     _PriceInfoDGPosition, _PriceInfoWPosition : integer; // ��� �ܰ� ��ġ
     SunMul, DyungLak, KP200: string;
     _SMCMDJL, _SMCMSJL, _SMSMS : integer; // �����Ѹŵ��ܷ�, �����Ѹż��ܷ�, �������ż��ܷ�

     //�߼� �Ÿſ�
//     _ema_aMin1  : single = 0.0198019801980;       //100��  2/(n+1)  2/(100+1)
//     _ema_aMin2  : single = 0.0165289256198;       //120��
//     _ema_aMid1  : single = 0.0019980019980;       //1000��
//     _ema_aMid2  : single = 0.0016652789342;       //1200��
//     _ema_aMax1  : single = 0.0003999200160;       //5000��
//     _ema_aMax2  : single = 0.0003845414343;       //5200��

    _ema_aMin1, _ema_aMin2, _ema_aMin3, _ema_aMin4  : single;// �ּ� ���� �����
    _ema_aMid1, _ema_aMid2, _ema_aMid3, _ema_aMid4  : single;// �߰� ���� �����
    _ema_aMax1, _ema_aMax2, _ema_aMax3, _ema_aMax4  : single;// �ִ� ���� �����

     _emaMin1, _emaMin2, _emaMin3, _emaMin4 : single; // �ּ� ����
     _emaMid1, _emaMid2, _emaMid3, _emaMid4 : single; // �߰� ����
     _emaMax1, _emaMax2, _emaMax3, _emaMax4 : single; // �ִ� ����

     _SunMulAVGflg : integer;
//     First_Exe, First_Exe_EyP : boolean; // First_Exe : ��� ����Ȯ�ο�, First_Exe_EyP : ���򼱿�
     _EPyGapMax11, _EPyGapMax12, _EPyGapMax13, _EPyGapMax14, _EPyGapMax21, _EPyGapMax22, _EPyGapMax23, _EPyGapMax24 : single;   // 5000����� 100������ ��( = 100-5000, =100- 1000);
     _EPyGapMax31, _EPyGapMax32, _EPyGapMax33, _EPyGapMax34, _EPyGapMax41, _EPyGapMax42, _EPyGapMax43, _EPyGapMax44 : single;
     _EPyGapMid11, _EPyGapMid12, _EPyGapMid13, _EPyGapMid14, _EPyGapMid21, _EPyGapMid22, _EPyGapMid23, _EPyGapMid24 : single;
     _EPyGapMid31, _EPyGapMid32, _EPyGapMid33, _EPyGapMid34, _EPyGapMid41, _EPyGapMid42, _EPyGapMid43, _EPyGapMid44 : single;

     _ClientKey : string; //����Ÿ �ֹ�Key
implementation

uses uLogin, uPriceInfo,uWeeklyPriceInfo, uAutoOrder, uYMS_GC, uYMS_CS, uYMD, uPositionSE, uSelectJM, uTimeSpread, uCheaGealList, uJango, uDevelop, uChuSea;
//      uChuSea1, uChuSea2, uChuSea3, uChuSea4, uChuSea5, uChuSea6,
//      uChuSea7, uChuSea8, uChuSea9, uChuSea10, uChuSea11, uChuSea12, uChuSeaList,
//      uEPyChuSea1, uEPyChuSea2, uEPyChuSea3, uEPyChuSea4, uEPyChuSea5, uEPyChuSea6, uEPyChuSea7, uEPyChuSea8,
//      uEPyChuSea9, uEPyChuSea10, uEPyChuSea11, uEPyChuSea12, uEPyChuSea13, uEPyChuSea14, uEPyChuSea15, uEPyChuSea16, uEPyChart ;

{$R *.dfm}

function RemoveComma(src: string): string;   // �޸�����
var
i: integer;
begin
  result := '';
  for i := 1 to length(src) do
  if copy(src, i, 1) <> ',' then result := result + copy(src, i, 1);
end;

function gfDel32(s: string): string;  //��������
begin
 while not(pos(' ',s)=0) do delete(s,pos(' ',s),1);
 result:=s;
end;

function CaseInt(Src : integer; TagList: array of integer): Integer;  // �����迭���� �ش� �� ��ġ ã��
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
// Day �� ���Ե� ��(Week)�� nDay��° ������ ��¥�� ������
// nDay = 1 (�Ͽ���) ~ 7 (�����)
// ��) �̹��� �ݿ��� := NthOfWeek(6,Date);
// ������ ȭ���� := NthOfWeek(3+7,Date);
begin
  result := Day - DayOfWeek( Day ) + nDay;
end;

function FirstOfMonth( Day: TDateTime ):TDateTime;
// Day�� ���Ե� ���� ù°���� ������
var nDay,nMonth,nYear: word;
begin
  DecodeDate(Day,nYear,nMonth,nDay);
  result := EncodeDate(nYear,nMonth,1);
end;


function NthOfNthWeek( nDay,nWeek: byte; Day: TDateTime ):TDateTime;
// Day �� ���Ե� ���� nWeek��° �� nDay������ ��¥�� ������
// ��) �̹����� 2°�� ������ := NthOfNthWeek(4,2,Date);
// Logic
// 1) �ش���� ù���� ����
// 2) if ù���� ���� <= ���ϴ� ���� then nWeek�� 1����
// 3) ù���� ���Ե����� ���ϴ� ������ ���Ѵ���
// nWeek��(nWeek*7)�� ����.
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

procedure SetVolume(NewVolume: DWORD);   //�溸�� �Ҹ� ���� ����
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
  StatusBar1.Panels[4].Text := '����-�α��ν���';
end;

procedure TfHBOMain.DongbuAPI1ReceiveData(ASender: TObject; nReqID: Integer;
  const szMsgCode, szMsg, szData: WideString);
var nMsgCode, nMsg, nData : WideString;
//    nString : string;
begin
  nMsgCode := szMsgCode;   //�޼����ڵ�(���� �����ݻ���)
  nMsg := szMsg;         //�޽���
  StatusBar1.Panels[2].Text := '���μ���:' + nMsg;
  //000100001001000000000N01218�������� ������ �����Դϴ�
  //    0001        00001001    000000000      N01218      �������� ������ �����Դϴ�
  //�ֹ���ȣcnt      �ֹ�key     �ֹ�No      �޼����ڵ�     Msgcm                                                        '                                                                   '

  if pos('���űݺ���',StatusBar1.Panels[2].Text) > 0 then
  begin
    _deposits_flg := True;// boolean; // ���ű� ����  Fasle�� ��������...True�� ���ű� ����
    EXIT;
  end else if pos('������',StatusBar1.Panels[2].Text) > 0 then begin
    _JuMunQtnError_flg := -1;
    exit;
  end else if pos('�Ұ�',StatusBar1.Panels[2].Text) > 0 then begin
    _JuMunQtnError_flg := -2;
    exit;
  end;

  nData := szData;
  case nReqID of
    1: DBSOJuMun(nData);// �����ֹ�
    2: DongbuJango_Parshing(nData, ASender);// �����ܰ�
    3: ;// �����ܰ�2
    4: DongbuCheaGul_Parshing(nData); // �ֹ� �Ϸ� �� ä�� ����Ʈ �ޱ�// ����ü�Ḯ��Ʈ
    5: DonbuPoungga_Parshing(nData);// ���� ����Ȳ
    6: DongbuSusuRyu_Parshing(nData); // ������, �򰡿�Ź���Ѿ�// ������
    7: ;//�ɼ����񺰸ŵ����ű�
    8: DBOAbleQty(nData);// ���� �ű�/û�� ���� ����
    9: ; //REQ_STK_ORDER = 9       	���ֽ� ��
    10: ;//REQ_STK_JANGO = 10      	���ֽ� �ܰ�
    11: ;//REQ_STK_CHE = 11         	���ֽ� ü��
    12: ;//REQ_STK_EVAK= 12         	���ֽ� ����Ȳ
    13: ;//REQ_CME_ORDER = 13,
    14: ;//REQ_CME_JANGO = 14,
    15: ;//REQ_CME_CHEGYUL = 15,
    16: ;//REQ_CME_MICHE = 16,
    17: ;//REQ_CME_EVAL = 17,
    18: ;//REQ_CME_QTY = 18,
    19: ;//REQ_STK_HOGA = 19,
    20: ;//REQ_STK_TODAYINVEST = 20,
    21: ;//REQ_STK_ORDER_QTY = 21,
    22: DongbuSunMulHoGa_Parshing(nData);//REQ_FUT_HOGA = 22,              �� ���� ȣ��
    23: DongbuOptionHoGa_Parshing(nData);//REQ_OPT_HOGA = 23,              �� �ɼ�ȣ��
    24: ;//REQ_STK_TODAYBUYSELL= 24      �� �ֽĴ��ϸŸź���
    25: ;//REQ_STK_BUYSELLLIST= 25         �����ں��Ÿų���
    26: ;//REQ_STK_INOUTLIST = 26          ���ŷ�����
    27: ;//REQ_STK_CONDITIONSEARCH_LIST = 27,     //���ǰ˻�����Ʈ
    28: ;//REQ_STK_CONDITIONSEARCH = 28           //���ǰ˻�
  end;
end;

procedure TfHBOMain.DongbuSunMulHoGa_Parshing(nData : WideString);   //����ȣ�� �Ľ�
var nString, sDate, sTemp: string;
    nParshingLength, i, nMankiMonth, nInt : integer;
//    nDataArray : array[0..4] of string; // �ż��ܷ�, �ŵ��ܷ� , �ż�ȣ��, �ŵ�ȣ��,���簡
begin
// ����API.doc
  nParshingLength := 0;
  for i := 0 to 16 do // 54���� ������
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
    SunMul := gfDel32(DongbuSunMulHoGaDataArry[1]); // ���簡
    nInt := strTointDef(gfDel32(DongbuSunMulHoGaDataArry[0]),-1); // '1':����, '2':���, '3':����,'4':����, '5':�϶�, '6':�⼼����,'7':�⼼���, '8':�⼼����
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
    0: ;   //"S31"           '�������簡
    1: ;  // "S32"           '�������簡
    2: ;  //"X22"             '����ȣ��
    3: DongbuRTSunMul(nszField, nData);  //"SC0"            '���� ���簡  ,, Main���� ����
    4: DBRTSMHG(nszField, nData);   //"SH0"           '���� ȣ��(5ȣ��)
    5: ;   //"SH2"           '���� ȣ��
    6: DongbuRTNowPrice(nszField, nData);   //"OC0"           '�ɼ� ���簡
    7: DongbuRTOption5HG(nszField, nData);   //"OH0"           '�ɼ� ȣ��(5ȣ��)
    8: ;   //"OH2"           '�ɼ� ȣ��
    9: DongbuRTSunOpCheaGeal_Parshing(nszField,nData);   //"XF2"           '����ü��
    10: DongbuRTJango_Parshing(nData);  //"XF3"           '�����ܰ�
    11: ;  //"XX1"           '�ֽ�ü��
    12: ;  //"XX2"           '�ֽ��ܰ�
  end;
end;

procedure TfHBOMain.DongbuRTJango_Parshing(nData : WideString);  // ���� �ǽð� �ܰ�
var nString : string;
    nParshingLength, i , nInt: integer;
    nReal : Real;
    nDataArray : array[0..3] of string; // ��������, ��ü��, ���԰���, �������и�
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

  // ���⼭ ���ʹ� �� unit���� DongbuRTSunOpCheGealDataArry ������ �̿��ؼ� ó��
  nInt :=  strTointDef(gfDel32(DongbuRTJangoDataArry[4]),0);//      ��������    // ��������, ��ü��, ���԰���, �������и�
  nDataArray[0] := intTostr(nInt);
  nReal :=  strTofloatDef(gfDel32(DongbuRTJangoDataArry[12]),0) * 0.00001;
  nDataArray[2] := formatfloat('#0.00#',nReal);//      ���԰���
  nInt :=  strTointDef(DongbuRTJangoDataArry[17],0);//'��ä��';
  nDataArray[1] := intTostr(nInt);//��ü�����
  nDataArray[3] := gfDel32(DongbuRTJangoDataArry[3]);//      �������и�
  nString := gfDel32(DongbuRTJangoDataArry[2]);
  for I := 0 to 49 do begin
    if _JangoList[0,i] = nString then begin
      _JGIndex := i;
//      _JangoList[0,_JGIndex] := gfDel32(DongbuRTJangoDataArry[2]);  //����
      _JangoList[1,_JGIndex] := nDataArray[0];  // ����
      _JangoList[2,_JGIndex] := nDataArray[2];  // ���԰���
      _JangoList[4,_JGIndex] := nDataArray[3];  // �ŵ�/���� ����
      _JangoList[5,_JGIndex] := nDataArray[1]; // ��ü��
      break;
    end;
  end;

  if _JGIndex = -1 then begin
    _JangoList[0,_JangoJMQtn] := gfDel32(DongbuRTJangoDataArry[2]);  //����
    _JangoList[1,_JangoJMQtn] := nDataArray[0];  // ����
    _JangoList[2,_JangoJMQtn] := nDataArray[2];  // ���԰���
    _JangoList[4,_JangoJMQtn] := nDataArray[3];  // �ŵ�/���� ����
    _JangoList[5,_JangoJMQtn] := nDataArray[1]; // ��ü��
    _JGIndex := _JangoJMQtn;
    _JangoJMQtn := _JangoJMQtn+1;
  end;
end;

procedure TfHBOMain.DongbuRTSunOpCheaGeal_Parshing(nszField, nData: WideString);   //����ü�� �ǽð�
var nString, nCode, nACCNo : string;
    nParshingLength, i, nInt, nIndex, nCGQtn, nOrderNo : integer;
    nReal : Real;
//    nDataArray : array[0..9] of string; //�ֹ���ȣ, �����ڵ�, �Ÿű���, �ֹ�����,�ֹ���,ü�ᰡ��, ü�����, ��ü�ᷮ, ���ֹ���ȣ, ����
begin                                   // ���� �ڵ� ---- �ֹ���ȣ, �ֹ�����, �ֹ�����, ��ü����� , �Ÿű���
//����API.doc ���� ���� �� ��

  nParshingLength := 0;
  for i := 0 to 27 do    //
  begin
    nString := Copy(nData, nParshingLength +1 , DongbuRTSunOpCheGealDataLenArry[i]);
    nParshingLength := nParshingLength + DongbuRTSunOpCheGealDataLenArry[i];
    DongbuRTSunOpCheGealDataArry[i] := nString;
  end;

  ///
  /// ���¹�ȣ�� ���͸� �ؾ� ��.
  ///  ���ֹ���ȣ �����ؾ� ��.
  ///
  ///
//  nString := copy(ManKi,5,2);
//  if strTointDef(nString,0) = 10 then nString := 'A'
//  else if strTointDef(nString,0) = 11 then nString := 'B'
//  else if strTointDef(nString,0) = 12 then nString := 'C'
//  else nString := copy(nString,2,1);
  nACCNo := gfDel32(DongbuRTSunOpCheGealDataArry[2]);
  nCode := gfDel32(DongbuRTSunOpCheGealDataArry[6]);
  _CSDataArray[1] := nCode; // �����ڵ�

  nString := gfDel32(DongbuRTSunOpCheGealDataArry[3]);
  nOrderNo := strTointDef(nString,0);// �ֹ���ȣ
  _CSDataArray[0] := intTostr(nOrderNo);//      �ֹ���ȣ    // �ֹ���ȣ, �ֹ�����, �ֹ�����, ��ü����� , �Ÿű���
  _CSDataArray[2] := gfDel32(DongbuRTSunOpCheGealDataArry[7]);//
  nString := gfDel32(DongbuRTSunOpCheGealDataArry[14]);
  nReal :=  strTofloatDef(nString,0); //�ֹ�����
  _CSDataArray[3] := formatfloat('#0.0##',nReal);//  �ֹ�����
  nString := gfDel32(DongbuRTSunOpCheGealDataArry[13]);
  nInt :=  strTointDef(nString,0); //�ֹ�����
  _CSDataArray[4] := intTostr(nInt);//  �ֹ�����
  nString := gfDel32(DongbuRTSunOpCheGealDataArry[17]);
  nReal :=  strTofloatDef(nString,0); //ü�ᰡ��
  _CSDataArray[5] := formatfloat('#0.0##',nReal);//  ü�ᰡ��
  nString := gfDel32(DongbuRTSunOpCheGealDataArry[15]);
  nCGQtn :=  strTointDef(nString,0); //ü�����
  _CSDataArray[6] := intTostr(nCGQtn);//  ü�����
  nString := gfDel32(DongbuRTSunOpCheGealDataArry[20]);
  nInt :=  strTointDef(nString,0); //��ü�� ����
  _CSDataArray[7] := intTostr(nInt);//   ��ü�����
  nString := gfDel32(DongbuRTSunOpCheGealDataArry[5]);
  nInt :=  strTointDef(nString,0); //���ֹ���ȣ
  _CSDataArray[8] := intTostr(nInt);// ���ֹ���ȣ
//  _CSDataArray[9] := '���� ��';//����

//  nIndex := CaseInt(nOrderNo,AllOrderNo);
//  if nIndex > -1 then begin
//    AllCGInfo[nIndex].OrderNo := nOrderNo;
//    AllCGInfo[nIndex].JMCode := _CSDataArray[1];
//    AllCGInfo[nIndex].MMGB := _CSDataArray[2];//strTointDef(_CSDataArray[2],-99);  // 0 : �ż�,   1 : �ŵ�  , 2: ����,   3: ���
//    AllCGInfo[nIndex].JMPrice := strTofloatDef(_CSDataArray[3],0);
//    AllCGInfo[nIndex].JMQtn := strTointDef(_CSDataArray[4],0);
//    AllCGInfo[nIndex].CGPrice := strTofloatDef(_CSDataArray[5],0);
////    AllCGInfo[nIndex].CGQtn := strTointDef(_CSDataArray[6],0);
//    AllCGInfo[nIndex].MCGQtn := strTointDef(_CSDataArray[7],0);
//    AllCGInfo[nIndex].CGQtn := AllCGInfo[nIndex].JMQtn - AllCGInfo[nIndex].MCGQtn;
//    AllCGInfo[nIndex].WJMNo := strTointDef(_CSDataArray[8],0);
//    AllCGInfo[nIndex].AccNo := nACCNo;
//    nCSIndex := nIndex; // �߼� �ε���
//  end else if nIndex = -1 then begin
//    AllCGInfo[LastONIndex].OrderNo := nOrderNo;
//    AllCGInfo[LastONIndex].JMCode := _CSDataArray[1];
//    AllCGInfo[LastONIndex].MMGB := _CSDataArray[2];//strTointDef(_CSDataArray[2],-99);  // 0 : �ż�,   1 : �ŵ�  , 2: ����,   3: ���
//    AllCGInfo[LastONIndex].JMPrice := strTofloatDef(_CSDataArray[3],0);
//    AllCGInfo[LastONIndex].JMQtn := strTointDef(_CSDataArray[4],0);
//    AllCGInfo[LastONIndex].CGPrice := strTofloatDef(_CSDataArray[5],0);
////    AllCGInfo[nIndex].CGQtn := strTointDef(_CSDataArray[6],0);
//    AllCGInfo[LastONIndex].MCGQtn := strTointDef(_CSDataArray[7],0);
//    AllCGInfo[LastONIndex].CGQtn := AllCGInfo[LastONIndex].JMQtn - AllCGInfo[LastONIndex].MCGQtn;
//    AllCGInfo[LastONIndex].WJMNo := strTointDef(_CSDataArray[8],0);
//    AllCGInfo[LastONIndex].AccNo := nACCNo;
//    AllOrderNo[LastONIndex] :=  nOrderNo;
//    nCSIndex := LastONIndex; // �߼� �ε���
//    LastONIndex := LastONIndex + 1;
//  end;

//  nIndex := CaseString(_CSDataArray[0], _MJOrderNo);  //
//  if (nIndex > -1) then PGSCSMainü��List(nIndex,_CSDataArray)
//  else if nIndex = -1 then begin
//    nIndex := CaseString(_CSDataArray[0], _WGOrderNo);  //
//    if (nIndex > -1) then PGSCSWGü��List(nIndex,_CSDataArray);
//  end;

  nIndex := Caseint(nOrderNo, _YMSGCOrderNo);  //
  if (nIndex > -1) then begin
    YMSGCü��List(nIndex,_CSDataArray);
    exit;
  end;

  nIndex := Caseint(nOrderNo, _WGOrderNo);  //
  if (nIndex > -1) then begin
    PGSCSWGü��List(nIndex,_CSDataArray);
    exit;
  end;

  nIndex := Caseint(nOrderNo, _MJOrderNo);  //
  if (nIndex > -1) then begin
    PGSCSMainü��List(nIndex,_CSDataArray);
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

procedure TfHBOMain.YMSGCü��List(index: integer; nDataArray: array of string);
begin
  if _YMSGCCGList[index].OrderNo = strTointDef(nDataArray[0],0) then begin
    _YMSGCCGList[index].JMCode := nDataArray[1];
    _YMSGCCGList[index].MMGB := strTointDef(nDataArray[2],0); // ���ݱ��� 00������, 03 ���尡.
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
//	����Ÿ���� Open API �Է��ڵ� �����Դϴ�.
//	[160001] �����ɼ��ֹ� - �Էº��
  with fHBOMain do begin
    YuantaAPI1.YOA_SetTRInfo('160001','InBlock1');			// TR����(TR��, Block��)�� �����մϴ�.
    YuantaAPI1.YOA_SetFieldString('acnt_aid', nACC,0);		// ���¹�ȣ ���� �����մϴ�.
    YuantaAPI1.YOA_SetFieldString('passwd', nPWD,0);		// ��й�ȣ ���� �����մϴ�.
    YuantaAPI1.YOA_SetFieldString('jumun_gubun',nJumun_Gubun,0);		// �ֹ�����1�ŵ�2�ż� ���� �����մϴ�.
    YuantaAPI1.YOA_SetFieldString('meme_gubun',nMeme_gubun,0);		// �Ÿű���L����M����C���Ǻ�B���� ���� �����մϴ�.
    YuantaAPI1.YOA_SetFieldString('jong_code',nJMCode,0);		// �����ڵ� ���� �����մϴ�.
    YuantaAPI1.YOA_SetFieldString('order_cnt', nQtn,0);		// �ֹ����� ���� �����մϴ�.
    YuantaAPI1.YOA_SetFieldString('order_price',nPrice,0);		// �ֹ����� ���� �����մϴ�.
    YuantaAPI1.YOA_SetFieldString('jang_gubun',nJang_gubun,0);		// �����ɼǱ���0����1�ɼ�2����3�� ���� �����մϴ�.
    YuantaAPI1.YOA_SetFieldString('futu_ord_if',nFutu_ord_if,0);		// �ֹ�����S�Ϲ�I�Ϻ�����F�������� ���� �����մϴ�.
    var nReturn : integer;
    result := YuantaAPI1.YOA_Request('160001', true, -1);
//    if result > 999 then begin
//      delay(500);
//    end else begin
//      showmessage('�ɼ� �ֹ� ����');
//    end;
  end;
end;

procedure TfHBOMain.YuantaAPI1Login(ASender: TObject; nResult: Integer;
  const bstrMsg: WideString);
begin
  HandleDongbuApi := 1;//�α��� flg
end;

procedure TfHBOMain.YuantaAPI1ReceiveData(ASender: TObject; nReqID: Integer;
  const bstrDSOID: WideString);
var strData : string;
    i, nIndex, nCnt : integer;
    nDataArray : array[0..4] of string; // �ż��ܷ�, �ŵ��ܷ� , �ż�ȣ��, �ŵ�ȣ��,���簡
begin
  if bstrDSOID = '350001' then begin // ���� ���簡
    _SunMulRTflg := 1;
    YuantaAPI1.YOA_SetTRInfo( '350001', 'OutBlock1' );			// TR����(TR��, Block��)�� �����մϴ�.
    strData := YuantaAPI1.YOA_GetFieldString( 'jongname', 0 );		// �����ڵ弳�� ���� �������մϴ�.
    sunmul := copy(YuantaAPI1.YOA_GetFieldString( 'last', 0 ),1,6);		// ���簡 ���� �������մϴ�.
    DyungLak := copy(YuantaAPI1.YOA_GetFieldString( 'debi',0 ),1,4);		// ���ϴ�� ���� �������մϴ�.
  end else if bstrDSOID = '360001' then begin             // �ɼ� ���簡
   	YuantaAPI1.YOA_SetTRInfo( '360001', 'OutBlock1' );			// TR����(TR��, Block��)�� �����մϴ�.
    strData:= YuantaAPI1.YOA_GetFieldString( 'jongname',                 0 );		// �����(����) ���� �������մϴ�.
    strData:= YuantaAPI1.YOA_GetFieldString( 'last',                     0 );		// ���簡 ���� �������մϴ�.
//    strData:= YuantaAPI1.YOA_GetFieldString( 'debi',                     0 );		// ���ϴ�� ���� �������մϴ�.
//    strData:= YuantaAPI1.YOA_GetFieldString( 'debirate',                 0 );		// ����� ���� �������մϴ�.
//    strData:= YuantaAPI1.YOA_GetFieldString( 'standardprice',            0 );		// ���ذ� ���� �������մϴ�.

    strData:= YuantaAPI1.YOA_GetFieldString( 'medoprice',                0 );		// �ŵ�ȣ�� ���� �������մϴ�.
    strData:= YuantaAPI1.YOA_GetFieldString( 'mesuprice',                0 );		// �ż�ȣ�� ���� �������մϴ�.

    nDataArray[2] := YuantaAPI1.YOA_GetFieldString( 'mesuprice',0);//      �ż�ȣ��
    nDataArray[3] := YuantaAPI1.YOA_GetFieldString( 'medoprice',0);//      �ŵ�ȣ��
    nDataArray[4] := YuantaAPI1.YOA_GetFieldString( 'last',0 );//      ���簡,

    strData := copy(_DongBuNowPriceCode,6,3);   //201N6315
    if (copy(strData,3,1) = '2') or (copy(strData,3,1) = '7') then strData := strData + '.5';
    nIndex := CaseString(strData, _HeangSaGaList);  //��簡 ����Ʈ�� ���Ͽ� ������ �׸����� Row��ȣ ����

    if nIndex in [0..65] then begin
      DongbuHG������(nIndex, _DongBuNowPriceCode, nDataArray);
    end;
     _DongBuNowPriceCode := '-';
  end else if  bstrDSOID = '160001' then begin // ���� �ֹ�
    YuantaAPI1.YOA_SetTRInfo( '160001', 'OutBlock1' );			// TR����(TR��, Block��)�� �����մϴ�.
    strData := YuantaAPI1.YOA_GetFieldString( 'msg', 0 );		// �޼��� ���� �������մϴ�.  '�������� �ż��ֹ��� �Ϸ� �Ǿ����ϴ�.    '#$A'�ֹ���ȣ : 5356'
    strData := YuantaAPI1.YOA_GetFieldString( 'org_no', 0 );		// ���ֹ���ȣ ���� �������մϴ�.
    YuantaJuMun(strData);
  end else if  bstrDSOID = '251002' then begin // �����ɼǴ�����= �ܰ�

    YuantaAPI1.YOA_SetTRInfo( '251002', 'OutBlock1' );			// TR����(TR��, Block��)�� �����մϴ�.
    nCnt := strTointDef(YuantaAPI1.YOA_GetFieldString( 'list_cnt',0 ),0);		// ����ȸ�Ǽ� ���� �������մϴ�.
//    strData := YuantaAPI1.YOA_GetFieldString( 'jang_gubun',               0 );		// ���屸�� ���� �������մϴ�.
    _JangoJMQtn := nCnt;
    YuantaAPI1.YOA_SetTRInfo( '251002', 'OutBlock2' );			// TR����(TR��, Block��)�� �����մϴ�.
    for I := 0 to nCnt -1 do begin
      //_JangoList : array[0..5,0..49] of string; // �ܰ� ����Ʈ   ����, ����, �ŸŰ�, ���簡,�ŵ�/����, ��ü��
                                                            //      0     1       2       3     4          5

      _JangoList[0,i] := YuantaAPI1.YOA_GetFieldString( 'jong_code',                i);		// �����ڵ� ���� �������մϴ�.
//      strData := YuantaAPI1.YOA_GetFieldString( 'jong_name',                i);		// ����� ���� �������մϴ�.
      _JangoList[4,i] := YuantaAPI1.YOA_GetFieldString( 'buy_sell_tp',              i);		// �ż�/�ŵ����� ���� �������մϴ�.
      _JangoList[1,i] := YuantaAPI1.YOA_GetFieldString( 'now_amount',i);		// �����ܷ� ���� �������մϴ�.
      _JangoList[1,i] := copy(_JangoList[1,i],1,pos('.',_JangoList[1,i]) -1);
      _JangoList[2,i] := YuantaAPI1.YOA_GetFieldString( 'buy_price',                i);		// ���԰� ���� �������մϴ�.
//      strData := YuantaAPI1.YOA_GetFieldString( 'total_buy_price',          i);		// ���԰��� ���� �������մϴ�.
      _JangoList[3,i] := YuantaAPI1.YOA_GetFieldString( 'now_price', i);		// ���簡 ���� �������մϴ�.
//      _JangoList[3,i] := YuantaAPI1.YOA_GetFieldString( 'total_now_price',          i);		// ���簡�� ���� �������մϴ�.
//      strData := YuantaAPI1.YOA_GetFieldString( 'medoprice',                i);		// �ŵ�ȣ�� ���� �������մϴ�.
//      strData := YuantaAPI1.YOA_GetFieldString( 'medovol',                  i);		// �ŵ��ܷ� ���� �������մϴ�.
//      strData := YuantaAPI1.YOA_GetFieldString( 'mesuprice',                i);		// �ż�ȣ�� ���� �������մϴ�.
//      strData := YuantaAPI1.YOA_GetFieldString( 'mesuvol',                  i);		// �ż��ܷ� ���� �������մϴ�.
//      strData := YuantaAPI1.YOA_GetFieldString( 'vol',                      i);		// �������� ���� �������մϴ�.
      _JangoList[5,i] := YuantaAPI1.YOA_GetFieldString( 'openvol',                  i);		// �̰����������� ���� �������մϴ�.
      _JangoList[5,i] := copy(_JangoList[5,i],1,pos('.',_JangoList[5,i]) -1);
//      strData := YuantaAPI1.YOA_GetFieldString( 'maemae_son',               i);		// �Ÿż��� ���� �������մϴ�.
//      strData := YuantaAPI1.YOA_GetFieldString( 'clear_son',                i);		// û����� ���� �������մϴ�.
//      strData := YuantaAPI1.YOA_GetFieldString( 'total_son',                i);		// �Ѽ��� ���� �������մϴ�.
//      strData := YuantaAPI1.YOA_GetFieldString( 'unit',                     i);		// ���񺰴����ݾ� ���� �������մϴ�.
//      strData := YuantaAPI1.YOA_GetFieldString( 'autocode',                 i);		// ����ü��������ڵ� ���� �������մϴ�.

//      YuantaAPI1.YOA_SetTRInfo( '251002', 'OutBlock3' );			// TR����(TR��, Block��)�� �����մϴ�.
//      strData := YuantaAPI1.YOA_GetFieldString( 'next',                     i);		// �������� ���� �������մϴ�.
//      strData := YuantaAPI1.YOA_GetFieldString( 'son',                      i);		// �򰡼��� ���� �������մϴ�.
//      strData := YuantaAPI1.YOA_GetFieldString( 'clear_son',                i);		// û��м��� ���� �������մϴ�.
//      strData := YuantaAPI1.YOA_GetFieldString( 'total_son',                i);		// �Ѽ��� ���� �������մϴ�.
//      strData := YuantaAPI1.YOA_GetFieldString( 'today_total_son',          i);		// �����Ѽ��� ���� �������մϴ�.
//      strData := YuantaAPI1.YOA_GetFieldString( 'total_property',           i);		// ������Ź ���� �������մϴ�.
//      strData := YuantaAPI1.YOA_GetFieldString( 'buy_opt_amt',              i);		// �ż��ɼ����簡�� ���� �������մϴ�.
//      strData := YuantaAPI1.YOA_GetFieldString( 'sell_opt_amt',             i);		// �ŵ��ɼ����簡�� ���� �������մϴ�.
//      strData := YuantaAPI1.YOA_GetFieldString( 'd1yesu',                   i);		// d+1������_����ó���� ���� �������մϴ�.
//      strData := YuantaAPI1.YOA_GetFieldString( 'cmsn',                     i);		// ������ ���� �������մϴ�.
//      strData := YuantaAPI1.YOA_GetFieldString( 'call_sell_amt',            i);		// �ݸŵ��ɼ��򰡾� ���� �������մϴ�.
//      strData := YuantaAPI1.YOA_GetFieldString( 'call_buy_amt',             i);		// �ݸż��ɼ��򰡾� ���� �������մϴ�.
//      strData := YuantaAPI1.YOA_GetFieldString( 'put_sell_amt',             i);		// ǲ�ŵ��ɼ��򰡾� ���� �������մϴ�.
//      strData := YuantaAPI1.YOA_GetFieldString( 'put_buy_amt',              i);		// ǲ�ż��ɼ��򰡾� ���� �������մϴ�.
      _JGIndex := i;
    end;
  end;
end;

procedure TfHBOMain.YuantaJuMun(strOrderNo : WideString);  // �����ֹ�
var nString : string;
    i, nCnt : integer;     // nCnt�� û�� �� ��������� ���� �ܰ� ������ �ֹ� ������ ���°���� üũ�ϴ� �뵵
begin
  _JMRecieveflg := 1;

  case strTointDef(copy(_ClientKey,1,2),0) of          // �ֹ��� �����ؾ� ��.
    01 : begin   // ��ż� ����
      nCnt := strTointDef(copy(_ClientKey,3,3),0);  // �ֹ�����  ClientKey = 11010000,   33010000
      if _YMSGCCGList[nCnt].JMKey = -1 then begin
        _YMSGCCGList[nCnt].JMKey :=  strTointDef(_ClientKey,-8);   // �ֹ�Ű �Է�
        _YMSGCCGList[nCnt].OrderNo := strTointDef(strOrderNo,0);         // �ֹ���ȣ �Է�
        _YMSGCOrderNo[nCnt] := _YMSGCCGList[nCnt].OrderNo;
      end;
    end;
    11: begin   // û�� ���� �ֹ�
      nCnt := strTointDef(copy(_ClientKey,3,3),0)-1;  // �ֹ�����  ClientKey = 11010000,   33010000
      if _CSJMDataList[nCnt].JMKey = -1 then begin
        _CSJMDataList[nCnt].JMKey :=  strTointDef(DBSOJuMunDataArray[1],-8);   // �ֹ�Ű �Է�
        _CSJMDataList[nCnt].OrderNo := strTointDef(strOrderNo,0);         // �ֹ���ȣ �Է�
        _MJOrderNo[nCnt] := _CSJMDataList[nCnt].OrderNo;
        _CSMainIndex := nCnt;
      end;
    end;
    22: begin // û�� �ܰ� �ֹ�
      nCnt := strTointDef(copy(_ClientKey,3,3),0)-1;  // �ֹ�����  ClientKey = 11010000,   33010000
      if _CSWGJMDataList[nCnt].JMKey = -1 then begin
        _CSWGJMDataList[nCnt].JMKey :=  strTointDef(_ClientKey,-8);   // �ֹ�Ű �Է�
        _CSWGJMDataList[nCnt].OrderNo := strTointDef(strOrderNo,0);         // �ֹ���ȣ �Է�
        _WGOrderNo[nCnt] := _CSWGJMDataList[nCnt].OrderNo;
        _CSWGIndex :=  nCnt;
      end;
    end;
//    33 : begin  // ��ŵ� �ֹ�
//        nCnt := strTointDef(copy(DBSOJuMunDataArray[1],4,1),0)-1;  // �ֹ�����  ClientKey
//        if _YMDJMDataList[nCnt].JMKey = -1 then begin
//          _YMDJMDataList[nCnt].JMKey :=  strTointDef(DBSOJuMunDataArray[1],-8);   // �ֹ�Ű �Է�
//          _YMDJMDataList[nCnt].OrderNo := strTointDef(DBSOJuMunDataArray[2],0);         // �ֹ���ȣ �Է�
//          _YMDOrderNo[nCnt] := _YMDJMDataList[nCnt].OrderNo;
//          _YMDIndex :=  nCnt;
//        end;
//    end;
//    44 : begin  // Ÿ����1 ���
//        nCnt := strTointDef(copy(DBSOJuMunDataArray[1],3,3),0);
//        _TimeCallInfo1[nCnt].JMKey :=  strTointDef(DBSOJuMunDataArray[1],-8);   // �ֹ�Ű �Է�
//        _TimeCallInfo1[nCnt].OrderNo := strTointDef(DBSOJuMunDataArray[2],0);         // �ֹ���ȣ �Է�
//        _TimeCallOrderNo1[nCnt] := _TimeCallInfo1[nCnt].OrderNo;
//        _JuMunQtnError_flg := 1;
//        _JuMunOK_flg := 1;
//    end;
//    55 : begin  // Ÿ����2����
//        nCnt := strTointDef(copy(DBSOJuMunDataArray[1],3,3),0);
//        _TimeCallInfo2[nCnt].JMKey :=  strTointDef(DBSOJuMunDataArray[1],-8);   // �ֹ�Ű �Է�
//        _TimeCallInfo2[nCnt].OrderNo := strTointDef(DBSOJuMunDataArray[2],0);         // �ֹ���ȣ �Է�
//        _TimeCallOrderNo2[nCnt] := _TimeCallInfo2[nCnt].OrderNo;
//        _JuMunQtnError_flg := 1;
//        _JuMunOK_flg := 1;
//    end;
//    66 : begin  // Ÿ��ǲ1���
//        nCnt := strTointDef(copy(DBSOJuMunDataArray[1],3,3),0);
//        _TimePutInfo1[nCnt].JMKey :=  strTointDef(DBSOJuMunDataArray[1],-8);   // �ֹ�Ű �Է�
//        _TimePutInfo1[nCnt].OrderNo := strTointDef(DBSOJuMunDataArray[2],0);         // �ֹ���ȣ �Է�
//        _TimePutOrderNo1[nCnt] := _TimePutInfo1[nCnt].OrderNo;
//        _JuMunQtnError_flg := 1;
//        _JuMunOK_flg := 1;
//    end;
//    77 : begin  // Ÿ��ǲ2����
//        nCnt := strTointDef(copy(DBSOJuMunDataArray[1],3,3),0);
//        _TimePutInfo2[nCnt].JMKey :=  strTointDef(DBSOJuMunDataArray[1],-8);   // �ֹ�Ű �Է�
//        _TimePutInfo2[nCnt].OrderNo := strTointDef(DBSOJuMunDataArray[2],0);         // �ֹ���ȣ �Է�
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
    nDataArray : array[0..4] of string; // �ż��ܷ�, �ŵ��ܷ� , �ż�ȣ��, �ŵ�ȣ��, ���簡
begin
  strData := nReqID.ToString;
  strData := bstrAutoID;

  if bstrAutoID = '41' then begin // �ǽð� ���簡
    YuantaAPI1.YOA_SetTRInfo( '41', 'OutBlock1');			// TR����(TR��, Block��)�� �����մϴ�.
    nJMCode := YuantaAPI1.YOA_GetFieldString( 'jongcode',        0);		// �����ڵ� ���� �����ɴϴ�.
    if nJMCode = _DongBuSunMulCode then begin
      sunmul := copy(YuantaAPI1.YOA_GetFieldString( 'last',0),1,7);		// ���簡 ���� �����ɴϴ�.
      DyungLak := copy(YuantaAPI1.YOA_GetFieldString( 'change', 0),1,5);		// ���ϴ�� ���� �����ɴϴ�.
      _SunMulRTflg := 1;
      _SunMulRTChartflg[_SunMulRTChartStep] := True;
    end else begin
      strData := copy(nJMCode,6,3);   //201N6315
      if (copy(strData,3,1) = '2') or (copy(strData,3,1) = '7') then strData := strData + '.5';
      nIndex := CaseString(strData, _HeangSaGaList);  //��簡 ����Ʈ�� ���Ͽ� ������ �׸����� Row��ȣ ����
      nDataArray[4] := YuantaAPI1.YOA_GetFieldString( 'last',            0);		// ���簡 ���� �����ɴϴ�.
      Dongbu������(nIndex, nJMCode, nDataArray);
    end;
  end else if bstrAutoID = '42' then begin  //�ǽð� ȣ��
    YuantaAPI1.YOA_SetTRInfo( '42', 'OutBlock1' );			// TR����(TR��, Block��)�� �����մϴ�.
    nJMCode := YuantaAPI1.YOA_GetFieldString( 'jongcode',0);// �����ڵ� ���� �����ɴϴ�.
    strData := copy(nJMCode,6,3);   //201N6315
    if (copy(strData,3,1) = '2') or (copy(strData,3,1) = '7') then strData := strData + '.5';
    nIndex := CaseString(strData, _HeangSaGaList);  //��簡 ����Ʈ�� ���Ͽ� ������ �׸����� Row��ȣ ����
    nDataArray[3] := YuantaAPI1.YOA_GetFieldString( 'medoprice',   0 );		// �ֿ켱�ŵ�ȣ�� ���� �����ɴϴ�.
    nDataArray[2] := YuantaAPI1.YOA_GetFieldString( 'mesuprice',   0 );		// �ֿ켱�ż�ȣ�� ���� �����ɴϴ�.
  	nDataArray[1] := YuantaAPI1.YOA_GetFieldString( 'medovol',     0 );		// �ŵ�ȣ���ܷ� ���� �����ɴϴ�.
  	nDataArray[0] := YuantaAPI1.YOA_GetFieldString( 'mesuvol',     0 );		// �ż�ȣ���ܷ� ���� �����ɴϴ�.
    Dongbu5HG������(nIndex, nJMCode, nDataArray);
  end else if bstrAutoID = '71' then begin  //�ǽð� �ֹ�Ȯ�� �� ü��
  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //	����Ÿ���� Open API ����ڵ� �����Դϴ�.
    //	[71] REAL_PA - ��º��
      YuantaAPI1.YOA_SetTRInfo( '71', 'OutBlock1' );			// TR����(TR��, Block��)�� �����մϴ�.
      strData := YuantaAPI1.YOA_GetFieldString( 'tr_code',                  0 );		// TR CODE(1) 0:OR01 1:CH01 2:HO01 ���� �������մϴ�.
      //_CSDataArray : array[0..9] of string; //�ֹ���ȣ, �����ڵ�, �Ÿű���, �ֹ�����,�ֹ���,ü�ᰡ��, ü�����(��), ��ü�ᷮ, ���ֹ���ȣ, ����
                                              //  0          1         2         3       4        5         6            7           8       9
      _CSDataArray[0] := YuantaAPI1.YOA_GetFieldString( 'ordno',                    0 );		// �ֹ�������ȣ(�ŷ���) ���� �������մϴ�.
//      strData := YuantaAPI1.YOA_GetFieldString( 'autocancel',               0 );		// �ڵ���ҿ��� ���� �������մϴ�.
//      strData := YuantaAPI1.YOA_GetFieldString( 'mdmtp',                    0 );		// ��ü���� ���� �������մϴ�.
//      strData := YuantaAPI1.YOA_GetFieldString( 'filler',                   0 );		// filler ���� �������մϴ�.
//      strData := YuantaAPI1.YOA_GetFieldString( 'cheno',                    0 );		// ü���ȣ(c.yak_num) ���� �������մϴ�.
      _CSDataArray[8] := YuantaAPI1.YOA_GetFieldString( 'origno',                   0 );		// ���ֹ���ȣ(0) ���� �������մϴ�.
//      strData := YuantaAPI1.YOA_GetFieldString( 'jumunno',                  0 );		// �����ֹ���ȣ ���� �������մϴ�.
//      strData := YuantaAPI1.YOA_GetFieldString( 'bpjumunno',                0 );		// ������ �ֹ���ȣ ���� �������մϴ�.
      _CSDataArray[3] := YuantaAPI1.YOA_GetFieldString( 'jumunuv',                  0 );		// �ֹ��ܰ�(jumun_su) ���� �������մϴ�.
      _CSDataArray[4] := YuantaAPI1.YOA_GetFieldString( 'jumunqty',                 0 );		// �ֹ�����(jumun_price) ���� �������մϴ�.
//      strData := YuantaAPI1.YOA_GetFieldString( 'corqty',                   0 );		// ����/��� ���� ���� �������մϴ�.
      _CSDataArray[6] := YuantaAPI1.YOA_GetFieldString( 'cheuv',                    0 );		// ü��ܰ�(c.yak_price) ���� �������մϴ�.
//      strData := YuantaAPI1.YOA_GetFieldString( 'cheqty',                   0 );		// ü�����(c.yak_su) ���� �������մϴ�.
      _CSDataArray[5] := YuantaAPI1.YOA_GetFieldString( 'chesum',                   0 );		// ü������� ���� �������մϴ�.
      _CSDataArray[7] := intToStr(strTointDef(_CSDataArray[4],-1) - strTointDef(_CSDataArray[5],-9999));
//      strData := YuantaAPI1.YOA_GetFieldString( 'shyak',                    0 );		// S �ٿ��� ü�ᰡ ���� �������մϴ�.
//      strData := YuantaAPI1.YOA_GetFieldString( 'lnyak',                    0 );		// S ������ ü�ᰡ ���� �������մϴ�.
//      strData := YuantaAPI1.YOA_GetFieldString( 'bp_time',                  0 );		// data ���� �߻��ð� ���� �������մϴ�.
//      strData := YuantaAPI1.YOA_GetFieldString( 'tr_time',                  0 );		// ü��ð�(c.yak_time) ���� �������մϴ�.
//      strData := YuantaAPI1.YOA_GetFieldString( 'op_id',                    0 );		// �� Login ID(user_id) ���� �������մϴ�.
//      strData := YuantaAPI1.YOA_GetFieldString( 'custseq',                  0 );		// ���¹�ȣ(cust_no) ���� �������մϴ�.
      _CSDataArray[2] := YuantaAPI1.YOA_GetFieldString( 'gubun48',                  0 );		// �ż�(4) �ŵ�(8) ���� �������մϴ�.
      _CSDataArray[1] := YuantaAPI1.YOA_GetFieldString( 'stkcode',                  0 );		// �����ڵ�(c.jongcode) ���� �������մϴ�.
//      strData := YuantaAPI1.YOA_GetFieldString( 'stkname',                  0 );		// �����(' ... ') ���� �������մϴ�.
//      strData := YuantaAPI1.YOA_GetFieldString( 'jununjong',                0 );		// L:������ M:���尡 C:���Ǻ����� ���� �������մϴ�.
//      strData := YuantaAPI1.YOA_GetFieldString( 'reject',                   0 );		// �źλ��� �ڵ� ���� �������մϴ�.
//      strData := YuantaAPI1.YOA_GetFieldString( 'hokatp',                   0 );		// ȣ������ ���� �������մϴ�.
//      strData := YuantaAPI1.YOA_GetFieldString( 'futu_ord_if',              0 );		// �ֹ����� ���� �������մϴ�.
//      strData := YuantaAPI1.YOA_GetFieldString( 'trtime2',                  0 );		// �ð� HH:MM:SS ���� �������մϴ�.
//      strData := YuantaAPI1.YOA_GetFieldString( 'price',                    0 );		// ü�ᰡ �Ǵ� �ֹ��� ���� �������մϴ�.
//    nACCNo := gfDel32(DongbuRTSunOpCheGealDataArry[2]);
//    nCode := gfDel32(DongbuRTSunOpCheGealDataArry[6]);
//    _CSDataArray[1] := nCode; // �����ڵ�

    nIndex := Caseint(_CSDataArray[0].ToInteger, _YMSGCOrderNo);  //
    if (nIndex > -1) then begin
      YMSGCü��List(nIndex,_CSDataArray);
      exit;
    end;

    nIndex := Caseint(_CSDataArray[0].ToInteger, _WGOrderNo);  //
    if (nIndex > -1) then begin
      PGSCSWGü��List(nIndex,_CSDataArray);
      exit;
    end;

    nIndex := Caseint(_CSDataArray[0].ToInteger, _MJOrderNo);  //
    if (nIndex > -1) then begin
      PGSCSMainü��List(nIndex,_CSDataArray);
      exit;
    end;
  end;
end;

procedure TfHBOMain.TSPutCGList2(index : integer; nDataArray : array of string); // ������ û��ü�Ḯ��Ʈ ���   �ֹ���ȣ, �ֹ�����, �ֹ�����, ��ü����� , �Ÿű���
begin
////�ֹ���ȣ, �����ڵ�, �Ÿű���, �ֹ�����,�ֹ���,ü�ᰡ��, ü�����, ��ü�ᷮ, ���ֹ���ȣ, ����
//
  if _TimePutInfo2[index].OrderNo = strTointDef(nDataArray[0],0) then begin
    _TimePutInfo2[index].JMCode := nDataArray[1];
    _TimePutInfo2[index].MMGB := strTointDef(nDataArray[2],0);  // ���ݱ��� 00������, 03 ���尡.
    _TimePutInfo2[index].JMPrice := strTofloatDef(nDataArray[3],0);
    _TimePutInfo2[index].JMQtn := strTointDef(nDataArray[4],0);
    _TimePutInfo2[index].CGPrice := strTofloatDef(nDataArray[5],0);
    _TimePutInfo2[index].MCGQtn := strTointDef(nDataArray[7],0);
    _TimePutInfo2[index].CGQtn := _TimePutInfo2[index].JMQtn - _TimePutInfo2[index].MCGQtn;
    _TimePutInfo2[index].WJMNo := strTointDef(nDataArray[8],0);
//    _TimePutInfo2[index].UH := '';
  end;
end;

procedure TfHBOMain.TSPutCGList1(index : integer; nDataArray : array of string); // ������ û��ü�Ḯ��Ʈ ���   �ֹ���ȣ, �ֹ�����, �ֹ�����, ��ü����� , �Ÿű���
begin
////�ֹ���ȣ, �����ڵ�, �Ÿű���, �ֹ�����,�ֹ���,ü�ᰡ��, ü�����, ��ü�ᷮ, ���ֹ���ȣ, ����
//
  if _TimePutInfo1[index].OrderNo = strTointDef(nDataArray[0],0) then begin
    _TimePutInfo1[index].JMCode := nDataArray[1];
    _TimePutInfo1[index].MMGB := strTointDef(nDataArray[2],0);  // ���ݱ��� 00������, 03 ���尡.
    _TimePutInfo1[index].JMPrice := strTofloatDef(nDataArray[3],0);
    _TimePutInfo1[index].JMQtn := strTointDef(nDataArray[4],0);
    _TimePutInfo1[index].CGPrice := strTofloatDef(nDataArray[5],0);
    _TimePutInfo1[index].MCGQtn := strTointDef(nDataArray[7],0);
    _TimePutInfo1[index].CGQtn := _TimePutInfo1[index].JMQtn - _TimePutInfo1[index].MCGQtn;
    _TimePutInfo1[index].WJMNo := strTointDef(nDataArray[8],0);
//    _TimePutInfo1[index].UH := '';
  end;
end;

procedure TfHBOMain.TSCallCGList2(index : integer; nDataArray : array of string); // ������ û��ü�Ḯ��Ʈ ���   �ֹ���ȣ, �ֹ�����, �ֹ�����, ��ü����� , �Ÿű���
begin
////�ֹ���ȣ, �����ڵ�, �Ÿű���, �ֹ�����,�ֹ���,ü�ᰡ��, ü�����, ��ü�ᷮ, ���ֹ���ȣ, ����
//
  if _TimeCallInfo2[index].OrderNo = strTointDef(nDataArray[0],0) then begin
    _TimeCallInfo2[index].JMCode := nDataArray[1];
    _TimeCallInfo2[index].MMGB := strTointDef(nDataArray[2],0);  // ���ݱ��� 00������, 03 ���尡.
    _TimeCallInfo2[index].JMPrice := strTofloatDef(nDataArray[3],0);
    _TimeCallInfo2[index].JMQtn := strTointDef(nDataArray[4],0);
    _TimeCallInfo2[index].CGPrice := strTofloatDef(nDataArray[5],0);
    _TimeCallInfo2[index].MCGQtn := strTointDef(nDataArray[7],0);
    _TimeCallInfo2[index].CGQtn := _TimeCallInfo2[index].JMQtn - _TimeCallInfo2[index].MCGQtn;
    _TimeCallInfo2[index].WJMNo := strTointDef(nDataArray[8],0);
//    _TimeCallInfo2[index].UH := '';
  end;
end;

procedure TfHBOMain.TSCallCGList1(index : integer; nDataArray : array of string); // ������ û��ü�Ḯ��Ʈ ���   �ֹ���ȣ, �ֹ�����, �ֹ�����, ��ü����� , �Ÿű���
begin
////�ֹ���ȣ, �����ڵ�, �Ÿű���, �ֹ�����,�ֹ���,ü�ᰡ��, ü�����, ��ü�ᷮ, ���ֹ���ȣ, ����
//
  if _TimeCallInfo1[index].OrderNo = strTointDef(nDataArray[0],0) then begin
    _TimeCallInfo1[index].JMCode := nDataArray[1];
    _TimeCallInfo1[index].MMGB := strTointDef(nDataArray[2],0);  // ���ݱ��� 00������, 03 ���尡.
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

procedure TfHBOMain.PGSCSMainü��List(index : integer; nDataArray : array of string); // ������ û��ü�Ḯ��Ʈ ���   �ֹ���ȣ, �ֹ�����, �ֹ�����, ��ü����� , �Ÿű���
begin
////�ֹ���ȣ, �����ڵ�, �Ÿű���, �ֹ�����,�ֹ���,ü�ᰡ��, ü�����, ��ü�ᷮ, ���ֹ���ȣ, ����
//
  if _CSJMDataList[index].OrderNo = strTointDef(nDataArray[0],0) then begin
    _CSJMDataList[index].JMCode := nDataArray[1];
    _CSJMDataList[index].MMGB := strTointDef(nDataArray[2],0);  // ���ݱ��� 00������, 03 ���尡.
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

procedure TfHBOMain.PGSCSWGü��List(index: integer; nDataArray: array of string);
begin
  if _CSWGJMDataList[index].OrderNo = strTointDef(nDataArray[0],0) then begin
    _CSWGJMDataList[index].JMCode := nDataArray[1];
    _CSWGJMDataList[index].MMGB := strTointDef(nDataArray[2],0); // ���ݱ��� 00������, 03 ���尡.
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
  if nInteger = 00 then // 00���̸�
  begin
    nInteger := strTointDef(edtDMonth.Text, 0) - 88; // 201800 - 88 = 201812
    edtDMonth.Text := intTostr(nInteger);
  end else if nInteger = 13 then // 13���̸�
  begin
    nInteger := strTointDef(edtDMonth.Text, 0) + 88; // 201813 + 88 = 201901
    edtDMonth.Text := intTostr(nInteger);
  end;
//  MonthCal;  // ����, ������, ������ �Է����ִ� �Լ�
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
    sbnPriceUpdate.Caption := '����Ȯ��';
   IF Assigned(fPriceInfo) then begin
      with fPriceInfo do begin
        WCaptionshow;
      end;
    end;
  end;

end;

procedure TfHBOMain.DongbuRTOption5HG(nszField, nData: WideString);   //�����ǿ�
var nString,nMonthCode : string;
    nParshingLength, i, nIndex : integer;
    nDataArray : array[0..3] of string; // �ż��ܷ�, �ŵ��ܷ� , �ż�ȣ��, �ŵ�ȣ��
begin
//����API.doc ������ 74page ���� �� ��

  nParshingLength := 0;
  for i := 0 to 5 do    //�� 46���� ����. ���� �ʿ��� �͸� ���.
  begin
    nString := Copy(nData, nParshingLength +1 , DongbuRTOption5HGDataLenArry[i]);
    nParshingLength := nParshingLength + DongbuRTOption5HGDataLenArry[i];
    DongbuRTOption5HGDataArry[i] := nString;
  end;

//  nDataArray[0] := gfDel32(DongbuRTOption5HGDataArry[5]);//      �ż��ܷ�
//  nDataArray[1] := gfDel32(DongbuRTOption5HGDataArry[4]);//      �ŵ��ܷ�
  nDataArray[2] := gfDel32(DongbuRTOption5HGDataArry[3]);//      �ż��켱ȣ��
  nDataArray[3] := gfDel32(DongbuRTOption5HGDataArry[2]);//      �ŵ��켱ȣ��

  nString := copy(nszField,6,3);   //201N6315
  if (copy(nString,3,1) = '2') or (copy(nString,3,1) = '7') then nString := nString + '.5';
  nIndex := CaseString(nString, _HeangSaGaList);  //��簡 ����Ʈ�� ���Ͽ� ������ �׸����� Row��ȣ ����
  nMonthCode :=copy(nszField,4,2);

  if nIndex in [0..65] then begin
    if nMonthCode = _DCode then begin
      Dongbu5HG������(nIndex, nszField, nDataArray);
//      for I := 0 to 3 do begin
//        if nszField = _YMDList[i].JMCode then begin
//          if _YMDList[i].TTQtn > 0 then begin  // ������ 0���� ũ��  �ż��̴ϱ�... �ŵ�ȣ�� �Է�
//            _YMDList[i].HGPrice := strTofloatDef(nDataArray[3],0);   // �ż��̸� �ŵ�ȣ��
//          end else _YMDList[i].HGPrice := strTofloatDef(nDataArray[2],0); // �ŵ��̸� �ż�ȣ��
//
//          // ��ŵ��� ������ �űԴ� �ŵ�, û���� �ż��� ����!!!!!!!
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

    end else if nMonthCode = _CWCode then Dongbu5HGCW������(nIndex, nszField, nDataArray)
    else if nMonthCode = _CCWCode then Dongbu5HGCCW������(nIndex, nszField, nDataArray)
    else if nMonthCode = _WWCode then Dongbu5HGWW������(nIndex, nszField, nDataArray);
  end;
end;

procedure TfHBOMain.Dongbu5HGWW������(index : integer; nszField: string; nDataArray : array of string);
begin
  if copy(nszField,1,3) = '201' then // �ݿɼ��̸�...
  begin
    _WWHSGListInfo[1,index] := strTofloatDef(nDataArray[2],0); // �ż� ȣ��
    _WWHSGListInfo[0,index] := strTofloatDef(nDataArray[3],0); // �ŵ� ȣ��
//    _WWRTCallIndex[Index] := True;
  end else if copy(nszField,1,3) = '301' then // Put�ɼ��̸�...
  begin
    _WWHSGListInfo[6,index] := strTofloatDef(nDataArray[3],0); // �ŵ� ȣ��
    _WWHSGListInfo[5,index] := strTofloatDef(nDataArray[2],0); // �ż� ȣ��
//    _WWRTPutIndex[Index] := True;
  end;
  _WWRTIndex[Index] := True;

end;

procedure TfHBOMain.Dongbu5HGCCW������(index : integer; nszField: string; nDataArray : array of string);
begin
  if copy(nszField,1,3) = '201' then // �ݿɼ��̸�...
  begin
    _CCWHSGListInfo[1,index] := strTofloatDef(nDataArray[2],0); // �ż� ȣ��
    _CCWHSGListInfo[0,index] := strTofloatDef(nDataArray[3],0); // �ŵ� ȣ��
//    _CCWRTCallIndex[Index] := True;
  end else if copy(nszField,1,3) = '301' then // Put�ɼ��̸�...
  begin
    _CCWHSGListInfo[6,index] := strTofloatDef(nDataArray[3],0); // �ŵ� ȣ��
    _CCWHSGListInfo[5,index] := strTofloatDef(nDataArray[2],0); // �ż� ȣ��
//    _CCWRTPutIndex[Index] := True;
  end;
  _CCWRTIndex[Index] := True;

end;

procedure TfHBOMain.Dongbu5HGCW������(index : integer; nszField: string; nDataArray : array of string);
begin
  if copy(nszField,1,3) = '201' then // �ݿɼ��̸�...
  begin
    _CWHSGListInfo[1,index] := strTofloatDef(nDataArray[2],0); // �ż� ȣ��
    _CWHSGListInfo[0,index] := strTofloatDef(nDataArray[3],0); // �ŵ� ȣ��
//    _CWRTCallIndex[Index] := True;
  end else if copy(nszField,1,3) = '301' then // Put�ɼ��̸�...
  begin
    _CWHSGListInfo[6,index] := strTofloatDef(nDataArray[3],0); // �ŵ� ȣ��
    _CWHSGListInfo[5,index] := strTofloatDef(nDataArray[2],0); // �ż� ȣ��
//    _CWRTPutIndex[Index] := True;
  end;
  _CWRTIndex[Index] := True;

end;

procedure TfHBOMain.Dongbu5HG������(index : integer; nszField: string; nDataArray : array of string);
begin
  if copy(nszField,1,3) = '201' then // �ݿɼ��̸�...
  begin
    _DWHSGListInfo[1,index] := strTofloatDef(nDataArray[2],0); // �ż� ȣ��
    _DWHSGListInfo[0,index] := strTofloatDef(nDataArray[3],0); // �ŵ� ȣ��
//    _DWHSGListInfo[2,index] := strTofloatDef(nDataArray[4],0); // ���簡
//    _DWRTCallIndex[index] := True;
//    _DWYMDCSCallIndex[index] := True;
  end else if copy(nszField,1,3) = '301' then // Put�ɼ��̸�...
  begin
    _DWHSGListInfo[6,index] := strTofloatDef(nDataArray[3],0); // �ŵ� ȣ��
    _DWHSGListInfo[5,index] := strTofloatDef(nDataArray[2],0); // �ż� ȣ��
//    _DWHSGListInfo[4,index] := strTofloatDef(nDataArray[4],0); // ���簡
//    _DWRTPutIndex[index] := True;
//    _DWYMDCSPutIndex[index] := True;
  end;
  _DWRTIndex[index] := True;

end;

procedure TfHBOMain.VisibleChanging;
begin
 // inherited;
end;

procedure TfHBOMain.DongbuRTNowPrice(nszField, nData: WideString);   //�����ǿ�
var nString : string;
    nParshingLength, i, nIndex : integer;
    nDataArray : array[0..4] of string; // �ż��ܷ�, �ŵ��ܷ� , �ż�ȣ��, �ŵ�ȣ��,���簡
begin
//����API.doc ������ 56page ���� �� ��

  nParshingLength := 0;
  for i := 0 to 70 do    //84���� ������ 70 Kp200������ �ʿ��Ͽ� 70������ ��.
  begin
    nString := Copy(nData, nParshingLength +1 , DongbuRTNowPriceDataLenArry[i]);
    nParshingLength := nParshingLength + DongbuRTNowPriceDataLenArry[i];
    DongbuRTNowPriceDataArry[i] := nString;
    nString :=  IntToStr(i) +'::' + IntToStr(DongbuRTJangoDataLenArry[i]) + ':::' + nString;
//    mmoLog.Lines.Add(nString);
  end;

  KP200 := copy(DongbuRTNowPriceDataArry[70],3,6);//�ڽ���200 kospi200
//  edtKP200.Text := KP200;

  if copy(nszField,4,2) = _DCode then begin  // ������� �ڵ�� ������ ����
    nDataArray[4] := gfDel32(DongbuRTNowPriceDataArry[18]);//      ���簡,

    nString := copy(nszField,6,3);   //201N6315
    if (copy(nString,3,1) = '2') or (copy(nString,3,1) = '7') then nString := nString + '.5';
    nIndex := CaseString(nString, _HeangSaGaList);  //��簡 ����Ʈ�� ���Ͽ� ������ �׸����� Row��ȣ ����
    if nIndex in [0..65] then Dongbu������(nIndex, nszField, nDataArray);

  end else if copy(nszField,4,2) = _CWCode then begin  // ������� �ڵ�� ������ ����
    nDataArray[4] := gfDel32(DongbuRTNowPriceDataArry[18]);//      ���簡,

    nString := copy(nszField,6,3);   //201N6315
    if (copy(nString,3,1) = '2') or (copy(nString,3,1) = '7') then nString := nString + '.5';
    nIndex := CaseString(nString, _HeangSaGaList);  //��簡 ����Ʈ�� ���Ͽ� ������ �׸����� Row��ȣ ����
    if nIndex in [0..65] then DongbuCW������(nIndex, nszField, nDataArray);
  end else if copy(nszField,4,2) = _CCWCode then begin  // ������� �ڵ�� ������ ����
    nDataArray[4] := gfDel32(DongbuRTNowPriceDataArry[18]);//      ���簡,

    nString := copy(nszField,6,3);   //201N6315
    if (copy(nString,3,1) = '2') or (copy(nString,3,1) = '7') then nString := nString + '.5';
    nIndex := CaseString(nString, _HeangSaGaList);  //��簡 ����Ʈ�� ���Ͽ� ������ �׸����� Row��ȣ ����
    if nIndex in [0..65] then DongbuCCW������(nIndex, nszField, nDataArray);
  end else if copy(nszField,4,2) = _WWCode then begin  // ������� �ڵ�� ������ ����
    nDataArray[4] := gfDel32(DongbuRTNowPriceDataArry[18]);//      ���簡,

    nString := copy(nszField,6,3);   //201N6315
    if (copy(nString,3,1) = '2') or (copy(nString,3,1) = '7') then nString := nString + '.5';
    nIndex := CaseString(nString, _HeangSaGaList);  //��簡 ����Ʈ�� ���Ͽ� ������ �׸����� Row��ȣ ����
    if nIndex in [0..65] then DongbuWW������(nIndex, nszField, nDataArray);
  end else if copy(nszField,4,2) = _WeeklyMonthCode then begin  // ��Ŭ���̸�
    nDataArray[4] := gfDel32(DongbuRTNowPriceDataArry[18]);//      ���簡,

    nString := copy(nszField,6,3);   //201N6315
    if (copy(nString,3,1) = '2') or (copy(nString,3,1) = '7') then nString := nString + '.5';
    nIndex := CaseString(nString, _HeangSaGaList);  //��簡 ����Ʈ�� ���Ͽ� ������ �׸����� Row��ȣ ����
    if nIndex in [0..65] then WeeklyHG������(nIndex, nszField, nDataArray);
  end;
end;

procedure TfHBOMain.DongbuWW������(index : integer; nszField: string; nDataArray : array of string);    // ���簡 ����
begin
  if copy(nszField,1,3) = '201' then // �ݿɼ��̸�...
  begin
    _WWHSGListInfo[2,index] := strTofloatDef(nDataArray[4],0); // �����簡
//    _WWRTCallIndex[Index] := True;
  end else if copy(nszField,1,3) = '301' then // Put�ɼ��̸�...
  begin
    _WWHSGListInfo[4,index] := strTofloatDef(nDataArray[4],0); // ǲ���簡
//    _WWRTPutIndex[Index] := True;
  end;
  _WWRTIndex[Index] := True;

end;

procedure TfHBOMain.DongbuCCW������(index : integer; nszField: string; nDataArray : array of string);    // ���簡 ����
begin
  if copy(nszField,1,3) = '201' then // �ݿɼ��̸�...
  begin
    _CCWHSGListInfo[2,index] := strTofloatDef(nDataArray[4],0); // �����簡
//    _CCWRTCallIndex[Index] := True;
  end else if copy(nszField,1,3) = '301' then // Put�ɼ��̸�...
  begin
    _CCWHSGListInfo[4,index] := strTofloatDef(nDataArray[4],0); // ǲ���簡
//    _CCWRTPutIndex[Index] := True;
  end;
  _CCWRTIndex[Index] := True;

end;

procedure TfHBOMain.DongbuCW������(index : integer; nszField: string; nDataArray : array of string);    // ���簡 ����
begin
  if copy(nszField,1,3) = '201' then // �ݿɼ��̸�...
  begin
    _CWHSGListInfo[2,index] := strTofloatDef(nDataArray[4],0); // �����簡
//    _CWRTCallIndex[Index] := True;
  end else if copy(nszField,1,3) = '301' then // Put�ɼ��̸�...
  begin
    _CWHSGListInfo[4,index] := strTofloatDef(nDataArray[4],0); // ǲ���簡
//    _CWRTPutIndex[Index] := True;
  end;
  _CWRTIndex[Index] := True;

end;

procedure TfHBOMain.Dongbu������(index : integer; nszField: string; nDataArray : array of string);    // ���簡 ����
begin
  if copy(nszField,1,3) = '201' then // �ݿɼ��̸�...
  begin
    _DWHSGListInfo[2,index] := strTofloatDef(nDataArray[4],0); // �����簡
//    _DWRTCallIndex[index] := True;
  end else if copy(nszField,1,3) = '301' then // Put�ɼ��̸�...
  begin
    _DWHSGListInfo[4,index] := strTofloatDef(nDataArray[4],0); // ǲ���簡
//    _DWRTPutIndex[index] := True;
  end;
  _DWRTIndex[index] := True;
end;

procedure TfHBOMain.MainSaveUIValue; // ȭ���� �������� �����Ѵ�.
var nString : string;
begin
  mmoSaveUIValue.clear;
  nString := '�̸�:' + cbbName.Text;
  mmoSaveUIValue.Lines.Add(nString);
  nString := 'Account:' + cbbDongBuAcc.Text;
  mmoSaveUIValue.Lines.Add(nString);
  nString := 'IDPW:' + edtDongBuPW.Text;
  mmoSaveUIValue.Lines.Add(nString);
  nString := '���ڱ�:' + stgJyungGuaKyumHyunHwang.Cells[0,1];
  mmoSaveUIValue.Lines.Add(nString);
  nString := ExtractFilePath(paramstr(0)) + 'Main_UIValue.ini';
  mmoSaveUIValue.Lines.SaveToFile(nString);
end;

procedure TfHBOMain.MainOpenUIValue; // ȭ���� �������� �ҷ������Ѵ�.
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
    if pos('�̸�:',nString) > 0 then  cbbName.Text := copy(nString,4,Length(nString) - 3)
    else if pos('Account:',nString) > 0 then  cbbDongBuAcc.Text := copy(nString,9,Length(nString) - 8)
    else if pos('IDPW:',nString) > 0 then  edtDongBuPW.Text := copy(nString,6,Length(nString) - 5)
    else if pos('���ڱ�:',nString) > 0 then  stgJyungGuaKyumHyunHwang.Cells[0,1] := copy(nString,5,Length(nString) - 4);
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
      YuantaApi1.YOA_UnRegistAllAuto; // �ǽð� ��� ����
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
    for I := 0 to 5 do begin    // �ܰ� ���� �ʱ�ȭ
      for j := 0 to 49 do begin
        _JangoList[i,j] := '';
      end;
    end;

    for I := 0 to 9999 do
      AllOrderNo[i] := 0; // ��� �ֹ���ȣ �ʱ�ȭ

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

    //���⼭ ���� ����� ã��
    dtpToday.Date := now;
    nDateTime := now;
    nWeekNo := WeekOfTheMonth(nDateTime); // ��°������ �ľ�
    nDayNo := DayofWeek(nDateTime);
    if (nWeekNo = 1) and (strTointDef(copy(formatdatetime('yymmdd',nDateTime),5,2),0) > 20) then begin    // 5����ó��
      nSTring := formatdateTime('yyyymmdd',now + 7);
      edtDMonth.Text := copy(nString,1,6);
    end else if ((nWeekNo = 2) and (nDayNo = 1)) then begin // 3°���̰� �Ͽ����̸�...nWeekNo =2 ���ǰ� nDayNo = 1�� �ȴ�.
      nSTring := formatdateTime('yyyymmdd',now + 25);
      edtDMonth.Text := copy(nString,1,6);
    end else if ((nWeekNo = 2) and (nDayNo > 5)) or (nWeekNo > 2) then begin // 4 : �����
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

    stgJyungGuaKyumHyunHwang.Cells[0,0] :=  '   ���ڿ���';
    stgJyungGuaKyumHyunHwang.Cells[1,0] :=  '�򰡿�Ź���Ѿ�';
    stgJyungGuaKyumHyunHwang.Cells[2,0] :=  '   �򰡼���';
    stgJyungGuaKyumHyunHwang.Cells[3,0] :=  '    ���ͷ�';
    stgJyungGuaKyumHyunHwang.Cells[4,0] :=  '  ���������';
    stgJyungGuaKyumHyunHwang.Cells[5,0] :=  ' �ֹ������Ѿ�';
    stgJyungGuaKyumHyunHwang.Cells[6,0] :=  '��Ź���ű��Ѿ�';
    stgJyungGuaKyumHyunHwang.Cells[7,0] :=  '  ���Ⱑ�ɾ�';
    stgJyungGuaKyumHyunHwang.Cells[8,0] :=  ' ���Ͻ�������';
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

procedure TfHBOMain.DBRTSMHG(nszField, nData: WideString);   // ����ȣ�� SH0
var nString,sDate, sTemp : string;
    nParshingLength, i, nMankiMonth : integer;
//    nDataArray : array[0..3] of string; // �ż��ܷ�, �ŵ��ܷ� , �ż�ȣ��, �ŵ�ȣ��,���簡
begin
//����API.doc ������ 68page ���� �� ��

  nParshingLength := 0;
  for i := 0 to 47 do
  begin
    nString := Copy(nData, nParshingLength +1 , DongbuRTSH0DataLenArry[i]);
    nParshingLength := nParshingLength + DongbuRTSH0DataLenArry[i];
    DongbuRTSH0DataArry[i] := nString;
  end;

  /// �ش� ���� ������ �����ϰ� �����.
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
    _SMCMDJL := strTointDef(gfDel32(DongbuRTSH0DataArry[14]),0); // �Ѹŵ�ȣ���ܷ�   ok
    _SMCMSJL := strTointDef(gfDel32(DongbuRTSH0DataArry[15]),0); // �Ѹż�ȣ���ܷ�   ok
    _SMSMS := strTointDef(gfDel32(DongbuRTSH0DataArry[47]),0); //���ż��ܷ�
    _SunMulRTHGflg := 1;
//    edtSMCMDJL.Text := intTostr(strTointDef(gfDel32(DongbuRTSH0DataArry[14]),0)); // �Ѹŵ�ȣ���ܷ�   ok
//    edtSMCMSJL.Text := intTostr(strTointDef(gfDel32(DongbuRTSH0DataArry[15]),0)); // �Ѹż�ȣ���ܷ�   ok
//    intTemp := strTointDef(gfDel32(DongbuRTSH0DataArry[47]),0);
//    if intTemp > 0 then begin
//      edtSMSMS.Color := clGray;
//      edtSMSMS.Font.Color := clRed;
//      edtSMSMS.text := '+' + intTostr(intTemp);
//    end else if intTemp < 0 then begin
//      edtSMSMS.Color := clAqua;
//      edtSMSMS.Font.Color := clBlue;
//      edtSMSMS.text := intTostr(intTemp); // ȣ�����ܷ�����    ok
//    end else begin
//      edtSMSMS.Color := clGray;
//      edtSMSMS.Font.Color := clWhite;
//      edtSMSMS.text := intTostr(intTemp); // ȣ�����ܷ�����    ok
//    end;
  end;
end;

procedure TfHBOMain.DongbuRTSunMul(nszField, nData: WideString);   // ���� ���簡�� ���
var nString : string;
    nParshingLength, i : integer;
    nSingle : single;
begin
  nParshingLength := 0;
  for i := 0 to 11 do    // 74���� ������ �պκи� ���.
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
    SunMul := gfDel32(DongbuRTSunMulDataArry[3]); // ���簡
//    nSunMul := strTofloatDef(SunMul,0);
    { ���� ��� ����
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
      // �̵���� ����ϱ�..
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

      _EPyGapMax11 :=  _emaMin1 -  _emaMax1;     // 5000����� 100���� ����, + �̸� 100���� 5000�� ���� ����.
      _EPyGapMax12 :=  _emaMin1 -  _emaMax2;
      _EPyGapMax13 :=  _emaMin1 -  _emaMax3;
      _EPyGapMax14 :=  _emaMin1 -  _emaMax4;

//      _EPyGapMax21 :=  _emaMin2 -  _emaMax1;
//      _EPyGapMax22 :=  _emaMin2 -  _emaMax2;
//      _EPyGapMax23 :=  _emaMin2 -  _emaMax3;
//      _EPyGapMax24 :=  _emaMin2 -  _emaMax4;

//      _EPyGapMax31 :=  _emaMin3 -  _emaMax1;     // 5000����� 100���� ����, + �̸� 100���� 5000�� ���� ����.
//      _EPyGapMax32 :=  _emaMin3 -  _emaMax2;
//      _EPyGapMax33 :=  _emaMin3 -  _emaMax3;
//      _EPyGapMax34 :=  _emaMin3 -  _emaMax4;

//      _EPyGapMax41 :=  _emaMin4 -  _emaMax1;
//      _EPyGapMax42 :=  _emaMin4 -  _emaMax2;
//      _EPyGapMax43 :=  _emaMin4 -  _emaMax3;
//      _EPyGapMax44 :=  _emaMin4 -  _emaMax4;

      _EPyGapMid11 :=  _emaMin1 -  _emaMid1;     // 1000����� 120���� ����, + �̸� 120���� 1000�� ���� ����.
      _EPyGapMid12 :=  _emaMin1 -  _emaMid2;
      _EPyGapMid13 :=  _emaMin1 -  _emaMid3;
      _EPyGapMid14 :=  _emaMin1 -  _emaMid4;

//      _EPyGapMid21 :=  _emaMin2 -  _emaMid1;
//      _EPyGapMid22 :=  _emaMin2 -  _emaMid2;
//      _EPyGapMid23 :=  _emaMin2 -  _emaMid3;
//      _EPyGapMid24 :=  _emaMin2 -  _emaMid4;

//      _EPyGapMid31 :=  _emaMin3 -  _emaMid1;     // 1000����� 120���� ����, + �̸� 120���� 1000�� ���� ����.
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
    ���� ��� ��      }

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

procedure TfHBOMain.DBSOJuMun(nData : WideString);  // �����ֹ�
var nString : string;
    nParshingLength, i, nCnt, nClientKey : integer;     // nCnt�� û�� �� ��������� ���� �ܰ� ������ �ֹ� ������ ���°���� üũ�ϴ� �뵵
begin
  nParshingLength := 0;
  for i := 0 to 4 do //
  begin
    nString := Copy(nData, nParshingLength +1 , DBSOJuMunDataLenArray[i]);
    nParshingLength := nParshingLength + DBSOJuMunDataLenArray[i];
    DBSOJuMunDataArray[i] := nString;
  end;
  _JMRecieveflg := 1;

//  /// ���� ó���� �� unit���� DBSOJuMunDataArray���� �̿��Ͽ� ó��.
//  nIndex := CaseInt(strTointDef(DBSOJuMunDataArray[2],0),AllOrderNo);
//  if nIndex > -1 then begin
//    AllCGInfo[nIndex].JMKey := strTointDef(DBSOJuMunDataArray[1],-8);   // �ֹ�Ű �Է�
//    AllCGInfo[nIndex].OrderNo := strTointDef(DBSOJuMunDataArray[2],0);         // �ֹ���ȣ �Է�
//    if (AllCGInfo[nIndex].JMKey <> 0)  and (AllCGInfo[nIndex].OrderNo <> 0) then begin
//      _JuMunQtnError_flg := 1;
//      _JuMunOK_flg := 1;
//    end;
//
//  end else if nIndex = -1 then begin
//    AllCGInfo[LastONIndex].JMKey := strTointDef(DBSOJuMunDataArray[1],-8);   // �ֹ�Ű �Է�
//    AllCGInfo[LastONIndex].OrderNo := strTointDef(DBSOJuMunDataArray[2],0);         // �ֹ���ȣ �Է�
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
    01 : begin   // ��ż� ����
      nCnt := strTointDef(copy(DBSOJuMunDataArray[1],3,3),0);  // �ֹ�����  ClientKey = 11010000,   33010000
      if _YMSGCCGList[nCnt].JMKey = -1 then begin
        _YMSGCCGList[nCnt].JMKey :=  strTointDef(DBSOJuMunDataArray[1],-8);   // �ֹ�Ű �Է�
        _YMSGCCGList[nCnt].OrderNo := strTointDef(DBSOJuMunDataArray[2],0);         // �ֹ���ȣ �Է�
        _YMSGCOrderNo[nCnt] := _YMSGCCGList[nCnt].OrderNo;
      end;
    end;
    11: begin   // û�� ���� �ֹ�
      nCnt := strTointDef(copy(DBSOJuMunDataArray[1],3,3),0)-1;  // �ֹ�����  ClientKey = 11010000,   33010000
      if _CSJMDataList[nCnt].JMKey = -1 then begin
        _CSJMDataList[nCnt].JMKey :=  strTointDef(DBSOJuMunDataArray[1],-8);   // �ֹ�Ű �Է�
        _CSJMDataList[nCnt].OrderNo := strTointDef(DBSOJuMunDataArray[2],0);         // �ֹ���ȣ �Է�
        _MJOrderNo[nCnt] := _CSJMDataList[nCnt].OrderNo;
        _CSMainIndex := nCnt;
      end;
    end;
    22: begin // û�� �ܰ� �ֹ�
      nCnt := strTointDef(copy(DBSOJuMunDataArray[1],3,3),0)-1;  // �ֹ�����  ClientKey = 11010000,   33010000
      if _CSWGJMDataList[nCnt].JMKey = -1 then begin
        _CSWGJMDataList[nCnt].JMKey :=  strTointDef(DBSOJuMunDataArray[1],-8);   // �ֹ�Ű �Է�
        _CSWGJMDataList[nCnt].OrderNo := strTointDef(DBSOJuMunDataArray[2],0);         // �ֹ���ȣ �Է�
        _WGOrderNo[nCnt] := _CSWGJMDataList[nCnt].OrderNo;
        _CSWGIndex :=  nCnt;
      end;
    end;
    33 : begin  // ��ŵ� �ֹ�
        nCnt := strTointDef(copy(DBSOJuMunDataArray[1],4,1),0)-1;  // �ֹ�����  ClientKey
        if _YMDJMDataList[nCnt].JMKey = -1 then begin
          _YMDJMDataList[nCnt].JMKey :=  strTointDef(DBSOJuMunDataArray[1],-8);   // �ֹ�Ű �Է�
          _YMDJMDataList[nCnt].OrderNo := strTointDef(DBSOJuMunDataArray[2],0);         // �ֹ���ȣ �Է�
          _YMDOrderNo[nCnt] := _YMDJMDataList[nCnt].OrderNo;
          _YMDIndex :=  nCnt;
        end;
    end;
    44 : begin  // Ÿ����1 ���
        nCnt := strTointDef(copy(DBSOJuMunDataArray[1],3,3),0);
        _TimeCallInfo1[nCnt].JMKey :=  strTointDef(DBSOJuMunDataArray[1],-8);   // �ֹ�Ű �Է�
        _TimeCallInfo1[nCnt].OrderNo := strTointDef(DBSOJuMunDataArray[2],0);         // �ֹ���ȣ �Է�
        _TimeCallOrderNo1[nCnt] := _TimeCallInfo1[nCnt].OrderNo;
        _JuMunQtnError_flg := 1;
        _JuMunOK_flg := 1;
    end;
    55 : begin  // Ÿ����2����
        nCnt := strTointDef(copy(DBSOJuMunDataArray[1],3,3),0);
        _TimeCallInfo2[nCnt].JMKey :=  strTointDef(DBSOJuMunDataArray[1],-8);   // �ֹ�Ű �Է�
        _TimeCallInfo2[nCnt].OrderNo := strTointDef(DBSOJuMunDataArray[2],0);         // �ֹ���ȣ �Է�
        _TimeCallOrderNo2[nCnt] := _TimeCallInfo2[nCnt].OrderNo;
        _JuMunQtnError_flg := 1;
        _JuMunOK_flg := 1;
    end;
    66 : begin  // Ÿ��ǲ1���
        nCnt := strTointDef(copy(DBSOJuMunDataArray[1],3,3),0);
        _TimePutInfo1[nCnt].JMKey :=  strTointDef(DBSOJuMunDataArray[1],-8);   // �ֹ�Ű �Է�
        _TimePutInfo1[nCnt].OrderNo := strTointDef(DBSOJuMunDataArray[2],0);         // �ֹ���ȣ �Է�
        _TimePutOrderNo1[nCnt] := _TimePutInfo1[nCnt].OrderNo;
        _JuMunQtnError_flg := 1;
        _JuMunOK_flg := 1;
    end;
    77 : begin  // Ÿ��ǲ2����
        nCnt := strTointDef(copy(DBSOJuMunDataArray[1],3,3),0);
        _TimePutInfo2[nCnt].JMKey :=  strTointDef(DBSOJuMunDataArray[1],-8);   // �ֹ�Ű �Է�
        _TimePutInfo2[nCnt].OrderNo := strTointDef(DBSOJuMunDataArray[2],0);         // �ֹ���ȣ �Է�
        _TimePutOrderNo2[nCnt] := _TimePutInfo2[nCnt].OrderNo;
        _JuMunQtnError_flg := 1;
        _JuMunOK_flg := 1;
    end;
  end;



//  if copy(DBSOJuMunDataArray[1],1,2) = '33'  then begin
//    nCSindex := strTointDef(copy(DBSOJuMunDataArray[1],8,1),-1);
//   case nCSindex of
//    0 : begin
//          if strTointDef(DBSOJuMunDataArray[1],-8) = 33020000 then begin    //�߼� ǲ�̸�
//            _ChuSeaCGInfo[1].JMKey := strTointDef(DBSOJuMunDataArray[1],-8);   // �ֹ�Ű �Է�
//            _ChuSeaCGInfo[1].OrderNo := strTointDef(DBSOJuMunDataArray[2],0);         // �ֹ���ȣ �Է�
//          end else if strTointDef(DBSOJuMunDataArray[1],-8) = 33010000 then begin    //�߼� ���̸�
//            _ChuSeaCGInfo[0].JMKey := strTointDef(DBSOJuMunDataArray[1],-8);   // �ֹ�Ű �Է�
//            _ChuSeaCGInfo[0].OrderNo := strTointDef(DBSOJuMunDataArray[2],0);         // �ֹ���ȣ �Է�
//          end;
//        end;
//    1 : begin
//          if strTointDef(DBSOJuMunDataArray[1],-8) = 33020001 then begin    //�߼� ǲ�̸�
//            _ChuSeaCGInfo1[1].JMKey := strTointDef(DBSOJuMunDataArray[1],-8);   // �ֹ�Ű �Է�
//            _ChuSeaCGInfo1[1].OrderNo := strTointDef(DBSOJuMunDataArray[2],0);         // �ֹ���ȣ �Է�
//          end else if strTointDef(DBSOJuMunDataArray[1],-8) = 33010001 then begin    //�߼� ���̸�
//            _ChuSeaCGInfo1[0].JMKey := strTointDef(DBSOJuMunDataArray[1],-8);   // �ֹ�Ű �Է�
//            _ChuSeaCGInfo1[0].OrderNo := strTointDef(DBSOJuMunDataArray[2],0);         // �ֹ���ȣ �Է�
//          end;
//        end;
//    2 : begin
//          if strTointDef(DBSOJuMunDataArray[1],-8) = 33020002 then begin    //�߼� ǲ�̸�
//            _ChuSeaCGInfo2[1].JMKey := strTointDef(DBSOJuMunDataArray[1],-8);   // �ֹ�Ű �Է�
//            _ChuSeaCGInfo2[1].OrderNo := strTointDef(DBSOJuMunDataArray[2],0);         // �ֹ���ȣ �Է�
//          end else if strTointDef(DBSOJuMunDataArray[1],-8) = 33010002 then begin    //�߼� ���̸�
//            _ChuSeaCGInfo2[0].JMKey := strTointDef(DBSOJuMunDataArray[1],-8);   // �ֹ�Ű �Է�
//            _ChuSeaCGInfo2[0].OrderNo := strTointDef(DBSOJuMunDataArray[2],0);         // �ֹ���ȣ �Է�
//          end;
//        end;
//    3 : begin
//          if strTointDef(DBSOJuMunDataArray[1],-8) = 33020003 then begin    //�߼� ǲ�̸�
//            _ChuSeaCGInfo3[1].JMKey := strTointDef(DBSOJuMunDataArray[1],-8);   // �ֹ�Ű �Է�
//            _ChuSeaCGInfo3[1].OrderNo := strTointDef(DBSOJuMunDataArray[2],0);         // �ֹ���ȣ �Է�
//          end else if strTointDef(DBSOJuMunDataArray[1],-8) = 33010003 then begin    //�߼� ���̸�
//            _ChuSeaCGInfo3[0].JMKey := strTointDef(DBSOJuMunDataArray[1],-8);   // �ֹ�Ű �Է�
//            _ChuSeaCGInfo3[0].OrderNo := strTointDef(DBSOJuMunDataArray[2],0);         // �ֹ���ȣ �Է�
//          end;
//        end;
//    4 : begin
//          if strTointDef(DBSOJuMunDataArray[1],-8) = 33020004 then begin    //�߼� ǲ�̸�
//            _ChuSeaCGInfo4[1].JMKey := strTointDef(DBSOJuMunDataArray[1],-8);   // �ֹ�Ű �Է�
//            _ChuSeaCGInfo4[1].OrderNo := strTointDef(DBSOJuMunDataArray[2],0);         // �ֹ���ȣ �Է�
//          end else if strTointDef(DBSOJuMunDataArray[1],-8) = 33010004 then begin    //�߼� ���̸�
//            _ChuSeaCGInfo4[0].JMKey := strTointDef(DBSOJuMunDataArray[1],-8);   // �ֹ�Ű �Է�
//            _ChuSeaCGInfo4[0].OrderNo := strTointDef(DBSOJuMunDataArray[2],0);         // �ֹ���ȣ �Է�
//          end;
//        end;
//    5 : begin
//          if strTointDef(DBSOJuMunDataArray[1],-8) = 33020005 then begin    //�߼� ǲ�̸�
//            _ChuSeaCGInfo5[1].JMKey := strTointDef(DBSOJuMunDataArray[1],-8);   // �ֹ�Ű �Է�
//            _ChuSeaCGInfo5[1].OrderNo := strTointDef(DBSOJuMunDataArray[2],0);         // �ֹ���ȣ �Է�
//          end else if strTointDef(DBSOJuMunDataArray[1],-8) = 33010005 then begin    //�߼� ���̸�
//            _ChuSeaCGInfo5[0].JMKey := strTointDef(DBSOJuMunDataArray[1],-8);   // �ֹ�Ű �Է�
//            _ChuSeaCGInfo5[0].OrderNo := strTointDef(DBSOJuMunDataArray[2],0);         // �ֹ���ȣ �Է�
//          end;
//        end;
//   end;
//
//
//    if strTointDef(DBSOJuMunDataArray[1],-8) > 33019999 then begin    //�߼� ǲ�̸�
//      _ChuSeaCGInfo[1].JMKey := strTointDef(DBSOJuMunDataArray[1],-8);   // �ֹ�Ű �Է�
//      _ChuSeaCGInfo[1].OrderNo := strTointDef(DBSOJuMunDataArray[2],0);         // �ֹ���ȣ �Է�
//    end else if strTointDef(DBSOJuMunDataArray[1],-8) > 33009999 then begin    //�߼� ���̸�
//      _ChuSeaCGInfo[0].JMKey := strTointDef(DBSOJuMunDataArray[1],-8);   // �ֹ�Ű �Է�
//      _ChuSeaCGInfo[0].OrderNo := strTointDef(DBSOJuMunDataArray[2],0);         // �ֹ���ȣ �Է�
//    end;
//  end;
end;

procedure TfHBOMain.DongbuJango_Parshing(nData : WideString; ASender:TObject);   //�ܰ��Ľ�
var nString : string;
    nParshingLength, i, j, nRecordNo, nIndex : integer;
    nDataArray : array[0..3] of string; // ��ü��, ��������, ���԰���, �ż�/�ŵ� ����
    nReal : single;
    nJMListNo : integer;
begin
/// ----- TR In_Out ���� ��  TR13655 ��� ���� ���� �� ��---///

  nParshingLength := 0;
  for i := 0 to 7 do //ó�� �������� ����
  begin
    nString := Copy(nData, nParshingLength +1 , DongbuJangoDataLenArryO[i]);
    nParshingLength := nParshingLength + DongbuJangoDataLenArryO[i];
    DongbuJangoDataArryO[i] := nString;
    if i = 7 then nRecordNo := strTointDef(nString,0);
  end;

  nString := Formatfloat('#,###',strTofloatDef(DongbuJangoDataArryO[1],0)); // �����������
  stgJyungGuaKyumHyunHwang.Cells[4,1] := nString;
  nString := Formatfloat('#,##0',strTofloatDef(DongbuJangoDataArryO[4],0)); // ���Ͻ�������
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

    nDataArray[0] := gfDel32(DongbuJangoDataArryG[7]);//      ��ü��    // ��ü��, ��������, ���԰���, �ż�/�ŵ� ����
    nDataArray[1] := gfDel32(DongbuJangoDataArryG[6]);//      ��������
    nReal :=  strTofloatDef(gfDel32(DongbuJangoDataArryG[8]),0) * 0.00001; //      ���԰���
    nDataArray[2] := formatfloat('#0.00#',nReal);
    nDataArray[3] := gfDel32(DongbuJangoDataArryG[2]);//      �ż�/�ŵ� ����
    if copy(gfDel32(DongbuJangoDataArryG[0]),5,1) = nString then  //���� ������
    begin
      nString := copy(gfDel32(DongbuJangoDataArryG[0]),6,3);//;   //201N6315
      if (copy(nString,3,1) = '2') or (copy(nString,3,1) = '7') then nString := nString + '.5';
      nIndex := CaseString(nString, _HeangSaGaList);  //��簡 ����Ʈ�� ���Ͽ� ������ �׸����� Row��ȣ ����

      if (nIndex > -1) and (nIndex < 66) then Dongbu�ܰ�(nIndex, gfDel32(DongbuJangoDataArryG[0]), nDataArray);
    end;
    if (strTointDef(nDataArray[1],-1) > 0) or (strTointDef(nDataArray[0],-1) > 0) then begin
      _JangoList[0,nJMListNo] := gfDel32(DongbuJangoDataArryG[0]);  //����
      _JangoList[1,nJMListNo] := nDataArray[1];  // ����
      _JangoList[2,nJMListNo] := nDataArray[2];  // �ŸŴܰ�
//      _JangoList[3,nJMListNo] := ; // ���簡
      _JangoList[4,nJMListNo] := nDataArray[3];  // �ŵ�/���� ����
      _JangoList[5,nJMListNo] := nDataArray[0]; //��ü��
      nJMListNo := nJMListNo + 1;
      _JangoJMQtn := nJMListNo;
      _JGIndex := 0;
    end;
  end;
//    case pageindex of
//      0: begin
//          //���⼭���� �׸��忡 �־�� ��.
//          nString := copy(ManKi,5,2);
//          if strTointDef(nString,0) = 10 then nString := 'A'
//          else if strTointDef(nString,0) = 11 then nString := 'B'
//          else if strTointDef(nString,0) = 12 then nString := 'C'
//          else nString := copy(nString,2,1);
//
//          nDataArray[0] := gfDel32(DongbuJangoDataArryG[7]);//      ��ü��    // ��ü��, ��������, ���԰���, �ż�/�ŵ� ����
//          nDataArray[1] := gfDel32(DongbuJangoDataArryG[6]);//      ��������
//          nReal :=  strTofloatDef(gfDel32(DongbuJangoDataArryG[8]),0) * 0.00001; //      ���԰���
//          nDataArray[2] := formatfloat('#0.00#',nReal);
//          nDataArray[3] := gfDel32(DongbuJangoDataArryG[2]);//      �ż�/�ŵ� ����
//          if copy(gfDel32(DongbuJangoDataArryG[0]),5,1) = nString then  //���� ������
//          begin
//            nString := copy(gfDel32(DongbuJangoDataArryG[0]),6,3);//;   //201N6315
//            if (copy(nString,3,1) = '2') or (copy(nString,3,1) = '7') then nString := nString + '.5';
//            nIndex := CaseString(nString, _HeangSaGaList);  //��簡 ����Ʈ�� ���Ͽ� ������ �׸����� Row��ȣ ����
//
//            if (nIndex > -1) and (nIndex < 66) then Dongbu�ܰ�(nIndex, gfDel32(DongbuJangoDataArryG[0]), nDataArray);
//          end;
//
//          if strTointDef(nDataArray[1],0) > 0 then begin
//            strJG := gfDel32(DongbuJangoDataArryG[0]) + ',' + nDataArray[1] + ',' + nDataArray[2] + ',' + nDataArray[3];
//            clbJGListAll.Items.Add(strJG);
//          end;
//      end;
//      1: begin
//         //���⼭���� �׸��忡 �־�� ��.
//          nDataArray[0] := gfDel32(DongbuJangoDataArryG[7]);//      ��ü��    // ��ü��, ��������, ���԰���, �ż�/�ŵ� ����
//          nDataArray[1] := gfDel32(DongbuJangoDataArryG[6]);//      ��������
//          nReal :=  strTofloatDef(gfDel32(DongbuJangoDataArryG[8]),0) * 0.00001; //      ���԰���
//          nDataArray[2] := formatfloat('#0.00#',nReal);
//          nDataArray[3] := gfDel32(DongbuJangoDataArryG[2]);//      �ż�/�ŵ� ����
//          // ���⼭���� �׸��忡 ����... ���߿� ����ó���ϰ� �Լ� ���� ��
//          nString := gfDel32(DongbuJangoDataArryG[0]);//;   //201N6315
//          if copy(nString,4,2) <> _JWCode then begin
//            if copy(nString,1,1) = '2' then begin
//              stg������LCall.Cells[0,i] := nString; // �����ڵ�
//              if nDataArray[3] = '�ŵ�' then
//                stg������LCall.Cells[2,i] := '-'+ nDataArray[1] // ��������
//              else stg������LCall.Cells[2,i] := '+'+ nDataArray[1]; // ��������
//              stg������LCall.Cells[1,i] := nDataArray[2];  // ���԰���
//              stg������LCall.Cells[3,i] := '';  // ��� ���߿� ����
//              stg������LCall.Cells[4,i] := nDataArray[0]; // ��ü��
//              nCallQtn := nCallQtn + 1;  //Call ������ ���� ������ ���߿� Put�� ����. Put ��ġ�� �˱� ����..
//            end else if copy(nString,1,1) = '3' then begin
//              stg������LPut.Cells[0,i-nCallQtn-1] := nString; // �����ڵ�
//              if nDataArray[3] = '�ŵ�' then
//                stg������LPut.Cells[2,i-nCallQtn-1] := '-'+ nDataArray[1] // ��������
//              else stg������LPut.Cells[2,i-nCallQtn-1] := '+'+ nDataArray[1]; // ��������
//              stg������LPut.Cells[1,i-nCallQtn-1] := nDataArray[2];  // ���԰���
//              stg������LPut.Cells[3,i-nCallQtn-1] := '';  // ��� ���߿� ����
//              stg������LPut.Cells[4,i-nCallQtn-1] := nDataArray[0]; // ��ü��
//            end;
//            _PGSJanGo_flg := 1;
//          end;
//      end;
//    end;




  _JGRecieveflg := 1;
  // ���� ó���� �� unit���� DongbuJangoDataArryO �̿��ؼ� ó��
end;


procedure TfHBOMain.Dongbu�ܰ�(index : integer; nszField: string; nDataArray : array of string); // ��ü��, ��������, ���԰���, �ż�/�ŵ� ����
var nString : string;
begin
  if copy(nszField,1,3) = '201' then // �ݿɼ��̸�...
  begin
    DonbuJanGoListInfo[1,index] := strTofloatDef(nDataArray[0],0);//��ü��
    if nDataArray[3] = '�ŵ�' then
      nString := '-'+ nDataArray[1] // ��������
    else nString := '+'+ nDataArray[1]; // ��������
    DonbuJanGoListInfo[2,index] := strTofloatDef(nString ,0);//��������
    DonbuJanGoListInfo[3,index] := strTofloatDef(nDataArray[2],0);//���԰���
  end else if copy(nszField,1,3) = '301' then // Put�ɼ��̸�...
  begin
    DonbuJanGoListInfo[7,index] := strTofloatDef(nDataArray[0],0);//��ü��

    if nDataArray[3] = '�ŵ�' then
      nString := '-'+ nDataArray[1] // ��������
    else nString := '+'+ nDataArray[1]; // ��������
    DonbuJanGoListInfo[6,index] := strTofloatDef(nString ,0);//��������
    DonbuJanGoListInfo[5,index] := strTofloatDef(nDataArray[2],0);//��ü��
  end;

  _JGIndex := index;
end;

procedure TfHBOMain.DongbuCheaGul_Parshing(nData : WideString);   //ü�� ����Ʈ �ޱ�
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
  // ���� ó���� �� unit���� DongbuCheaGulDataArryO �̿��ؼ� ó��
end;

procedure TfHBOMain.DonbuPoungga_Parshing(nData : WideString);   //�򰡾��Ľ�
var nString : string;
    nParshingLength, i : integer;
begin
// ����API.doc 13page TR_15813 ����
  nParshingLength := 0;
  for i := 0 to 13 do //ó�� �������� ����
  begin
    nString := Copy(nData, nParshingLength +1 , DongbuPounggaDataLenArry[i]);
    nParshingLength := nParshingLength + DongbuPounggaDataLenArry[i];
    DongbuPounggaDataArry[i] := nString;
  end;

  nString := Formatfloat('#,###',strTofloatDef(DongbuPounggaDataArry[3],0)); // ��Ź���ű��Ѿ�
  stgJyungGuaKyumHyunHwang.Cells[6,1] := '  ' + nString;
  nString := Formatfloat('#,###',strTofloatDef(DongbuPounggaDataArry[9],0)); // '�ֹ������Ѿ�'
  stgJyungGuaKyumHyunHwang.Cells[5,1] := '  ' + nString;
  nString := Formatfloat('#,###',strTofloatDef(DongbuPounggaDataArry[11],0)); // ���Ⱑ���ѱݾ�
  stgJyungGuaKyumHyunHwang.Cells[7,1] := '  ' + nString;
end;

procedure TfHBOMain.DongbuSusuRyu_Parshing(nData : WideString);   //�򰡾��Ľ�
var nString : string;
    sngWonKym,sngTemp : single;
    nParshingLength, i: integer;
begin
// ����API.doc 13page TR_15813 ����
  nParshingLength := 0;
  for i := 0 to 2 do //ó�� �������� ����
  begin
    nString := Copy(nData, nParshingLength +1 , DongbuSusuRyuDataLenArry[i]);
    nParshingLength := nParshingLength + DongbuSusuRyuDataLenArry[i];
    DongbuSusuRyuDataArry[i] := nString;
  end;

  nString := Formatfloat('#,###',strTofloatDef(DongbuSusuRyuDataArry[0],0)); // �򰡿�Ź���Ѿ�
  stgJyungGuaKyumHyunHwang.Cells[1,1] := ' ' + nString;
  sngTemp := strTofloatDef(RemoveComma(nString),0);
  sngWonKym := strTofloatDef(RemoveComma(stgJyungGuaKyumHyunHwang.Cells[0,1]),0);
  stgJyungGuaKyumHyunHwang.Cells[2,1] := '  '+formatfloat('#,##0',sngTemp - sngWonKym ); // �򰡼���  , ���ڿ��� ���
  stgJyungGuaKyumHyunHwang.Cells[3,1] := '   ' + formatfloat('#0.0#%', ((sngTemp-sngWonKym) / sngWonKym)*100); // �򰡼��ͷ�, ���ڿ��� ���
end;

procedure TfHBOMain.DongBuSunOpPyungGaJango;
var nDate : string;
begin
  DongbuRecieve_Type := 2;
  nDate := FormatDateTime('YYYYMMDD',now);
  //21 ���� DongbuAPI1.ReqEval(Acnt, AcntPwd, nDate);
end;

procedure TfHBOMain.PyungGaChongEak;
var nDate : string;
begin
  DongbuRecieve_Type := 2;
  nDate := FormatDateTime('YYYYMMDD',now);
  //21 ���� DongbuAPI1.ReqFeeNAbleMoney(cbbDongBuAcc.Text, edtDongBuPW.Text, nDate);
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
  if sbnPriceUpdate.Caption = '����Ȯ��' then begin
    sbnPriceUpdate.Font.Color := clWindow;
    sbnPriceUpdate.Caption := '����';
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
    _SMCMDJL := strTointDef(gfDel32(DongbuRTSH0DataArry[14]),0); // �Ѹŵ�ȣ���ܷ�   ok
    _SMCMSJL := strTointDef(gfDel32(DongbuRTSH0DataArry[15]),0); // �Ѹż�ȣ���ܷ�   ok
    _SMSMS := strTointDef(gfDel32(DongbuRTSH0DataArry[47]),0); //���ż��ܷ�

    edtSMCMDJL.Text := intTostr(_SMCMDJL); // �Ѹŵ�ȣ���ܷ�   ok
    edtSMCMSJL.Text := intTostr(_SMCMSJL); // �Ѹż�ȣ���ܷ�   ok
    if _SMSMS > 0 then begin
      edtSMSMS.Color := clGray;
      edtSMSMS.Font.Color := clRed;
      edtSMSMS.text := '+' + intTostr(_SMSMS);
    end else if _SMSMS < 0 then begin
      edtSMSMS.Color := clAqua;
      edtSMSMS.Font.Color := clBlue;
      edtSMSMS.text := intTostr(_SMSMS); // ȣ�����ܷ�����    ok
    end else begin
      edtSMSMS.Color := clGray;
      edtSMSMS.Font.Color := clWhite;
      edtSMSMS.text := intTostr(_SMSMS); // ȣ�����ܷ�����    ok
    end;
    _SunMulRTHGflg := -1;
  end;
end;

procedure TfHBOMain.tmrSuEicTimer(Sender: TObject);
begin
  if HandleDongbuApi <> 0 then begin
    PyungGaChongEak;
//    delay(100);
//    _JangoJMQtn := 0; // ���� ���� �ʱ�
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
  //21 ���� DongbuAPI1.ReqJango(Acnt);
end;

procedure TfHBOMain.Button1Click(Sender: TObject);
begin
  if HandleDongbuApi <> 0 then begin
    PyungGaChongEak;
    delay(200);
    DongBuSunOpPyungGaJango; // ���� �������ܰ�
    delay(200);
    _JangoJMQtn := 0; // ���� ���� �ʱ�ȭ
    //21 ���� DongbuAPI1.ReqJango(Acnt); // ���� �����ܰ�
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
  if cbbName.Text = '����(��)' then begin
    cbbDongBuAcc.Text := cbbDongBuAcc.Items[0];
    Acnt := cbbDongBuAcc.Text;
    edtDongBuPW.Text := '0000';
    AcntPwd := edtDongBuPW.Text;
    pnlTitle.Color := clWhite;
  end else if cbbName.Text = '����(A)' then begin
    cbbDongBuAcc.Text := cbbDongBuAcc.Items[1];
    Acnt := cbbDongBuAcc.Text;
    edtDongBuPW.Text := '2028';
    AcntPwd := edtDongBuPW.Text;
    pnlTitle.Color := clFuchsia;
  end else if cbbName.Text = '����(A)' then begin
    cbbDongBuAcc.Text := cbbDongBuAcc.Items[2];
    Acnt := cbbDongBuAcc.Text;
    edtDongBuPW.Text := '2028';
    AcntPwd := edtDongBuPW.Text;
    pnlTitle.Color := clFuchsia;
  end;
end;

procedure TfHBOMain.DBOAbleQty(nData : WideString);  // �����ֹ�/û�� ���ɼ���
begin
  _OrdAblQty[1] := copy(nData,1,15);
  _OrdAblQty[2] := copy(nData,16,15);
  _CGQtnReceiveflg := 1;
end;

procedure TfHBOMain.DongbuOptionHoGa_Parshing(nData : WideString);   //�ɼ�ȣ�� �Ľ�
var nString , nMonthCode: string;
    nParshingLength, i, nIndex : integer;
    nDataArray : array[0..4] of string; // �ż��ܷ�, �ŵ��ܷ� , �ż�ȣ��, �ŵ�ȣ��,���簡
begin
// ����API.doc
  nParshingLength := 0;
  if _DongBuNowPriceCode <> '-' then begin
    if Pos('��',nData) > 0 then begin
      for i := 0 to 37 do // 49���� ������
      begin
        nString := Copy(nData, nParshingLength +1 , DongbuOptionHoGaDataLenArray2[i]);
        nParshingLength := nParshingLength + DongbuOptionHoGaDataLenArray2[i];
        DongbuOptionHoGaDataArry[i] := nString;
    //    mmoLog.Lines.Add(nString);
      end;
    end else if Pos('��',nData) > 0 then begin
      for i := 0 to 37 do // 49���� ������
      begin
        nString := Copy(nData, nParshingLength +1 , DongbuOptionHoGaDataLenArray1[i]);
        nParshingLength := nParshingLength + DongbuOptionHoGaDataLenArray2[i];
        DongbuOptionHoGaDataArry[i] := nString;
    //    mmoLog.Lines.Add(nString);
      end;
    end else begin
      for i := 0 to 37 do // 49���� ������
      begin
        nString := Copy(nData, nParshingLength +1 , DongbuOptionHoGaDataLenArray3[i]);
        nParshingLength := nParshingLength + DongbuOptionHoGaDataLenArray3[i];
        DongbuOptionHoGaDataArry[i] := nString;
    //    mmoLog.Lines.Add(nString);
      end;
    end;

    KP200 := copy(gfDel32(DongbuOptionHoGaDataArry[16]),1,6);//�ڽ���200 kospi200
    nDataArray[2] := gfDel32(DongbuOptionHoGaDataArry[36]);//      �ż�ȣ��
    nDataArray[3] := gfDel32(DongbuOptionHoGaDataArry[35]);//      �ŵ�ȣ��
    nDataArray[4] := gfDel32(DongbuOptionHoGaDataArry[1]);//      ���簡,

    nString := copy(_DongBuNowPriceCode,6,3);   //201N6315
    if (copy(nString,3,1) = '2') or (copy(nString,3,1) = '7') then nString := nString + '.5';
    nIndex := CaseString(nString, _HeangSaGaList);  //��簡 ����Ʈ�� ���Ͽ� ������ �׸����� Row��ȣ ����
    nMonthCode := copy(_DongBuNowPriceCode,4,2);

    if nIndex in [0..65] then begin
      if nMonthCode = _DCode then DongbuHG������(nIndex, _DongBuNowPriceCode, nDataArray)
      else if nMonthCode = _CWCode then DongbuHGCW������(nIndex, _DongBuNowPriceCode, nDataArray)
      else if nMonthCode = _CCWCode then DongbuHGCCW������(nIndex, _DongBuNowPriceCode, nDataArray)
      else if nMonthCode = _WWCode then DongbuHGWW������(nIndex, _DongBuNowPriceCode, nDataArray);
    end;
    _DongBuNowPriceCode := '-';
  end;

  if _WeeklyNowPriceCode <> '-' then begin
    if Pos('��',nData) > 0 then begin
      for i := 0 to 37 do // 49���� ������
      begin
        nString := Copy(nData, nParshingLength +1 , DongbuOptionHoGaDataLenArray2[i]);
        nParshingLength := nParshingLength + DongbuOptionHoGaDataLenArray2[i];
        DongbuOptionHoGaDataArry[i] := nString;
    //    mmoLog.Lines.Add(nString);
      end;
    end else if Pos('��',nData) > 0 then begin
      for i := 0 to 37 do // 49���� ������
      begin
        nString := Copy(nData, nParshingLength +1 , DongbuOptionHoGaDataLenArray1[i]);
        nParshingLength := nParshingLength + DongbuOptionHoGaDataLenArray2[i];
        DongbuOptionHoGaDataArry[i] := nString;
    //    mmoLog.Lines.Add(nString);
      end;
    end else begin
      for i := 0 to 37 do // 49���� ������
      begin
        nString := Copy(nData, nParshingLength +1 , DongbuOptionHoGaDataLenArray3[i]);
        nParshingLength := nParshingLength + DongbuOptionHoGaDataLenArray3[i];
        DongbuOptionHoGaDataArry[i] := nString;
    //    mmoLog.Lines.Add(nString);
      end;
    end;
//    KP200 := copy(gfDel32(DongbuOptionHoGaDataArry[16]),1,6);//�ڽ���200 kospi200
//    nDataArray[2] := gfDel32(DongbuOptionHoGaDataArry[36]);//      �ż�ȣ��
//    nDataArray[3] := gfDel32(DongbuOptionHoGaDataArry[35]);//      �ŵ�ȣ��
    nDataArray[4] := gfDel32(DongbuOptionHoGaDataArry[1]);//      ���簡,

    nString := copy(_WeeklyNowPriceCode,6,3);   //201N6315
    if (copy(nString,3,1) = '2') or (copy(nString,3,1) = '7') then nString := nString + '.5';
    nIndex := CaseString(nString, _HeangSaGaList);  //��簡 ����Ʈ�� ���Ͽ� ������ �׸����� Row��ȣ ����
    nMonthCode := copy(_WeeklyNowPriceCode,4,2);

    if nIndex in [0..65] then begin
      if nMonthCode = _WeeklyMonthCode then WeeklyHG������(nIndex, _WeeklyNowPriceCode, nDataArray);
    end;

    _WeeklyNowPriceCode := '-';
  end;
end;

procedure TfHBOMain.WeeklyHG������(index : integer; nszField: string; nDataArray : array of string);
begin
 if copy(nszField,1,3) = '209' then // �ݿɼ��̸�...
  begin
    _WeeklyPriceListInfo[0,index] := strTofloatDef(nDataArray[4],0); // �����簡
//    _WeeklyPriceListInfo[0,index] := strTofloatDef(nDataArray[3],0); // �ŵ�ȣ��
//    _WeeklyPriceListInfo[1,index] := strTofloatDef(nDataArray[2],0); // �ż�ȣ��
  end else if copy(nszField,1,3) = '309' then // Put�ɼ��̸�...
  begin
    _WeeklyPriceListInfo[2,index] := strTofloatDef(nDataArray[4],0); // ǲ���簡
//    _WeeklyPriceListInfo[6,index] := strTofloatDef(nDataArray[3],0); // �ŵ�ȣ��
//    _WeeklyPriceListInfo[5,index] := strTofloatDef(nDataArray[2],0); // �ż�ȣ��
  end;
  _WeeklyRTIndex[Index] := True;
end;

procedure TfHBOMain.DongbuHGWW������(index : integer; nszField: string; nDataArray : array of string);
begin
  if copy(nszField,1,3) = '201' then // �ݿɼ��̸�...
  begin
    _WWHSGListInfo[2,index] := strTofloatDef(nDataArray[4],0); // �����簡
    _WWHSGListInfo[0,index] := strTofloatDef(nDataArray[3],0); // �ŵ�ȣ��
    _WWHSGListInfo[1,index] := strTofloatDef(nDataArray[2],0); // �ż�ȣ��
//    _WWRTCallIndex[Index] := True;
  end else if copy(nszField,1,3) = '301' then // Put�ɼ��̸�...
  begin
    _WWHSGListInfo[4,index] := strTofloatDef(nDataArray[4],0); // ǲ���簡
    _WWHSGListInfo[6,index] := strTofloatDef(nDataArray[3],0); // �ŵ�ȣ��
    _WWHSGListInfo[5,index] := strTofloatDef(nDataArray[2],0); // �ż�ȣ��
//    _WWRTPutIndex[Index] := True;
  end;
  _WWRTIndex[Index] := True;
end;

procedure TfHBOMain.DongbuHGCCW������(index : integer; nszField: string; nDataArray : array of string);
begin
  if copy(nszField,1,3) = '201' then // �ݿɼ��̸�...
  begin
    _CCWHSGListInfo[2,index] := strTofloatDef(nDataArray[4],0); // �����簡
    _CCWHSGListInfo[0,index] := strTofloatDef(nDataArray[3],0); // �ŵ�ȣ��
    _CCWHSGListInfo[1,index] := strTofloatDef(nDataArray[2],0); // �ż�ȣ��
//    _CCWRTCallIndex[Index] := True;
  end else if copy(nszField,1,3) = '301' then // Put�ɼ��̸�...
  begin
    _CCWHSGListInfo[4,index] := strTofloatDef(nDataArray[4],0); // ǲ���簡
    _CCWHSGListInfo[6,index] := strTofloatDef(nDataArray[3],0); // �ŵ�ȣ��
    _CCWHSGListInfo[5,index] := strTofloatDef(nDataArray[2],0); // �ż�ȣ��
//    _CCWRTPutIndex[Index] := True;
  end;
  _CCWRTIndex[Index] := True;

end;

procedure TfHBOMain.DongbuHGCW������(index : integer; nszField: string; nDataArray : array of string);
begin
  if copy(nszField,1,3) = '201' then // �ݿɼ��̸�...
  begin
    _CWHSGListInfo[2,index] := strTofloatDef(nDataArray[4],0); // �����簡
    _CWHSGListInfo[0,index] := strTofloatDef(nDataArray[3],0); // �ŵ�ȣ��
    _CWHSGListInfo[1,index] := strTofloatDef(nDataArray[2],0); // �ż�ȣ��
//    _CWRTCallIndex[Index] := True;
  end else if copy(nszField,1,3) = '301' then // Put�ɼ��̸�...
  begin
    _CWHSGListInfo[4,index] := strTofloatDef(nDataArray[4],0); // ǲ���簡
    _CWHSGListInfo[6,index] := strTofloatDef(nDataArray[3],0); // �ŵ�ȣ��
    _CWHSGListInfo[5,index] := strTofloatDef(nDataArray[2],0); // �ż�ȣ��
//    _CWRTPutIndex[Index] := True;
  end;
  _CWRTIndex[index] := True;

end;

procedure TfHBOMain.DongbuHG������(index : integer; nszField: string; nDataArray : array of string);
begin
 if copy(nszField,1,3) = '201' then // �ݿɼ��̸�...
  begin
    _DWHSGListInfo[2,index] := strTofloatDef(nDataArray[4],0); // �����簡
    _DWHSGListInfo[0,index] := strTofloatDef(nDataArray[3],0); // �ŵ�ȣ��
    _DWHSGListInfo[1,index] := strTofloatDef(nDataArray[2],0); // �ż�ȣ��
//    _DWRTCallIndex[Index] := True;
  end else if copy(nszField,1,3) = '301' then // Put�ɼ��̸�...
  begin
    _DWHSGListInfo[4,index] := strTofloatDef(nDataArray[4],0); // ǲ���簡
    _DWHSGListInfo[6,index] := strTofloatDef(nDataArray[3],0); // �ŵ�ȣ��
    _DWHSGListInfo[5,index] := strTofloatDef(nDataArray[2],0); // �ż�ȣ��
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


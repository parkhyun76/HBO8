unit uMainTopFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Grids, Vcl.Buttons, Vcl.Samples.Spin;

type
  TfrMainTop = class(TFrame)
    Label33: TLabel;
    Label9: TLabel;
    Label8: TLabel;
    SpeedButton1: TSpeedButton;
    Label10: TLabel;
    Label11: TLabel;
    dtpNowTime: TDateTimePicker;
    dtpToday: TDateTimePicker;
    Button35: TButton;
    ckbSuEic: TCheckBox;
    btnPyungGaChongEak: TButton;
    Button7: TButton;
    Button42: TButton;
    btnMultiNP: TButton;
    stgJyungGuaKyumHyunHwang: TStringGrid;
    edtDongBuPW: TEdit;
    cbbDongBuAcc: TComboBox;
    edtJanJonDate: TEdit;
    UpDown1: TUpDown;
    edtDMonth: TEdit;
    cbbName: TComboBox;
    Button66: TButton;
    edtSunMul: TEdit;
    edtSunMulDyungLak: TEdit;
    edtSMCMDJL: TEdit;
    edtSMSMS: TEdit;
    edtSMCMSJL: TEdit;
    edtKP200: TEdit;
    Button1: TButton;
    lbeDBAcc: TLabel;
    SpinButton1: TSpinButton;
    edtGCDyngGa: TEdit;
    Label1: TLabel;
    procedure SpinButton1DownClick(Sender: TObject);
    procedure SpinButton1UpClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TfrMainTop.SpinButton1DownClick(Sender: TObject);
begin
  edtGCDyngGa.Text := formatfloat('#0.#',(strTofloatDef(edtGCDyngGa.Text,0) - 2.5));
end;

procedure TfrMainTop.SpinButton1UpClick(Sender: TObject);
begin
  edtGCDyngGa.Text := formatfloat('#0.#',(strTofloatDef(edtGCDyngGa.Text,0) + 2.5));
end;

end.

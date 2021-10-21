unit uSelectJM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids;

type
  TfSelectJM = class(TForm)
    ScrollBox1: TScrollBox;
    GroupBox2: TGroupBox;
    stg전광: TStringGrid;
    당월: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    CheckBox1: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    procedure checkboxMake(Sender: TObject);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fSelectJM: TfSelectJM;
    CheckBoxDWCJM, CheckBoxDWPJM : array[0..65] of TCheckBox;        //당월콜종목, 당월풋종목
    CheckBoxCWCJM, CheckBoxCWPJM : array[0..65] of TCheckBox;        //차월콜종목, 차월풋종목
    CheckBoxCCWCJM, CheckBoxCCWPJM : array[0..65] of TCheckBox;        //차차월콜종목, 차차월풋종목
    CheckBoxWWCJM, CheckBoxWWPJM : array[0..65] of TCheckBox;        //원월콜종목, 원월풋종목

implementation
uses uHBO2_Main, uYMS_GC;
{$R *.dfm}

procedure TfSelectJM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := Cafree;
end;

procedure TfSelectJM.FormShow(Sender: TObject);
begin
  checkboxMake(Sender);
end;

procedure TfSelectJM.Button1Click(Sender: TObject);
begin
  close;
end;

procedure TfSelectJM.checkboxMake(Sender: TObject);
var i, j, x,y, nNum, nTemp1: integer;
    nYearMonth : String;
begin
    // 체크박스를 동적으로 생성한다.
  for i := 0 to 65 do
  begin
    CheckBoxDWCJM[i] := TCheckBox.Create(Application);
    CheckBoxDWCJM[i].Parent := CheckBox1.Parent;
    CheckBoxDWCJM[i].Caption := '';
    x := 68;
    y := i*18;
    CheckBoxDWCJM[i].Left := x;
    CheckBoxDWCJM[i].Top := y;
    CheckBoxDWCJM[i].Height := 17;
    CheckBoxDWCJM[i].Width := 14;
    CheckBoxDWCJM[i].Name := 'DWC' + intTostr(i);

    CheckBoxDWPJM[i] := TCheckBox.Create(Application);
    CheckBoxDWPJM[i].Parent := CheckBox1.Parent;
    CheckBoxDWPJM[i].Caption := '';
    x := 143;
    y := i*18;
    CheckBoxDWPJM[i].Left := x;
    CheckBoxDWPJM[i].Top := y;
    CheckBoxDWPJM[i].Height := 17;
    CheckBoxDWPJM[i].Width := 14;
    CheckBoxDWPJM[i].Name := 'DWP' + intTostr(i);

    CheckBoxCWCJM[i] := TCheckBox.Create(Application);
    CheckBoxCWCJM[i].Parent := CheckBox1.Parent;
    CheckBoxCWCJM[i].Caption := '';
    x := 48;
    y := i*18;
    CheckBoxCWCJM[i].Left := x;
    CheckBoxCWCJM[i].Top := y;
    CheckBoxCWCJM[i].Height := 17;
    CheckBoxCWCJM[i].Width := 14;
    CheckBoxCWCJM[i].Name := 'CWC' + intTostr(i);

    CheckBoxCWPJM[i] := TCheckBox.Create(Application);
    CheckBoxCWPJM[i].Parent := CheckBox1.Parent;
    CheckBoxCWPJM[i].Caption := '';
    x := 163;
    y := i*18;
    CheckBoxCWPJM[i].Left := x;
    CheckBoxCWPJM[i].Top := y;
    CheckBoxCWPJM[i].Height := 17;
    CheckBoxCWPJM[i].Width := 14;
    CheckBoxCWPJM[i].Name := 'CWP' + intTostr(i);

    CheckBoxCCWCJM[i] := TCheckBox.Create(Application);
    CheckBoxCCWCJM[i].Parent := CheckBox1.Parent;
    CheckBoxCCWCJM[i].Caption := '';
    x := 28;
    y := i*18;
    CheckBoxCCWCJM[i].Left := x;
    CheckBoxCCWCJM[i].Top := y;
    CheckBoxCCWCJM[i].Height := 17;
    CheckBoxCCWCJM[i].Width := 14;
    CheckBoxCCWCJM[i].Name := 'CCWC' + intTostr(i);

    CheckBoxCCWPJM[i] := TCheckBox.Create(Application);
    CheckBoxCCWPJM[i].Parent := CheckBox1.Parent;
    CheckBoxCCWPJM[i].Caption := '';
    x := 183;
    y := i*18;
    CheckBoxCCWPJM[i].Left := x;
    CheckBoxCCWPJM[i].Top := y;
    CheckBoxCCWPJM[i].Height := 17;
    CheckBoxCCWPJM[i].Width := 14;
    CheckBoxCCWPJM[i].Name := 'CCWP' + intTostr(i);

    CheckBoxWWCJM[i] := TCheckBox.Create(Application);
    CheckBoxWWCJM[i].Parent := CheckBox1.Parent;
    CheckBoxWWCJM[i].Caption := '';
    x := 8;
    y := i*18;
    CheckBoxWWCJM[i].Left := x;
    CheckBoxWWCJM[i].Top := y;
    CheckBoxWWCJM[i].Height := 17;
    CheckBoxWWCJM[i].Width := 14;
    CheckBoxWWCJM[i].Name := 'WWC' + intTostr(i);

    CheckBoxWWPJM[i] := TCheckBox.Create(Application);
    CheckBoxWWPJM[i].Parent := CheckBox1.Parent;
    CheckBoxWWPJM[i].Caption := '';
    x := 203;
    y := i*18;
    CheckBoxWWPJM[i].Left := x;
    CheckBoxWWPJM[i].Top := y;
    CheckBoxWWPJM[i].Height := 17;
    CheckBoxWWPJM[i].Width := 14;
    CheckBoxWWPJM[i].Name := 'WWP' + intTostr(i);
  end;
end;

end.

unit View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  System.Classes, Vcl.Samples.Spin;

type
  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    Memo1: TMemo;
    edtNome: TEdit;
    SpinId: TSpinEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Nomes: array [0 .. 9] of string;
  inteiros : array [0 .. 9] of Integer;
  flutante : array [0 .. 9] of Double;

implementation

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
begin

  ShowMessage(Nomes[3]);
  Memo1.Lines.Clear;
  Memo1.Lines.Add('o array tem ' + IntToStr(Length(Nomes)) + ' posições');

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Nomes[SpinId.Value] := edtNome.Text;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  mensagem: string;
  retorno :integer;
begin
  mensagem := 'Nome: ' + Nomes[SpinId.Value];
  retorno := MessageDlg(mensagem, TMsgDlgType.mtError, [mbOK,TMsgDlgBtn.mbYes,TMsgDlgBtn.mbCancel,TMsgDlgBtn.mbAbort], 0);
  case retorno  of
     1 : showMessage(' Ok');
     2:  showMessage('Cancel');
     3: close; //showMessage('Abort');
     6: showMessage(' Yes');
     end;

  Memo1.Clear;
  Memo1.Lines.Add(mensagem);
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  i: Integer;
begin
  Memo1.Clear;
  for i := 0 to Pred(Length(Nomes)) do
  begin
    Memo1.Lines.Add('Nome: ' + Nomes[i]);
  end;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Nomes[0] := 'José';
  Nomes[1] := 'João';
  Nomes[2] := 'Juares';
  Nomes[3] := 'Fabiano';
  Nomes[4] := 'Gabriel';
  Nomes[5] := 'Lucas';
  Nomes[6] := 'Sergio';
  Nomes[7] := 'ivo';
  Nomes[8] := 'Ivan';
  Nomes[9] := 'Pedro';
end;

procedure TForm1.FormShow(Sender: TObject);

begin
  Memo1.Lines.Clear;
end;

end.

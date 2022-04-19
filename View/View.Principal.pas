unit View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Graphics,
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
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Nomes: array [0 .. 9] of string;
implementation



{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  Nomes[0] := 'José';
  Nomes[2] := 'João';
  Nomes[3] := 'Juares';
  Nomes[4] := 'Fabiano';
  Nomes[5] := 'Gabriel';
  Nomes[7] := 'Lucas';
  Nomes[8] := 'Sergio';
  Nomes[9] := 'Adão';
  ShowMessage(nomes[3]);
  Memo1.Lines.Clear;
  Memo1.Lines.Add('o array tem '+IntToStr(Length(nomes))+' posições');

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Nomes[SpinId.Value] := edtNome.Text;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  MessageDlg('Nome:'+Nomes[SpinId.Value],TMsgDlgType.mtInformation,[TMsgDlgBtn.mbYes,TMsgDlgBtn.mbOK,TMsgDlgBtn.mbCancel,TMsgDlgBtn.mbAbort],0);
end;

end.

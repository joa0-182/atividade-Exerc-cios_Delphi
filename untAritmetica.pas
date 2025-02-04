unit untAritmetica;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmAritmetica = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edtValor1: TEdit;
    Label3: TLabel;
    edtValor2: TEdit;
    Label4: TLabel;
    btnSomar: TButton;
    btnSubtrair: TButton;
    btnMultiplicar: TButton;
    btnDividir: TButton;
    edtResultado: TEdit;
    Label5: TLabel;
    btnLimpar: TBitBtn;
    btnSair: TBitBtn;
    btnInfo: TBitBtn;
    procedure btnSomarClick(Sender: TObject);
    procedure btnSubtrairClick(Sender: TObject);
    procedure btnMultiplicarClick(Sender: TObject);
    procedure btnDividirClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnInfoClick(Sender: TObject);
    procedure edtValor1Exit(Sender: TObject);
    procedure edtValor2Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAritmetica: TfrmAritmetica;

implementation

{$R *.dfm}

procedure TfrmAritmetica.btnDividirClick(Sender: TObject);
var valor1, valor2, resultado: real;
begin
      valor1 := StrToFloat(edtValor1.Text);
      valor2 := StrToFloat(edtValor2.Text);
      resultado := valor1 / valor2;
      edtResultado.Text := FloatToStr(resultado);
end;

procedure TfrmAritmetica.btnInfoClick(Sender: TObject);
begin
      Application.MessageBox('Fa�a um algoritmo que receba tr�s valores num�ricos e calcule e exibe a m�dia dos valores.' , '1� Exerc�cio');
end;

procedure TfrmAritmetica.btnLimparClick(Sender: TObject);
begin
      edtResultado.Clear;
      edtValor1.Clear;
      edtValor2.Clear;
      edtValor1.SetFocus;
end;

procedure TfrmAritmetica.btnMultiplicarClick(Sender: TObject);
var valor1, valor2, resultado: real;
begin
      valor1 := StrToFloat(edtValor1.Text);
      valor2 := StrToFloat(edtValor2.Text);
      resultado := valor1 * valor2;
      edtResultado.Text := FloatToStr(resultado);
end;

procedure TfrmAritmetica.btnSairClick(Sender: TObject);
begin
      close;
end;

procedure TfrmAritmetica.btnSomarClick(Sender: TObject);
var valor1, valor2, resultado: real;
begin
      valor1 := StrToFloat(edtValor1.Text);
      valor2 := StrToFloat(edtValor2.Text);
      resultado := valor1 + valor2;
      edtResultado.Text := FloatToStr(resultado);

end;

procedure TfrmAritmetica.btnSubtrairClick(Sender: TObject);
var valor1, valor2, resultado: real;
begin
      valor1 := StrToFloat(edtValor1.Text);
      valor2 := StrToFloat(edtValor2.Text);
      resultado := valor1 - valor2;
      edtResultado.Text := FloatToStr(resultado);
end;

procedure TfrmAritmetica.edtValor1Exit(Sender: TObject);
begin
      if edtValor1.Text = '' then
        begin
          Application.MessageBox('Coloque um valor', 'Aten��o',MB_OK);
          edtValor1.SetFocus;
        end;
end;

procedure TfrmAritmetica.edtValor2Exit(Sender: TObject);
begin
      if edtValor2.Text = '' then
        begin
          Application.MessageBox('Coloque um valor', 'Aten��o',MB_OK);
          edtValor2.SetFocus;
        end;
end;

end.

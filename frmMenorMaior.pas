unit frmMenorMaior;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmMaiorMenor = class(TForm)
    Label1: TLabel;
    btnValores: TBitBtn;
    edtMenor: TEdit;
    edtMaior: TEdit;
    edtMedia: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    memValores: TMemo;
    btnLimpar: TBitBtn;
    btnSair: TBitBtn;
    btnInfo: TBitBtn;
    procedure btnValoresClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnInfoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMaiorMenor: TfrmMaiorMenor;

implementation

{$R *.dfm}

procedure TfrmMaiorMenor.btnInfoClick(Sender: TObject);
begin
      Application.MessageBox('Escreva um algoritmo que receba 10 n�meros e mostre qual � a m�dia, o maior e o menor valor deste grupo. Dica: usar a fun��o inputQuery().' , '5� Exerc�cio');
end;

procedure TfrmMaiorMenor.btnLimparClick(Sender: TObject);
begin
      memValores.Clear;
      edtMenor.Clear;
      edtMaior.Clear;
      edtMedia.Clear;
      btnValores.SetFocus;
end;

procedure TfrmMaiorMenor.btnSairClick(Sender: TObject);
begin
      close;
end;

procedure TfrmMaiorMenor.btnValoresClick(Sender: TObject);
var i, padrao: integer;
    num, proximoNum: string;
    media, soma, maior, menor: real;
begin


      maior := 0;
      menor := 100000;
      for i := 1 to 10 do
        begin
          InputQuery('Digite', IntToStr(i) +'� Valor: ', num);
            if num = '' then
            begin
              num := '0';
            end;
          soma := soma + StrToFloat(num);
          memValores.Lines.Add(IntToStr(i)+'� Valor: '+ num);

          if StrToFloat(num) > maior then
            maior := StrToFloat(num);
          if StrToFloat(num) < menor then
            menor := StrToFloat(num);
        end;

        media := soma / 10;
        edtMenor.Text := FloatToStr(menor);
        edtMaior.Text := FloatToStr(maior);
        edtMedia.Text := FloatToStr(media);



end;

end.

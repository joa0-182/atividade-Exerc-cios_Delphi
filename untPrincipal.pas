unit untPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.Menus;

type
  TfrmPrincipal = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    lblNome: TLabel;
    btnMedia: TBitBtn;
    btnAritmetica: TBitBtn;
    btnMesAno: TBitBtn;
    btnFibonnaci: TBitBtn;
    btnMenorMaior: TBitBtn;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    MainMenu1: TMainMenu;
    Sistema1: TMenuItem;
    Alunos1: TMenuItem;
    GitHubJp1: TMenuItem;
    Exerccios1: TMenuItem;
    Sair1: TMenuItem;
    Mdia1: TMenuItem;
    Aritmtica1: TMenuItem;
    MsdoAno1: TMenuItem;
    Fibonacci1: TMenuItem;
    MaiorMdiaeAno1: TMenuItem;
    procedure btnMediaClick(Sender: TObject);
    procedure btnAritmeticaClick(Sender: TObject);
    procedure btnMesAnoClick(Sender: TObject);
    procedure btnFibonnaciClick(Sender: TObject);
    procedure btnMenorMaiorClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure Alunos1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Mdia1Click(Sender: TObject);
    procedure Aritmtica1Click(Sender: TObject);
    procedure MsdoAno1Click(Sender: TObject);
    procedure Fibonacci1Click(Sender: TObject);
    procedure MaiorMdiaeAno1Click(Sender: TObject);
    procedure GitHubJp1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses untMedia, untAritmetica, untMesAno, untFibonacci, frmMenorMaior, untGitHub;

procedure TfrmPrincipal.Alunos1Click(Sender: TObject);
begin
      Application.MessageBox('Jo�o Pedro Maria e Emanuel Santos', 'Alunos que fizerem esse app');
end;

procedure TfrmPrincipal.Aritmtica1Click(Sender: TObject);
begin
      frmAritmetica.ShowModal;
end;

procedure TfrmPrincipal.btnAritmeticaClick(Sender: TObject);
begin
      frmAritmetica.ShowModal;
end;

procedure TfrmPrincipal.btnFibonnaciClick(Sender: TObject);
begin
      frmFibonacci.ShowModal;
end;

procedure TfrmPrincipal.btnMediaClick(Sender: TObject);
begin
      frmMedia.ShowModal;
end;

procedure TfrmPrincipal.btnMenorMaiorClick(Sender: TObject);
begin
      frmMaiorMenor.ShowModal;
end;

procedure TfrmPrincipal.btnMesAnoClick(Sender: TObject);
begin
      frmMesAno.ShowModal;
end;

procedure TfrmPrincipal.Fibonacci1Click(Sender: TObject);
begin
      frmFibonacci.ShowModal;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      if Application.MessageBox('Deseja Sair?', 'Confirme', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = id_yes then
        begin
          application.Terminate;
        end
      else
        begin
          abort;
        end;

end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
var nomeUsuario: String;
begin
       InputQuery('Aten��o','Digite Seu Nome',nomeUsuario);
       lblNome.Caption := nomeUsuario;
end;

procedure TfrmPrincipal.GitHubJp1Click(Sender: TObject);
begin
      frmGitHub.ShowModal;
end;

procedure TfrmPrincipal.MaiorMdiaeAno1Click(Sender: TObject);
begin
      frmMaiorMenor.ShowModal;
end;

procedure TfrmPrincipal.Mdia1Click(Sender: TObject);
begin
      frmMedia.ShowModal;
end;

procedure TfrmPrincipal.MsdoAno1Click(Sender: TObject);
begin
      frmMesAno.ShowModal;
end;

procedure TfrmPrincipal.Sair1Click(Sender: TObject);
begin
      if Application.MessageBox('Deseja Sair?', 'Confirme', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = id_yes then
        begin
          application.Terminate;
        end
      else
        begin
          abort;
        end;
end;

procedure TfrmPrincipal.Timer1Timer(Sender: TObject);
begin
      StatusBar1.Panels[0].Text := DateToStr(date);
      StatusBar1.Panels[1].Text := FormatDateTime('hh:nn', time);
end;

end.

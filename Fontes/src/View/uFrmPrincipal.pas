unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Menus, Vcl.Buttons, Vcl.StdCtrls;

type
  TFrmPrincipalVendas = class(TForm)
    MainMenu1: TMainMenu;
    pnlBotoesEsqueda: TPanel;
    pnlProcessos: TPanel;
    Panel3: TPanel;
    Panel1: TPanel;
    btnPedidoVenda: TButton;
    Panel2: TPanel;
    Panel4: TPanel;
    btnCadClientes: TButton;
    btnCadProdutos: TButton;
    procedure FormShow(Sender: TObject);
    procedure btnPedidoVendaClick(Sender: TObject);
    procedure btnCadClientesClick(Sender: TObject);
    procedure btnCadProdutosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipalVendas: TFrmPrincipalVendas;

implementation

uses
  ucVendasHelper, ucCadastrosHelper;

{$R *.dfm}

{ TFrmPrincipalVendas }

procedure TFrmPrincipalVendas.btnCadClientesClick(Sender: TObject);
begin
  TCadastrosHelper.Operacao.CadastroClientes.Exibir(pnlProcessos);
end;

procedure TFrmPrincipalVendas.btnCadProdutosClick(Sender: TObject);
begin
  TVendasHelper.Operacao.PedidosVenda.Ocultar;
  TCadastrosHelper.Operacao.CadastroProdutos.Exibir(pnlProcessos);
end;

procedure TFrmPrincipalVendas.btnPedidoVendaClick(Sender: TObject);
begin
  TCadastrosHelper.Operacao.CadastroProdutos.Ocultar;
  TVendasHelper.Operacao.PedidosVenda.Exibir(pnlProcessos);
end;

procedure TFrmPrincipalVendas.FormShow(Sender: TObject);
begin
  //btnPedidoVendaClick(btnPedidoVenda);
end;

end.

program PedidoVenda;

uses
  Vcl.Forms,
  ucVendasHelper in 'src\Controller\Vendas\ucVendasHelper.pas',
  uFrmPrincipal in 'src\View\uFrmPrincipal.pas' {FrmPrincipalVendas},
  uFrPedidoVenda in 'src\View\uFrPedidoVenda.pas' {FrPedidoVenda: TFrame},
  uiVendasOperacoes in 'src\Interfaces\uiVendasOperacoes.pas',
  ucVendasOperacoesClass in 'src\Controller\Vendas\ucVendasOperacoesClass.pas',
  udmPrincipal in 'src\Model\udmPrincipal.pas' {dtmPrincipal: TDataModule},
  ucDadosConexaoBase in 'src\Controller\Conexao\ucDadosConexaoBase.pas',
  udConsts_Geral in 'src\Definições\udConsts_Geral.pas',
  ucDadosConexaoUtil in 'src\Controller\Conexao\ucDadosConexaoUtil.pas',
  uUtil in 'src\Comum\uUtil.pas',
  ucCadastrosHelper in 'src\Controller\Cadastros\ucCadastrosHelper.pas',
  ucCadastrosOperacoesClass in 'src\Controller\Cadastros\ucCadastrosOperacoesClass.pas',
  uiCadastrosOperacoes in 'src\Interfaces\uiCadastrosOperacoes.pas',
  uFrCadastroProdutos in 'src\View\uFrCadastroProdutos.pas' {FrCadastroProdutos: TFrame},
  uFrCadastroClientes in 'src\View\uFrCadastroClientes.pas' {FrCadastroClientes: TFrame},
  udmImpressao in 'src\Model\udmImpressao.pas' {dtmImpressao: TDataModule},
  uFrmConsultaVendas in 'src\View\uFrmConsultaVendas.pas' {FrmConsultaVendas};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipalVendas, FrmPrincipalVendas);
  Application.CreateForm(TdtmPrincipal, dtmPrincipal);
  Application.CreateForm(TdtmImpressao, dtmImpressao);
  Application.CreateForm(TFrmConsultaVendas, FrmConsultaVendas);
  Application.Run;
end.

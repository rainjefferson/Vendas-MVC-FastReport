unit udmPrincipal;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FBDef,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Phys.FB, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, Datasnap.Provider,
  Datasnap.DBClient, Vcl.Forms, Winapi.Windows, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef;

type
  TdtmPrincipal = class(TDataModule)
    conPrincipal: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    cdsPedidos: TClientDataSet;
    dspPedidos: TDataSetProvider;
    qryPedidos: TFDQuery;
    cdsItensPedidos: TClientDataSet;
    dspItensPedidos: TDataSetProvider;
    qryItensPedidos: TFDQuery;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    cdsPedidosNumero_Pedido: TAutoIncField;
    cdsPedidosData_Emiss: TDateField;
    cdsPedidosCodigo_Cliente: TIntegerField;
    cdsPedidosValor_Total: TSingleField;
    cdsItensPedidosNumero_Pedido: TIntegerField;
    cdsItensPedidosCodigo_Produto: TIntegerField;
    cdsItensPedidosQuantidade: TSingleField;
    cdsItensPedidosValor_Unitario: TSingleField;
    cdsItensPedidosValor_Total: TSingleField;
    cdsItensPedidosDescricao: TStringField;
    qryClientes: TFDQuery;
    qryClientesNome: TStringField;
    qryClientesCidade: TStringField;
    qryClientesUF: TStringField;
    qryProdutos: TFDQuery;
    qryProdutosCodigo: TIntegerField;
    qryProdutosDescricao: TStringField;
    qryProdutosPreco_Venda: TSingleField;
    qryProximoPedido: TFDQuery;
    cdsItensPedidosTotal_Pedido: TAggregateField;
    qryExcluirPedido: TFDQuery;
    qryExcluirItensPedido: TFDQuery;
    tranPrincipal: TFDTransaction;
    qryCadastroProdutos: TFDQuery;
    qryCadastroClientes: TFDQuery;
    qryImpressaoPedidoVenda: TFDQuery;
    qryImpressaoPedidoVendaItens: TFDQuery;
    qryImpressaoPedidoVendaItensNumero_Pedido: TIntegerField;
    qryImpressaoPedidoVendaItensCodigo_Produto: TIntegerField;
    qryImpressaoPedidoVendaItensQuantidade: TSingleField;
    qryImpressaoPedidoVendaItensValor_Unitario: TSingleField;
    qryImpressaoPedidoVendaItensValor_Total: TSingleField;
    qryImpressaoPedidoVendaItensDescricao_produto: TStringField;
    qryImpressaoPedidoVendaNumero_Pedido: TIntegerField;
    qryImpressaoPedidoVendaData_Emiss: TDateField;
    qryImpressaoPedidoVendaCodigo_Cliente: TIntegerField;
    qryImpressaoPedidoVendaValor_Total: TSingleField;
    qryImpressaoPedidoVendaNome_Cliente: TStringField;
    qryImpressaoPedidoVendaCidade: TStringField;
    qryImpressaoPedidoVendaUf: TStringField;
    qryConsultaPedidos: TFDQuery;
    qryConsultaPedidosNumero_Pedido: TIntegerField;
    qryConsultaPedidosData_Emiss: TDateField;
    qryConsultaPedidosCodigo_Cliente: TIntegerField;
    qryConsultaPedidosValor_Total: TSingleField;
    qryConsultaPedidosNome_Cliente: TStringField;
    qryConsultaPedidosCidade: TStringField;
    qryConsultaPedidosUf: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    procedure ConectarBancoDados;
  public
    { Public declarations }
  end;

var
  dtmPrincipal: TdtmPrincipal;

implementation

uses
  ucDadosConexaoBase, ucDadosConexaoUtil, System.IniFiles, udConsts_Geral;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdtmPrincipal.ConectarBancoDados;
var
  DadosBase: TDataConnect;
  ini: TIniFile;
  db: TDB;
  gsAppPath: String;
begin
  gsAppPath := ExtractFilePath(Application.ExeName);
  if (not FileExists(gsAppPath + _NOME_INI)) then
  begin
    Application.MessageBox(PWideChar('Não é possível conectar a base de dados!' + sLinebreak +
      'Arquivo INI "' + _NOME_INI + '" não encontrado!'), 'Mensagem', MB_OK + MB_ICONWARNING);
    Exit;
  end;

  DadosBase := TDataConnect.Create;
  ini := TIniFile.Create(gsAppPath + _NOME_INI);
  db := TDB.Create;
  try
    DadosBase.CarregarInformacoesArquivoIni(ini);
    try
      db.ConectarBaseDados(DadosBase, conPrincipal, FDPhysMySQLDriverLink1);
    except
      on E:Exception do
      begin
        Application.MessageBox(PWideChar('Problemas ao conectar na base de dados!' + sLineBreak + sLineBreak +
          'Verifique o Arquivo INI "' + _NOME_INI + '" as informações:' + sLineBreak + sLineBreak +
          'Base: ' + DadosBase.Base + sLineBreak +
          'Server: ' + DadosBase.Server + sLineBreak +
          'Usuario: ' + DadosBase.Usuario + sLineBreak +
          'Senha: ' + DadosBase.Senha + sLineBreak + sLineBreak +
          'Erro: ' +  E.Message), 'Mensagem', MB_OK + MB_ICONWARNING);
      end;
    end;
  finally
    DadosBase.DisposeOf;
    ini.DisposeOf;
    db.DisposeOf;
  end;
end;

procedure TdtmPrincipal.DataModuleCreate(Sender: TObject);
begin
  ConectarBancoDados;
end;

end.

unit ucCadastrosOperacoesClass;

interface

uses
  Vcl.Controls, Vcl.Forms, System.Classes, System.SysUtils, Vcl.DBCtrls,
  Winapi.Windows, Vcl.Dialogs,
  uiCadastrosOperacoes, uFrCadastroProdutos, uFrCadastroClientes,
  udmPrincipal, FireDAC.Stan.Param, Data.DB;

type
  TCadastrosOperacoes = class(TInterfacedObject,
    ICadastrosOperacoes)
  private
    FCadastroProdutos: ICadastrosOperacoesCadastroProdutos;
    FCadastroClientes: ICadastrosOperacoesCadastroClientes;

    function GetCadastroProdutos: ICadastrosOperacoesCadastroProdutos;
    function GetCadastroClientes: ICadastrosOperacoesCadastroClientes;
  public
    property CadastroProdutos: ICadastrosOperacoesCadastroProdutos read GetCadastroProdutos;
    property CadastroClientes: ICadastrosOperacoesCadastroClientes read GetCadastroClientes;
  end;

  TCadastrosOperacoesFactory = class(TInterfacedObject,
    ICadastrosOperacoesFactory)
    function Construir: ICadastrosOperacoes;
  end;

  // Produtos
  TCadastrosOperacoesCadastroProdutos = class(TInterfacedObject,
    ICadastrosOperacoesCadastroProdutos)
  private
    FFrameCadastroProdutos: TFrCadastroProdutos;

    procedure GravarProduto(Sender: TObject);
    function InformacoesValidasParaGravarProduto: Boolean;
  public
    procedure Exibir(ControlContainer: TWinControl);
    procedure Ocultar;

    constructor Create;
    destructor Destroy; override;
  end;

  TCadastrosOperacoesCadastroProdutosFactory = class(TInterfacedObject,
    ICadastrosOperacoesCadastroProdutosFactory)
  public
    function Construir: ICadastrosOperacoesCadastroProdutos;
  end;

  // Clientes
  TCadastrosOperacoesCadastroClientes = class(TInterfacedObject,
    ICadastrosOperacoesCadastroClientes)
  private
    FFrameCadastroClientes: TFrCadastroClientes;

    procedure GravarCliente(Sender: TObject);
    function InformacoesValidasParaGravarCliente: Boolean;
  public
    procedure Exibir(ControlContainer: TWinControl);
    procedure Ocultar;

    constructor Create;
    destructor Destroy; override;
  end;

  TCadastrosOperacoesCadastroClientesFactory = class(TInterfacedObject,
    ICadastrosOperacoesCadastroClientesFactory)
  public
    function Construir: ICadastrosOperacoesCadastroClientes;
  end;

implementation

uses
  uUtil;

{ TCadastrosOperacoes }

function TCadastrosOperacoes.GetCadastroClientes: ICadastrosOperacoesCadastroClientes;
var
  Factory: TCadastrosOperacoesCadastroClientesFactory;
begin
  if not Assigned(FCadastroClientes) then
  begin
    Factory := TCadastrosOperacoesCadastroClientesFactory.Create;
    try
      FCadastroClientes := Factory.Construir;
    finally
      Factory.DisposeOf;
    end;
  end;

  result := FCadastroClientes;
end;

function TCadastrosOperacoes.GetCadastroProdutos: ICadastrosOperacoesCadastroProdutos;
var
  Factory: TCadastrosOperacoesCadastroProdutosFactory;
begin
  if not Assigned(FCadastroProdutos) then
  begin
    Factory := TCadastrosOperacoesCadastroProdutosFactory.Create;
    try
      FCadastroProdutos := Factory.Construir;
    finally
      Factory.DisposeOf;
    end;
  end;

  result := FCadastroProdutos;
end;

procedure TCadastrosOperacoesCadastroProdutos.GravarProduto(Sender: TObject);
begin
  if InformacoesValidasParaGravarProduto then
  begin
    if (dtmPrincipal.qryCadastroProdutos.State in dsEditModes) then
      dtmPrincipal.qryCadastroProdutos.Cancel;

    dtmPrincipal.qryCadastroProdutos.Insert;
    dtmPrincipal.qryCadastroProdutos.FieldByName('Codigo').AsString := FFrameCadastroProdutos.edtCodigoProduto.Text;
    dtmPrincipal.qryCadastroProdutos.FieldByName('Descricao').AsString := FFrameCadastroProdutos.edtDescricaoProduto.Text;
    if Trim(FFrameCadastroProdutos.edtPrecoVenda.Text) <> '' then
      dtmPrincipal.qryCadastroProdutos.FieldByName('Preco_Venda').AsFloat := StrToFloat(TUtil.ExtraiCurrency(FFrameCadastroProdutos.edtPrecoVenda.Text));
    dtmPrincipal.qryCadastroProdutos.Post;
    try
      dtmPrincipal.tranPrincipal.StartTransaction;

      dtmPrincipal.qryCadastroProdutos.ApplyUpdates(0);
      dtmPrincipal.tranPrincipal.Commit;

      dtmPrincipal.qryCadastroProdutos.Close;
      dtmPrincipal.qryCadastroProdutos.Open;

      FFrameCadastroProdutos.edtCodigoProduto.Text := '';
      FFrameCadastroProdutos.edtDescricaoProduto.Text := '';
      FFrameCadastroProdutos.edtPrecoVenda.Text := '';

      TUtil.SetarFocoControle(FFrameCadastroProdutos.edtCodigoProduto);

      Application.MessageBox('Produto gravado com sucesso!', 'Informação', 0);
    except
      on E: Exception do
      begin
        Application.MessageBox(PWideChar('Erro ao gravar produto: ' + E.Message), 'Erro', 0);
        dtmPrincipal.tranPrincipal.Rollback;
      end;
    end;
  end;
end;

function TCadastrosOperacoesCadastroProdutos.InformacoesValidasParaGravarProduto: Boolean;
begin
  Result := False;
  if StrToIntDef(FFrameCadastroProdutos.edtCodigoProduto.Text, 0) = 0 then
  begin
    Application.MessageBox('Necessário informar o código do produto!', 'Informação', 0);

    TUtil.SetarFocoControle(FFrameCadastroProdutos.edtCodigoProduto);
  end
  else
  if Trim(FFrameCadastroProdutos.edtDescricaoProduto.Text) = '' then
  begin
    Application.MessageBox('Necessário informar a descrição do produto!', 'Informação', 0);

    TUtil.SetarFocoControle(FFrameCadastroProdutos.edtDescricaoProduto);
  end
  else
    Result := True;
end;

constructor TCadastrosOperacoesCadastroProdutos.Create;
begin
  FFrameCadastroProdutos := TFrCadastroProdutos.Create(Application);
end;

destructor TCadastrosOperacoesCadastroProdutos.Destroy;
begin

  inherited;
end;

procedure TCadastrosOperacoesCadastroProdutos.Exibir(ControlContainer: TWinControl);
begin
  FFrameCadastroProdutos.dsoCadProdutos.DataSet := dtmPrincipal.qryCadastroProdutos;

  dtmPrincipal.qryCadastroProdutos.Close;
  dtmPrincipal.qryCadastroProdutos.Open;

  FFrameCadastroProdutos.btnGravar.OnClick := GravarProduto;
  //FFrameCadastroProdutos.btnExcluir.OnClick := ExcluirProduto;
  //FFrameCadastroProdutos.btnEditar.OnClick := EditarProduto;

  FFrameCadastroProdutos.Parent := ControlContainer;
  FFrameCadastroProdutos.Align := TAlign.alClient;
  FFrameCadastroProdutos.Visible := True;

  TUtil.SetarFocoControle(FFrameCadastroProdutos.edtCodigoProduto);
end;

procedure TCadastrosOperacoesCadastroProdutos.Ocultar;
begin
  FFrameCadastroProdutos.Visible := False;
end;

{ TCadastrosOperacoesCadastroProdutosFactory }

function TCadastrosOperacoesCadastroProdutosFactory.Construir: ICadastrosOperacoesCadastroProdutos;
begin
  Result := TCadastrosOperacoesCadastroProdutos.Create;
end;

{ TCadastrosOperacoesFactory }

function TCadastrosOperacoesFactory.Construir: ICadastrosOperacoes;
begin
  result := TCadastrosOperacoes.Create;
end;

{ TCadastrosOperacoesCadastroClientes }

constructor TCadastrosOperacoesCadastroClientes.Create;
begin
  FFrameCadastroClientes := TFrCadastroClientes.Create(Application);
end;

destructor TCadastrosOperacoesCadastroClientes.Destroy;
begin

  inherited;
end;

procedure TCadastrosOperacoesCadastroClientes.Exibir(
  ControlContainer: TWinControl);
begin
  FFrameCadastroClientes.dsoCadClientes.DataSet := dtmPrincipal.qryCadastroClientes;

  dtmPrincipal.qryCadastroClientes.Close;
  dtmPrincipal.qryCadastroClientes.Open;

  FFrameCadastroClientes.btnGravar.OnClick := GravarCliente;
  //FFrameCadastroClientes.btnExcluir.OnClick := ExcluirProduto;
  //FFrameCadastroClientes.btnEditar.OnClick := EditarProduto;

  FFrameCadastroClientes.Parent := ControlContainer;
  FFrameCadastroClientes.Align := TAlign.alClient;
  FFrameCadastroClientes.Visible := True;

  TUtil.SetarFocoControle(FFrameCadastroClientes.edtCodigoCliente);
end;

procedure TCadastrosOperacoesCadastroClientes.GravarCliente(Sender: TObject);
begin
  if InformacoesValidasParaGravarCliente then
  begin
    if (dtmPrincipal.qryCadastroClientes.State in dsEditModes) then
      dtmPrincipal.qryCadastroClientes.Cancel;

    dtmPrincipal.qryCadastroClientes.Insert;
    dtmPrincipal.qryCadastroClientes.FieldByName('Codigo').AsString := FFrameCadastroClientes.edtCodigoCliente.Text;
    dtmPrincipal.qryCadastroClientes.FieldByName('Nome').AsString := FFrameCadastroClientes.edtNomeCliente.Text;

    if Trim(FFrameCadastroClientes.edtNomeCidade.Text) <> '' then
      dtmPrincipal.qryCadastroClientes.FieldByName('Cidade').AsString := Trim(FFrameCadastroClientes.edtNomeCidade.Text);

    if Trim(FFrameCadastroClientes.edtUF.Text) <> '' then
      dtmPrincipal.qryCadastroClientes.FieldByName('UF').AsString := Trim(FFrameCadastroClientes.edtUF.Text);
    dtmPrincipal.qryCadastroClientes.Post;
    try
      dtmPrincipal.tranPrincipal.StartTransaction;

      dtmPrincipal.qryCadastroClientes.ApplyUpdates(0);
      dtmPrincipal.tranPrincipal.Commit;

      dtmPrincipal.qryCadastroClientes.Close;
      dtmPrincipal.qryCadastroClientes.Open;

      FFrameCadastroClientes.edtCodigoCliente.Text := '';
      FFrameCadastroClientes.edtNomeCliente.Text := '';
      FFrameCadastroClientes.edtNomeCidade.Text := '';
      FFrameCadastroClientes.edtUF.Text := '';

      TUtil.SetarFocoControle(FFrameCadastroClientes.edtCodigoCliente);

      Application.MessageBox('Cliente gravado com sucesso!', 'Informação', 0);
    except
      on E: Exception do
      begin
        Application.MessageBox(PWideChar('Erro ao gravar cliente: ' + E.Message), 'Erro', 0);
        dtmPrincipal.tranPrincipal.Rollback;
      end;
    end;
  end;
end;

function TCadastrosOperacoesCadastroClientes.InformacoesValidasParaGravarCliente: Boolean;
begin
  Result := False;
  if StrToIntDef(FFrameCadastroClientes.edtCodigoCliente.Text, 0) = 0 then
  begin
    Application.MessageBox('Necessário informar o código do cliente!', 'Informação', 0);

    TUtil.SetarFocoControle(FFrameCadastroClientes.edtCodigoCliente);
  end
  else
  if Trim(FFrameCadastroClientes.edtNomeCliente.Text) = '' then
  begin
    Application.MessageBox('Necessário informar o nome do cliente!', 'Informação', 0);

    TUtil.SetarFocoControle(FFrameCadastroClientes.edtNomeCliente);
  end
  else
    Result := True;
end;

procedure TCadastrosOperacoesCadastroClientes.Ocultar;
begin
  FFrameCadastroClientes.Visible := False;
end;

{ TCadastrosOperacoesCadastroClientesFactory }

function TCadastrosOperacoesCadastroClientesFactory.Construir: ICadastrosOperacoesCadastroClientes;
begin
  Result := TCadastrosOperacoesCadastroClientes.Create;
end;

end.

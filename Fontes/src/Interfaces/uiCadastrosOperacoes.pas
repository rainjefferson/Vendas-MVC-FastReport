unit uiCadastrosOperacoes;

interface

uses
  Vcl.Controls;

type
  /// Interface de operações com cadastros de produtos - Declaração antecipada para compatibilidade
  ICadastrosOperacoesCadastroProdutos = interface;
  ICadastrosOperacoesCadastroClientes = interface;

  /// Interface de operações com cadastros
  ICadastrosOperacoes = interface(IInterface)
    ['{EF76F60C-43DF-4E3E-A8CA-E3CF31B90290}']
    function GetCadastroProdutos: ICadastrosOperacoesCadastroProdutos;
    function GetCadastroClientes: ICadastrosOperacoesCadastroClientes;

    property CadastroProdutos: ICadastrosOperacoesCadastroProdutos read GetCadastroProdutos;
    property CadastroClientes: ICadastrosOperacoesCadastroClientes read GetCadastroClientes;
  end;

  /// Interface de fábrica de objetos para operações com cadastros
  ICadastrosOperacoesFactory = interface(IInterface)
    ['{4C7422E2-EDDD-4355-9DA9-C6F239D60A93}']
    function Construir: ICadastrosOperacoes;
  end;

  /// Interface de operações com cadastro de produtos
  ICadastrosOperacoesCadastroProdutos = interface(IInterface)
    ['{D104D3DF-4B6A-43BE-A7B2-102E80AE7C0A}']
    procedure Exibir(ControlContainer: TWinControl);
    procedure Ocultar;
  end;

  /// Interface de operações com cadastro de clientes
  ICadastrosOperacoesCadastroClientes = interface(IInterface)
    ['{B00DFB45-5887-43E2-B72D-A8F00C8E0D3A}']
    procedure Exibir(ControlContainer: TWinControl);
    procedure Ocultar;
  end;

  /// Interface de fábrica de objetos de operações de cadastro de produtos
  ICadastrosOperacoesCadastroProdutosFactory = interface(IInterface)
    ['{1EC4C61F-CBB1-46B2-8E3B-51ABD61C77AE}']
    function Construir: ICadastrosOperacoesCadastroProdutos;
  end;

  /// Interface de fábrica de objetos de operações de cadastro de clientes
  ICadastrosOperacoesCadastroClientesFactory = interface(IInterface)
    ['{56A82EDC-8B12-4219-AC3A-9396419CB644}']
    function Construir: ICadastrosOperacoesCadastroClientes;
  end;

implementation

end.

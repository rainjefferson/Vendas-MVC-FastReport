unit uiVendasOperacoes;

interface

uses
  Vcl.Controls;

type
  /// Interface de operações com pedido de vendas - Declaração antecipada para co´mpatibilidade
  IVendasOperacoesPedidosVenda = interface;

  /// Interface de operações com vendas
  IVendasOperacoes = interface(IInterface)
    ['{54DDA445-E5A4-44DE-AB21-C92B0E71674A}']
    function GetPedidosVenda: IVendasOperacoesPedidosVenda;

    property PedidosVenda: IVendasOperacoesPedidosVenda read GetPedidosVenda;
  end;

  /// Interface de fábrica de objetos para operações com vendas
  IVendasOperacoesFactory = interface(IInterface)
    ['{AD88C018-DD7E-4312-AF8B-9A84314F5814}']
    function Construir: IVendasOperacoes;
  end;

  /// Interface de operações com pedido de vendas
  IVendasOperacoesPedidosVenda = interface(IInterface)
    ['{194C7526-5604-4C77-B398-0DC7D70A89D7}']
    procedure Exibir(ControlContainer: TWinControl);
    procedure Ocultar;
  end;

  /// Interface de Fábrica de objetos de operações de pedido de vendas
  IVendasOperacoesPedidosVendaFactory = interface(IInterface)
    ['{05EE5298-DF75-4220-9354-C292EBAA591A}']
    function Construir: IVendasOperacoesPedidosVenda;
  end;

implementation

end.

unit udmImpressao;

interface

uses
  System.SysUtils, System.Classes, frxClass, frxDBSet;

type
  TdtmImpressao = class(TDataModule)
    frxRptPedidoVenda: TfrxReport;
    frxDBDtsPedidoVenda: TfrxDBDataset;
    frxDBDtsPedidoVendaItens: TfrxDBDataset;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmImpressao: TdtmImpressao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses udmPrincipal;

{$R *.dfm}

end.

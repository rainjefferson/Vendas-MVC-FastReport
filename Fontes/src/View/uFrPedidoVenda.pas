unit uFrPedidoVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TFrPedidoVenda = class(TFrame)
    Panel1: TPanel;
    Panel2: TPanel;
    btnGravarPedido: TButton;
    dbgrdItensPedido: TDBGrid;
    dsoPedidoVenda: TDataSource;
    btnConsultarPedido: TButton;
    btnCancelarPedido: TButton;
    Panel3: TPanel;
    dbedtTotalPedido: TDBEdit;
    Panel4: TPanel;
    dbedtCodigoCliente: TDBEdit;
    edtNomeCliente: TEdit;
    Label1: TLabel;
    dbedtNumeroPedido: TDBEdit;
    btnGravarItem: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    dsoPedidoVendaItens: TDataSource;
    edtCodigoProduto: TEdit;
    edtQuantidade: TEdit;
    edtValorUnitario: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Panel5: TPanel;
    Label7: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.

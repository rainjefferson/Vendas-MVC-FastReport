unit uFrCadastroProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TFrCadastroProdutos = class(TFrame)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    btnGravar: TButton;
    edtCodigoProduto: TEdit;
    Label2: TLabel;
    edtDescricaoProduto: TEdit;
    Label3: TLabel;
    edtPrecoVenda: TEdit;
    Label4: TLabel;
    dbgrdCadProdutos: TDBGrid;
    btnEditar: TButton;
    btnExcluir: TButton;
    dsoCadProdutos: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.

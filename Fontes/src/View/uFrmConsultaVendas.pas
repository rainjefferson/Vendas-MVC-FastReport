unit uFrmConsultaVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls;

type
  TFrmConsultaVendas = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    edtNrPedido: TEdit;
    Label1: TLabel;
    Button1: TButton;
    dbgrdConsultaVendas: TDBGrid;
    dsoConsultaVendas: TDataSource;
    btnFechar: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaVendas: TFrmConsultaVendas;

implementation

{$R *.dfm}

end.

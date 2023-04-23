unit ucVendasHelper;

interface

uses
 uiVendasOperacoes, ucVendasOperacoesClass;

type
  TVendasHelper = class(TObject)
  private
    class var FOperacao: IVendasOperacoes;
  protected
    class function GetOperacao: IVendasOperacoes; static;
  public
    class property Operacao: IVendasOperacoes read GetOperacao;
  end;

implementation

{ TVendasHelper }

class function TVendasHelper.GetOperacao: IVendasOperacoes;
var
  Factory: TVendasOperacoesFactory;
begin
  if not Assigned(FOperacao) then
  begin
    Factory := TVendasOperacoesFactory.Create;
    try
      FOperacao := Factory.Construir;
    finally
      Factory.DisposeOf;
    end;
  end;

  result := FOperacao;
end;

end.

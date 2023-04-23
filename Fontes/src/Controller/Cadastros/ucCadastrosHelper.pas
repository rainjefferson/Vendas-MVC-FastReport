unit ucCadastrosHelper;

interface

uses
  uiCadastrosOperacoes, ucCadastrosOperacoesClass;

type
  TCadastrosHelper = class(TObject)
  private
    class var FOperacao: ICadastrosOperacoes;
  protected
    class function GetOperacao: ICadastrosOperacoes; static;
  public
    class property Operacao: ICadastrosOperacoes read GetOperacao;
  end;

implementation

{ TCadastrosHelper }

class function TCadastrosHelper.GetOperacao: ICadastrosOperacoes;
var
  Factory: TCadastrosOperacoesFactory;
begin
  if not Assigned(FOperacao) then
  begin
    Factory := TCadastrosOperacoesFactory.Create;
    try
      FOperacao := Factory.Construir;
    finally
      Factory.DisposeOf;
    end;
  end;

  result := FOperacao;
end;

end.

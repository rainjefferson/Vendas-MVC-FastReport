unit uUtil;

interface

uses
  Vcl.Controls, System.Classes, System.SysUtils;

const
  IntegerSet = [#33..#47,#58..#255];
  CurrencySet = [#33..#43,#58..#255];
  StringSet = [#46..#57];

type
  TUtil = class

  private

  public
    class procedure SetarFocoControle(oControle: TWinControl);
    class function ExtraiCurrency(const Str: String): String;
    class function ExtraiNumeros(const Str: String): String;
    class function ExtraiLetras(const Str: String): String;
  end;

implementation

{ TUtil }

function ExtractStringsOnly(_Separators: TSysCharSet; const Str: String): String;
var
  lista: TStrings;
begin
  lista := TStringList.Create;
  try
    lista.Delimiter := #0;
    ExtractStrings(_Separators, [], pchar(Str), lista);
    lista.StrictDelimiter := True;
    lista.QuoteChar := #0;
    Result := StringReplace(lista.DelimitedText, lista.Delimiter, EmptyStr, [rfReplaceAll]);
  finally
    lista.Free;
  end;
end;

class function TUtil.ExtraiCurrency(const Str: String): String;
begin
  Result := ExtractStringsOnly(CurrencySet, Str);
end;

class function TUtil.ExtraiLetras(const Str: String): String;
begin
  Result := ExtractStringsOnly(StringSet, Str);
end;

class function TUtil.ExtraiNumeros(const Str: String): String;
begin
  Result := ExtractStringsOnly(IntegerSet, Str);
end;

class procedure TUtil.SetarFocoControle(oControle: TWinControl);
begin
  if Assigned(oControle) and oControle.CanFocus then
    oControle.SetFocus;
end;

end.

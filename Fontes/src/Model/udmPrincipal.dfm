object dtmPrincipal: TdtmPrincipal
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 477
  Width = 572
  object conPrincipal: TFDConnection
    Params.Strings = (
      'Database=sistema_vendas'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 48
    Top = 32
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 384
    Top = 32
  end
  object cdsPedidos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'NUMERO_PEDIDO'
        ParamType = ptInput
        Value = '0'
      end>
    ProviderName = 'dspPedidos'
    Left = 144
    Top = 200
    object cdsPedidosNumero_Pedido: TAutoIncField
      FieldName = 'Numero_Pedido'
    end
    object cdsPedidosData_Emiss: TDateField
      FieldName = 'Data_Emiss'
    end
    object cdsPedidosCodigo_Cliente: TIntegerField
      FieldName = 'Codigo_Cliente'
      Required = True
    end
    object cdsPedidosValor_Total: TSingleField
      FieldName = 'Valor_Total'
      DisplayFormat = ',#0.00'
    end
  end
  object dspPedidos: TDataSetProvider
    DataSet = qryPedidos
    Options = [poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 248
    Top = 200
  end
  object qryPedidos: TFDQuery
    Connection = conPrincipal
    SQL.Strings = (
      'SELECT   '
      '  P.Numero_Pedido,'
      '  p.Data_Emiss,'
      '  p.Codigo_Cliente,'
      '  p.Valor_Total  '
      'FROM pedidos p'
      'WHERE P.Numero_Pedido = :Numero_Pedido'
      ''
      '     ')
    Left = 48
    Top = 200
    ParamData = <
      item
        Name = 'NUMERO_PEDIDO'
        DataType = ftInteger
        ParamType = ptInput
        Value = '0'
      end>
  end
  object cdsItensPedidos: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <
      item
        DataType = ftInteger
        Name = 'NUMERO_PEDIDO'
        ParamType = ptInput
      end>
    ProviderName = 'dspItensPedidos'
    Left = 144
    Top = 264
    object cdsItensPedidosNumero_Pedido: TIntegerField
      FieldName = 'Numero_Pedido'
      Origin = 'Numero do Pedido'
      Required = True
    end
    object cdsItensPedidosCodigo_Produto: TIntegerField
      FieldName = 'Codigo_Produto'
      Origin = 'Codigo do Produto'
      Required = True
    end
    object cdsItensPedidosQuantidade: TSingleField
      FieldName = 'Quantidade'
      Origin = 'Quantidade'
    end
    object cdsItensPedidosValor_Unitario: TSingleField
      FieldName = 'Valor_Unitario'
      Origin = 'Valor Unit'#225'rio'
      DisplayFormat = ',#0.00'
    end
    object cdsItensPedidosValor_Total: TSingleField
      FieldName = 'Valor_Total'
      Origin = 'Valor Total'
      DisplayFormat = ',#0.00'
    end
    object cdsItensPedidosDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'Descri'#231#227'o Produto'
      ProviderFlags = []
      Size = 100
    end
    object cdsItensPedidosTotal_Pedido: TAggregateField
      FieldName = 'Total_Pedido'
      Active = True
      DisplayName = ''
      DisplayFormat = ',#0.00'
      Expression = 'SUM(Valor_Total)'
    end
  end
  object dspItensPedidos: TDataSetProvider
    DataSet = qryItensPedidos
    Options = [poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 248
    Top = 264
  end
  object qryItensPedidos: TFDQuery
    Connection = conPrincipal
    SQL.Strings = (
      'SELECT '
      '   i.Numero_Pedido,'
      '   i.Codigo_Produto,'
      '   i.Quantidade,'
      '   i.Valor_Unitario,'
      '   i.Valor_Total,'
      '   t.Descricao'
      'FROM pedidos_itens i'
      '     INNER JOIN pedidos p ON p.Numero_Pedido = i.Numero_Pedido'
      '     INNER JOIN produtos t ON t.Codigo = i.Codigo_Produto'
      'WHERE i.Numero_Pedido = :Numero_Pedido'
      '')
    Left = 48
    Top = 264
    ParamData = <
      item
        Position = 1
        Name = 'NUMERO_PEDIDO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    Left = 256
    Top = 32
  end
  object qryClientes: TFDQuery
    Connection = conPrincipal
    SQL.Strings = (
      'SELECT'
      '    Nome,'
      '    Cidade,'
      '    UF'
      'FROM '
      '    clientes'
      'WHERE'
      '    Codigo = :Codigo '
      ''
      '   ')
    Left = 352
    Top = 208
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = '0'
      end>
    object qryClientesNome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nome'
      Origin = 'Nome'
      Size = 100
    end
    object qryClientesCidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cidade'
      Origin = 'Cidade'
      Size = 100
    end
    object qryClientesUF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UF'
      Origin = 'UF'
      FixedChar = True
      Size = 2
    end
  end
  object qryProdutos: TFDQuery
    Connection = conPrincipal
    SQL.Strings = (
      'SELECT'
      '  Codigo,'
      '  Descricao,'
      '  Preco_Venda'
      'FROM '
      '  Produtos'
      'WHERE'
      '  Codigo = :Codigo')
    Left = 352
    Top = 264
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = '0'
      end>
    object qryProdutosCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = 'Codigo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryProdutosDescricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descricao'
      Origin = 'Descricao'
      Size = 100
    end
    object qryProdutosPreco_Venda: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'Preco_Venda'
      Origin = 'Preco_Venda'
    end
  end
  object qryProximoPedido: TFDQuery
    Connection = conPrincipal
    SQL.Strings = (
      'SELECT IFNULL(MAX(Numero_Pedido),0) + 1 AS prox FROM pedidos')
    Left = 48
    Top = 136
  end
  object qryExcluirPedido: TFDQuery
    Connection = conPrincipal
    SQL.Strings = (
      'DELETE FROM pedidos WHERE Numero_Pedido = :Numero_Pedido ')
    Left = 448
    Top = 208
    ParamData = <
      item
        Name = 'NUMERO_PEDIDO'
        ParamType = ptInput
      end>
  end
  object qryExcluirItensPedido: TFDQuery
    Connection = conPrincipal
    SQL.Strings = (
      'DELETE FROM pedidos_itens WHERE Numero_Pedido = :Numero_Pedido ')
    Left = 448
    Top = 264
    ParamData = <
      item
        Name = 'NUMERO_PEDIDO'
        ParamType = ptInput
      end>
  end
  object tranPrincipal: TFDTransaction
    Connection = conPrincipal
    Left = 136
    Top = 32
  end
  object qryCadastroProdutos: TFDQuery
    CachedUpdates = True
    Connection = conPrincipal
    SQL.Strings = (
      'select * from produtos order by Codigo'
      ' ')
    Left = 48
    Top = 352
  end
  object qryCadastroClientes: TFDQuery
    CachedUpdates = True
    Connection = conPrincipal
    SQL.Strings = (
      'select * from clientes order by Codigo'
      ' ')
    Left = 160
    Top = 352
  end
  object qryImpressaoPedidoVenda: TFDQuery
    Connection = conPrincipal
    SQL.Strings = (
      'SELECT   '
      '  P.Numero_Pedido,'
      '  p.Data_Emiss,'
      '  p.Codigo_Cliente,'
      '  p.Valor_Total,'
      '  c.Nome as Nome_Cliente,'
      '  c.Cidade,'
      '  c.Uf  '
      'FROM pedidos p'
      '     inner join clientes c on (p.codigo_cliente = c.codigo)'
      'WHERE P.Numero_Pedido = :Numero_Pedido')
    Left = 288
    Top = 352
    ParamData = <
      item
        Name = 'NUMERO_PEDIDO'
        DataType = ftString
        ParamType = ptInput
        Value = '0'
      end>
    object qryImpressaoPedidoVendaNumero_Pedido: TIntegerField
      FieldName = 'Numero_Pedido'
      Origin = 'Numero_Pedido'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryImpressaoPedidoVendaData_Emiss: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Data_Emiss'
      Origin = 'Data_Emiss'
    end
    object qryImpressaoPedidoVendaCodigo_Cliente: TIntegerField
      FieldName = 'Codigo_Cliente'
      Origin = 'Codigo_Cliente'
      Required = True
    end
    object qryImpressaoPedidoVendaValor_Total: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Total'
      Origin = 'Valor_Total'
    end
    object qryImpressaoPedidoVendaNome_Cliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nome_Cliente'
      Origin = 'Nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object qryImpressaoPedidoVendaCidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cidade'
      Origin = 'Cidade'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object qryImpressaoPedidoVendaUf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Uf'
      Origin = 'UF'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
  end
  object qryImpressaoPedidoVendaItens: TFDQuery
    Connection = conPrincipal
    SQL.Strings = (
      'SELECT '
      '   i.Numero_Pedido,'
      '   i.Codigo_Produto,'
      '   i.Quantidade,'
      '   i.Valor_Unitario,'
      '   i.Valor_Total,'
      '   t.Descricao as Descricao_produto'
      'FROM pedidos_itens i'
      '     INNER JOIN pedidos p ON p.Numero_Pedido = i.Numero_Pedido'
      '     INNER JOIN produtos t ON t.Codigo = i.Codigo_Produto'
      'WHERE i.Numero_Pedido = :Numero_Pedido')
    Left = 448
    Top = 352
    ParamData = <
      item
        Name = 'NUMERO_PEDIDO'
        DataType = ftString
        ParamType = ptInput
        Value = '0'
      end>
    object qryImpressaoPedidoVendaItensNumero_Pedido: TIntegerField
      FieldName = 'Numero_Pedido'
      Origin = 'Numero_Pedido'
      Required = True
    end
    object qryImpressaoPedidoVendaItensCodigo_Produto: TIntegerField
      FieldName = 'Codigo_Produto'
      Origin = 'Codigo_Produto'
      Required = True
    end
    object qryImpressaoPedidoVendaItensQuantidade: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'Quantidade'
      Origin = 'Quantidade'
    end
    object qryImpressaoPedidoVendaItensValor_Unitario: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Unitario'
      Origin = 'Valor_Unitario'
    end
    object qryImpressaoPedidoVendaItensValor_Total: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Total'
      Origin = 'Valor_Total'
    end
    object qryImpressaoPedidoVendaItensDescricao_produto: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descricao_produto'
      Origin = 'Descricao'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
  object qryConsultaPedidos: TFDQuery
    Connection = conPrincipal
    SQL.Strings = (
      'SELECT   '
      '  P.Numero_Pedido,'
      '  p.Data_Emiss,'
      '  p.Codigo_Cliente,'
      '  p.Valor_Total,'
      '  c.Nome as Nome_Cliente,'
      '  c.Cidade,'
      '  c.Uf  '
      'FROM pedidos p'
      '     inner join clientes c on (p.codigo_cliente = c.codigo)')
    Left = 48
    Top = 416
    object qryConsultaPedidosNumero_Pedido: TIntegerField
      FieldName = 'Numero_Pedido'
      Origin = 'Numero_Pedido'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryConsultaPedidosData_Emiss: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Data_Emiss'
      Origin = 'Data_Emiss'
    end
    object qryConsultaPedidosCodigo_Cliente: TIntegerField
      FieldName = 'Codigo_Cliente'
      Origin = 'Codigo_Cliente'
      Required = True
    end
    object qryConsultaPedidosValor_Total: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'Valor_Total'
      Origin = 'Valor_Total'
      DisplayFormat = '#,0.00'
    end
    object qryConsultaPedidosNome_Cliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nome_Cliente'
      Origin = 'Nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object qryConsultaPedidosCidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cidade'
      Origin = 'Cidade'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object qryConsultaPedidosUf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Uf'
      Origin = 'UF'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
  end
end

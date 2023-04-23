object FrPedidoVenda: TFrPedidoVenda
  Left = 0
  Top = 0
  Width = 911
  Height = 651
  TabOrder = 0
  Visible = False
  object Panel1: TPanel
    Left = 0
    Top = 576
    Width = 911
    Height = 75
    Align = alBottom
    TabOrder = 0
    object btnGravarPedido: TButton
      AlignWithMargins = True
      Left = 800
      Top = 4
      Width = 100
      Height = 67
      Margins.Left = 1
      Margins.Right = 10
      Align = alRight
      Caption = 'Gravar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object btnConsultarPedido: TButton
      AlignWithMargins = True
      Left = 596
      Top = 4
      Width = 100
      Height = 67
      Margins.Left = 1
      Margins.Right = 1
      Align = alRight
      Caption = 'Consultar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object btnCancelarPedido: TButton
      AlignWithMargins = True
      Left = 698
      Top = 4
      Width = 100
      Height = 67
      Margins.Left = 1
      Margins.Right = 1
      Align = alRight
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 911
    Height = 535
    Align = alClient
    TabOrder = 1
    object dbgrdItensPedido: TDBGrid
      Left = 1
      Top = 137
      Width = 909
      Height = 356
      Align = alClient
      DataSource = dsoPedidoVendaItens
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Codigo_Produto'
          Title.Caption = 'Codigo Produto'
          Width = 101
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao'
          Title.Caption = 'Descri'#231#227'o Produto'
          Width = 300
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Quantidade'
          Width = 102
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor_Unitario'
          Title.Caption = 'Valor Unit'#225'rio'
          Width = 109
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor_Total'
          Title.Caption = 'Valor Total'
          Width = 111
          Visible = True
        end>
    end
    object Panel3: TPanel
      Left = 1
      Top = 493
      Width = 909
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        909
        41)
      object Label6: TLabel
        Left = 504
        Top = 6
        Width = 191
        Height = 23
        Anchors = [akTop, akRight]
        Caption = 'Valor Total do Pedido: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 361
      end
      object dbedtTotalPedido: TDBEdit
        AlignWithMargins = True
        Left = 701
        Top = 3
        Width = 198
        Height = 35
        Margins.Right = 10
        Align = alRight
        DataField = 'Total_Pedido'
        DataSource = dsoPedidoVendaItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8421631
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        ExplicitHeight = 31
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 909
      Height = 136
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
      object Label1: TLabel
        Left = 8
        Top = 13
        Width = 158
        Height = 13
        Caption = 'Cliente - [digite o c'#243'digo e Enter]'
      end
      object Label2: TLabel
        Left = 9
        Top = 90
        Width = 89
        Height = 13
        Caption = 'C'#243'digo do Produto'
      end
      object Label3: TLabel
        Left = 136
        Top = 90
        Width = 56
        Height = 13
        Caption = 'Quantidade'
      end
      object Label4: TLabel
        Left = 262
        Top = 90
        Width = 64
        Height = 13
        Caption = 'Valor Unit'#225'rio'
      end
      object Label5: TLabel
        Left = 558
        Top = 0
        Width = 156
        Height = 23
        Caption = 'N'#250'mero do Pedido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object dbedtCodigoCliente: TDBEdit
        Left = 8
        Top = 29
        Width = 121
        Height = 21
        DataField = 'Codigo_Cliente'
        DataSource = dsoPedidoVenda
        TabOrder = 0
      end
      object edtNomeCliente: TEdit
        Left = 131
        Top = 29
        Width = 408
        Height = 21
        TabStop = False
        ReadOnly = True
        TabOrder = 1
      end
      object dbedtNumeroPedido: TDBEdit
        AlignWithMargins = True
        Left = 558
        Top = 29
        Width = 198
        Height = 31
        Margins.Right = 10
        TabStop = False
        DataField = 'Numero_Pedido'
        DataSource = dsoPedidoVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8421631
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object btnGravarItem: TButton
        Left = 604
        Top = 96
        Width = 152
        Height = 34
        Caption = 'Gravar Item'
        TabOrder = 3
      end
      object edtCodigoProduto: TEdit
        Left = 9
        Top = 109
        Width = 105
        Height = 21
        TabOrder = 4
      end
      object edtQuantidade: TEdit
        Tag = 1
        Left = 136
        Top = 109
        Width = 105
        Height = 21
        TabOrder = 5
      end
      object edtValorUnitario: TEdit
        Tag = 2
        Left = 262
        Top = 109
        Width = 105
        Height = 21
        TabOrder = 6
      end
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 911
    Height = 41
    Align = alTop
    TabOrder = 2
    object Label7: TLabel
      AlignWithMargins = True
      Left = 11
      Top = 11
      Width = 142
      Height = 24
      Margins.Left = 10
      Margins.Top = 10
      Margins.Bottom = 5
      Align = alLeft
      Caption = 'Pedido de Venda'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitHeight = 23
    end
  end
  object dsoPedidoVenda: TDataSource
    Left = 224
    Top = 216
  end
  object dsoPedidoVendaItens: TDataSource
    Left = 384
    Top = 224
  end
end

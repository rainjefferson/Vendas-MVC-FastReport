object FrmPrincipalVendas: TFrmPrincipalVendas
  Left = 0
  Top = 0
  Caption = 'Sistema de Vendas'
  ClientHeight = 760
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI Light'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBotoesEsqueda: TPanel
    Left = 0
    Top = 57
    Width = 193
    Height = 703
    Align = alLeft
    TabOrder = 0
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 191
      Height = 41
      Align = alTop
      TabOrder = 0
      object btnPedidoVenda: TButton
        AlignWithMargins = True
        Left = 7
        Top = 4
        Width = 177
        Height = 33
        Margins.Left = 6
        Margins.Right = 6
        Align = alTop
        Caption = 'Pedidos de Venda'
        TabOrder = 0
        OnClick = btnPedidoVendaClick
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 42
      Width = 191
      Height = 41
      Align = alTop
      TabOrder = 1
      object btnCadClientes: TButton
        AlignWithMargins = True
        Left = 7
        Top = 4
        Width = 177
        Height = 33
        Margins.Left = 6
        Margins.Right = 6
        Align = alTop
        Caption = 'Cadastro de Clientes'
        TabOrder = 0
        OnClick = btnCadClientesClick
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 83
      Width = 191
      Height = 41
      Align = alTop
      TabOrder = 2
      object btnCadProdutos: TButton
        AlignWithMargins = True
        Left = 7
        Top = 4
        Width = 177
        Height = 33
        Margins.Left = 6
        Margins.Right = 6
        Align = alTop
        Caption = 'Cadastro de Produtos'
        TabOrder = 0
        OnClick = btnCadProdutosClick
      end
    end
  end
  object pnlProcessos: TPanel
    Left = 193
    Top = 57
    Width = 599
    Height = 703
    Align = alClient
    TabOrder = 1
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 792
    Height = 57
    Align = alTop
    TabOrder = 2
  end
  object MainMenu1: TMainMenu
    Left = 552
    Top = 72
  end
end

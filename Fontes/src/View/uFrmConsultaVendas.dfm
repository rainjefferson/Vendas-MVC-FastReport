object FrmConsultaVendas: TFrmConsultaVendas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta de Vendas'
  ClientHeight = 385
  ClientWidth = 720
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 720
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitTop = -5
    ExplicitWidth = 621
    DesignSize = (
      720
      41)
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 76
      Height = 13
      Caption = 'N'#250'mero Pedido:'
    end
    object edtNrPedido: TEdit
      Left = 98
      Top = 13
      Width = 121
      Height = 21
      NumbersOnly = True
      TabOrder = 0
    end
    object Button1: TButton
      Left = 629
      Top = 10
      Width = 83
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Consultar'
      TabOrder = 1
      ExplicitLeft = 592
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 344
    Width = 720
    Height = 41
    Align = alBottom
    TabOrder = 1
    ExplicitLeft = 200
    ExplicitTop = 176
    ExplicitWidth = 185
    DesignSize = (
      720
      41)
    object btnFechar: TButton
      Left = 621
      Top = 9
      Width = 91
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Fechar'
      TabOrder = 0
      ExplicitLeft = 584
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 41
    Width = 720
    Height = 303
    Align = alClient
    TabOrder = 2
    ExplicitLeft = 184
    ExplicitTop = 64
    ExplicitWidth = 185
    ExplicitHeight = 41
    object dbgrdConsultaVendas: TDBGrid
      Left = 1
      Top = 1
      Width = 718
      Height = 301
      Align = alClient
      DataSource = dsoConsultaVendas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Numero_Pedido'
          Title.Caption = 'N'#250'mero Pedido'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 94
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Data_emiss'
          Title.Caption = 'Emiss'#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 72
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Codigo_Cliente'
          Title.Caption = 'Cod. Cliente'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nome_Cliente'
          Title.Caption = 'Nome Cliente'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 196
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Cidade'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 133
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UF'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 24
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'Valor_Total'
          Title.Alignment = taRightJustify
          Title.Caption = 'Valor Total'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 79
          Visible = True
        end>
    end
  end
  object dsoConsultaVendas: TDataSource
    Left = 416
    Top = 153
  end
end

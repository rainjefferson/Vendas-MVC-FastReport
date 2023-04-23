object FrCadastroProdutos: TFrCadastroProdutos
  Left = 0
  Top = 0
  Width = 897
  Height = 620
  TabOrder = 0
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 897
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      AlignWithMargins = True
      Left = 11
      Top = 11
      Width = 180
      Height = 24
      Margins.Left = 10
      Margins.Top = 10
      Margins.Bottom = 5
      Align = alLeft
      Caption = 'Cadastro de produtos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitHeight = 23
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 897
    Height = 72
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitTop = 43
    object Label2: TLabel
      Left = 11
      Top = 18
      Width = 89
      Height = 13
      Caption = 'C'#243'digo do Produto'
    end
    object Label3: TLabel
      Left = 122
      Top = 18
      Width = 102
      Height = 13
      Caption = 'Descri'#231#227'o do produto'
    end
    object Label4: TLabel
      Left = 439
      Top = 18
      Width = 75
      Height = 13
      Caption = 'Pre'#231'o de Venda'
    end
    object edtCodigoProduto: TEdit
      Left = 11
      Top = 37
      Width = 105
      Height = 21
      NumbersOnly = True
      TabOrder = 0
    end
    object edtDescricaoProduto: TEdit
      Left = 122
      Top = 37
      Width = 311
      Height = 21
      MaxLength = 100
      TabOrder = 1
    end
    object edtPrecoVenda: TEdit
      Tag = 2
      Left = 439
      Top = 37
      Width = 105
      Height = 21
      TabOrder = 2
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 545
    Width = 897
    Height = 75
    Align = alBottom
    TabOrder = 2
    object btnGravar: TButton
      AlignWithMargins = True
      Left = 786
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
    object btnEditar: TButton
      AlignWithMargins = True
      Left = 564
      Top = 4
      Width = 100
      Height = 67
      Margins.Left = 1
      Margins.Right = 10
      Align = alRight
      Caption = 'Editar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      ExplicitTop = 6
    end
    object btnExcluir: TButton
      AlignWithMargins = True
      Left = 675
      Top = 4
      Width = 100
      Height = 67
      Margins.Left = 1
      Margins.Right = 10
      Align = alRight
      Caption = 'Excluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      ExplicitTop = 6
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 113
    Width = 897
    Height = 432
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 3
    object dbgrdCadProdutos: TDBGrid
      Left = 0
      Top = 0
      Width = 897
      Height = 432
      Align = alClient
      DataSource = dsoCadProdutos
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
          FieldName = 'Codigo'
          Title.Caption = 'C'#243'digo do Produto'
          Width = 110
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao'
          Title.Caption = 'Descri'#231#227'o do Produto'
          Width = 312
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Preco_Venda'
          Title.Caption = 'Pre'#231'o de Venda'
          Width = 100
          Visible = True
        end>
    end
  end
  object dsoCadProdutos: TDataSource
    Left = 296
    Top = 281
  end
end

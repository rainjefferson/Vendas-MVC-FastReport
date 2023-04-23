object dtmImpressao: TdtmImpressao
  OldCreateOrder = False
  Height = 193
  Width = 414
  object frxRptPedidoVenda: TfrxReport
    Version = '6.8.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45038.936473634260000000
    ReportOptions.LastChange = 45039.009006006940000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 48
    Top = 56
    Datasets = <
      item
        DataSet = frxDBDtsPedidoVenda
        DataSetName = 'DBPedidoVenda'
      end
      item
        DataSet = frxDBDtsPedidoVendaItens
        DataSetName = 'DBPedidoVendaItens'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Width = 702.992580000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Pedido de venda')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = -0.220470000000000000
          Top = 21.897650000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 45.354360000000000000
        Top = 102.047310000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDtsPedidoVenda
        DataSetName = 'DBPedidoVenda'
        RowCount = 0
        object DBPedidoVendaNumero_Pedido: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 83.149660000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'Numero_Pedido'
          DataSet = frxDBDtsPedidoVenda
          DataSetName = 'DBPedidoVenda'
          Frame.Typ = []
          Memo.UTF8W = (
            '[DBPedidoVenda."Numero_Pedido"]')
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Nr. Pedido:')
          ParentFont = False
        end
        object DBPedidoVendaData_Emiss: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 502.677490000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'Data_Emiss'
          DataSet = frxDBDtsPedidoVenda
          DataSetName = 'DBPedidoVenda'
          Frame.Typ = []
          Memo.UTF8W = (
            '[DBPedidoVenda."Data_Emiss"]')
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 400.630180000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Data Emiss'#227'o:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 83.149660000000000000
          Top = 18.897650000000000000
          Width = 317.480520000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDtsPedidoVenda
          DataSetName = 'DBPedidoVenda'
          Frame.Typ = []
          Memo.UTF8W = (
            '[DBPedidoVenda."Codigo_Cliente"].[DBPedidoVenda."Nome_Cliente"]')
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 400.630180000000000000
          Top = 18.897650000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Cidade:')
          ParentFont = False
        end
        object DBPedidoVendaCidade: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 502.677490000000000000
          Top = 18.897650000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDtsPedidoVenda
          DataSetName = 'DBPedidoVenda'
          Frame.Typ = []
          Memo.UTF8W = (
            '[DBPedidoVenda."Cidade"] - [DBPedidoVenda."Uf"]'
            '')
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 0.779530000000000000
          Top = 45.354360000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 238.110390000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDtsPedidoVendaItens
        DataSetName = 'DBPedidoVendaItens'
        RowCount = 0
        object DBPedidoVendaItensCodigo_Produto: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 1.779530000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'Codigo_Produto'
          DataSet = frxDBDtsPedidoVendaItens
          DataSetName = 'DBPedidoVendaItens'
          Frame.Typ = []
          Memo.UTF8W = (
            '[DBPedidoVendaItens."Codigo_Produto"]')
        end
        object DBPedidoVendaItensDescricao_produto: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 98.267780000000000000
          Width = 279.685220000000000000
          Height = 18.897650000000000000
          DataField = 'Descricao_produto'
          DataSet = frxDBDtsPedidoVendaItens
          DataSetName = 'DBPedidoVendaItens'
          Frame.Typ = []
          Memo.UTF8W = (
            '[DBPedidoVendaItens."Descricao_produto"]')
        end
        object DBPedidoVendaItensQuantidade: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 385.512060000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'Quantidade'
          DataSet = frxDBDtsPedidoVendaItens
          DataSetName = 'DBPedidoVendaItens'
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DBPedidoVendaItens."Quantidade"]')
        end
        object DBPedidoVendaItensValor_Unitario: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 472.441250000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'Valor_Unitario'
          DataSet = frxDBDtsPedidoVendaItens
          DataSetName = 'DBPedidoVendaItens'
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DBPedidoVendaItens."Valor_Unitario"]')
        end
        object DBPedidoVendaItensValor_Total: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 582.047620000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataField = 'Valor_Total'
          DataSet = frxDBDtsPedidoVendaItens
          DataSetName = 'DBPedidoVendaItens'
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DBPedidoVendaItens."Valor_Total"]')
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 45.354360000000000000
        Top = 170.078850000000000000
        Width = 718.110700000000000000
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 0.779530000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clSilver
          Memo.UTF8W = (
            'Itens do Pedido')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Top = 22.677180000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo Produto')
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 1.559060000000000000
          Top = 41.574830000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 105.826840000000000000
          Top = 22.677180000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Descri'#231#227'o Produto')
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 22.677180000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Quantidade')
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 483.779840000000000000
          Top = 22.677180000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Vlr. Unit'#225'rio')
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 623.622450000000000000
          Top = 22.677180000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Vlr. Total')
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 41.574830000000000000
        Top = 283.464750000000000000
        Width = 718.110700000000000000
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 0.559060000000000000
          Top = 1.000000000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 362.834880000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor total:')
          ParentFont = False
        end
        object DBPedidoVendaValor_Total: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 544.252320000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataField = 'Valor_Total'
          DataSet = frxDBDtsPedidoVenda
          DataSetName = 'DBPedidoVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DBPedidoVenda."Valor_Total"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 385.512060000000000000
        Width = 718.110700000000000000
        object Line5: TfrxLineView
          AllowVectorExport = True
          Left = 1.559060000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object frxDBDtsPedidoVenda: TfrxDBDataset
    UserName = 'DBPedidoVenda'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Numero_Pedido=Numero_Pedido'
      'Data_Emiss=Data_Emiss'
      'Codigo_Cliente=Codigo_Cliente'
      'Valor_Total=Valor_Total'
      'Nome_Cliente=Nome_Cliente'
      'Cidade=Cidade'
      'Uf=Uf')
    DataSet = dtmPrincipal.qryImpressaoPedidoVenda
    BCDToCurrency = False
    Left = 160
    Top = 56
  end
  object frxDBDtsPedidoVendaItens: TfrxDBDataset
    UserName = 'DBPedidoVendaItens'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Numero_Pedido=Numero_Pedido'
      'Codigo_Produto=Codigo_Produto'
      'Quantidade=Quantidade'
      'Valor_Unitario=Valor_Unitario'
      'Valor_Total=Valor_Total'
      'Descricao_produto=Descricao_produto')
    DataSet = dtmPrincipal.qryImpressaoPedidoVendaItens
    BCDToCurrency = False
    Left = 288
    Top = 56
  end
end

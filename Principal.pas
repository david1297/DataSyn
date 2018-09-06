unit Principal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  System.ImageList, FMX.ImgList, FMX.StdCtrls, FMX.Edit,
  FMX.Controls.Presentation, Parametros, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.DApt,
  FireDAC.Phys.FBDef, FireDAC.FMXUI.Wait, Data.DB, FireDAC.Comp.Client,
  FMX.DateTimeCtrls, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FMX.ScrollBox, FMX.Memo, System.threading,
  XMLintf, XMLDoc;

type
  TMain = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    SpeedButton1: TSpeedButton;
    ImageList1: TImageList;
    OpenDialog1: TOpenDialog;
    Edit2: TEdit;
    SpeedButton2: TSpeedButton;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label4: TLabel;
    Label5: TLabel;
    ConDestino: TFDConnection;
    Button2: TButton;
    QCust: TFDQuery;
    QCustID_N: TStringField;
    QCustNIT: TStringField;
    QCustACCT: TFloatField;
    QCustACCTP: TFloatField;
    QCustCOMPANY: TStringField;
    QCustADDR1: TStringField;
    QCustADDR2: TStringField;
    QCustCITY: TStringField;
    QCustPAIS: TStringField;
    QCustCONTACT1: TStringField;
    QCustCARGO1: TStringField;
    QCustCONTACT2: TStringField;
    QCustCARGO2: TStringField;
    QCustPHONE1: TStringField;
    QCustEXT1: TStringField;
    QCustPHONE2: TStringField;
    QCustEXT2: TStringField;
    QCustPHONE3: TStringField;
    QCustEXT3: TStringField;
    QCustFAX: TStringField;
    QCustEXT4: TStringField;
    QCustNOTAS: TStringField;
    QCustMEMO: TMemoField;
    QCustACTIVIDAD: TSmallintField;
    QCustGRUPO: TSmallintField;
    QCustCATEGORIA: TSmallintField;
    QCustZONA: TSmallintField;
    QCustTERMS: TStringField;
    QCustTERMSP: TStringField;
    QCustGRAVABLE: TStringField;
    QCustRETENEDOR: TStringField;
    QCustLATE: TStringField;
    QCustCREDITLMT: TFloatField;
    QCustONACCOUNT: TStringField;
    QCustNIVEL: TStringField;
    QCustFUENTE: TSmallintField;
    QCustISSUE1099: TStringField;
    QCustONETIME: TStringField;
    QCustRETIVA: TStringField;
    QCustIVAIN: TStringField;
    QCustAUTORET: TStringField;
    QCustCREDITO: TStringField;
    QCustPLAZO: TStringField;
    QCustCLIENTE: TStringField;
    QCustPROVEEDOR: TStringField;
    QCustOTRO: TStringField;
    QCustEMPLEADO: TStringField;
    QCustVENDEDOR: TStringField;
    QCustICAIN: TStringField;
    QCustRETEICA: TStringField;
    QCustTIPOEMP: TSmallintField;
    QCustCOD_VEND: TStringField;
    QCustIDVEND: TSmallintField;
    QCustPROSPECTO: TStringField;
    QCustDESCUENTO: TFloatField;
    QCustCV: TSmallintField;
    QCustE: TSmallintField;
    QCustS: TSmallintField;
    QCustFECHA_CREACION: TSQLTimeStampField;
    QCustEMAIL: TStringField;
    QCustTIPORETEICA: TStringField;
    QCustDCTADICIONAL: TStringField;
    QCustDEPARTAMENTO: TStringField;
    QCustCOMPANY_EXTENDIDO: TStringField;
    QCustID_TIPOCARTERA: TStringField;
    QCustCOD_NIVEL: TStringField;
    QCustDIAS_GRACIA: TIntegerField;
    QCustUSERNAME: TStringField;
    QCustRETIVA_PROV: TStringField;
    QCustDCTO_AD1: TFloatField;
    QCustDCTO_AD2: TFloatField;
    QCustMEDICO: TStringField;
    QCustIPS: TStringField;
    QCustTIPORETICA_VENTA: TStringField;
    QCustGRAVABLEIP: TStringField;
    QCustTASA_COM: TFloatField;
    QCustCLITIP: TSmallintField;
    QCustEAN_ENTIDAD_COMP: TStringField;
    QCustNUIT: TStringField;
    QCustPORCON: TFloatField;
    QCustIVATEO: TStringField;
    QCustRTIVA100: TStringField;
    QCustTASAAIU: TFloatField;
    QCustNRO_TARJETA: TStringField;
    QCustFECVEN: TSQLTimeStampField;
    QCustCOD_EPS: TStringField;
    QCustCONTEO: TIntegerField;
    QCustTASA_DCTO_PRONTOPAGO: TFloatField;
    QCustRETECREEC: TStringField;
    QCustRETECREEV: TStringField;
    QCustAUTOCREE: TStringField;
    QCustNIIF_CONTA_AUTO_FAC: TStringField;
    QCustCREDITLMTPROV: TFloatField;
    QCustTIPRET: TStringField;
    QCustTIPAUTRET: TStringField;
    QCustINACTIVO: TStringField;
    QCustBANKNO: TStringField;
    QCustCTA_CORRIENTE: TStringField;
    QCustCODIGO_BANCO: TSmallintField;
    QCustAPLICA_RETEFUENTE: TStringField;
    QCustCONTRATO: TStringField;
    QCustVersion: TIntegerField;
    QShipto: TFDQuery;
    QShiptoID_N: TStringField;
    QShiptoSUCCLIENTE: TIntegerField;
    QShiptoDESCRIPCION: TStringField;
    QShiptoCOMPANY: TStringField;
    QShiptoADDR1: TStringField;
    QShiptoADDR2: TStringField;
    QShiptoPHONE1: TStringField;
    QShiptoPHONE2: TStringField;
    QShiptoFAX: TStringField;
    QShiptoEXT1: TStringField;
    QShiptoEXT2: TStringField;
    QShiptoCONTEO: TIntegerField;
    QShiptoZONA: TSmallintField;
    QShiptoID_VEND: TSmallintField;
    QShiptoPAIS: TStringField;
    QShiptoCONTACT1: TStringField;
    QShiptoCARGO1: TStringField;
    QShiptoEMAIL: TStringField;
    QShiptoCIRCUITO: TIntegerField;
    QShiptoCOMUNA: TIntegerField;
    QShiptoBARRIO: TIntegerField;
    QShiptoIMPCONSUMO: TStringField;
    QShiptoDEPARTAMENTO: TStringField;
    QShiptoCITY: TStringField;
    QShiptoRETIVA_PROV: TStringField;
    QShiptoCREDITLMT: TFloatField;
    QShiptoESTADO: TStringField;
    QTributaria: TFDQuery;
    QTributariaID_N: TStringField;
    QTributariaCOMPANY: TStringField;
    QTributariaTDOC: TSmallintField;
    QTributariaCV: TSmallintField;
    QTributariaTIPO_CONTRIBUYENTE: TSmallintField;
    QTributariaPRIMER_NOMBRE: TStringField;
    QTributariaSEGUNDO_NOMBRE: TStringField;
    QTributariaPRIMER_APELLIDO: TStringField;
    QTributariaSEGUNDO_APELLIDO: TStringField;
    QTributariaESTAB_COMERCIAL: TStringField;
    QTributariaPRETRANS: TStringField;
    Panel2: TPanel;
    Memo1: TMemo;
    ProgressBar1: TProgressBar;
    QAcct: TFDQuery;
    QAcctACCT: TFloatField;
    QAcctE: TSmallintField;
    QAcctS: TSmallintField;
    QAcctDESCRIPCION: TStringField;
    QAcctTIPO: TStringField;
    QAcctCLASS: TStringField;
    QAcctCCOST: TSmallintField;
    QAcctBEGDR: TFloatField;
    QAcctBEGCR: TFloatField;
    QAcctOLDDR: TFloatField;
    QAcctOLDCR: TFloatField;
    QAcctCURDR: TFloatField;
    QAcctCURCR: TFloatField;
    QAcctBDGTCAT: TStringField;
    QAcctAJUSTE: TFloatField;
    QAcctCORRECCION: TFloatField;
    QAcctCOD_SUBCUENTA: TStringField;
    QAcctMONETARIO: TStringField;
    QAcctNVEL: TSmallintField;
    QAcctBASERTNCION: TStringField;
    QAcctPORCENRETENCION: TFloatField;
    QAcctCDGOTTL: TIntegerField;
    QAcctCDGOGRPO: TIntegerField;
    QAcctCDGOCNTA: TIntegerField;
    QAcctCDGOSBCNTA: TIntegerField;
    QAcctCDGOAUX: TFloatField;
    QAcctTPOAPLCCION: TStringField;
    QAcctCNCLCION: TStringField;
    QAcctDPRTMNTOCSTO: TStringField;
    QAcctJBNO: TStringField;
    QAcctVNCMNTO: TStringField;
    QAcctCTAS: TStringField;
    QAcctPOSESTFINAN: TFloatField;
    QAcctVALORIPATRIMONIO: TFloatField;
    QAcctMONETARIO_APL: TStringField;
    QAcctUNIVEL: TIntegerField;
    QAcctIDENEG: TFloatField;
    QAcctSBCTAANA: TFloatField;
    QAcctMAYOR_VALOR: TStringField;
    QAcctPLANTILLA_RETENCION: TStringField;
    QAcctFEFECTIVO: TIntegerField;
    QAcctPRIORIDAD: TIntegerField;
    QAcctMATERIALIDAD: TFloatField;
    QAcctMODELO: TSmallintField;
    QAcctNORMA: TIntegerField;
    QAcctCOD_FORMATO: TStringField;
    QAcctCOD_CONCEPTO: TStringField;
    QAcctACTIVIDADES: TStringField;
    QAcctAPLI_IMPUESTO: TStringField;
    QNiifAcct: TFDQuery;
    QNiifAcctACCT: TFloatField;
    QNiifAcctE: TSmallintField;
    QNiifAcctS: TSmallintField;
    QNiifAcctDESCRIPCION: TStringField;
    QNiifAcctTIPO: TStringField;
    QNiifAcctCLASS: TStringField;
    QNiifAcctCCOST: TSmallintField;
    QNiifAcctBEGDR: TFloatField;
    QNiifAcctBEGCR: TFloatField;
    QNiifAcctOLDDR: TFloatField;
    QNiifAcctOLDCR: TFloatField;
    QNiifAcctCURDR: TFloatField;
    QNiifAcctCURCR: TFloatField;
    QNiifAcctBDGTCAT: TStringField;
    QNiifAcctAJUSTE: TFloatField;
    QNiifAcctCORRECCION: TFloatField;
    QNiifAcctCOD_SUBCUENTA: TStringField;
    QNiifAcctMONETARIO: TStringField;
    QNiifAcctNVEL: TSmallintField;
    QNiifAcctBASERTNCION: TStringField;
    QNiifAcctPORCENRETENCION: TFloatField;
    QNiifAcctCDGOTTL: TIntegerField;
    QNiifAcctCDGOGRPO: TIntegerField;
    QNiifAcctCDGOCNTA: TIntegerField;
    QNiifAcctCDGOSBCNTA: TIntegerField;
    QNiifAcctCDGOAUX: TFloatField;
    QNiifAcctTPOAPLCCION: TStringField;
    QNiifAcctCNCLCION: TStringField;
    QNiifAcctDPRTMNTOCSTO: TStringField;
    QNiifAcctJBNO: TStringField;
    QNiifAcctVNCMNTO: TStringField;
    QNiifAcctCTAS: TStringField;
    QNiifAcctPOSESTFINAN: TFloatField;
    QNiifAcctVALORIPATRIMONIO: TFloatField;
    QNiifAcctMONETARIO_APL: TStringField;
    QNiifAcctUNIVEL: TIntegerField;
    QNiifAcctIDENEG: TFloatField;
    QNiifAcctSBCTAANA: TFloatField;
    QNiifAcctMAYOR_VALOR: TStringField;
    QNiifAcctPLANTILLA_RETENCION: TStringField;
    QNiifAcctFEFECTIVO: TIntegerField;
    QNiifAcctPRIORIDAD: TIntegerField;
    QNiifAcctMATERIALIDAD: TFloatField;
    QNiifAcctMODELO: TSmallintField;
    QNiifAcctNORMA: TIntegerField;
    QNiifAcctCOD_FORMATO: TStringField;
    QNiifAcctCOD_CONCEPTO: TStringField;
    QNiifAcctACTIVIDADES: TStringField;
    QNiifAcctAPLI_IMPUESTO: TStringField;
    QNiifAcctPRIORIDAD_ORDENA: TIntegerField;
    QNiifAcctORDENAMIENTO: TIntegerField;
    QNiifAcctEQUIVALENCIA: TFloatField;
    QItem: TFDQuery;
    QItemUnidad: TFDQuery;
    Qlinea: TFDQuery;
    QGrupo: TFDQuery;
    QSubGrupo: TFDQuery;
    QLista: TFDQuery;
    QItemUnidadITEM: TStringField;
    QItemUnidadFACTOR_C: TFloatField;
    QItemUnidadCOD_UNIDAD: TStringField;
    QItemUnidadPRICE: TFloatField;
    QItemUnidadPRICE1: TFloatField;
    QItemUnidadPRICE2: TFloatField;
    QItemUnidadPRICE3: TFloatField;
    QItemUnidadPRICE4: TFloatField;
    QItemUnidadPRICE5: TFloatField;
    QlineaCODLINEA: TStringField;
    QlineaDESCLINEA: TStringField;
    QListaTIPO: TStringField;
    QListaCODIGO: TSmallintField;
    QListaDESCRIPCION: TStringField;
    QListaOBSERVACION: TStringField;
    QListaPOCEN: TFloatField;
    QListaVALOR: TFloatField;
    QListaACCT: TFloatField;
    QListaMINIMO: TFloatField;
    QListaMAXIMO: TFloatField;
    QListaDPCCEST: TStringField;
    QListaDIASZON: TIntegerField;
    QListaPRORRATA: TStringField;
    QListaUNDREF: TFloatField;
    QGrupoCODGRUPO: TStringField;
    QGrupoCODLINEA: TStringField;
    QGrupoDESCGRUPO: TStringField;
    QGrupoTIEDES: TStringField;
    QSubGrupoCODSUBGRUPO: TStringField;
    QSubGrupoCODGRUPO: TStringField;
    QSubGrupoCODLINEA: TStringField;
    QSubGrupoDESCSUBGRUPO: TStringField;
    QSubGrupoTIEDES: TStringField;
    QSubGrupoPRINTER: TStringField;
    QUnidad: TFDQuery;
    QUnidadCOD_UNIDAD: TStringField;
    QUnidadDESCRIPCION: TStringField;
    QItemITEM: TStringField;
    QItemREVACCT: TFloatField;
    QItemINVACCT: TFloatField;
    QItemCOSACCT: TFloatField;
    QItemITEMMSTR: TStringField;
    QItemDESCRIPCION: TStringField;
    QItemCLASS: TStringField;
    QItemGRUPO: TStringField;
    QItemREF: TStringField;
    QItemIMPOVENTA: TStringField;
    QItemCCOSTO: TSmallintField;
    QItemCCOSTOV: TStringField;
    QItemDEPTO: TSmallintField;
    QItemUOFMSALES: TStringField;
    QItemUOFMORDERS: TStringField;
    QItemFACTOR: TFloatField;
    QItemONORDER: TFloatField;
    QItemPHYSICAL: TFloatField;
    QItemVENDOR: TStringField;
    QItemCOST: TFloatField;
    QItemCOSTU: TFloatField;
    QItemCOSTP: TFloatField;
    QItemPRICE: TFloatField;
    QItemPRICE1: TFloatField;
    QItemPRICE2: TFloatField;
    QItemINQTY: TFloatField;
    QItemINDATE: TSQLTimeStampField;
    QItemOUTQTY: TFloatField;
    QItemOUTDATE: TSQLTimeStampField;
    QItemADJQTY: TFloatField;
    QItemADJDATE: TSQLTimeStampField;
    QItemMTD_ISSUE: TFloatField;
    QItemMTD_RCPTS: TFloatField;
    QItemMTD_ADJ: TFloatField;
    QItemYTD_ISSUE: TFloatField;
    QItemYTD_RCPTS: TFloatField;
    QItemYTD_ADJ: TFloatField;
    QItemINVENTORY: TStringField;
    QItemMINIMO: TFloatField;
    QItemMAXIMO: TFloatField;
    QItemKITLEVEL: TStringField;
    QItemNOTAS: TStringField;
    QItemCOMMENTS: TMemoField;
    QItemTIPO: TStringField;
    QItemESTADO: TStringField;
    QItemQTYSINCOST: TFloatField;
    QItemPESO: TFloatField;
    QItemENPROOR: TFloatField;
    QItemBARRA: TBlobField;
    QItemMARCA: TStringField;
    QItemMODELO: TStringField;
    QItemPRICE3: TFloatField;
    QItemPRICE4: TFloatField;
    QItemPRICE5: TFloatField;
    QItemMARGEN: TFloatField;
    QItemDIAS_GARANTIA_PROVEEDOR: TIntegerField;
    QItemDIAS_GARANTIA_CLIENTE: TIntegerField;
    QItemDESC_MAXP: TFloatField;
    QItemPORC_COMI: TFloatField;
    QItemSERIALES: TStringField;
    QItemUBICACION: TSmallintField;
    QItemDOBLE_UNIDAD: TStringField;
    QItemTIPO_FACTOR: TStringField;
    QItemPESO_PROMEDIO: TFloatField;
    QItemDESVIACION: TFloatField;
    QItemUSAR_DESVIACION: TStringField;
    QItemPESO_CAJA: TFloatField;
    QItemUNIDADES_CAJA: TFloatField;
    QItemDIMENSION: TStringField;
    QItemPROCEDENCIA: TStringField;
    QItemVALORFOB: TFloatField;
    QItemIMPSTOCONSUMO: TFloatField;
    QItemCODNIVEL: TStringField;
    QItemNIVEL: TSmallintField;
    QItemNPRICE1: TSmallintField;
    QItemNPRICE2: TSmallintField;
    QItemNPRICE3: TSmallintField;
    QItemNPRICE4: TSmallintField;
    QItemNPRICE5: TSmallintField;
    QItemREFN: TIntegerField;
    QItemPROMOCION: TStringField;
    QItemFECHAPROMC: TSQLTimeStampField;
    QItemPRECIOIVA: TFloatField;
    QItemOPCIONABC: TStringField;
    QItemCOD_BARRAS: TStringField;
    QItemSUCCLIENTE: TIntegerField;
    QItemTALLA: TStringField;
    QItemCOLOR: TStringField;
    QItemDEVACCT: TFloatField;
    QItemIVA: TSmallintField;
    QItemREFFABRICA: TStringField;
    QItemIMPCONSUMO2: TFloatField;
    QItemDCTADICIONAL: TFloatField;
    QItemMARCADO: TStringField;
    QItemACUMDISPONIBLE: TFloatField;
    QItemACUMCOSTO: TFloatField;
    QItemFECHAUA: TSQLTimeStampField;
    QItemDCTFIJO: TFloatField;
    QItemCOM_COST: TFloatField;
    QItemACCT_PRODUCCION: TFloatField;
    QItemES_CONTROLADO: TStringField;
    QItemVLR_MAX_CONTROLADO: TFloatField;
    QItemFOBFECHA: TSQLTimeStampField;
    QItemFOBFUENTE: TStringField;
    QItemFOBDCT: TFloatField;
    QItemFOBGASTO: TFloatField;
    QItemFOBLOCAL: TFloatField;
    QItemPRICEPROV: TFloatField;
    QItemDCTPROV: TFloatField;
    QItemFACTOR_CONVER_VENTAS: TFloatField;
    QItemFECHA_CREACION: TSQLTimeStampField;
    QItemREFERENCIA_ANTERIOR: TStringField;
    QItemPANIER: TStringField;
    QItemGROUPE: TStringField;
    QItemCRENEAU: TStringField;
    QItemFAMILIA: TStringField;
    QItemDESIGNACION: TStringField;
    QItemDESCRIPCION_PRE: TMemoField;
    QItemDESCRIPCION_PRF: TStringField;
    QItemDESCRIPCION_TECNICA: TMemoField;
    QItemAPLICACION: TMemoField;
    QItemUSO_POR_VEHICULO: TIntegerField;
    QItemPOSICION_ARANCELARIA: TStringField;
    QItemDESPIECE1: TStringField;
    QItemDESPIECE2: TStringField;
    QItemDESPIECE3: TStringField;
    QItemDESPIECE4: TStringField;
    QItemAGOTAR_PR: TStringField;
    QItemUNIDAD_EMBALAJE: TStringField;
    QItemPESO_UNIDAD_EMBALAJE: TFloatField;
    QItemVOL_POR_UNIDAD_EMBALAJE: TFloatField;
    QItemQARTIFICIAL: TFloatField;
    QItemQSUGERIDO: TFloatField;
    QItemPERMANENCIA_QA: TFloatField;
    QItemPERMANENCIA_QS: TFloatField;
    QItemTIEMPOTRANSITO: TFloatField;
    QItemORIGEN: TStringField;
    QItemMARCAORIGEN: TStringField;
    QItemGENERO: TStringField;
    QItemPESO_PROMEDIO_UNI: TFloatField;
    QItemNUM_UNIDADES_POR_CAJA: TFloatField;
    QItemMAN_LOTE: TStringField;
    QItemFACTURABLE: TStringField;
    QItemCONTROLA_DCT: TStringField;
    QItemCOD_POSARANCEL: TStringField;
    QItemDCTTALLER: TFloatField;
    QItemDESC1: TStringField;
    QItemCOD_APLICAC: TStringField;
    QItemREF_INTERC: TStringField;
    QItemESTADOFAB: TStringField;
    QItemREF_SUSTITUTAS: TMemoField;
    QItemMANEJA_TALLA_COLOR: TStringField;
    QItemMANEJA_GRP_IMPRESORA: TStringField;
    QItemIMPRESORA: TStringField;
    QItemPRECIOIVA_MAX: TFloatField;
    QItemPRECIOIVA_MIN: TFloatField;
    QItemCANTIDAD_COLORES: TIntegerField;
    QItemMANEJA_COMBINATORIA: TStringField;
    QItemFECHA_LOTE: TSQLTimeStampField;
    QItemFECHA_LIMITE_LOTE: TSQLTimeStampField;
    QItemINVCMACCT: TFloatField;
    QItemFACTOR_CONVERT_VENTAS: TFloatField;
    QItemPRECIO_UNIDAD: TStringField;
    QItemFLETES: TFloatField;
    QItemTRAMITES_USD: TFloatField;
    QItemMARGEN_U: TFloatField;
    QItemDIAS_ITEM: TIntegerField;
    QItemKILOMETRAJE: TStringField;
    QItemSALDOU: TFloatField;
    QItemSALDOPESOS: TFloatField;
    QItemCOSTP_REF: TFloatField;
    QItemROTCOD: TStringField;
    QItemCRICOD: TStringField;
    QItemFECHAPROMD: TSQLTimeStampField;
    QItemPRECIOPROM: TFloatField;
    QItemPRECIONORM: TFloatField;
    QItemPORCPROM: TFloatField;
    QItemINVACCTE: TFloatField;
    QItemCOSACCTE: TFloatField;
    QItemREVACCTE: TFloatField;
    QItemDEVACCTE: TFloatField;
    QItemTIPO_SERVICIO: TStringField;
    QItemCUM: TStringField;
    QItemTIEDES: TStringField;
    QItemTIETIP: TStringField;
    QItemDIASPROD: TIntegerField;
    QItemRTFITEM: TFloatField;
    QItemRTFTIP: TStringField;
    QItemRTFBASEMIN: TFloatField;
    QItemAPLRTICA: TStringField;
    QItemULTCOSTEA: TFloatField;
    QItemACTIVO: TStringField;
    QItemFACPRECIO1: TFloatField;
    QItemFACPRECIO2: TFloatField;
    QItemMANPESO: TStringField;
    QItemPORC_COMI_REC: TFloatField;
    QItemIMPTOAMOR: TStringField;
    QItemMANEJOAIU: TStringField;
    QItemMANTALLA: TStringField;
    QItemNROPUNTOS: TFloatField;
    QItemNROPTOSDCTO: TFloatField;
    QItemSELPUNTOS: TStringField;
    QItemPTOSXCADA: TFloatField;
    QItemPP_OBLIGATORIO: TStringField;
    QItemPP_HORAFIJA: TStringField;
    QItemIMPCONSUMO3: TFloatField;
    QItemVIDA_UTIL: TIntegerField;
    QItemNIIF_VLRNTR: TFloatField;
    QItemITEM_SERVICIO: TStringField;
    QItemCOSTO_INICIAL: TSingleField;
    QItemNIIF_PRECIO_VENTA_ESTIMADO: TFloatField;
    QItemNIIF_OPCION_COSTO_VENTA: TIntegerField;
    QItemNIIF_PORCENTAJE: TFloatField;
    QItemALTO: TFloatField;
    QItemANCHO: TFloatField;
    QItemLARGO: TFloatField;
    QItemBONOACCT: TFloatField;
    QItemCOSBONOACCT: TFloatField;
    QItemREVBONOACCT: TFloatField;
    QItemDEVBONOACCT: TFloatField;
    QItemDESACCT: TFloatField;
    QItemEDESACCT: TFloatField;
    QItemDESBONOACCT: TFloatField;
    QItemACCTMANDANTE: TFloatField;
    QItemPORCENTAJE_MAND: TFloatField;
    QItemCOD_CURVA: TStringField;
    QItemCUENTA_INV_CONSIG: TFloatField;
    QItemCUENTA_COSTO_CONSIG: TFloatField;
    QItemCUENTA_INGRESO_TRASLADO: TFloatField;
    QItemFORMA_FARMACEUTICA: TStringField;
    QItemCONCENTRACION_MEDICAMENTO: TStringField;
    QItemIMPORTADO: TStringField;
    QNombres: TFDQuery;
    QNombresUSERNAME: TStringField;
    QNombresCLAVE: TStringField;
    QNombresACLEVEL: TStringField;
    QNombresLEVEL1: TStringField;
    QNombresLEVEL2: TStringField;
    QNombresLEVEL3: TStringField;
    QNombresLEVEL4: TStringField;
    QNombresLEVEL5: TStringField;
    QNombresLEVEL6: TStringField;
    QNombresLEVEL7: TStringField;
    QNombresLEVEL8: TStringField;
    QNombresLEVEL9: TStringField;
    QNombresLEVE10: TStringField;
    QNombresLEVEL11: TStringField;
    QNombresTIPO_USUARIO: TStringField;
    QNombresNOMBRE_COMPLETO: TStringField;
    QNombresENCRIPTADO: TStringField;
    QNombresDPTO: TIntegerField;
    QNombresLOCORIGEN: TStringField;
    QNombresLOCDESTINO: TStringField;
    QNombresACTIVO: TStringField;
    QNombresOPCION1: TSmallintField;
    QNombresOPCION2: TSmallintField;
    QNombresOPCION3: TSmallintField;
    QNombresOPCION4: TSmallintField;
    QNombresOPCION5: TSmallintField;
    QNombresOPCION6: TSmallintField;
    QNombresOPCION7: TSmallintField;
    QNombresOPCION8: TSmallintField;
    QNombresFILSUC: TStringField;
    QNombresCOD_PERFIL: TStringField;
    QNombresEMAIL: TStringField;
    QNombresTELEFONO: TStringField;
    QNombresFECHANAC: TSQLTimeStampField;
    QNombresSEXO: TStringField;
    QNombresUSUARIOFACTURA: TStringField;
    QNombresIDVEND: TIntegerField;
    QSeg_Actividades: TFDQuery;
    QSeg_ActividadesMODULO: TStringField;
    QSeg_ActividadesACTIVIDAD: TStringField;
    QSeg_ActividadesTODOS: TStringField;
    QSeg_ActividadesADICIONAR: TStringField;
    QSeg_ActividadesBORRAR: TStringField;
    QSeg_ActividadesEDITAR: TStringField;
    QSeg_ActividadesIMPRIMIR: TStringField;
    QSeg_ActividadesANULAR: TStringField;
    QSeg_ActividadesCONTABILIZAR: TStringField;
    QSeg_ActividadesCONSULTAR: TStringField;
    QSeg_ActividadesEJECUTAR: TStringField;
    QSeg_ActividadesDESCRIPCION_ACT: TStringField;
    QSeg_ActividadesORDEN_ACT: TIntegerField;
    QSeg_ActividadesREIMPRIMIR: TStringField;
    QSeg_Permisos_Act: TFDQuery;
    QSeg_Permisos_ActMODULO: TStringField;
    QSeg_Permisos_ActACTIVIDAD: TStringField;
    QSeg_Permisos_ActUSUARIO: TStringField;
    QSeg_Permisos_ActOP: TStringField;
    QSeg_Permisos_ActCONFIRMAR: TStringField;
    QFactipdoc: TFDQuery;
    QFactipdocID_EMPRESA: TSmallintField;
    QFactipdocID_SUCURSAL: TSmallintField;
    QFactipdocID_USUARIO: TStringField;
    QFactipdocCLIENTEPRED: TStringField;
    QFactipdocCLAVE: TStringField;
    QFactipdocPRXNUM: TIntegerField;
    QFactipdocNUMDESDE: TIntegerField;
    QFactipdocNUMHASTA: TIntegerField;
    QFactipdocCONCPRIMERO: TIntegerField;
    QFactipdocNUMAUTOR: TIntegerField;
    QFactipdocFECHAAUTOR: TSQLTimeStampField;
    QFactipdocLICENCIASW: TStringField;
    QFactipdocNUMAUTORSW: TIntegerField;
    QFactipdocID_PROVSW: TStringField;
    QFactipdocSAF: TStringField;
    QFactipdocQTYPRED: TFloatField;
    QFactipdocBODEGA: TStringField;
    QFactipdocMODIPRECIOS: TStringField;
    QFactipdocDESCUENTOS: TStringField;
    QFactipdocSUBCOSTO: TStringField;
    QFactipdocPREFIJO: TStringField;
    QFactipdocCOPIAS: TSmallintField;
    QFactipdocFORMATO: TStringField;
    QFactipdocLASER: TStringField;
    QFactipdocCALCULA: TStringField;
    QFactipdocSOBRECUPO: TStringField;
    QFactipdocINVNEGATIVO: TStringField;
    QFactipdocDIASMORA: TSmallintField;
    QFactipdocPRECIOIVA: TStringField;
    QFactipdocIMPRIME: TStringField;
    QFactipdocADDITEMS_PEDIDO: TStringField;
    QFactipdocITEMS_MAXIMO: TIntegerField;
    QFactipdocFACTURA_ITEM: TStringField;
    QFactipdocLISTA_PRECIOS: TStringField;
    QFactipdocPIDECAMBIO: TStringField;
    QFactipdocDECIMALES: TStringField;
    QFactipdocCOD_CAJON: TStringField;
    QFactipdocFORMATO1: TStringField;
    QFactipdocTIPODEV: TStringField;
    QFactipdocFORMATO_DEV: TStringField;
    QFactipdocMOD_FORPAGO: TStringField;
    QFactipdocEDITA: TStringField;
    QFactipdocANULA: TStringField;
    QFactipdocCREA_CLIENTES: TStringField;
    QFactipdocCREA_DEVOLUCION: TStringField;
    QFactipdocDEV_EFECTIVO: TStringField;
    QFactipdocDEV_VENDIDOS: TStringField;
    QFactipdocANULA_DEV: TStringField;
    QFactipdocSOBREPEDIDO: TStringField;
    QFactipdocRESERVA: TStringField;
    QFactipdocDESC_ADICIONAL: TStringField;
    QFactipdocPROYECTO: TStringField;
    QFactipdocMANDANTE: TStringField;
    QFactipdocE_DEV: TSmallintField;
    QFactipdocS_DEV: TSmallintField;
    QFactipdocIMPRESIONDIRECTA: TStringField;
    QFactipdocPATHIMPRESIONDIRECTA: TStringField;
    QFactipdocDEVOLCERO: TStringField;
    QFactipdocPRXNUMPP: TIntegerField;
    QFactipdocIMPRIME_ABRE_CAJON: TStringField;
    QFactipdocPUERTO: TStringField;
    QFactipdocBODEGA_PROMOCION: TStringField;
    QFactipdocRANGO_PRECIO: TStringField;
    QFactipdocAUTORIZAR_DESPACHO: TStringField;
    QFactipdocCERRARPARCIALPEDIDO: TStringField;
    QFactipdocMODIF_FECHA: TStringField;
    QFactipdocFORMATO_DEV_CONT: TStringField;
    QFactipdocCERRARPARCIALPEDIDOO: TStringField;
    QFactipdocDCTVALOR: TStringField;
    QFactipdocDCTO_AD1: TStringField;
    QFactipdocREMPARCIAL: TStringField;
    QFactipdocFACDOL: TStringField;
    QFactipdocMODQTY: TStringField;
    QFactipdocFACPLUS: TStringField;
    QFactipdocPRINTFACTQR: TStringField;
    QFactipdocSUGQTYDEV: TStringField;
    QFactipdocFACTTIPO: TStringField;
    QFactipdocPRINT: TStringField;
    QFactipdocUSUNOM: TStringField;
    QFactipdocFECAPE: TStringField;
    QFactipdocVALBASE: TFloatField;
    QFactipdocAPLRET: TStringField;
    QFactipdocAPLOIM: TStringField;
    QFactipdocABRE_CAJON: TStringField;
    QFactipdocPORCENICA: TFloatField;
    QFactipdocPMINTIMBRE: TFloatField;
    QFactipdocPMAXTIMBRE: TFloatField;
    QFactipdocVALIDAFDC: TStringField;
    QFactipdocDPTO: TIntegerField;
    QFactipdocCCOST: TIntegerField;
    QFactipdocCLASEG: TStringField;
    QFactipdocFACMOS: TStringField;
    QFactipdocFACPED: TStringField;
    QFactipdocCONFAC: TStringField;
    QFactipdocADMCLI: TStringField;
    QFactipdocCIEFAC: TStringField;
    QFactipdocADMCAJ: TStringField;
    QFactipdocREPFAC: TStringField;
    QFactipdocMANBASE: TStringField;
    QFactipdocMANBAS: TStringField;
    QFactipdocREDONDEAIVA: TStringField;
    QFactipdocUSUNIT: TStringField;
    QFactipdocCTRLBARRA: TStringField;
    QFactipdocCTRLPESO: TStringField;
    QFactipdocMANDECFACT: TStringField;
    QFactipdocETIQ1: TStringField;
    QFactipdocETIQ2: TStringField;
    QFactipdocETIQ3: TStringField;
    QFactipdocCONFCAJON: TStringField;
    QFactipdocBORRA_DETALLE: TStringField;
    QFactipdocPERMISOPRECIO: TStringField;
    QFactipdocDCTOVALOR: TStringField;
    QFactipdocBODPRED: TStringField;
    QFactipdocPRECIO_CERO: TStringField;
    QFactipdocNUEVA_FACT: TStringField;
    QFactipdocINVNEGATIVOPOS: TStringField;
    QFactipdocMANDANTEVTA: TStringField;
    QFactipdocSINEXISTENCIA: TStringField;
    QFactipdocDCTGLOBAL: TStringField;
    QFactipdocANUFAC: TStringField;
    QFactipdocCREABOTONESCOTIZ: TStringField;
    QFactipdocMODIFICADESCRI: TStringField;
    QFactipdocCONTROLFACVEN: TStringField;
    QFactipdocFACTELECAUTO: TStringField;
    QFactipdocFECHAVENFAC: TSQLTimeStampField;
    QFactipdocFECHAINIFAC: TSQLTimeStampField;
    QFor_Pago: TFDQuery;
    QFor_PagoCONCEPTO: TIntegerField;
    QFor_PagoNUM_CUOTA: TIntegerField;
    QFor_PagoACCT: TFloatField;
    QFor_PagoDESCRIPCION: TStringField;
    QFor_PagoDIAS: TIntegerField;
    QFor_PagoPORCENT: TFloatField;
    QFor_PagoCONTA: TStringField;
    QFor_PagoTIPO: TStringField;
    QFor_PagoCLASE: TStringField;
    QFor_PagoAGRUPA: TStringField;
    QFor_PagoAUTORIZADO: TStringField;
    QFor_PagoPIDEENTIDAD: TStringField;
    QFor_PagoPIDEDOC: TStringField;
    QFor_PagoRECARGO_PRECIO: TFloatField;
    QFor_PagoDIAS_FINANCIACION: TIntegerField;
    QFor_PagoINTERES_FINANCIACION: TFloatField;
    QFor_PagoAPLICARPP: TStringField;
    QFor_PagoPOR_VALOR: TStringField;
    QFor_PagoPAGA_COMISION: TStringField;
    QBancos: TFDQuery;
    QBancosBANKNO: TStringField;
    QBancosCSHACCT: TFloatField;
    QBancosLASERCKS: TStringField;
    QBancosBANKNAME: TStringField;
    QBancosBANKBRANCH: TStringField;
    QBancosBANKADDR: TStringField;
    QBancosBANKCODE: TStringField;
    QBancosBANKENCD: TStringField;
    QBancosCHECKNO: TFloatField;
    QBancosINUSE: TStringField;
    QBancosBANKADDR1: TStringField;
    QBancosCONTACTO1: TStringField;
    QBancosCARGO1: TStringField;
    QBancosCONTACTO2: TStringField;
    QBancosCARGO2: TStringField;
    QBancosTELE1: TStringField;
    QBancosEXT1: TStringField;
    QBancosTELE2: TStringField;
    QBancosEXT2: TStringField;
    QBancosFAX: TStringField;
    QBancosEXT3: TStringField;
    QBancosCODIGO_INSTALACION: TStringField;
    QBancosCODIGO_EMPRESA: TStringField;
    QBancosCUENTA_ORIGEN: TStringField;
    QBancosOFICINA_ORIGEN: TStringField;
    QBancosCODBANCO: TStringField;
    QBancosCODIGO_REGIONAL: TStringField;
    QEquivalencia: TFDQuery;
    QEquivalenciaCODIGO: TIntegerField;
    QEquivalenciaACCT_NIIF: TFloatField;
    QEquivalenciaACCT: TFloatField;
    QEquivalenciaNAT: TStringField;
    Label3: TLabel;
    Label6: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    CheckDocxSuc: TCheckBox;
    Panel3: TPanel;
    GroupBox2: TGroupBox;
    CheckTodos: TCheckBox;
    CheckFacDev: TCheckBox;
    CheckCotizaciones: TCheckBox;
    QOe: TFDQuery;
    QOedet: TFDQuery;
    QPagos: TFDQuery;
    QGl: TFDQuery;
    QItemact: TFDQuery;
    QOeID_EMPRESA: TSmallintField;
    QOeID_SUCURSAL: TSmallintField;
    QOeNUMBER: TIntegerField;
    QOeTIPO: TStringField;
    QOeID_USUARIO: TStringField;
    QOeID_N: TStringField;
    QOeENTITY: TStringField;
    QOeSALESMAN: TSmallintField;
    QOeFECHA: TSQLTimeStampField;
    QOeDUEDATE: TSQLTimeStampField;
    QOeSUBTOTAL: TFloatField;
    QOeCOST: TFloatField;
    QOeSALESTAX: TFloatField;
    QOeFEDTAX: TFloatField;
    QOeDISC1: TFloatField;
    QOeDISC2: TFloatField;
    QOeDISC3: TFloatField;
    QOeSHIPTO1: TStringField;
    QOeSHIPTO2: TStringField;
    QOeSHIPTO4: TStringField;
    QOeSHIPTO6: TStringField;
    QOeONACCOUNT: TStringField;
    QOePRINTED: TStringField;
    QOePOSTED: TStringField;
    QOeCLOSED: TStringField;
    QOePONUMBER: TStringField;
    QOeTERMS: TStringField;
    QOeDES_GLO: TFloatField;
    QOePOR_DES: TFloatField;
    QOeDESTOTAL: TFloatField;
    QOeTOTAL: TFloatField;
    QOeCODSUC: TIntegerField;
    QOeIMPCONSUMO: TFloatField;
    QOeRFAPLICADA: TStringField;
    QOeSHIPTO: TIntegerField;
    QOeTIPO_PEDIDO: TStringField;
    QOeDEV_FACTURA: TIntegerField;
    QOeDEV_TIPOFAC: TStringField;
    QOeDIFERENCIA: TFloatField;
    QOeCODACTIVIDAD: TStringField;
    QOeSERIALES: TStringField;
    QOeOCNUMERO: TStringField;
    QOeLETRAS: TStringField;
    QOeEXPORTADA: TStringField;
    QOeD: TSmallintField;
    QOeNROREMISION: TStringField;
    QOeCODTRANSPORTADOR: TStringField;
    QOeCONDUCTOR: TStringField;
    QOeNITCONDUCTOR: TStringField;
    QOePESO: TFloatField;
    QOeBULTOS: TFloatField;
    QOeDESPACHADOPOR: TStringField;
    QOeCODPROYECTO: TStringField;
    QOeDESCRIPCION_RECETA: TStringField;
    QOeSI: TStringField;
    QOeREVISADO: TStringField;
    QOeFP: TStringField;
    QOeCE: TStringField;
    QOeCC: TStringField;
    QOeVLR_MERCANCIA: TFloatField;
    QOeOTRO: TStringField;
    QOeUNIDADES: TFloatField;
    QOeID_TIPOCARTERA: TStringField;
    QOeDEDUCIBLE_CLENTE: TFloatField;
    QOeID_NDEDUCIBLE: TStringField;
    QOePESO_NETO: TFloatField;
    QOeOTROSCARGOS: TFloatField;
    QOeDEDUCIBLE_CLIENTE: TFloatField;
    QOeCAJA: TStringField;
    QOeSERIALDISCO: TStringField;
    QOePAGOSPORVALOR: TStringField;
    QOeDESCRIP_ORDENPAC: TStringField;
    QOeNRO_ORDENPAC: TStringField;
    QOeCOD_PLACA: TStringField;
    QOeCOMMENTS: TStringField;
    QOeTOTALDEUDA: TFloatField;
    QOeAFECTA_RETENCION: TStringField;
    QOeTOTALDOL: TFloatField;
    QOeVALDEV: TFloatField;
    QOePORCENIVA: TMemoField;
    QOeFORPAGVAL: TMemoField;
    QOeTIMBRE: TFloatField;
    QOeCENICA: TFloatField;
    QOeCONTRACT: TFloatField;
    QOeFORMAS_PAGO: TStringField;
    QOeVALIVABIEN: TFloatField;
    QOeVALIVASER: TFloatField;
    QOeIMPAMOR: TFloatField;
    QOeOBSDESPACHO: TStringField;
    QOeCOMENTA2: TMemoField;
    QOeTOTALCRUCEANTICIPO: TFloatField;
    QOeSALDOANTICIPOS: TFloatField;
    QOeCONNIIF: TStringField;
    QOeCONTAB_NIIF: TStringField;
    QOeCOD_MONEDA: TStringField;
    QOeHORCRE: TStringField;
    QOeCUFE: TStringField;
    QOeENVIADO_DEV: TStringField;
    QOedetCONTEO: TIntegerField;
    QOedetID_EMPRESA: TSmallintField;
    QOedetID_SUCURSAL: TSmallintField;
    QOedetNUMBER: TIntegerField;
    QOedetTIPO: TStringField;
    QOedetID_USUARIO: TStringField;
    QOedetITEM: TStringField;
    QOedetLOCATION: TStringField;
    QOedetIVA: TSmallintField;
    QOedetQTYSHIP: TFloatField;
    QOedetQTYORDER: TFloatField;
    QOedetPRICE: TFloatField;
    QOedetPRICE1: TFloatField;
    QOedetEXTEND: TFloatField;
    QOedetTAXES: TFloatField;
    QOedetCOST: TFloatField;
    QOedetDIAS_GARANTIA: TIntegerField;
    QOedetDCT: TFloatField;
    QOedetTOTALDCT: TFloatField;
    QOedetVLR_IVA: TFloatField;
    QOedetPORC_IVA: TFloatField;
    QOedetCAJAS: TFloatField;
    QOedetPESO_BRUTO: TFloatField;
    QOedetTIPO_FACTOR: TStringField;
    QOedetDOBLE_UNIDAD: TStringField;
    QOedetUSAR_DESVIACION: TStringField;
    QOedetDESVIACIONP: TFloatField;
    QOedetPESO_PROMEDIOI: TFloatField;
    QOedetFALLO: TStringField;
    QOedetPESO_NETO: TFloatField;
    QOedetDESINICIO: TFloatField;
    QOedetDESFINAL: TFloatField;
    QOedetCAJAS_SUGERIDAS: TFloatField;
    QOedetPESO_NETOI: TFloatField;
    QOedetIMPCONSUMO: TFloatField;
    QOedetPRECIOIVA: TFloatField;
    QOedetTIPO_PEDIDO: TStringField;
    QOedetNUMERO_PEDIDO: TIntegerField;
    QOedetSERIALES: TStringField;
    QOedetNOTES: TStringField;
    QOedetDCTADICIONAL: TFloatField;
    QOedetMANDANTE: TStringField;
    QOedetPROYECTO: TStringField;
    QOedetDCTFIJO: TFloatField;
    QOedetCOD_UNIDAD_VENTA: TStringField;
    QOedetFACTOR: TFloatField;
    QOedetKITNO: TStringField;
    QOedetKITDESCRIPCION: TStringField;
    QOedetCOLOR: TStringField;
    QOedetDCTPORVALOR: TFloatField;
    QOedetDCTO_AD1: TFloatField;
    QOedetDCTO_AD2: TFloatField;
    QOedetCOSTO_AJUSTE: TFloatField;
    QOedetVLR_DCTFIJO: TFloatField;
    QOedetVLR_DCT: TFloatField;
    QOedetVLR_DCTOAD1: TFloatField;
    QOedetVLR_DCTOAD2: TFloatField;
    QOedetVLR_DCTOADICIONAL: TFloatField;
    QOedetOCNUMERO: TStringField;
    QOedetCOD_CENTRO: TIntegerField;
    QOedetDESCRIP_CENTRO: TStringField;
    QOedetDIAS_ITEM: TIntegerField;
    QOedetKILOMETRAJES: TIntegerField;
    QOedetPORC_COMI: TFloatField;
    QOedetNOTES1: TStringField;
    QOedetIDN_LOC: TStringField;
    QOedetMARVAL: TFloatField;
    QOedetMARPOR: TFloatField;
    QOedetTOTALDOL: TFloatField;
    QOedetPRECIODOL: TFloatField;
    QOedetACTIVIDAD: TStringField;
    QOedetDPTO: TSmallintField;
    QOedetCCOST: TSmallintField;
    QOedetRTFTIP: TStringField;
    QOedetRTFITEM: TFloatField;
    QOedetRTFBASEMIN: TFloatField;
    QOedetRTFVAL: TFloatField;
    QOedetNUMITEM: TIntegerField;
    QOedetUTIL1: TFloatField;
    QOedetUTIL2: TFloatField;
    QOedetNUMUSU: TStringField;
    QOedetIMPAMOR: TFloatField;
    QOedetITEM2: TStringField;
    QOedetPOSICION: TIntegerField;
    QOedetIDN_PAC: TStringField;
    QOedetCOD_TALLA: TStringField;
    QOedetCOD_COLOR: TStringField;
    QCarpro: TFDQuery;
    QPagosEMPRESA: TSmallintField;
    QPagosSUCURSAL: TSmallintField;
    QPagosNUMERO: TIntegerField;
    QPagosTIPO: TStringField;
    QPagosNUM_CUOTA: TSmallintField;
    QPagosUSUARIO: TStringField;
    QPagosACCT: TFloatField;
    QPagosCONCEPTO: TSmallintField;
    QPagosDESCRIPCION: TStringField;
    QPagosPORC: TFloatField;
    QPagosDIAS: TIntegerField;
    QPagosFECHA: TSQLTimeStampField;
    QPagosNUM_DOC: TStringField;
    QPagosCOD_BANCO: TIntegerField;
    QPagosPLAZA: TStringField;
    QPagosVLR_PAGO: TFloatField;
    QPagosCONTA: TStringField;
    QPagosTIPO_REF: TStringField;
    QPagosREFERENCIA: TIntegerField;
    QPagosID_N: TStringField;
    QPagosNROCRUCE: TIntegerField;
    QPagosTIPOCRUCE: TStringField;
    QPagosCUOTACRUCE: TIntegerField;
    QPagosDPTO: TIntegerField;
    QPagosCC: TIntegerField;
    QPagosVALRECIB: TFloatField;
    QPagosCONTEO: TIntegerField;
    QItemactCONTEO: TIntegerField;
    QItemactLOCATION: TStringField;
    QItemactITEM: TStringField;
    QItemactID_N: TStringField;
    QItemactTIPO: TStringField;
    QItemactBATCH: TIntegerField;
    QItemactFECHA: TSQLTimeStampField;
    QItemactQTY: TFloatField;
    QItemactVALUNIT: TFloatField;
    QItemactVALCDCT: TFloatField;
    QItemactVALCFLE: TFloatField;
    QItemactQTYB: TFloatField;
    QItemactE: TSmallintField;
    QItemactS: TSmallintField;
    QItemactLOTE: TStringField;
    QItemactTOTPARCIAL: TFloatField;
    QItemactPRIORIDAD: TIntegerField;
    QItemactCOLOR: TStringField;
    QItemactAJUSTE: TFloatField;
    QItemactCOSTPAJUSTADO: TFloatField;
    QItemactTOTALAJUSTADO: TFloatField;
    QItemactCOSTOP: TFloatField;
    QItemactSALDOU: TFloatField;
    QItemactSALDOPESOS: TFloatField;
    QItemactNUMITEM: TIntegerField;
    QItemactCOD_TALLA: TStringField;
    QItemactCOD_COLOR: TStringField;
    QItemactQTYREM: TFloatField;
    QItemactQTYPED: TFloatField;
    QItemactBO: TFloatField;
    QItemactRESERVA: TFloatField;
    QItemactTIPOORIGEN: TStringField;
    QItemactNUMBERORIGEN: TIntegerField;
    QItemactNOSERIE: TStringField;
    QItemactLOTEFVENCE: TSQLTimeStampField;
    QItemactNOSERIE2: TStringField;
    QItemactCRUNUM: TIntegerField;
    QItemactCRUTIP: TStringField;
    QItemactCRUREM: TIntegerField;
    QItemactREMTIP: TStringField;
    QGlCONTEO: TIntegerField;
    QGlID_N: TStringField;
    QGlACCT: TFloatField;
    QGlE: TSmallintField;
    QGlS: TSmallintField;
    QGlTIPO: TStringField;
    QGlBATCH: TIntegerField;
    QGlFECHA: TSQLTimeStampField;
    QGlDUEDATE: TSQLTimeStampField;
    QGlINVC: TStringField;
    QGlDEPTO: TSmallintField;
    QGlCCOST: TSmallintField;
    QGlACTIVIDAD: TStringField;
    QGlPERIOD: TStringField;
    QGlDESCRIPCION: TStringField;
    QGlCLOSING: TStringField;
    QGlCONCIL: TStringField;
    QGlCRUCE: TStringField;
    QGlUSERNAME: TStringField;
    QGlDESTINO: TSmallintField;
    QGlPROYECTO: TStringField;
    QGlBASE: TFloatField;
    QGlCREDIT: TFloatField;
    QGlDEBIT: TFloatField;
    QGlCUOTA: TSmallintField;
    QGlPRORRATEADO: TStringField;
    QGlESTADO: TStringField;
    QGlMAYOR_VALOR: TFloatField;
    QGlCOD_FLUJOEFE: TIntegerField;
    QGlCONSEC_CARPRODE: TIntegerField;
    QCarproCONTEO: TIntegerField;
    QCarproID_N: TStringField;
    QCarproACCT: TFloatField;
    QCarproTIPO: TStringField;
    QCarproBATCH: TIntegerField;
    QCarproE: TSmallintField;
    QCarproS: TSmallintField;
    QCarproDESCRIPCION: TStringField;
    QCarproFECHA: TSQLTimeStampField;
    QCarproDUEDATE: TSQLTimeStampField;
    QCarproINVC: TStringField;
    QCarproDEPTO: TSmallintField;
    QCarproCCOST: TSmallintField;
    QCarproACTIVIDAD: TStringField;
    QCarproPERIOD: TStringField;
    QCarproCONCIL: TStringField;
    QCarproCRUCE: TStringField;
    QCarproBENEF: TStringField;
    QCarproABONO: TFloatField;
    QCarproIDVEND: TSmallintField;
    QCarproCONCEPTO: TStringField;
    QCarproUSUARIO: TStringField;
    QCarproTIPO_IMP: TStringField;
    QCarproNRO_IMP: TIntegerField;
    QCarproCONCEPTO_IMP: TIntegerField;
    QCarproSALDO_REPORTE: TFloatField;
    QCarproPROYECTO: TStringField;
    QCarproBANCO: TSmallintField;
    QCarproCHEQUE: TStringField;
    QCarproCONCEPTO_PAGO: TSmallintField;
    QCarproID_TIPOCARTERA: TStringField;
    QCarproCOMENTARIO: TBlobField;
    QCarproCHEQUE_POSTF: TStringField;
    QCarproFECHA_CHEQUE: TSQLTimeStampField;
    QCarproVENCIMIENTO: TSQLTimeStampField;
    QCarproDIAPAGO: TStringField;
    QCarproSALDO: TFloatField;
    QCarproBASE: TFloatField;
    QCarproCREDIT: TFloatField;
    QCarproDEBIT: TFloatField;
    QCarproTASA_CAMBIO: TFloatField;
    QCarproSALDO_US: TFloatField;
    QCarproCREDITO_US: TFloatField;
    QCarproDEBITO_US: TFloatField;
    QCarproCUOTA: TSmallintField;
    QCarproSHIPTO: TIntegerField;
    QCarproFECHA_CONSIG: TSQLTimeStampField;
    QCarproESTADO_DEUDA: TStringField;
    QCarproCOD_FLUJOEFE: TIntegerField;
    QCarproPORC_TASA: TFloatField;
    QCarproTIEMPO_MESES: TFloatField;
    QLoc: TFDQuery;
    QLocLOCALIZACION: TStringField;
    QLocDESCRIPCION: TStringField;
    QLocRESPONSABLE: TStringField;
    QLocTIPOBODEGA: TStringField;
    QLocNITDEFAULT: TStringField;
    QLocACCT_ING: TFloatField;
    QLocACCT_GASTO: TFloatField;
    QLocDESTINO: TIntegerField;
    QLocGEN_CONTA: TStringField;
    QLocID_N: TStringField;
    QLocE: TIntegerField;
    QLocS: TIntegerField;
    QLocTIPO: TStringField;
    QLocBODEST: TStringField;
    QLocWEBSER: TStringField;
    QCotizaci: TFDQuery;
    QCotizaciNUMERO: TIntegerField;
    QCotizaciTIPO: TStringField;
    QCotizaciID_EMPRESA: TSmallintField;
    QCotizaciID_SUCURSAL: TSmallintField;
    QCotizaciID_CLIENTE: TStringField;
    QCotizaciTOTAL: TFloatField;
    QCotizaciSUBTOTAL: TFloatField;
    QCotizaciFORMA_PAGO: TSmallintField;
    QCotizaciSU_SOLICITUD: TSmallintField;
    QCotizaciDP: TSmallintField;
    QCotizaciCC: TSmallintField;
    QCotizaciMEDIO_ENTREGA: TSmallintField;
    QCotizaciMONEDA_COTI: TSmallintField;
    QCotizaciVENDEDOR: TSmallintField;
    QCotizaciTIPO_CAMB_HOY: TFloatField;
    QCotizaciTIPO_CLIENTE: TStringField;
    QCotizaciMEDIO_CONTACTO: TSmallintField;
    QCotizaciCONTACTO: TIntegerField;
    QCotizaciEN_PEDIDO_NO: TIntegerField;
    QCotizaciCIUDAD_PAIS: TStringField;
    QCotizaciOBSERVACIONES: TMemoField;
    QCotizaciDCTO_ADC_P: TFloatField;
    QCotizaciDCTO_ADC_VALOR: TFloatField;
    QCotizaciCOMENTARIO: TMemoField;
    QCotizaciESTADO_N: TSmallintField;
    QCotizaciMOTIVO_APLAZ: TSmallintField;
    QCotizaciFECHA: TSQLTimeStampField;
    QCotizaciFECHA_VEN: TSQLTimeStampField;
    QCotizaciFECHA_ENTREGA: TSQLTimeStampField;
    QCotizaciPROX_LLAMADA: TSQLTimeStampField;
    QCotizaciTOTALDESCTO: TFloatField;
    QCotizaciTOTALIVA: TFloatField;
    QCotizaciANULAR: TIntegerField;
    QCotizaciPROYECTO: TStringField;
    QCotizaciID_USUARIO: TStringField;
    QCotizaciAUTORIZADO: TStringField;
    QCotizaciSHIPTO: TIntegerField;
    QCotizaciCOD_NIVEL: TStringField;
    QCotizaciCOD_MONEDA: TStringField;
    QCotizaciTRM: TFloatField;
    QCotizaciTOTAL_MEXT: TFloatField;
    QCotizaciFECHA_TRM: TSQLTimeStampField;
    QCotizaciIDN_CONTADO: TStringField;
    QCotizaciLETRASING: TStringField;
    QCotizaciIVA_FACTURA: TMemoField;
    QCotizaciCONCEPTOSIVA: TMemoField;
    QCotizaciSUB_FACTURA: TMemoField;
    QCotizaciTOT_FACTURA: TMemoField;
    QCotizaciDESC_FACTURA: TMemoField;
    QCotizaciLISTA_COTIZA: TStringField;
    QCotizaciVALIDEZ: TStringField;
    QCotizaciESTADO: TStringField;
    QCotizaciBONOTOTAL: TSingleField;
    QCotizaciNOMBRECOT: TStringField;
    QDet_Prod: TFDQuery;
    QDet_ProdNUMERO: TIntegerField;
    QDet_ProdCOD_DESC: TStringField;
    QDet_ProdCANTIDAD: TFloatField;
    QDet_ProdDESCRIPCION: TStringField;
    QDet_ProdVLR_UNITARIO: TFloatField;
    QDet_ProdVRL_TOTAL: TFloatField;
    QDet_ProdIVA: TFloatField;
    QDet_ProdIVA_VALOR: TFloatField;
    QDet_ProdDESCTO: TFloatField;
    QDet_ProdTOTAL_PARC: TFloatField;
    QDet_ProdDESCTOP: TFloatField;
    QDet_ProdCOSTOP: TFloatField;
    QDet_ProdCOSTOU: TFloatField;
    QDet_ProdUTIL_P: TFloatField;
    QDet_ProdUTIL_U: TFloatField;
    QDet_ProdDCTFIJO: TFloatField;
    QDet_ProdDCTCLIENTE: TFloatField;
    QDet_ProdDCTADICIONAL: TFloatField;
    QDet_ProdLAMINA: TFloatField;
    QDet_ProdESTILO: TStringField;
    QDet_ProdUNIDADES_POR_JUEGO: TFloatField;
    QDet_ProdLARGO: TFloatField;
    QDet_ProdANCHO: TFloatField;
    QDet_ProdMATERIAL: TStringField;
    QDet_ProdTINTAS: TFloatField;
    QDet_ProdALTO: TFloatField;
    QDet_ProdCARAS: TFloatField;
    QDet_ProdTIPO: TStringField;
    QDet_ProdID_EMPRESA: TSmallintField;
    QDet_ProdID_SUCURSAL: TSmallintField;
    QDet_ProdCONTEO: TIntegerField;
    QDet_ProdTOTALDCT: TFloatField;
    QDet_ProdVLR_UNITARIO_MEXT: TFloatField;
    QDet_ProdCOLOR: TStringField;
    QDet_ProdDCTO_AD1: TFloatField;
    QDet_ProdDCTO_AD2: TFloatField;
    QDet_ProdVLR_DCTFIJO: TFloatField;
    QDet_ProdVLR_DCT: TFloatField;
    QDet_ProdVLR_DCTOAD1: TFloatField;
    QDet_ProdVLR_DCTOAD2: TFloatField;
    QDet_ProdVLR_DCTOADICIONAL: TFloatField;
    QDet_ProdCOD_UNIDAD_VENTA: TStringField;
    QDet_ProdFACTOR: TFloatField;
    QDet_ProdDESCRIPCION_ADIC: TStringField;
    QDet_ProdCOSTO_USD: TFloatField;
    QDet_ProdFLETES_USD: TFloatField;
    QDet_ProdTRAMITES_USD: TFloatField;
    QDet_ProdNACIONALIZACION_USD: TFloatField;
    QDet_ProdPRECIO_VENTA_USD: TFloatField;
    QDet_ProdMARGEN_U: TFloatField;
    QDet_ProdGRAVAMEN_U: TFloatField;
    QDet_ProdVLR_UNIT_SUG: TFloatField;
    QDet_ProdDETITEM: TMemoField;
    QDet_ProdPROYECTO: TStringField;
    QDet_ProdACTIVIDAD: TStringField;
    QDet_ProdDPTO: TIntegerField;
    QDet_ProdCCOST: TIntegerField;
    QDet_ProdCOD_TALLA: TStringField;
    QDet_ProdCOD_COLOR: TStringField;
    QDet_ProdPRECIOIVA: TFloatField;
    QDet_ProdBONO: TStringField;
    QDet_ProdTOTALBONO: TSingleField;
    QDet_ProdCODBARRASCURVA: TStringField;
    CheckRemisiones: TCheckBox;
    QRemisione: TFDQuery;
    QRemisiond: TFDQuery;
    QRemisioneID_EMPRESA: TSmallintField;
    QRemisioneID_SUCURSAL: TSmallintField;
    QRemisioneNUMERO: TIntegerField;
    QRemisioneTIPO: TStringField;
    QRemisioneID_USUARIO: TStringField;
    QRemisioneID_N: TStringField;
    QRemisioneSHIPTO: TIntegerField;
    QRemisioneSALESMAN: TIntegerField;
    QRemisioneFECHA: TSQLTimeStampField;
    QRemisioneSUBTOTAL: TFloatField;
    QRemisioneSALESTAX: TFloatField;
    QRemisioneFEDTAX: TFloatField;
    QRemisioneTERMS: TStringField;
    QRemisioneJOBNO: TStringField;
    QRemisioneDESTOTAL: TFloatField;
    QRemisioneTOTAL: TFloatField;
    QRemisioneCODPROYECTO: TStringField;
    QRemisioneCODACTIVIDAD: TStringField;
    QRemisioneSERIALES: TStringField;
    QRemisioneOCNUMERO: TStringField;
    QRemisioneLETRAS: TStringField;
    QRemisioneEXPORTADA: TStringField;
    QRemisioneD: TSmallintField;
    QRemisioneCODTRANSPORTADOR: TStringField;
    QRemisioneDESPACHADOR: TStringField;
    QRemisioneCONDUCTOR: TStringField;
    QRemisioneNITCONDUCTOR: TStringField;
    QRemisionePESO: TFloatField;
    QRemisioneBULTOS: TFloatField;
    QRemisioneDESPACHADOPOR: TStringField;
    QRemisioneAUTORIZAR: TStringField;
    QRemisioneDOCRESPALDO: TStringField;
    QRemisioneNUMERORESPALDO: TIntegerField;
    QRemisioneTRANSPORTADORA: TStringField;
    QRemisioneORCARGE: TStringField;
    QRemisionePLACAS: TStringField;
    QRemisioneANULADO: TStringField;
    QRemisioneFACTURADO: TStringField;
    QRemisioneUNIDADES: TFloatField;
    QRemisioneFECHA_ENTREGA: TSQLTimeStampField;
    QRemisioneFECHA_DESPACHO: TSQLTimeStampField;
    QRemisionePLANILLA_MO: TStringField;
    QRemisioneFP: TStringField;
    QRemisioneCE: TStringField;
    QRemisioneCC: TStringField;
    QRemisioneOTRO: TStringField;
    QRemisioneVLR_MERCANCIA: TFloatField;
    QRemisionePESO_NETO: TFloatField;
    QRemisioneDESCRIPCION_RECETA: TStringField;
    QRemisioneIVA_FACTURA: TMemoField;
    QRemisioneCONCEPTOSIVA: TMemoField;
    QRemisioneSUB_FACTURA: TMemoField;
    QRemisioneTOT_FACTURA: TMemoField;
    QRemisioneDESC_FACTURA: TMemoField;
    QRemisioneCOMENTARIOS: TStringField;
    QRemisioneCONCEPTO_AN: TStringField;
    QRemisioneFORMA_PAGO: TSmallintField;
    QRemisioneCONTEO_PEDIDO: TIntegerField;
    QRemisionePARCIAL: TStringField;
    QRemisioneBONOTOTAL: TSingleField;
    QRemisiondID_EMPRESA: TSmallintField;
    QRemisiondID_SUCURSAL: TSmallintField;
    QRemisiondNUMERO: TIntegerField;
    QRemisiondTIPO: TStringField;
    QRemisiondCONTEO: TIntegerField;
    QRemisiondITEM: TStringField;
    QRemisiondLOCATION: TStringField;
    QRemisiondCODIVA: TSmallintField;
    QRemisiondQTYSHIP: TFloatField;
    QRemisiondQTYORDER: TFloatField;
    QRemisiondPRICE: TFloatField;
    QRemisiondPRECIOSUG: TFloatField;
    QRemisiondEXTEND: TFloatField;
    QRemisiondTAXES: TFloatField;
    QRemisiondDCT_ITEM: TFloatField;
    QRemisiondDCT_CLIENTE: TFloatField;
    QRemisiondDCT_ADICIONAL: TFloatField;
    QRemisiondTOTALDCT: TFloatField;
    QRemisiondVLR_IVA: TFloatField;
    QRemisiondPORC_IVA: TFloatField;
    QRemisiondIMPCONSUMO: TFloatField;
    QRemisiondPRECIOIVA: TFloatField;
    QRemisiondDOC_RESPALDO: TStringField;
    QRemisiondNUMERO_RESPALDO: TIntegerField;
    QRemisiondSERIALES: TStringField;
    QRemisiondRESERVA_INICIAL: TFloatField;
    QRemisiondRESERVA_FINAL: TFloatField;
    QRemisiondDESCRIPCION_ADIC: TStringField;
    QRemisiondKITNO: TStringField;
    QRemisiondKIT_DESCRIPCION: TStringField;
    QRemisiondDCTO_AD1: TFloatField;
    QRemisiondDCTO_AD2: TFloatField;
    QRemisiondVLR_DCTFIJO: TFloatField;
    QRemisiondVLR_DCT: TFloatField;
    QRemisiondVLR_DCTOAD1: TFloatField;
    QRemisiondVLR_DCTOAD2: TFloatField;
    QRemisiondVLR_DCTOADICIONAL: TFloatField;
    QRemisiondCOD_UNIDAD_VENTA: TStringField;
    QRemisiondFACTOR: TFloatField;
    QRemisiondOCNUMERO: TStringField;
    QRemisiondDESCRIPCION_ADIC1: TStringField;
    QRemisiondACTIVIDAD: TStringField;
    QRemisiondDPTO: TSmallintField;
    QRemisiondCCOST: TSmallintField;
    QRemisiondPROYECTO: TStringField;
    QRemisiondCONTEO_PEDIDO: TIntegerField;
    QRemisiondCOD_TALLA: TStringField;
    QRemisiondCOD_COLOR: TStringField;
    QRemisiondBONO: TStringField;
    QRemisiondTOTALBONO: TSingleField;
    QRemisiondCODBARRASCURVA: TStringField;
    CheckEntrDev: TCheckBox;
    CheckOrdenCom: TCheckBox;
    QIpoce: TFDQuery;
    QIpoceE: TSmallintField;
    QIpoceS: TSmallintField;
    QIpoceTIPO: TStringField;
    QIpoceNUMBER: TIntegerField;
    QIpoceID_N: TStringField;
    QIpoceSUCCLIENTE: TIntegerField;
    QIpoceACCT: TFloatField;
    QIpoceFECHA: TSQLTimeStampField;
    QIpoceESTADO: TStringField;
    QIpoceDUEDATE: TSQLTimeStampField;
    QIpoceORIGEN: TStringField;
    QIpoceIMP_GENERADA: TStringField;
    QIpoceCOMENTARIO: TMemoField;
    QIpoceTOTAL: TFloatField;
    QIpoceFECHA_PAGO: TSQLTimeStampField;
    QIpoceTOTALDCT: TFloatField;
    QIpoceTOTALRETEN: TFloatField;
    QIpoceVALORRTIVA: TFloatField;
    QIpoceTOTALIVA: TFloatField;
    QIpoceSUBTOTAL: TFloatField;
    QIpoceTIPOEMP: TSmallintField;
    QIpoceCODMONEDA: TStringField;
    QIpoceTASACAMBIO: TFloatField;
    QIpoceID_N_SOLICITANTE: TStringField;
    QIpoceVALORRTICA: TFloatField;
    QIpoceID_USUARIO: TStringField;
    QIpoceFECHA_REQUISICION: TSQLTimeStampField;
    QIpoceRETECREE: TFloatField;
    QIpoceCODCREE: TStringField;
    QIpoceTIPO_IMP: TStringField;
    QIpoceNRO_IMP: TIntegerField;
    QIpocd: TFDQuery;
    QIpocdE: TSmallintField;
    QIpocdS: TSmallintField;
    QIpocdTIPO: TStringField;
    QIpocdNUMBER: TIntegerField;
    QIpocdCONTEO: TIntegerField;
    QIpocdITEM: TStringField;
    QIpocdLOCATION: TStringField;
    QIpocdQTY: TFloatField;
    QIpocdRECIBIDO: TFloatField;
    QIpocdCC: TFloatField;
    QIpocdPB: TFloatField;
    QIpocdQTYB: TFloatField;
    QIpocdCOST: TFloatField;
    QIpocdPORC_IVA: TFloatField;
    QIpocdFALTANTE: TFloatField;
    QIpocdPRICEPROV: TFloatField;
    QIpocdDCTPROV: TFloatField;
    QIpocdCOSTOEXT: TFloatField;
    QIpocdTIPO_IMPORT: TStringField;
    QIpocdNUMERO_IMPORT: TIntegerField;
    QIpocdCONTEO_IMPORT: TIntegerField;
    QIpocdE_IMPORT: TSmallintField;
    QIpocdS_IMPORT: TSmallintField;
    QIpocdCADENA_ADICIONAL: TStringField;
    QIpocdNUM_SUBORDEN: TIntegerField;
    QIpocdESTADO: TIntegerField;
    QIpocdTIPO_SUBORDEN: TStringField;
    QIpocdDEPTO: TSmallintField;
    QIpocdCCOSTO: TSmallintField;
    QIpocdACTIVIDAD: TStringField;
    QIpocdPROY: TStringField;
    QIpocdTIPO_PEDIDO: TStringField;
    QIpocdNUMERO_PEDIDO: TIntegerField;
    QIpocdCONTEO_PEDIDO: TIntegerField;
    QIpocdE_PEDIDO: TSmallintField;
    QIpocdS_PEDIDO: TSmallintField;
    QIpocdCOD_TALLA: TStringField;
    QIpocdCOD_COLOR: TStringField;
    QIpocdFACTOR: TFloatField;
    QIpocdCODBARRASCURVA: TStringField;
    QIp: TFDQuery;
    QIpdet: TFDQuery;
    QOc_Ip: TFDQuery;
    QIpTIPO: TStringField;
    QIpNUMBER: TIntegerField;
    QIpID_N: TStringField;
    QIpACCT: TFloatField;
    QIpPONUMBER: TStringField;
    QIpFECHA: TSQLTimeStampField;
    QIpCOST: TFloatField;
    QIpPOSTED: TStringField;
    QIpCOMMENTS: TMemoField;
    QIpCLOSED: TStringField;
    QIpCLOSEPO: TStringField;
    QIpPRINTED: TStringField;
    QIpENTPAR: TStringField;
    QIpRECTOT: TStringField;
    QIpANUL: TStringField;
    QIpENTORDEN: TStringField;
    QIpCONTABIL: TStringField;
    QIpENTFACT: TStringField;
    QIpENTCDEV: TStringField;
    QIpDEVUELTO: TStringField;
    QIpPORDESC: TFloatField;
    QIpVALORDCT: TFloatField;
    QIpVALORFLETE: TFloatField;
    QIpEMPRESA: TStringField;
    QIpTOTALOTROS: TFloatField;
    QIpTOTALRETEN: TFloatField;
    QIpTOTALITEMS: TFloatField;
    QIpVALORIVA: TFloatField;
    QIpVALORICA: TFloatField;
    QIpVALORRTIVA: TFloatField;
    QIpVALORRTICA: TFloatField;
    QIpTOTALSDCT: TFloatField;
    QIpTOTALCDCT: TFloatField;
    QIpDUEDATE: TSQLTimeStampField;
    QIpE: TSmallintField;
    QIpS: TSmallintField;
    QIpSUCCLIENTE: TIntegerField;
    QIpDOCASC: TStringField;
    QIpENTMC: TStringField;
    QIpREVISADO: TStringField;
    QIpFECHA_ENTREGA: TSQLTimeStampField;
    QIpFECHA_REQUISICION: TSQLTimeStampField;
    QIpID_USUARIO: TStringField;
    QIpOCNUMERO: TStringField;
    QIpIMPORTACION: TStringField;
    QIpE_CRUCE: TIntegerField;
    QIpS_CRUCE: TIntegerField;
    QIpTIPO_CRUCE: TStringField;
    QIpNUMBER_CRUCE: TIntegerField;
    QIpEA_AUTO_LEGALIZADA: TStringField;
    QIpVALIVABIEN: TFloatField;
    QIpVALIVASER: TFloatField;
    QIpDOC_EXTERNO: TStringField;
    QIpCCOSTO: TIntegerField;
    QIpDEPTO: TIntegerField;
    QIpPROYECTO: TStringField;
    QIpACTIVIDAD: TStringField;
    QIpRETECREE: TFloatField;
    QIpCODCREE: TStringField;
    QIpTIPO_IMP: TStringField;
    QIpNRO_IMP: TIntegerField;
    QIpESTADO: TStringField;
    QIpTOTAL_BONO: TSingleField;
    QOc_IpNUMBERIP: TIntegerField;
    QOc_IpTYPEIP: TStringField;
    QOc_IpE: TSmallintField;
    QOc_IpS: TSmallintField;
    QOc_IpTYPEOC: TStringField;
    QOc_IpNUMBEROC: TIntegerField;
    QIpdetTIPO: TStringField;
    QIpdetNUMBER: TIntegerField;
    QIpdetCONTEO: TIntegerField;
    QIpdetITEM: TStringField;
    QIpdetLOCATION: TStringField;
    QIpdetCOST: TFloatField;
    QIpdetQTY: TFloatField;
    QIpdetQTYREC: TFloatField;
    QIpdetQTYPEND: TFloatField;
    QIpdetEXTEND: TFloatField;
    QIpdetPESO: TFloatField;
    QIpdetCOSTCDESC: TFloatField;
    QIpdetCOSTCFLETE: TFloatField;
    QIpdetREFOC: TStringField;
    QIpdetREFREC: TStringField;
    QIpdetCLOSEDOC: TStringField;
    QIpdetQTYDEV: TFloatField;
    QIpdetCC: TFloatField;
    QIpdetPB: TFloatField;
    QIpdetQTYB: TFloatField;
    QIpdetQTYBDEV: TFloatField;
    QIpdetPORCDCT: TFloatField;
    QIpdetVALORDCT: TFloatField;
    QIpdetE: TSmallintField;
    QIpdetDESTINO: TSmallintField;
    QIpdetS: TSmallintField;
    QIpdetLOTE: TStringField;
    QIpdetCOSTMC: TFloatField;
    QIpdetNODOCR: TIntegerField;
    QIpdetTPDOCR: TStringField;
    QIpdetEDOCR: TIntegerField;
    QIpdetSDOCR: TIntegerField;
    QIpdetFECHA_VENCIMIENTO: TSQLTimeStampField;
    QIpdetCOLOR: TStringField;
    QIpdetIVA: TFloatField;
    QIpdetCOSTO_AJUSTE: TFloatField;
    QIpdetNUMERO_AUTO: TIntegerField;
    QIpdetCADENA_ADICIONAL: TStringField;
    QIpdetE_AUTO: TSmallintField;
    QIpdetS_AUTO: TSmallintField;
    QIpdetTIPO_AUTO: TStringField;
    QIpdetCODOCR: TIntegerField;
    QIpdetCONTEO_AUTO: TIntegerField;
    QIpdetDEPTO: TSmallintField;
    QIpdetCCOSTO: TSmallintField;
    QIpdetACTIVIDAD: TStringField;
    QIpdetPROY: TStringField;
    QIpdetCOD_TALLA: TStringField;
    QIpdetCOD_COLOR: TStringField;
    QIpdetFACTOR: TFloatField;
    QIpdetPRECIO_UNITARIO_IVA: TFloatField;
    QIpdetVALIVA: TFloatField;
    QIpdetVALOR_IVA: TFloatField;
    QIpdetCUBX: TFloatField;
    QIpdetCUBY: TFloatField;
    QIpdetCUBZ: TFloatField;
    QIpdetCUBFACTOR: TFloatField;
    QIpdetCAJA_SET: TFloatField;
    QIpdetMANIFIESTOID: TStringField;
    QIpdetCOSTOEXT: TFloatField;
    QIpdetTOTAL_BONO: TFloatField;
    QIpdetBONO: TStringField;
    QIpdetCODBARRASCURVA: TStringField;
    QIpdetVALOR_IVA_MAYOR: TFloatField;
    QIpdetVALOR_BASE_MAYOR: TFloatField;
    QIpdetDEVUELTO: TStringField;
    CheckAjustes: TCheckBox;
    QIpAdjuste: TFDQuery;
    QIpAdjusteE: TSmallintField;
    QIpAdjusteS: TSmallintField;
    QIpAdjusteTIPO: TStringField;
    QIpAdjusteBATCH: TIntegerField;
    QIpAdjusteID_USUARIO: TStringField;
    QIpAdjusteID_N: TStringField;
    QIpAdjusteSUCCLIENTE: TIntegerField;
    QIpAdjusteFECHA: TSQLTimeStampField;
    QIpAdjusteDESCRIPCION: TStringField;
    QIpAdjusteCONCEPTO: TStringField;
    QIpAdjusteTOTALS: TFloatField;
    QIpAdjusteTOTALE: TFloatField;
    QIpAdjustePOSTED: TStringField;
    QIpAdjusteDOC_EXTERNO: TIntegerField;
    QIpAdjusteESTADO: TStringField;
    QIpAdjusteNUMERO_CRUCE_EA: TIntegerField;
    QIpAdjusteTIPO_CRUCE_EA: TStringField;
    QIpAdjusteS_CRUCE: TIntegerField;
    QIpAdjustd: TFDQuery;
    QIpAdjustdE: TSmallintField;
    QIpAdjustdS: TSmallintField;
    QIpAdjustdBATCH: TIntegerField;
    QIpAdjustdTIPO: TStringField;
    QIpAdjustdCONTEO: TIntegerField;
    QIpAdjustdID_USUARIO: TStringField;
    QIpAdjustdACCT: TFloatField;
    QIpAdjustdITEM: TStringField;
    QIpAdjustdLOCATION: TStringField;
    QIpAdjustdTRANSCODE: TStringField;
    QIpAdjustdPROY: TStringField;
    QIpAdjustdACTIVIDAD: TStringField;
    QIpAdjustdCCOSTO: TSmallintField;
    QIpAdjustdDEPTO: TSmallintField;
    QIpAdjustdLOTE: TStringField;
    QIpAdjustdSUBTOTAL: TFloatField;
    QIpAdjustdCOLOR: TStringField;
    QIpAdjustdDESTINO: TSmallintField;
    QIpAdjustdCOSTO_AJUSTE: TFloatField;
    QIpAdjustdCOST: TFloatField;
    QIpAdjustdQTYB: TFloatField;
    QIpAdjustdQTY: TFloatField;
    QIpAdjustdFECHA_VENCIMIENTO: TSQLTimeStampField;
    QIpAdjustdCOD_TALLA: TStringField;
    QIpAdjustdCOD_COLOR: TStringField;
    QIpAdjustdCODBARRASCURVA: TStringField;
    QTraslado: TFDQuery;
    QTrasladoNUMERO: TIntegerField;
    QTrasladoTIPO: TStringField;
    QTrasladoE: TSmallintField;
    QTrasladoS: TSmallintField;
    QTrasladoID_N: TStringField;
    QTrasladoSUCCLIENTE: TIntegerField;
    QTrasladoID_USUARIO: TStringField;
    QTrasladoLOCORI: TStringField;
    QTrasladoLOCDEST: TStringField;
    QTrasladoRESPREALI: TStringField;
    QTrasladoFECHAREALI: TSQLTimeStampField;
    QTrasladoFECHAACT: TSQLTimeStampField;
    QTrasladoDESCRIPCION: TStringField;
    QTrasladoACTUALIZADO: TStringField;
    QTrasladoIMPRESO: TStringField;
    QTrasladoANULADO: TStringField;
    QTrasladoCONCEPTO: TStringField;
    QTrasladoDOC_EXTERNO: TIntegerField;
    QTrasladoUSUARIO_AUTORIZA: TStringField;
    QTrasdet: TFDQuery;
    QTrasdetNUMERO: TIntegerField;
    QTrasdetTIPO: TStringField;
    QTrasdetE: TSmallintField;
    QTrasdetS: TSmallintField;
    QTrasdetCONTEO: TIntegerField;
    QTrasdetITEM: TStringField;
    QTrasdetCANTIDAD: TFloatField;
    QTrasdetCANTIDADB: TFloatField;
    QTrasdetCC: TFloatField;
    QTrasdetPB: TFloatField;
    QTrasdetCOST: TFloatField;
    QTrasdetVALOR_RECIBIDO: TFloatField;
    QTrasdetVALOR_ENVIADO: TFloatField;
    QTrasdetCOLOR: TStringField;
    QTrasdetCOSTO_AJUSTE: TFloatField;
    QTrasdetNOTES: TStringField;
    QTrasdetLOTE: TStringField;
    QTrasdetFECHA_VENCIMIENTO: TSQLTimeStampField;
    QTrasdetCOD_TALLA: TStringField;
    QTrasdetCOD_COLOR: TStringField;
    QTrasdetCODBARRASCURVA: TStringField;
    CheckTraslados: TCheckBox;
    CheckEnsambles: TCheckBox;
    QEnsamblee: TFDQuery;
    QEnsambleeE: TSmallintField;
    QEnsambleeS: TSmallintField;
    QEnsambleeTIPO: TStringField;
    QEnsambleeBATCH: TIntegerField;
    QEnsambleeID_USUARIO: TStringField;
    QEnsambleeID_N: TStringField;
    QEnsambleeSUCCLIENTE: TIntegerField;
    QEnsambleeFECHA: TSQLTimeStampField;
    QEnsambleeDESCRIPCION: TStringField;
    QEnsambleeCONCEPTO: TStringField;
    QEnsambleeCOLOR: TStringField;
    QEnsambleeLOTE: TStringField;
    QEnsambleeDOC_FISICO: TStringField;
    QEnsambleeCOMENTARIO: TStringField;
    QEnsambleeTOTAL: TFloatField;
    QEnsambleePOSTED: TStringField;
    QEnsambleeNUMBER_IP: TIntegerField;
    QEnsambleeTIPO_IP: TStringField;
    QEnsambleeFECHA_VENCIMIENTO: TSQLTimeStampField;
    QEnsambleeESTADO: TStringField;
    QEnsambleeNUMERO: TIntegerField;
    QEnsambled: TFDQuery;
    QEnsambledE: TSmallintField;
    QEnsambledS: TSmallintField;
    QEnsambledTIPO: TStringField;
    QEnsambledBATCH: TIntegerField;
    QEnsambledCONTEO: TIntegerField;
    QEnsambledID_USUARIO: TStringField;
    QEnsambledACCT: TFloatField;
    QEnsambledITEM: TStringField;
    QEnsambledLOCATION: TStringField;
    QEnsambledTRANSCODE: TStringField;
    QEnsambledLOTE: TStringField;
    QEnsambledCOLOR: TStringField;
    QEnsambledCOSTO_AJUSTE: TFloatField;
    QEnsambledCUENTA_AJUSTE: TFloatField;
    QEnsambledQTY: TFloatField;
    QEnsambledCOST: TFloatField;
    QEnsambledQTYB: TFloatField;
    QEnsambledIDN_LOC: TStringField;
    QEnsambledPROY: TStringField;
    QEnsambledACTIVIDAD: TStringField;
    QEnsambledCCOSTO: TSmallintField;
    QEnsambledDEPTO: TSmallintField;
    QEnsambledCOD_TALLA: TStringField;
    QEnsambledCOD_COLOR: TStringField;
    QEnsambledCODBARRASCURVA: TStringField;
    QEnsambledCANTIDAD_RECETA: TFloatField;
    QEnsambledDIGITADO_M: TStringField;
    CheckCarteraProv: TCheckBox;
    QCarproen: TFDQuery;
    QCarproenE: TSmallintField;
    QCarproenS: TSmallintField;
    QCarproenTIPO: TStringField;
    QCarproenBATCH: TIntegerField;
    QCarproenID_N: TStringField;
    QCarproenFECHA: TSQLTimeStampField;
    QCarproenTOTAL: TFloatField;
    QCarproenUSERNAME: TStringField;
    QCarproenFECHA_HORA: TStringField;
    QCarproenOBSERV: TStringField;
    QCarproenBANCO: TStringField;
    QCarproenCHEQUE: TStringField;
    QCarproenDUEDATE: TSQLTimeStampField;
    QCarproenLETRAS: TStringField;
    QCarproenIDVEND: TSmallintField;
    QCarproenSHIPTO: TIntegerField;
    QCarproenEXPORTADA: TStringField;
    QCarproenENTREGADO: TStringField;
    QCarproenREVISADO: TStringField;
    QCarproenREVISOR: TStringField;
    QCarproenFECHA_REVISION: TSQLTimeStampField;
    QCarproenIMPRESO: TStringField;
    QCarproenDOC_FISICO: TStringField;
    QCarproenCHEQUE_POSTF: TStringField;
    QCarproenFECHA_CHEQUE: TSQLTimeStampField;
    QCarproenPROYECTO: TStringField;
    QCarproenSALDO_DEUDA: TFloatField;
    QCarproenSALDO_DEUDA_ABONO: TFloatField;
    QCarproenPONUMBER: TStringField;
    QCarproenINTERES_IMPLICITO: TStringField;
    QCarproenDETALLE: TStringField;
    QCarproenFECHA_CONTAB_CONSIG: TStringField;
    QCarproenDETERIORO_ESFA: TStringField;
    QCarproenCONCEPTO_NOTAFE: TStringField;
    QCarproenENVIADO: TStringField;
    QCarprode: TFDQuery;
    QCarprodeCONTEO: TIntegerField;
    QCarprodeTIPO: TStringField;
    QCarprodeBATCH: TIntegerField;
    QCarprodeID_N: TStringField;
    QCarprodeACCT: TFloatField;
    QCarprodeE: TSmallintField;
    QCarprodeS: TSmallintField;
    QCarprodeCRUCE: TStringField;
    QCarprodeINVC: TStringField;
    QCarprodeFECHA: TSQLTimeStampField;
    QCarprodeDUEDATE: TSQLTimeStampField;
    QCarprodeDPTO: TSmallintField;
    QCarprodeCCOST: TSmallintField;
    QCarprodeACTIVIDAD: TStringField;
    QCarprodeDESCRIPCION: TStringField;
    QCarprodeDIAS: TFloatField;
    QCarprodeDESTINO: TSmallintField;
    QCarprodeTIPO_REF: TStringField;
    QCarprodeREFERENCIA: TIntegerField;
    QCarprodeTIPO_IMP: TStringField;
    QCarprodeNRO_IMP: TIntegerField;
    QCarprodeCONCEPTO_IMP: TIntegerField;
    QCarprodeBANCO: TSmallintField;
    QCarprodeCHEQUE: TStringField;
    QCarprodePROYECTO: TStringField;
    QCarprodeCONCEPTO_PAGO: TSmallintField;
    QCarprodeID_TIPOCARTERA: TStringField;
    QCarprodeINVC_ENTERO: TIntegerField;
    QCarprodeCHEQUE_POSTF: TStringField;
    QCarprodeFECHA_CHEQUE: TSQLTimeStampField;
    QCarprodeSALDO: TFloatField;
    QCarprodeCREDIT: TFloatField;
    QCarprodeTASA_CAMBIO: TFloatField;
    QCarprodeCREDITO_US: TFloatField;
    QCarprodeDEBITO_US: TFloatField;
    QCarprodeBASE: TFloatField;
    QCarprodeDEBIT: TFloatField;
    QCarprodeCUOTA: TSmallintField;
    QCarprodeFECHA_CONSIG: TSQLTimeStampField;
    QCarprodeFECHA_FACTURA: TSQLTimeStampField;
    QCarprodeMAYOR_VALOR: TFloatField;
    QCarprodeVALOR_IMPUESTO: TSingleField;
    QCarprodeIMPORT: TStringField;
    QCarprodeCOD_FLUJOEFE: TIntegerField;
    QCarprodeIDVEND: TSmallintField;
    QCarprodePORC_TASA: TFloatField;
    QCarprodeTIEMPO_MESES: TFloatField;
    QCarprodePAGO_DISP: TStringField;
    ConOrigen: TFDConnection;
    QVendedor: TFDQuery;
    QVendedorIDVEND: TSmallintField;
    QVendedorNOMBRE: TStringField;
    QVendedorTELEFONO: TStringField;
    QVendedorCUOTAMINMENSUAL: TFloatField;
    QVendedorBASICOMENSUAL: TFloatField;
    QVendedorZONAVENDEDOR: TSmallintField;
    QVendedorCOMVENTA: TFloatField;
    QVendedorCOMRECA0_30: TFloatField;
    QVendedorCOMRECA31_60: TFloatField;
    QVendedorCOMRECA61_90: TFloatField;
    QVendedorCOMRECAMASDE90: TFloatField;
    QVendedorE: TSmallintField;
    QVendedorS: TSmallintField;
    QVendedorID_N: TStringField;
    QVendedorBASE_RTICA: TFloatField;
    QVendedorACTIVO: TStringField;
    QVendedorCOMRECA_TARIFA: TFloatField;
    QGlen: TFDQuery;
    QGlenE: TSmallintField;
    QGlenS: TSmallintField;
    QGlenTIPO: TStringField;
    QGlenBATCH: TIntegerField;
    QGlenFECHA: TSQLTimeStampField;
    QGlenUSERNAME: TStringField;
    QGlenREVISADO: TStringField;
    QGlenREVISOR: TStringField;
    QGlenFECHA_REVISION: TSQLTimeStampField;
    QGlenEXPORTADA: TStringField;
    QGlenESTADO: TStringField;
    QGlenDESCRIPCION: TStringField;
    QGlenID_N: TStringField;
    QGldet: TFDQuery;
    CheckComprobantes: TCheckBox;
    QGldetCONTEO: TIntegerField;
    QGldetID_N: TStringField;
    QGldetACCT: TFloatField;
    QGldetE: TSmallintField;
    QGldetS: TSmallintField;
    QGldetTIPO: TStringField;
    QGldetBATCH: TIntegerField;
    QGldetCUOTA: TSmallintField;
    QGldetINVC: TStringField;
    QGldetDEPTO: TSmallintField;
    QGldetCCOST: TSmallintField;
    QGldetACTIVIDAD: TStringField;
    QGldetDEBIT: TFloatField;
    QGldetCREDIT: TFloatField;
    QGldetPERIOD: TStringField;
    QGldetBASE: TFloatField;
    QGldetDESCRIPCION: TStringField;
    QGldetCLOSING: TStringField;
    QGldetCONCIL: TStringField;
    QGldetCRUCE: TStringField;
    QGldetDESTINO: TSmallintField;
    QGldetDUEDATE: TSQLTimeStampField;
    QGldetPROYECTO: TStringField;
    CheckPedidos: TCheckBox;
    QPedidoe: TFDQuery;
    QPedidoeID_EMPRESA: TSmallintField;
    QPedidoeID_SUCURSAL: TSmallintField;
    QPedidoeTIPO: TStringField;
    QPedidoeNUMBER: TIntegerField;
    QPedidoeTIPO_PEDIDO: TStringField;
    QPedidoeID_USUARIO: TStringField;
    QPedidoeID_N: TStringField;
    QPedidoeSUCCLIENTE: TIntegerField;
    QPedidoeENTITY: TStringField;
    QPedidoeSALESMAN: TSmallintField;
    QPedidoeNUMBERFROM: TStringField;
    QPedidoeNUMBERTO: TStringField;
    QPedidoeFECHA: TSQLTimeStampField;
    QPedidoeDUEDATE: TSQLTimeStampField;
    QPedidoeSUBTOTAL: TFloatField;
    QPedidoeCOST: TFloatField;
    QPedidoeSALESTAX: TFloatField;
    QPedidoeFEDTAX: TFloatField;
    QPedidoeDISC1: TFloatField;
    QPedidoeDISC2: TFloatField;
    QPedidoeDISC3: TFloatField;
    QPedidoeSHIPTO1: TStringField;
    QPedidoeSHIPTO2: TStringField;
    QPedidoeSHIPTO3: TStringField;
    QPedidoeSHIPTO4: TStringField;
    QPedidoeSHIPTO5: TStringField;
    QPedidoeSHIPTO6: TStringField;
    QPedidoeONACCOUNT: TStringField;
    QPedidoePRINTED: TStringField;
    QPedidoePOSTED: TStringField;
    QPedidoeCLOSED: TStringField;
    QPedidoePONUMBER: TStringField;
    QPedidoeTERMS: TStringField;
    QPedidoeJOBNO: TStringField;
    QPedidoeDES_GLO: TFloatField;
    QPedidoePOR_DES: TFloatField;
    QPedidoeCOD_ORD: TStringField;
    QPedidoeRPT_NUM: TStringField;
    QPedidoeDESTOTAL: TFloatField;
    QPedidoeTOTAL: TFloatField;
    QPedidoeTOTALPEDIDO: TFloatField;
    QPedidoeESTADO: TStringField;
    QPedidoeAUTORIZADO: TStringField;
    QPedidoeAPROB_BANCO: TStringField;
    QPedidoeCONCEPTO: TSmallintField;
    QPedidoeDESCRIPCION: TStringField;
    QPedidoeTIENE_GAR: TStringField;
    QPedidoeOCNUMERO: TStringField;
    QPedidoeCODACTIVIDAD: TStringField;
    QPedidoeCODPROYECTO: TStringField;
    QPedidoeFECHA_ENTREGA: TSQLTimeStampField;
    QPedidoeID_USUARIO_FACTURACION: TStringField;
    QPedidoeCAUSALES: TMemoField;
    QPedidoeREMISIONADO: TStringField;
    QPedidoeHORA: TStringField;
    QPedidoeFECHA_SISTEMA: TSQLTimeStampField;
    QPedidoeDESCRIPCION_RECETA: TStringField;
    QPedidoeCOD_PLACA: TStringField;
    QPedidoeCOMMENTS: TStringField;
    QPedidoeVALOR_ABONO: TFloatField;
    QPedidoeITEM: TStringField;
    QPedidoeNOSERIE: TStringField;
    QPedidoeKMT: TFloatField;
    QPedidoePROPIETARIO: TIntegerField;
    QPedidoeCOD_NIVEL: TStringField;
    QPedidoeBONOTOTAL: TSingleField;
    QPedidod: TFDQuery;
    QPedidodID_EMPRESA: TSmallintField;
    QPedidodID_SUCURSAL: TSmallintField;
    QPedidodTIPO: TStringField;
    QPedidodNUMBER: TIntegerField;
    QPedidodCONTEO: TIntegerField;
    QPedidodITEM: TStringField;
    QPedidodIMPOVENTA: TStringField;
    QPedidodLOCATION: TStringField;
    QPedidodQTYSHIP: TFloatField;
    QPedidodQTYORDER: TFloatField;
    QPedidodPRICE: TFloatField;
    QPedidodEXTEND: TFloatField;
    QPedidodTAXES: TFloatField;
    QPedidodCOST: TFloatField;
    QPedidodNOTES: TStringField;
    QPedidodDIAS_GARANTIA: TIntegerField;
    QPedidodDCT: TFloatField;
    QPedidodTOTALDCT: TFloatField;
    QPedidodVLR_IVA: TFloatField;
    QPedidodPORC_IVA: TFloatField;
    QPedidodCAJAS: TFloatField;
    QPedidodPESO_BRUTO: TFloatField;
    QPedidodTIPO_FACTOR: TStringField;
    QPedidodDOBLE_UNIDAD: TStringField;
    QPedidodUSAR_DESVIACION: TStringField;
    QPedidodDESVIACIONP: TFloatField;
    QPedidodPESO_PROMEDIOI: TFloatField;
    QPedidodFALLO: TStringField;
    QPedidodPESO_NETOI: TFloatField;
    QPedidodPRECIO_VENDEDOR: TFloatField;
    QPedidodAUTORIZADO: TStringField;
    QPedidodORIGEN: TStringField;
    QPedidodNUM_SERIAL: TStringField;
    QPedidodBO: TFloatField;
    QPedidodRESERVA: TFloatField;
    QPedidodDCTADICIONAL: TFloatField;
    QPedidodDCTFIJO: TFloatField;
    QPedidodESTADO: TStringField;
    QPedidodQTY_REMISIONADA: TFloatField;
    QPedidodCOLOR: TStringField;
    QPedidodTIPO_COTIZA: TStringField;
    QPedidodNUMERO_COTIZA: TIntegerField;
    QPedidodZVLRBRUTO: TFloatField;
    QPedidodZDESCUENTO: TFloatField;
    QPedidodZDIFERENCIA: TFloatField;
    QPedidodFECHAAPRODUCIR: TSQLTimeStampField;
    QPedidodKITNO: TStringField;
    QPedidodKIT_DESCRIPCION: TStringField;
    QPedidodDCTO_AD1: TFloatField;
    QPedidodDCTO_AD2: TFloatField;
    QPedidodVLR_DCTFIJO: TFloatField;
    QPedidodVLR_DCT: TFloatField;
    QPedidodVLR_DCTOAD1: TFloatField;
    QPedidodVLR_DCTOAD2: TFloatField;
    QPedidodVLR_DCTOADICIONAL: TFloatField;
    QPedidodOCNUMERO: TStringField;
    QPedidodMANDANTE: TStringField;
    QPedidodCOD_CENTRO: TIntegerField;
    QPedidodDESCRIP_CENTRO: TStringField;
    QPedidodDIAS_ITEM: TIntegerField;
    QPedidodKILOMETRAJES: TIntegerField;
    QPedidodPORC_COMI: TFloatField;
    QPedidodPROYECTO: TStringField;
    QPedidodACTIVIDAD: TStringField;
    QPedidodDPTO: TIntegerField;
    QPedidodCCOST: TIntegerField;
    QPedidodCOD_TALLA: TStringField;
    QPedidodCOD_COLOR: TStringField;
    QPedidodPRECIOIVA: TFloatField;
    QPedidodBONO: TStringField;
    QPedidodTOTALBONO: TSingleField;
    QPedidodCODBARRASCURVA: TStringField;
    QPedidodCODIGO_ZONA: TStringField;
    QPedidodNUMERO_ZONA: TStringField;
    QPedfact: TFDQuery;
    QPedfactEMPRESA: TSmallintField;
    QPedfactSUCURSAL: TSmallintField;
    QPedfactUSUARIO: TStringField;
    QPedfactNUMERO_FACTURA: TIntegerField;
    QPedfactNUMERO_PEDIDO: TIntegerField;
    QPedfactTIPO: TStringField;
    QPedfactTIPO_PEDIDO: TStringField;
    QCarprosys: TFDQuery;
    QCarprosysDCT: TIntegerField;
    QCarprosysCUENTA: TFloatField;
    QCarprosysCONCEPTO: TStringField;
    QCarprosysNATURALEZACTA: TStringField;
    QCarprosysVISIBLE: TStringField;
    QCarprosysRAZON: TStringField;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CheckDocxSucChange(Sender: TObject);
    procedure CheckTodosChange(Sender: TObject);
    procedure CheckFacDevChange(Sender: TObject);
    procedure CheckCotizacionesChange(Sender: TObject);
    procedure CheckRemisionesChange(Sender: TObject);
    procedure CheckEntrDevChange(Sender: TObject);
    procedure CheckOrdenComChange(Sender: TObject);
    procedure CheckAjustesChange(Sender: TObject);
    procedure CheckTrasladosChange(Sender: TObject);
    procedure CheckEnsamblesChange(Sender: TObject);
    procedure CheckCarteraProvChange(Sender: TObject);
    procedure CheckComprobantesChange(Sender: TObject);
    procedure CheckPedidosChange(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    Cuentas: Boolean;
    Terceros: Boolean;
    Items: Boolean;
    Usuarios: Boolean;
    FormasPago: Boolean;
    procedure ActualizarCuentas;
    procedure ActualizarTerceros;
    procedure ActualizarLineas;
    procedure ActualizarGrupos;
    procedure ActualizarSubGrupos;
    procedure ActualizarLista;
    procedure ActualizarUnidades;
    procedure ActualizarBodegas;
    procedure ActualizarItemUnidad;
    procedure ActualizarItems;
    procedure ActualizarNombres;
    procedure ActualizarSegActividades;
    procedure ActualizarSegPermisosAct;
    procedure ActualizarFactipdoc;
    procedure ActualizarVendedores;
    procedure ActualizarForPago;
    procedure ActualizarBancos;
    procedure ActualizarConceptosRC;

    procedure PasarFacturas;
    procedure PasarCotizaciones;
    procedure PasarRemisiones;
    procedure PasarOrdenesdeCompras;
    procedure PasarEntradas;
    procedure PasarAjustes;
    procedure PasarTraslados;
    procedure PasarEnsambles;
    procedure PasarCarteraProv;
    procedure PasarComprobantes;
    procedure PasarPedidos;

    procedure EliminarFacturas(Tipo: String; Number: Integer);
    procedure EliminarRemisiones(Tipo: String; Number: Integer);
    procedure EliminarCotizaciones(Tipo: String; Number: Integer);
    procedure EliminarOrdenDeCompra(Tipo: String; Number: Integer);
    procedure EliminarEntradas(Tipo: String; Number: Integer);
    procedure EliminarAjustes(Tipo: String; Number: Integer);
    procedure EliminarTraslados(Tipo: String; Number: Integer);
    procedure EliminarEnsables(Tipo: String; Number: Integer);
    procedure EliminarCarteraProv(Tipo: String; Number: Integer);
    procedure EliminarComprobantes(Tipo: String; Number: Integer);
    procedure EliminarPedidos(Tipo: String; Number: Integer);

    procedure PasarItemact(Tipo: String; Number: Integer);
    procedure PasarGl(Tipo: String; Number: Integer);
    procedure PasarCarpro(Tipo: String; Number: Integer);

    function TraerTipos(Tipo: String): String;
  end;

var
  Main: TMain;

implementation

{$R *.fmx}
{$R *.LgXhdpiPh.fmx ANDROID}
{$R *.Windows.fmx MSWINDOWS}

procedure TMain.ActualizarBancos;
var
  Numero: Integer;
  vQ: TFDQuery;
begin
  Numero := 0;
  QBancos.Close;
  QBancos.Open;
  QBancos.Last;
  ProgressBar1.Value := 0;
  ProgressBar1.Max := QBancos.RecordCount;
  QBancos.First;

  while not QBancos.Eof do
  Begin
    vQ := TFDQuery.Create(nil);
    try

      vQ.Connection := Main.ConDestino;
      vQ.SQL.Add
        (' update or insert INTO BANCOS (BANKNO,CSHACCT,LASERCKS,BANKNAME,' +
        ' BANKBRANCH,BANKADDR,BANKCODE,BANKENCD,CHECKNO,INUSE,BANKADDR1,CONTACTO1,CARGO1,'
        + ' CONTACTO2,CARGO2,TELE1,EXT1,TELE2,EXT2,FAX,EXT3,CODIGO_INSTALACION,CODIGO_EMPRESA,'
        + ' CUENTA_ORIGEN,OFICINA_ORIGEN,CODBANCO, CODIGO_REGIONAL)' +
        ' VALUES(' + ' :BANKNO,:CSHACCT,:LASERCKS,:BANKNAME,' +
        ' :BANKBRANCH,:BANKADDR,:BANKCODE,:BANKENCD,:CHECKNO,:INUSE,:BANKADDR1,:CONTACTO1,:CARGO1,'
        + ' :CONTACTO2,:CARGO2,:TELE1,:EXT1,:TELE2,:EXT2,:FAX,:EXT3,:CODIGO_INSTALACION,:CODIGO_EMPRESA,'
        + ' :CUENTA_ORIGEN,:OFICINA_ORIGEN,:CODBANCO,:CODIGO_REGIONAL)');
      vQ.Close;
      vQ.ParamByName('BANKNO').AsString := QBancosBANKNO.AsString;
      vQ.ParamByName('CSHACCT').AsFloat := QBancosCSHACCT.AsFloat;
      vQ.ParamByName('LASERCKS').AsString := QBancosLASERCKS.AsString;
      vQ.ParamByName('BANKNAME').AsString := QBancosBANKNAME.AsString;
      vQ.ParamByName('BANKBRANCH').AsString := QBancosBANKBRANCH.AsString;
      vQ.ParamByName('BANKADDR').AsString := QBancosBANKADDR.AsString;
      vQ.ParamByName('BANKCODE').AsString := QBancosBANKCODE.AsString;
      vQ.ParamByName('BANKENCD').AsString := QBancosBANKENCD.AsString;
      vQ.ParamByName('CHECKNO').AsFloat := QBancosCHECKNO.AsFloat;
      vQ.ParamByName('INUSE').AsString := QBancosINUSE.AsString;
      vQ.ParamByName('BANKADDR1').AsString := QBancosBANKADDR1.AsString;
      vQ.ParamByName('CONTACTO1').AsString := QBancosCONTACTO1.AsString;
      vQ.ParamByName('CARGO1').AsString := QBancosCARGO1.AsString;
      vQ.ParamByName('CONTACTO2').AsString := QBancosCONTACTO2.AsString;
      vQ.ParamByName('CARGO2').AsString := QBancosCARGO2.AsString;
      vQ.ParamByName('TELE1').AsString := QBancosTELE1.AsString;
      vQ.ParamByName('EXT1').AsString := QBancosEXT1.AsString;
      vQ.ParamByName('TELE2').AsString := QBancosTELE2.AsString;
      vQ.ParamByName('EXT2').AsString := QBancosEXT2.AsString;
      vQ.ParamByName('FAX').AsString := QBancosFAX.AsString;
      vQ.ParamByName('EXT3').AsString := QBancosEXT3.AsString;
      vQ.ParamByName('CODIGO_INSTALACION').AsString :=
        QBancosCODIGO_INSTALACION.AsString;
      vQ.ParamByName('CODIGO_EMPRESA').AsString :=
        QBancosCODIGO_EMPRESA.AsString;
      vQ.ParamByName('CUENTA_ORIGEN').AsString := QBancosCUENTA_ORIGEN.AsString;
      vQ.ParamByName('OFICINA_ORIGEN').AsString :=
        QBancosOFICINA_ORIGEN.AsString;
      vQ.ParamByName('CODBANCO').AsString := QBancosCODBANCO.AsString;
      vQ.ParamByName('CODIGO_REGIONAL').AsString :=
        QBancosCODIGO_REGIONAL.AsString;

      vQ.ExecSQL;
    finally
      vQ.DisposeOf;
    end;
    Numero := Numero + 1;
    ProgressBar1.Value := ProgressBar1.Value + 1;
    Application.ProcessMessages;
    QBancos.Next;
  End;

  Memo1.Lines.Add('->Se Actualizan Los Bancos:');
  Memo1.Lines.Add('  -Tabla Bancos');
  Memo1.Lines.Add('  -Cantidad de Bancos: ' + IntToStr(Numero));
end;

procedure TMain.ActualizarBodegas;
var
  Numero: Integer;
  vQ: TFDQuery;
begin
  Numero := 0;
  QLoc.Close;
  QLoc.Open;
  QLoc.Last;
  ProgressBar1.Value := 0;
  ProgressBar1.Max := QLoc.RecordCount;
  QLoc.First;

  while not QLoc.Eof do
  Begin
    vQ := TFDQuery.Create(nil);
    try

      vQ.Connection := Main.ConDestino;
      vQ.SQL.Add
        (' update or insert INTO LOC(LOCALIZACION,DESCRIPCION,RESPONSABLE,' +
        ' TIPOBODEGA,NITDEFAULT,ACCT_ING,ACCT_GASTO,DESTINO,GEN_CONTA,' +
        ' ID_N,E,S,TIPO,BODEST,WEBSER)VALUES(' +
        ' :LOCALIZACION,:DESCRIPCION,:RESPONSABLE,' +
        ' :TIPOBODEGA,:NITDEFAULT,:ACCT_ING,:ACCT_GASTO,:DESTINO,:GEN_CONTA,' +
        ' :ID_N,:E,:S,:TIPO,:BODEST,:WEBSER)');
      vQ.Close;
      vQ.ParamByName('LOCALIZACION').AsString := QLocLOCALIZACION.AsString;
      vQ.ParamByName('DESCRIPCION').AsString := QLocDESCRIPCION.AsString;
      vQ.ParamByName('RESPONSABLE').AsString := QLocRESPONSABLE.AsString;
      vQ.ParamByName('TIPOBODEGA').AsString := QLocTIPOBODEGA.AsString;
      vQ.ParamByName('NITDEFAULT').AsString := QLocNITDEFAULT.AsString;
      vQ.ParamByName('ACCT_ING').AsFloat := QLocACCT_ING.AsFloat;
      vQ.ParamByName('ACCT_GASTO').AsFloat := QLocACCT_GASTO.AsFloat;
      vQ.ParamByName('DESTINO').AsInteger := QLocDESTINO.AsInteger;
      vQ.ParamByName('GEN_CONTA').AsString := QLocGEN_CONTA.AsString;
      vQ.ParamByName('ID_N').AsString := QLocID_N.AsString;
      vQ.ParamByName('E').AsInteger := QLocE.AsInteger;
      vQ.ParamByName('S').AsInteger := QLocS.AsInteger;
      vQ.ParamByName('TIPO').AsString := QLocTIPO.AsString;
      vQ.ParamByName('BODEST').AsString := QLocBODEST.AsString;
      vQ.ParamByName('WEBSER').AsString := QLocWEBSER.AsString;
      vQ.ExecSQL;
    finally
      vQ.DisposeOf;
    end;
    Numero := Numero + 1;
    ProgressBar1.Value := ProgressBar1.Value + 1;
    Application.ProcessMessages;
    QLoc.Next;
  End;

  Memo1.Lines.Add('->Se Actualizan Las Bodegas:');
  Memo1.Lines.Add('  -Tabla Loc');
  Memo1.Lines.Add('  -Cantidad de Bodegas: ' + IntToStr(Numero));
end;

procedure TMain.ActualizarConceptosRC;
var
  Numero: Integer;
  vQ: TFDQuery;
begin
  Numero := 0;
  QCarprosys.Close;
  QCarprosys.Open;
  QCarprosys.Last;
  ProgressBar1.Value := 0;
  ProgressBar1.Max := QCarprosys.RecordCount;
  QCarprosys.First;

  while not QCarprosys.Eof do
  Begin
    vQ := TFDQuery.Create(nil);
    try

      vQ.Connection := Main.ConDestino;
      vQ.SQL.Add
        (' update or insert INTO CARPROSYS ( DCT,CUENTA,CONCEPTO,NATURALEZACTA,'
        + ' VISIBLE,RAZON)' + ' VALUES(:DCT,:CUENTA,:CONCEPTO,:NATURALEZACTA,' +
        ' :VISIBLE,:RAZON)');
      vQ.Close;
      vQ.ParamByName('DCT').AsInteger := QCarprosysDCT.AsInteger;
      vQ.ParamByName('CUENTA').AsFloat := QCarprosysCUENTA.AsFloat;
      vQ.ParamByName('CONCEPTO').AsString := QCarprosysCONCEPTO.AsString;
      vQ.ParamByName('NATURALEZACTA').AsString := QCarprosysNATURALEZACTA.AsString;
      vQ.ParamByName('VISIBLE').AsString := QCarprosysVISIBLE.AsString;
      vQ.ParamByName('RAZON').AsString := QCarprosysRAZON.AsString;

      vQ.ExecSQL;
    finally
      vQ.DisposeOf;
    end;
    Numero := Numero + 1;
    ProgressBar1.Value := ProgressBar1.Value + 1;
    Application.ProcessMessages;
    QCarprosys.Next;
  End;

  Memo1.Lines.Add('->Se Actualizan Los Conceptos de Recibos:');
  Memo1.Lines.Add('  -Tabla Carprosys');
  Memo1.Lines.Add('  -Cantidad de Conceptos: ' + IntToStr(Numero));
end;

procedure TMain.ActualizarCuentas;
var
  Numero: Integer;
  vQ: TFDQuery;

begin
  // COLGAAP
  Numero := 0;
  QAcct.Close;
  QAcct.Open;
  QAcct.Last;
  ProgressBar1.Value := 0;
  ProgressBar1.Max := QAcct.RecordCount;
  QAcct.First;

  while not QAcct.Eof do
  Begin
    vQ := TFDQuery.Create(nil);
    try
      vQ.Connection := Main.ConDestino;
      vQ.SQL.Add(' update or insert INTO ACCT (ACCT,E,S,DESCRIPCION,TIPO,CLASS,'
        + ' CCOST,BEGDR,BEGCR,OLDDR,OLDCR,CURDR,CURCR,BDGTCAT,AJUSTE,' +
        ' CORRECCION,COD_SUBCUENTA,MONETARIO,NVEL,BASERTNCION,' +
        ' PORCENRETENCION,CDGOTTL,CDGOGRPO,CDGOCNTA,CDGOSBCNTA,' +
        ' CDGOAUX,TPOAPLCCION,CNCLCION,DPRTMNTOCSTO,JBNO,VNCMNTO,CTAS,' +
        ' POSESTFINAN,VALORIPATRIMONIO,MONETARIO_APL,UNIVEL,IDENEG,' +
        ' SBCTAANA,MAYOR_VALOR,PLANTILLA_RETENCION,FEFECTIVO,PRIORIDAD,' +
        ' MATERIALIDAD,MODELO,NORMA,COD_FORMATO,COD_CONCEPTO,' +
        ' ACTIVIDADES,APLI_IMPUESTO)VALUES(' +
        ' :ACCT,:E,:S,:DESCRIPCION,:TIPO,:CLASS,' +
        ' :CCOST,:BEGDR,:BEGCR,:OLDDR,:OLDCR,:CURDR,:CURCR,:BDGTCAT,:AJUSTE,' +
        ' :CORRECCION,:COD_SUBCUENTA,:MONETARIO,:NVEL,:BASERTNCION,' +
        ' :PORCENRETENCION,:CDGOTTL,:CDGOGRPO,:CDGOCNTA,:CDGOSBCNTA,' +
        ' :CDGOAUX,:TPOAPLCCION,:CNCLCION,:DPRTMNTOCSTO,:JBNO,:VNCMNTO,:CTAS,' +
        ' :POSESTFINAN,:VALORIPATRIMONIO,:MONETARIO_APL,:UNIVEL,:IDENEG,' +
        ' :SBCTAANA,:MAYOR_VALOR,:PLANTILLA_RETENCION,:FEFECTIVO,:PRIORIDAD,' +
        ' :MATERIALIDAD,:MODELO,:NORMA,:COD_FORMATO,:COD_CONCEPTO,' +
        ' :ACTIVIDADES,:APLI_IMPUESTO)');
      vQ.Close;
      vQ.ParamByName('ACCT').AsFloat := QAcctACCT.AsFloat;
      vQ.ParamByName('E').AsInteger := QAcctE.AsInteger;
      vQ.ParamByName('S').AsInteger := QAcctS.AsInteger;
      vQ.ParamByName('DESCRIPCION').AsString := QAcctDESCRIPCION.AsString;
      vQ.ParamByName('TIPO').AsString := QAcctTIPO.AsString;
      vQ.ParamByName('CLASS').AsString := QAcctCLASS.AsString;
      vQ.ParamByName('CCOST').AsInteger := QAcctCCOST.AsInteger;
      vQ.ParamByName('BEGDR').AsFloat := QAcctBEGDR.AsFloat;
      vQ.ParamByName('BEGCR').AsFloat := QAcctBEGCR.AsFloat;
      vQ.ParamByName('OLDDR').AsFloat := QAcctOLDDR.AsFloat;
      vQ.ParamByName('OLDCR').AsFloat := QAcctOLDCR.AsFloat;
      vQ.ParamByName('CURDR').AsFloat := QAcctCURDR.AsFloat;
      vQ.ParamByName('CURCR').AsFloat := QAcctCURCR.AsFloat;
      vQ.ParamByName('BDGTCAT').AsString := QAcctBDGTCAT.AsString;
      vQ.ParamByName('AJUSTE').AsFloat := QAcctAJUSTE.AsFloat;
      vQ.ParamByName('CORRECCION').AsFloat := QAcctCORRECCION.AsFloat;
      vQ.ParamByName('COD_SUBCUENTA').AsString := QAcctCOD_SUBCUENTA.AsString;
      vQ.ParamByName('MONETARIO').AsString := QAcctMONETARIO.AsString;
      vQ.ParamByName('NVEL').AsInteger := QAcctNVEL.AsInteger;
      vQ.ParamByName('BASERTNCION').AsString := QAcctBASERTNCION.AsString;
      vQ.ParamByName('PORCENRETENCION').AsFloat := QAcctPORCENRETENCION.AsFloat;
      vQ.ParamByName('CDGOTTL').AsInteger := QAcctCDGOTTL.AsInteger;
      vQ.ParamByName('CDGOGRPO').AsInteger := QAcctCDGOGRPO.AsInteger;
      vQ.ParamByName('CDGOCNTA').AsInteger := QAcctCDGOCNTA.AsInteger;
      vQ.ParamByName('CDGOSBCNTA').AsInteger := QAcctCDGOSBCNTA.AsInteger;
      vQ.ParamByName('CDGOAUX').AsFloat := QAcctCDGOAUX.AsFloat;
      vQ.ParamByName('TPOAPLCCION').AsString := QAcctTPOAPLCCION.AsString;
      vQ.ParamByName('CNCLCION').AsString := QAcctCNCLCION.AsString;
      vQ.ParamByName('DPRTMNTOCSTO').AsString := QAcctDPRTMNTOCSTO.AsString;
      vQ.ParamByName('JBNO').AsString := QAcctJBNO.AsString;
      vQ.ParamByName('VNCMNTO').AsString := QAcctVNCMNTO.AsString;
      vQ.ParamByName('CTAS').AsString := QAcctCTAS.AsString;
      vQ.ParamByName('POSESTFINAN').AsFloat := QAcctPOSESTFINAN.AsFloat;
      vQ.ParamByName('VALORIPATRIMONIO').AsFloat :=
        QAcctVALORIPATRIMONIO.AsFloat;
      vQ.ParamByName('MONETARIO_APL').AsString := QAcctMONETARIO_APL.AsString;
      vQ.ParamByName('UNIVEL').AsInteger := QAcctUNIVEL.AsInteger;
      vQ.ParamByName('IDENEG').AsFloat := QAcctIDENEG.AsFloat;
      vQ.ParamByName('SBCTAANA').AsFloat := QAcctSBCTAANA.AsFloat;
      vQ.ParamByName('MAYOR_VALOR').AsString := QAcctMAYOR_VALOR.AsString;
      vQ.ParamByName('PLANTILLA_RETENCION').AsString :=
        QAcctPLANTILLA_RETENCION.AsString;
      vQ.ParamByName('FEFECTIVO').AsInteger := QAcctFEFECTIVO.AsInteger;
      vQ.ParamByName('PRIORIDAD').AsInteger := QAcctPRIORIDAD.AsInteger;
      vQ.ParamByName('MATERIALIDAD').AsFloat := QAcctMATERIALIDAD.AsFloat;
      vQ.ParamByName('MODELO').AsInteger := QAcctMODELO.AsInteger;
      vQ.ParamByName('NORMA').AsInteger := QAcctNORMA.AsInteger;
      vQ.ParamByName('COD_FORMATO').AsString := QAcctCOD_FORMATO.AsString;
      vQ.ParamByName('COD_CONCEPTO').AsString := QAcctCOD_CONCEPTO.AsString;
      vQ.ParamByName('ACTIVIDADES').AsString := QAcctACTIVIDADES.AsString;
      vQ.ParamByName('APLI_IMPUESTO').AsString := QAcctAPLI_IMPUESTO.AsString;
      vQ.ExecSQL;
    finally
      vQ.DisposeOf;
    end;
    Numero := Numero + 1;
    ProgressBar1.Value := ProgressBar1.Value + 1;
    Application.ProcessMessages;
    QAcct.Next;
  End;

  Memo1.Lines.Add('->Se Actualizan PUC COLGAAP:');
  Memo1.Lines.Add('  -Tabla Acct');
  Memo1.Lines.Add('  -Cantidad de Cuentas: ' + IntToStr(Numero));
  // NIIF
  Numero := 0;
  QNiifAcct.DisableControls;
  QNiifAcct.Close;
  QNiifAcct.Open;

  QNiifAcct.Last;
  ProgressBar1.Value := 0;
  ProgressBar1.Max := QNiifAcct.RecordCount;
  QNiifAcct.First;

  while not QNiifAcct.Eof do
  Begin
    vQ := TFDQuery.Create(nil);
    try
      vQ.Connection := Main.ConDestino;
      vQ.SQL.Add
        (' update or insert INTO NIIF_ACCT (ACCT,E,S,DESCRIPCION,TIPO,CLASS,' +
        ' CCOST,BEGDR,BEGCR,OLDDR,OLDCR,CURDR,CURCR,BDGTCAT,AJUSTE,' +
        ' CORRECCION,COD_SUBCUENTA,MONETARIO,NVEL,BASERTNCION,' +
        ' PORCENRETENCION,CDGOTTL,CDGOGRPO,CDGOCNTA,CDGOSBCNTA,' +
        ' CDGOAUX,TPOAPLCCION,CNCLCION,DPRTMNTOCSTO,JBNO,VNCMNTO,CTAS,' +
        ' POSESTFINAN,VALORIPATRIMONIO,MONETARIO_APL,UNIVEL,IDENEG,' +
        ' SBCTAANA,MAYOR_VALOR,PLANTILLA_RETENCION,FEFECTIVO,PRIORIDAD,' +
        ' MATERIALIDAD,MODELO,NORMA,COD_FORMATO,COD_CONCEPTO,' +
        ' ACTIVIDADES,APLI_IMPUESTO,PRIORIDAD_ORDENA,ORDENAMIENTO,EQUIVALENCIA)VALUES('
        + ' :ACCT,:E,:S,:DESCRIPCION,:TIPO,:CLASS,' +
        ' :CCOST,:BEGDR,:BEGCR,:OLDDR,:OLDCR,:CURDR,:CURCR,:BDGTCAT,:AJUSTE,' +
        ' :CORRECCION,:COD_SUBCUENTA,:MONETARIO,:NVEL,:BASERTNCION,' +
        ' :PORCENRETENCION,:CDGOTTL,:CDGOGRPO,:CDGOCNTA,:CDGOSBCNTA,' +
        ' :CDGOAUX,:TPOAPLCCION,:CNCLCION,:DPRTMNTOCSTO,:JBNO,:VNCMNTO,:CTAS,' +
        ' :POSESTFINAN,:VALORIPATRIMONIO,:MONETARIO_APL,:UNIVEL,:IDENEG,' +
        ' :SBCTAANA,:MAYOR_VALOR,:PLANTILLA_RETENCION,:FEFECTIVO,:PRIORIDAD,' +
        ' :MATERIALIDAD,:MODELO,:NORMA,:COD_FORMATO,:COD_CONCEPTO,' +
        ' :ACTIVIDADES,:APLI_IMPUESTO,:PRIORIDAD_ORDENA,:ORDENAMIENTO,:EQUIVALENCIA)');
      vQ.Close;
      vQ.ParamByName('ACCT').AsFloat := QNiifAcctACCT.AsFloat;
      vQ.ParamByName('E').AsInteger := QNiifAcctE.AsInteger;
      vQ.ParamByName('S').AsInteger := QNiifAcctS.AsInteger;
      vQ.ParamByName('DESCRIPCION').AsString := QNiifAcctDESCRIPCION.AsString;
      vQ.ParamByName('TIPO').AsString := QNiifAcctTIPO.AsString;
      vQ.ParamByName('CLASS').AsString := QNiifAcctCLASS.AsString;
      vQ.ParamByName('CCOST').AsInteger := QNiifAcctCCOST.AsInteger;
      vQ.ParamByName('BEGDR').AsFloat := QNiifAcctBEGDR.AsFloat;
      vQ.ParamByName('BEGCR').AsFloat := QNiifAcctBEGCR.AsFloat;
      vQ.ParamByName('OLDDR').AsFloat := QNiifAcctOLDDR.AsFloat;
      vQ.ParamByName('OLDCR').AsFloat := QNiifAcctOLDCR.AsFloat;
      vQ.ParamByName('CURDR').AsFloat := QNiifAcctCURDR.AsFloat;
      vQ.ParamByName('CURCR').AsFloat := QNiifAcctCURCR.AsFloat;
      vQ.ParamByName('BDGTCAT').AsString := QNiifAcctBDGTCAT.AsString;
      vQ.ParamByName('AJUSTE').AsFloat := QNiifAcctAJUSTE.AsFloat;
      vQ.ParamByName('CORRECCION').AsFloat := QNiifAcctCORRECCION.AsFloat;
      vQ.ParamByName('COD_SUBCUENTA').AsString :=
        QNiifAcctCOD_SUBCUENTA.AsString;
      vQ.ParamByName('MONETARIO').AsString := QNiifAcctMONETARIO.AsString;
      vQ.ParamByName('NVEL').AsInteger := QNiifAcctNVEL.AsInteger;
      vQ.ParamByName('BASERTNCION').AsString := QNiifAcctBASERTNCION.AsString;
      vQ.ParamByName('PORCENRETENCION').AsFloat :=
        QNiifAcctPORCENRETENCION.AsFloat;
      vQ.ParamByName('CDGOTTL').AsInteger := QNiifAcctCDGOTTL.AsInteger;
      vQ.ParamByName('CDGOGRPO').AsInteger := QNiifAcctCDGOGRPO.AsInteger;
      vQ.ParamByName('CDGOCNTA').AsInteger := QNiifAcctCDGOCNTA.AsInteger;
      vQ.ParamByName('CDGOSBCNTA').AsInteger := QNiifAcctCDGOSBCNTA.AsInteger;
      vQ.ParamByName('CDGOAUX').AsFloat := QNiifAcctCDGOAUX.AsFloat;
      vQ.ParamByName('TPOAPLCCION').AsString := QNiifAcctTPOAPLCCION.AsString;
      vQ.ParamByName('CNCLCION').AsString := QNiifAcctCNCLCION.AsString;
      vQ.ParamByName('DPRTMNTOCSTO').AsString := QNiifAcctDPRTMNTOCSTO.AsString;
      vQ.ParamByName('JBNO').AsString := QNiifAcctJBNO.AsString;
      vQ.ParamByName('VNCMNTO').AsString := QNiifAcctVNCMNTO.AsString;
      vQ.ParamByName('CTAS').AsString := QNiifAcctCTAS.AsString;
      vQ.ParamByName('POSESTFINAN').AsFloat := QNiifAcctPOSESTFINAN.AsFloat;
      vQ.ParamByName('VALORIPATRIMONIO').AsFloat :=
        QNiifAcctVALORIPATRIMONIO.AsFloat;
      vQ.ParamByName('MONETARIO_APL').AsString :=
        QNiifAcctMONETARIO_APL.AsString;
      vQ.ParamByName('UNIVEL').AsInteger := QNiifAcctUNIVEL.AsInteger;
      vQ.ParamByName('IDENEG').AsFloat := QNiifAcctIDENEG.AsFloat;
      vQ.ParamByName('SBCTAANA').AsFloat := QNiifAcctSBCTAANA.AsFloat;
      vQ.ParamByName('MAYOR_VALOR').AsString := QNiifAcctMAYOR_VALOR.AsString;
      vQ.ParamByName('PLANTILLA_RETENCION').AsString :=
        QNiifAcctPLANTILLA_RETENCION.AsString;
      vQ.ParamByName('FEFECTIVO').AsInteger := QNiifAcctFEFECTIVO.AsInteger;
      vQ.ParamByName('PRIORIDAD').AsInteger := QNiifAcctPRIORIDAD.AsInteger;
      vQ.ParamByName('MATERIALIDAD').AsFloat := QNiifAcctMATERIALIDAD.AsFloat;
      vQ.ParamByName('MODELO').AsInteger := QNiifAcctMODELO.AsInteger;
      vQ.ParamByName('NORMA').AsInteger := QNiifAcctNORMA.AsInteger;
      vQ.ParamByName('COD_FORMATO').AsString := QNiifAcctCOD_FORMATO.AsString;
      vQ.ParamByName('COD_CONCEPTO').AsString := QNiifAcctCOD_CONCEPTO.AsString;
      vQ.ParamByName('ACTIVIDADES').AsString := QNiifAcctACTIVIDADES.AsString;
      vQ.ParamByName('APLI_IMPUESTO').AsString :=
        QNiifAcctAPLI_IMPUESTO.AsString;
      vQ.ParamByName('PRIORIDAD_ORDENA').AsInteger :=
        QNiifAcctPRIORIDAD_ORDENA.AsInteger;
      vQ.ParamByName('ORDENAMIENTO').AsInteger :=
        QNiifAcctORDENAMIENTO.AsInteger;
      vQ.ParamByName('EQUIVALENCIA').AsFloat := QNiifAcctEQUIVALENCIA.AsFloat;
      vQ.ExecSQL;
    finally
      vQ.DisposeOf;
    end;
    Numero := Numero + 1;
    ProgressBar1.Value := ProgressBar1.Value + 1;
    Application.ProcessMessages;
    QNiifAcct.Next;
  End;
  Memo1.Lines.Add('->Se Actualiza PUC NIIF:');
  Memo1.Lines.Add('  -Tabla Niif_Acct');
  Memo1.Lines.Add('  -Cantidad de Cuentas: ' + IntToStr(Numero));
  // EQUIVALENCIA

  Numero := 0;
  QEquivalencia.Close;
  QEquivalencia.Open;
  QEquivalencia.Last;
  ProgressBar1.Value := 0;
  ProgressBar1.Max := QEquivalencia.RecordCount;
  QEquivalencia.First;

  while not QEquivalencia.Eof do
  Begin
    vQ := TFDQuery.Create(nil);
    try
      vQ.Connection := Main.ConDestino;
      vQ.SQL.Add
        (' update or insert INTO NIIF_EQUIVALENCIA (CODIGO,ACCT_NIIF,ACCT,NAT)VALUES('
        + ' :CODIGO,:ACCT_NIIF,:ACCT,:NAT)');
      vQ.Close;
      vQ.ParamByName('CODIGO').AsInteger := QEquivalenciaCODIGO.AsInteger;
      vQ.ParamByName('ACCT_NIIF').AsFloat := QEquivalenciaACCT_NIIF.AsFloat;
      vQ.ParamByName('ACCT').AsFloat := QEquivalenciaACCT.AsFloat;
      vQ.ParamByName('NAT').AsString := QEquivalenciaNAT.AsString;
      vQ.ExecSQL;
    finally
      vQ.DisposeOf;
    end;
    Numero := Numero + 1;
    ProgressBar1.Value := ProgressBar1.Value + 1;
    Application.ProcessMessages;
    QEquivalencia.Next;
  End;

  Memo1.Lines.Add('->Se Actualiza Equivalencia de Cuentas:');
  Memo1.Lines.Add('  -Tabla Niif_Equivalencia');
  Memo1.Lines.Add('  -Cantidad de Equivalencias: ' + IntToStr(Numero));
end;

procedure TMain.ActualizarFactipdoc;
var
  Numero: Integer;
  vQ: TFDQuery;
begin
  Numero := 0;
  QFactipdoc.Close;
  QFactipdoc.Open;
  QFactipdoc.Last;
  ProgressBar1.Value := 0;
  ProgressBar1.Max := QFactipdoc.RecordCount;
  QFactipdoc.First;

  while not QFactipdoc.Eof do
  Begin
    vQ := TFDQuery.Create(nil);
    try
      vQ.Connection := Main.ConDestino;
      vQ.SQL.Add
        (' update or insert INTO FATIPDOC (ID_EMPRESA,ID_SUCURSAL,ID_USUARIO' +
        ' ,CLIENTEPRED,CLAVE,PRXNUM,NUMDESDE,NUMHASTA,CONCPRIMERO,NUMAUTOR' +
        ' ,FECHAAUTOR,LICENCIASW,NUMAUTORSW,ID_PROVSW,SAF,QTYPRED,BODEGA' +
        ' ,MODIPRECIOS,DESCUENTOS,SUBCOSTO,PREFIJO,COPIAS,FORMATO,LASER' +
        ' ,CALCULA,SOBRECUPO,INVNEGATIVO,DIASMORA,PRECIOIVA,IMPRIME' +
        ' ,ADDITEMS_PEDIDO,ITEMS_MAXIMO,FACTURA_ITEM,LISTA_PRECIOS,PIDECAMBIO' +
        ' ,DECIMALES,COD_CAJON,FORMATO1,TIPODEV,FORMATO_DEV,MOD_FORPAGO,EDITA' +
        ' ,ANULA,CREA_CLIENTES,CREA_DEVOLUCION,DEV_EFECTIVO,DEV_VENDIDOS' +
        ' ,ANULA_DEV,SOBREPEDIDO,RESERVA,DESC_ADICIONAL,PROYECTO,MANDANTE' +
        ' ,E_DEV,S_DEV,IMPRESIONDIRECTA,PATHIMPRESIONDIRECTA,DEVOLCERO' +
        ' ,PRXNUMPP,IMPRIME_ABRE_CAJON,PUERTO,BODEGA_PROMOCION,RANGO_PRECIO' +
        ' ,AUTORIZAR_DESPACHO,CERRARPARCIALPEDIDO,MODIF_FECHA' +
        ' ,FORMATO_DEV_CONT,CERRARPARCIALPEDIDOO,DCTVALOR,DCTO_AD1,REMPARCIAL' +
        ' ,FACDOL,MODQTY,FACPLUS,PRINTFACTQR,SUGQTYDEV,FACTTIPO,PRINT,USUNOM' +
        ' ,FECAPE,VALBASE,APLRET,APLOIM,ABRE_CAJON,PORCENICA,PMINTIMBRE' +
        ' ,PMAXTIMBRE,VALIDAFDC,DPTO,CCOST,CLASEG,FACMOS,FACPED,CONFAC,ADMCLI' +
        ' ,CIEFAC,ADMCAJ ,REPFAC,MANBASE,MANBAS,REDONDEAIVA,USUNIT,CTRLBARRA' +
        ' ,CTRLPESO,MANDECFACT,ETIQ1,ETIQ2,ETIQ3,CONFCAJON,BORRA_DETALLE' +
        ' ,PERMISOPRECIO,DCTOVALOR,BODPRED,PRECIO_CERO,NUEVA_FACT' +
        ' ,INVNEGATIVOPOS,MANDANTEVTA,SINEXISTENCIA,DCTGLOBAL,ANUFAC' +
        ' ,CREABOTONESCOTIZ,MODIFICADESCRI,CONTROLFACVEN,FACTELECAUTO,FECHAINIFAC,FECHAVENFAC'
        + ' )VALUES(' + ' :ID_EMPRESA,:ID_SUCURSAL,:ID_USUARIO' +
        ' ,:CLIENTEPRED,:CLAVE,:PRXNUM,:NUMDESDE,:NUMHASTA,:CONCPRIMERO,:NUMAUTOR'
        + ' ,:FECHAAUTOR,:LICENCIASW,:NUMAUTORSW,:ID_PROVSW,:SAF,:QTYPRED,:BODEGA'
        + ' ,:MODIPRECIOS,:DESCUENTOS,:SUBCOSTO,:PREFIJO,:COPIAS,:FORMATO,:LASER'
        + ' ,:CALCULA,:SOBRECUPO,:INVNEGATIVO,:DIASMORA,:PRECIOIVA,:IMPRIME' +
        ' ,:ADDITEMS_PEDIDO,:ITEMS_MAXIMO,:FACTURA_ITEM,:LISTA_PRECIOS,:PIDECAMBIO'
        + ' ,:DECIMALES,:COD_CAJON,:FORMATO1,:TIPODEV,:FORMATO_DEV,:MOD_FORPAGO,:EDITA'
        + ' ,:ANULA,:CREA_CLIENTES,:CREA_DEVOLUCION,:DEV_EFECTIVO,:DEV_VENDIDOS'
        + ' ,:ANULA_DEV,:SOBREPEDIDO,:RESERVA,:DESC_ADICIONAL,:PROYECTO,:MANDANTE'
        + ' ,:E_DEV,:S_DEV,:IMPRESIONDIRECTA,:PATHIMPRESIONDIRECTA,:DEVOLCERO' +
        ' ,:PRXNUMPP,:IMPRIME_ABRE_CAJON,:PUERTO,:BODEGA_PROMOCION,:RANGO_PRECIO'
        + ' ,:AUTORIZAR_DESPACHO,:CERRARPARCIALPEDIDO,:MODIF_FECHA' +
        ' ,:FORMATO_DEV_CONT,:CERRARPARCIALPEDIDOO,:DCTVALOR,:DCTO_AD1,:REMPARCIAL'
        + ' ,:FACDOL,:MODQTY,:FACPLUS,:PRINTFACTQR,:SUGQTYDEV,:FACTTIPO,:PRINT,:USUNOM'
        + ' ,:FECAPE,:VALBASE,:APLRET,:APLOIM,:ABRE_CAJON,:PORCENICA,:PMINTIMBRE'
        + ' ,:PMAXTIMBRE,:VALIDAFDC,:DPTO,:CCOST,:CLASEG,:FACMOS,:FACPED,:CONFAC,:ADMCLI'
        + ' ,:CIEFAC,:ADMCAJ ,:REPFAC,:MANBASE,:MANBAS,:REDONDEAIVA,:USUNIT,:CTRLBARRA'
        + ' ,:CTRLPESO,:MANDECFACT,:ETIQ1,:ETIQ2,:ETIQ3,:CONFCAJON,:BORRA_DETALLE'
        + ' ,:PERMISOPRECIO,:DCTOVALOR,:BODPRED,:PRECIO_CERO,:NUEVA_FACT' +
        ' ,:INVNEGATIVOPOS,:MANDANTEVTA,:SINEXISTENCIA,:DCTGLOBAL,:ANUFAC' +
        ' ,:CREABOTONESCOTIZ,:MODIFICADESCRI,:CONTROLFACVEN,:FACTELECAUTO,:FECHAINIFAC,:FECHAVENFAC)');
      vQ.Close;
      vQ.ParamByName('ID_EMPRESA').AsInteger := QFactipdocID_EMPRESA.AsInteger;
      vQ.ParamByName('ID_SUCURSAL').AsInteger :=
        QFactipdocID_SUCURSAL.AsInteger;
      vQ.ParamByName('ID_USUARIO').AsString := QFactipdocID_USUARIO.AsString;
      vQ.ParamByName('CLIENTEPRED').AsString := QFactipdocCLIENTEPRED.AsString;
      vQ.ParamByName('CLAVE').AsString := QFactipdocCLAVE.AsString;
      vQ.ParamByName('PRXNUM').AsInteger := QFactipdocPRXNUM.AsInteger;
      vQ.ParamByName('NUMDESDE').AsInteger := QFactipdocNUMDESDE.AsInteger;
      vQ.ParamByName('NUMHASTA').AsInteger := QFactipdocNUMHASTA.AsInteger;
      vQ.ParamByName('CONCPRIMERO').AsInteger :=
        QFactipdocCONCPRIMERO.AsInteger;
      vQ.ParamByName('NUMAUTOR').AsInteger := QFactipdocNUMAUTOR.AsInteger;
      vQ.ParamByName('FECHAAUTOR').AsDateTime :=
        QFactipdocFECHAAUTOR.AsDateTime;
      vQ.ParamByName('LICENCIASW').AsString := QFactipdocLICENCIASW.AsString;
      vQ.ParamByName('NUMAUTORSW').AsInteger := QFactipdocNUMAUTORSW.AsInteger;
      vQ.ParamByName('ID_PROVSW').AsString := QFactipdocID_PROVSW.AsString;
      vQ.ParamByName('SAF').AsString := QFactipdocSAF.AsString;
      vQ.ParamByName('QTYPRED').AsFloat := QFactipdocQTYPRED.AsFloat;
      vQ.ParamByName('BODEGA').AsString := QFactipdocBODEGA.AsString;
      vQ.ParamByName('MODIPRECIOS').AsString := QFactipdocMODIPRECIOS.AsString;
      vQ.ParamByName('DESCUENTOS').AsString := QFactipdocDESCUENTOS.AsString;
      vQ.ParamByName('SUBCOSTO').AsString := QFactipdocSUBCOSTO.AsString;
      vQ.ParamByName('PREFIJO').AsString := QFactipdocPREFIJO.AsString;
      vQ.ParamByName('COPIAS').AsInteger := QFactipdocCOPIAS.AsInteger;
      vQ.ParamByName('FORMATO').AsString := QFactipdocFORMATO.AsString;
      vQ.ParamByName('LASER').AsString := QFactipdocLASER.AsString;
      vQ.ParamByName('CALCULA').AsString := QFactipdocCALCULA.AsString;
      vQ.ParamByName('SOBRECUPO').AsString := QFactipdocSOBRECUPO.AsString;
      vQ.ParamByName('INVNEGATIVO').AsString := QFactipdocINVNEGATIVO.AsString;
      vQ.ParamByName('DIASMORA').AsInteger := QFactipdocDIASMORA.AsInteger;
      vQ.ParamByName('PRECIOIVA').AsString := QFactipdocPRECIOIVA.AsString;
      vQ.ParamByName('IMPRIME').AsString := QFactipdocIMPRIME.AsString;
      vQ.ParamByName('ADDITEMS_PEDIDO').AsString :=
        QFactipdocADDITEMS_PEDIDO.AsString;
      vQ.ParamByName('ITEMS_MAXIMO').AsInteger :=
        QFactipdocITEMS_MAXIMO.AsInteger;
      vQ.ParamByName('FACTURA_ITEM').AsString :=
        QFactipdocFACTURA_ITEM.AsString;
      vQ.ParamByName('LISTA_PRECIOS').AsString :=
        QFactipdocLISTA_PRECIOS.AsString;
      vQ.ParamByName('PIDECAMBIO').AsString := QFactipdocPIDECAMBIO.AsString;
      vQ.ParamByName('DECIMALES').AsString := QFactipdocDECIMALES.AsString;
      vQ.ParamByName('COD_CAJON').AsString := QFactipdocCOD_CAJON.AsString;
      vQ.ParamByName('FORMATO1').AsString := QFactipdocFORMATO1.AsString;
      vQ.ParamByName('TIPODEV').AsString := QFactipdocTIPODEV.AsString;
      vQ.ParamByName('FORMATO_DEV').AsString := QFactipdocFORMATO_DEV.AsString;
      vQ.ParamByName('MOD_FORPAGO').AsString := QFactipdocMOD_FORPAGO.AsString;
      vQ.ParamByName('EDITA').AsString := QFactipdocEDITA.AsString;
      vQ.ParamByName('ANULA').AsString := QFactipdocANULA.AsString;
      vQ.ParamByName('CREA_CLIENTES').AsString :=
        QFactipdocCREA_CLIENTES.AsString;
      vQ.ParamByName('CREA_DEVOLUCION').AsString :=
        QFactipdocCREA_DEVOLUCION.AsString;
      vQ.ParamByName('DEV_EFECTIVO').AsString :=
        QFactipdocDEV_EFECTIVO.AsString;
      vQ.ParamByName('DEV_VENDIDOS').AsString :=
        QFactipdocDEV_VENDIDOS.AsString;
      vQ.ParamByName('ANULA_DEV').AsString := QFactipdocANULA_DEV.AsString;
      vQ.ParamByName('SOBREPEDIDO').AsString := QFactipdocSOBREPEDIDO.AsString;
      vQ.ParamByName('RESERVA').AsString := QFactipdocRESERVA.AsString;
      vQ.ParamByName('DESC_ADICIONAL').AsString :=
        QFactipdocDESC_ADICIONAL.AsString;
      vQ.ParamByName('PROYECTO').AsString := QFactipdocPROYECTO.AsString;
      vQ.ParamByName('MANDANTE').AsString := QFactipdocMANDANTE.AsString;
      vQ.ParamByName('E_DEV').AsString := QFactipdocE_DEV.AsString;
      vQ.ParamByName('S_DEV').AsString := QFactipdocS_DEV.AsString;
      vQ.ParamByName('IMPRESIONDIRECTA').AsString :=
        QFactipdocIMPRESIONDIRECTA.AsString;
      vQ.ParamByName('PATHIMPRESIONDIRECTA').AsString :=
        QFactipdocPATHIMPRESIONDIRECTA.AsString;
      vQ.ParamByName('DEVOLCERO').AsString := QFactipdocDEVOLCERO.AsString;
      vQ.ParamByName('PRXNUMPP').AsString := QFactipdocPRXNUMPP.AsString;
      vQ.ParamByName('IMPRIME_ABRE_CAJON').AsString :=
        QFactipdocIMPRIME_ABRE_CAJON.AsString;
      vQ.ParamByName('PUERTO').AsString := QFactipdocPUERTO.AsString;
      vQ.ParamByName('BODEGA_PROMOCION').AsString :=
        QFactipdocBODEGA_PROMOCION.AsString;
      vQ.ParamByName('RANGO_PRECIO').AsString :=
        QFactipdocRANGO_PRECIO.AsString;
      vQ.ParamByName('AUTORIZAR_DESPACHO').AsString :=
        QFactipdocAUTORIZAR_DESPACHO.AsString;
      vQ.ParamByName('CERRARPARCIALPEDIDO').AsString :=
        QFactipdocCERRARPARCIALPEDIDO.AsString;
      vQ.ParamByName('MODIF_FECHA').AsString := QFactipdocMODIF_FECHA.AsString;
      vQ.ParamByName('FORMATO_DEV_CONT').AsString :=
        QFactipdocFORMATO_DEV_CONT.AsString;
      vQ.ParamByName('CERRARPARCIALPEDIDOO').AsString :=
        QFactipdocCERRARPARCIALPEDIDOO.AsString;
      vQ.ParamByName('DCTVALOR').AsString := QFactipdocDCTVALOR.AsString;
      vQ.ParamByName('DCTO_AD1').AsString := QFactipdocDCTO_AD1.AsString;
      vQ.ParamByName('REMPARCIAL').AsString := QFactipdocREMPARCIAL.AsString;
      vQ.ParamByName('FACDOL').AsString := QFactipdocFACDOL.AsString;
      vQ.ParamByName('MODQTY').AsString := QFactipdocMODQTY.AsString;
      vQ.ParamByName('FACPLUS').AsString := QFactipdocFACPLUS.AsString;
      vQ.ParamByName('PRINTFACTQR').AsString := QFactipdocPRINTFACTQR.AsString;
      vQ.ParamByName('SUGQTYDEV').AsString := QFactipdocSUGQTYDEV.AsString;
      vQ.ParamByName('FACTTIPO').AsString := QFactipdocFACTTIPO.AsString;
      vQ.ParamByName('PRINT').AsString := QFactipdocPRINT.AsString;
      vQ.ParamByName('USUNOM').AsString := QFactipdocUSUNOM.AsString;
      vQ.ParamByName('FECAPE').AsString := QFactipdocFECAPE.AsString;
      vQ.ParamByName('VALBASE').AsFloat := QFactipdocVALBASE.AsFloat;
      vQ.ParamByName('APLRET').AsString := QFactipdocAPLRET.AsString;
      vQ.ParamByName('APLOIM').AsString := QFactipdocAPLOIM.AsString;
      vQ.ParamByName('ABRE_CAJON').AsString := QFactipdocABRE_CAJON.AsString;
      vQ.ParamByName('PORCENICA').AsFloat := QFactipdocPORCENICA.AsFloat;
      vQ.ParamByName('PMINTIMBRE').AsFloat := QFactipdocPMINTIMBRE.AsFloat;
      vQ.ParamByName('PMAXTIMBRE').AsFloat := QFactipdocPMAXTIMBRE.AsFloat;
      vQ.ParamByName('VALIDAFDC').AsString := QFactipdocVALIDAFDC.AsString;
      vQ.ParamByName('DPTO').AsInteger := QFactipdocDPTO.AsInteger;
      vQ.ParamByName('CCOST').AsInteger := QFactipdocCCOST.AsInteger;
      vQ.ParamByName('CLASEG').AsString := QFactipdocCLASEG.AsString;
      vQ.ParamByName('FACMOS').AsString := QFactipdocFACMOS.AsString;
      vQ.ParamByName('FACPED').AsString := QFactipdocFACPED.AsString;
      vQ.ParamByName('CONFAC').AsString := QFactipdocCONFAC.AsString;
      vQ.ParamByName('ADMCLI').AsString := QFactipdocADMCLI.AsString;
      vQ.ParamByName('CIEFAC').AsString := QFactipdocCIEFAC.AsString;
      vQ.ParamByName('ADMCAJ').AsString := QFactipdocADMCAJ.AsString;
      vQ.ParamByName('REPFAC').AsString := QFactipdocREPFAC.AsString;
      vQ.ParamByName('MANBASE').AsString := QFactipdocMANBASE.AsString;
      vQ.ParamByName('MANBAS').AsString := QFactipdocMANBAS.AsString;
      vQ.ParamByName('REDONDEAIVA').AsString := QFactipdocREDONDEAIVA.AsString;
      vQ.ParamByName('USUNIT').AsString := QFactipdocUSUNIT.AsString;
      vQ.ParamByName('CTRLBARRA').AsString := QFactipdocCTRLBARRA.AsString;
      vQ.ParamByName('CTRLPESO').AsString := QFactipdocCTRLPESO.AsString;
      vQ.ParamByName('MANDECFACT').AsString := QFactipdocMANDECFACT.AsString;
      vQ.ParamByName('ETIQ1').AsString := QFactipdocETIQ1.AsString;
      vQ.ParamByName('ETIQ2').AsString := QFactipdocETIQ2.AsString;
      vQ.ParamByName('ETIQ3').AsString := QFactipdocETIQ3.AsString;
      vQ.ParamByName('CONFCAJON').AsString := QFactipdocCONFCAJON.AsString;
      vQ.ParamByName('BORRA_DETALLE').AsString :=
        QFactipdocBORRA_DETALLE.AsString;
      vQ.ParamByName('PERMISOPRECIO').AsString :=
        QFactipdocPERMISOPRECIO.AsString;
      vQ.ParamByName('DCTOVALOR').AsString := QFactipdocDCTOVALOR.AsString;
      vQ.ParamByName('BODPRED').AsString := QFactipdocBODPRED.AsString;
      vQ.ParamByName('PRECIO_CERO').AsString := QFactipdocPRECIO_CERO.AsString;
      vQ.ParamByName('NUEVA_FACT').AsString := QFactipdocNUEVA_FACT.AsString;
      vQ.ParamByName('INVNEGATIVOPOS').AsString :=
        QFactipdocINVNEGATIVOPOS.AsString;
      vQ.ParamByName('MANDANTEVTA').AsString := QFactipdocMANDANTEVTA.AsString;
      vQ.ParamByName('SINEXISTENCIA').AsString :=
        QFactipdocSINEXISTENCIA.AsString;
      vQ.ParamByName('DCTGLOBAL').AsString := QFactipdocDCTGLOBAL.AsString;
      vQ.ParamByName('ANUFAC').AsString := QFactipdocANUFAC.AsString;
      vQ.ParamByName('CREABOTONESCOTIZ').AsString :=
        QFactipdocCREABOTONESCOTIZ.AsString;
      vQ.ParamByName('MODIFICADESCRI').AsString :=
        QFactipdocMODIFICADESCRI.AsString;
      vQ.ParamByName('CONTROLFACVEN').AsString :=
        QFactipdocCONTROLFACVEN.AsString;
      vQ.ParamByName('FACTELECAUTO').AsString :=
        QFactipdocFACTELECAUTO.AsString;
      vQ.ParamByName('FECHAINIFAC').AsDateTime :=
        QFactipdocFECHAINIFAC.AsDateTime;
      vQ.ParamByName('FECHAVENFAC').AsDateTime :=
        QFactipdocFECHAVENFAC.AsDateTime;

      vQ.ExecSQL;
    finally
      vQ.DisposeOf;
    end;
    Numero := Numero + 1;
    ProgressBar1.Value := ProgressBar1.Value + 1;
    Application.ProcessMessages;
    QFactipdoc.Next;
  End;

  Memo1.Lines.Add('->Se Actualizan Usuarios de Facturacion:');
  Memo1.Lines.Add('  -Tabla Factipdoc');
  Memo1.Lines.Add('  -Cantidad de Usuarios: ' + IntToStr(Numero));
end;

procedure TMain.ActualizarForPago;
var
  Numero: Integer;
  vQ: TFDQuery;
begin
  Numero := 0;
  QFor_Pago.Close;
  QFor_Pago.Open;
  QFor_Pago.Last;
  ProgressBar1.Value := 0;
  ProgressBar1.Max := QFor_Pago.RecordCount;
  QFor_Pago.First;

  while not QFor_Pago.Eof do
  Begin
    vQ := TFDQuery.Create(nil);
    try

      vQ.Connection := Main.ConDestino;
      vQ.SQL.Add(' update or insert INTO FOR_PAGO (CONCEPTO,NUM_CUOTA,ACCT,' +
        ' DESCRIPCION,DIAS,PORCENT,CONTA,TIPO,CLASE,AGRUPA,AUTORIZADO,' +
        ' PIDEENTIDAD,PIDEDOC,RECARGO_PRECIO,DIAS_FINANCIACION,INTERES_FINANCIACION,'
        + ' APLICARPP,POR_VALOR,PAGA_COMISION)VALUES(' +
        ' :CONCEPTO,:NUM_CUOTA,:ACCT,' +
        ' :DESCRIPCION,:DIAS,:PORCENT,:CONTA,:TIPO,:CLASE,:AGRUPA,:AUTORIZADO,'
        + ' :PIDEENTIDAD,:PIDEDOC,:RECARGO_PRECIO,:DIAS_FINANCIACION,:INTERES_FINANCIACION,'
        + ' :APLICARPP,:POR_VALOR,:PAGA_COMISION)');
      vQ.Close;
      vQ.ParamByName('CONCEPTO').AsInteger := QFor_PagoCONCEPTO.AsInteger;
      vQ.ParamByName('NUM_CUOTA').AsInteger := QFor_PagoNUM_CUOTA.AsInteger;
      vQ.ParamByName('ACCT').AsFloat := QFor_PagoACCT.AsFloat;
      vQ.ParamByName('DESCRIPCION').AsString := QFor_PagoDESCRIPCION.AsString;
      vQ.ParamByName('DIAS').AsInteger := QFor_PagoDIAS.AsInteger;
      vQ.ParamByName('PORCENT').AsFloat := QFor_PagoPORCENT.AsFloat;
      vQ.ParamByName('CONTA').AsString := QFor_PagoCONTA.AsString;
      vQ.ParamByName('TIPO').AsString := QFor_PagoTIPO.AsString;
      vQ.ParamByName('CLASE').AsString := QFor_PagoCLASE.AsString;
      vQ.ParamByName('AGRUPA').AsString := QFor_PagoAGRUPA.AsString;
      vQ.ParamByName('AUTORIZADO').AsString := QFor_PagoAUTORIZADO.AsString;
      vQ.ParamByName('PIDEENTIDAD').AsString := QFor_PagoPIDEENTIDAD.AsString;
      vQ.ParamByName('PIDEDOC').AsString := QFor_PagoPIDEDOC.AsString;
      vQ.ParamByName('RECARGO_PRECIO').AsFloat :=
        QFor_PagoRECARGO_PRECIO.AsFloat;
      vQ.ParamByName('DIAS_FINANCIACION').AsInteger :=
        QFor_PagoDIAS_FINANCIACION.AsInteger;
      vQ.ParamByName('INTERES_FINANCIACION').AsFloat :=
        QFor_PagoINTERES_FINANCIACION.AsFloat;
      vQ.ParamByName('APLICARPP').AsString := QFor_PagoAPLICARPP.AsString;
      vQ.ParamByName('POR_VALOR').AsString := QFor_PagoPOR_VALOR.AsString;
      vQ.ParamByName('PAGA_COMISION').AsString :=
        QFor_PagoPAGA_COMISION.AsString;
      vQ.ExecSQL;
    finally
      vQ.DisposeOf;
    end;
    Numero := Numero + 1;
    ProgressBar1.Value := ProgressBar1.Value + 1;
    Application.ProcessMessages;
    QFor_Pago.Next;
  End;

  Memo1.Lines.Add('->Se Actualizan Formas de Pago:');
  Memo1.Lines.Add('  -Tabla For_Pago');
  Memo1.Lines.Add('  -Cantidad de Formas de Pago: ' + IntToStr(Numero));
end;

procedure TMain.ActualizarGrupos;
var
  Numero: Integer;
  vQ: TFDQuery;
begin
  Numero := 0;
  QGrupo.Close;
  QGrupo.Open;
  QGrupo.Last;
  ProgressBar1.Value := 0;
  ProgressBar1.Max := QGrupo.RecordCount;
  QGrupo.First;

  while not QGrupo.Eof do
  Begin
    vQ := TFDQuery.Create(nil);
    try
      vQ.Connection := Main.ConDestino;
      vQ.SQL.Add
        (' update or insert INTO GRUPO (CODGRUPO,CODLINEA,DESCGRUPO,TIEDES)VALUES('
        + ' :CODGRUPO,:CODLINEA,:DESCGRUPO,:TIEDES)');
      vQ.Close;
      vQ.ParamByName('CODGRUPO').AsString := QGrupoCODGRUPO.AsString;
      vQ.ParamByName('CODLINEA').AsString := QGrupoCODLINEA.AsString;
      vQ.ParamByName('DESCGRUPO').AsString := QGrupoDESCGRUPO.AsString;
      vQ.ParamByName('TIEDES').AsString := QGrupoTIEDES.AsString;
      vQ.ExecSQL;
    finally
      vQ.DisposeOf;
    end;
    Numero := Numero + 1;
    ProgressBar1.Value := ProgressBar1.Value + 1;
    Application.ProcessMessages;
    QGrupo.Next;
  End;

  Memo1.Lines.Add('->Se Actualizan Grupos de Producto:');
  Memo1.Lines.Add('  -Tabla Grupo');
  Memo1.Lines.Add('  -Cantidad de Grupos: ' + IntToStr(Numero));
end;

procedure TMain.ActualizarItems;
var
  Numero: Integer;
  vQ: TFDQuery;
begin
  Numero := 0;
  QItem.Close;
  QItem.Open;
  QItem.Last;
  ProgressBar1.Value := 0;
  ProgressBar1.Max := QItem.RecordCount;
  QItem.First;

  while not QItem.Eof do
  Begin
    vQ := TFDQuery.Create(nil);
    try
      vQ.Connection := Main.ConDestino;
      vQ.SQL.Add
        (' update or insert INTO ITEM (ITEM,REVACCT,INVACCT,COSACCT,ITEMMSTR,' +
        ' DESCRIPCION,CLASS,GRUPO,REF,  IMPOVENTA,CCOSTO,CCOSTOV,DEPTO,UOFMSALES,'
        + ' UOFMORDERS,FACTOR,ONORDER,PHYSICAL,VENDOR,COST,COSTU,COSTP,PRICE,PRICE1,'
        + ' PRICE2,INQTY,INDATE,OUTQTY,OUTDATE,ADJQTY,ADJDATE,MTD_ISSUE,MTD_RCPTS,'
        + ' MTD_ADJ,YTD_ISSUE,YTD_RCPTS,YTD_ADJ,INVENTORY,MINIMO,MAXIMO,KITLEVEL,'
        + ' NOTAS,COMMENTS,TIPO,ESTADO,QTYSINCOST,PESO,ENPROOR,BARRA,MARCA,MODELO,'
        + ' PRICE3,PRICE4,PRICE5,MARGEN,DIAS_GARANTIA_PROVEEDOR,DIAS_GARANTIA_CLIENTE,'
        + ' DESC_MAXP,PORC_COMI,SERIALES,UBICACION,DOBLE_UNIDAD,TIPO_FACTOR,' +
        ' PESO_PROMEDIO,DESVIACION,USAR_DESVIACION,PESO_CAJA,UNIDADES_CAJA,' +
        ' DIMENSION,PROCEDENCIA,VALORFOB,IMPSTOCONSUMO,CODNIVEL,NIVEL,NPRICE1,'
        + ' NPRICE2,NPRICE3,NPRICE4,NPRICE5,REFN,PROMOCION,FECHAPROMC,PRECIOIVA,'
        + ' OPCIONABC,COD_BARRAS,SUCCLIENTE,TALLA,COLOR,DEVACCT,IVA,REFFABRICA,'
        + ' IMPCONSUMO2,DCTADICIONAL,MARCADO,ACUMDISPONIBLE,ACUMCOSTO,FECHAUA,'
        + ' DCTFIJO,COM_COST,ACCT_PRODUCCION,ES_CONTROLADO,VLR_MAX_CONTROLADO,'
        + ' FOBFECHA,FOBFUENTE,FOBDCT,FOBGASTO,FOBLOCAL,IMPORTADO,PRICEPROV,DCTPROV,'
        + ' FACTOR_CONVER_VENTAS,FECHA_CREACION,REFERENCIA_ANTERIOR,PANIER,GROUPE,'
        + ' CRENEAU,FAMILIA,DESIGNACION,DESCRIPCION_PRE,DESCRIPCION_PRF,' +
        ' DESCRIPCION_TECNICA,APLICACION,USO_POR_VEHICULO,POSICION_ARANCELARIA,'
        + ' DESPIECE1,DESPIECE2,DESPIECE3,DESPIECE4,AGOTAR_PR,UNIDAD_EMBALAJE,'
        + ' PESO_UNIDAD_EMBALAJE,VOL_POR_UNIDAD_EMBALAJE,QARTIFICIAL,QSUGERIDO,'
        + ' PERMANENCIA_QA,PERMANENCIA_QS,TIEMPOTRANSITO,ORIGEN,MARCAORIGEN,GENERO,'
        + ' PESO_PROMEDIO_UNI,NUM_UNIDADES_POR_CAJA,MAN_LOTE,FACTURABLE,CONTROLA_DCT,'
        + ' COD_POSARANCEL,DCTTALLER,DESC1,COD_APLICAC,REF_INTERC,ESTADOFAB,' +
        ' REF_SUSTITUTAS,MANEJA_TALLA_COLOR,MANEJA_GRP_IMPRESORA,IMPRESORA,' +
        ' PRECIOIVA_MAX,PRECIOIVA_MIN,CANTIDAD_COLORES,MANEJA_COMBINATORIA,' +
        ' FECHA_LOTE,FECHA_LIMITE_LOTE,INVCMACCT,FACTOR_CONVERT_VENTAS,PRECIO_UNIDAD,'
        + ' FLETES,TRAMITES_USD,MARGEN_U,DIAS_ITEM,KILOMETRAJE,SALDOU,SALDOPESOS,'
        + ' COSTP_REF,ROTCOD,CRICOD,FECHAPROMD,PRECIOPROM,PRECIONORM,PORCPROM,INVACCTE,'
        + ' COSACCTE,REVACCTE,DEVACCTE,TIPO_SERVICIO,CUM,TIEDES,TIETIP,DIASPROD,'
        + ' RTFITEM,RTFTIP,RTFBASEMIN,APLRTICA,ULTCOSTEA,ACTIVO,FACPRECIO1,FACPRECIO2,'
        + ' MANPESO,PORC_COMI_REC,IMPTOAMOR,MANEJOAIU,MANTALLA,NROPUNTOS,NROPTOSDCTO,'
        + ' SELPUNTOS,PTOSXCADA,PP_OBLIGATORIO,PP_HORAFIJA,IMPCONSUMO3,VIDA_UTIL,'
        + ' NIIF_VLRNTR, ITEM_SERVICIO,COSTO_INICIAL,NIIF_PRECIO_VENTA_ESTIMADO,'
        + ' NIIF_OPCION_COSTO_VENTA,NIIF_PORCENTAJE,ALTO,ANCHO,LARGO,BONOACCT,'
        + ' COSBONOACCT,REVBONOACCT,DEVBONOACCT,DESACCT,EDESACCT,DESBONOACCT,' +
        ' ACCTMANDANTE,PORCENTAJE_MAND,COD_CURVA,CUENTA_INV_CONSIG,' +
        ' CUENTA_COSTO_CONSIG,CUENTA_INGRESO_TRASLADO,FORMA_FARMACEUTICA,' +
        ' CONCENTRACION_MEDICAMENTO)VALUES(' +
        ' :ITEM,:REVACCT,:INVACCT,:COSACCT,:ITEMMSTR,' +
        ' :DESCRIPCION,:CLASS,:GRUPO,:REF,:IMPOVENTA,:CCOSTO,:CCOSTOV,:DEPTO,:UOFMSALES,'
        + ' :UOFMORDERS,:FACTOR,:ONORDER,:PHYSICAL,:VENDOR,:COST,:COSTU,:COSTP,:PRICE,:PRICE1,'
        + ' :PRICE2,:INQTY,:INDATE,:OUTQTY,:OUTDATE,:ADJQTY,:ADJDATE,:MTD_ISSUE,:MTD_RCPTS,'
        + ' :MTD_ADJ,:YTD_ISSUE,:YTD_RCPTS,:YTD_ADJ,:INVENTORY,:MINIMO,:MAXIMO,:KITLEVEL,'
        + ' :NOTAS,:COMMENTS,:TIPO,:ESTADO,:QTYSINCOST,:PESO,:ENPROOR,:BARRA,:MARCA,:MODELO,'
        + ' :PRICE3,:PRICE4,:PRICE5,:MARGEN,:DIAS_GARANTIA_PROVEEDOR,:DIAS_GARANTIA_CLIENTE,'
        + ' :DESC_MAXP,:PORC_COMI,:SERIALES,:UBICACION,:DOBLE_UNIDAD,:TIPO_FACTOR,'
        + ' :PESO_PROMEDIO,:DESVIACION,:USAR_DESVIACION,:PESO_CAJA,:UNIDADES_CAJA,'
        + ' :DIMENSION,:PROCEDENCIA,:VALORFOB,:IMPSTOCONSUMO,:CODNIVEL,:NIVEL,:NPRICE1,'
        + ' :NPRICE2,:NPRICE3,:NPRICE4,:NPRICE5,:REFN,:PROMOCION,:FECHAPROMC,:PRECIOIVA,'
        + ' :OPCIONABC,:COD_BARRAS,:SUCCLIENTE,:TALLA,:COLOR,:DEVACCT,:IVA,:REFFABRICA,'
        + ' :IMPCONSUMO2,:DCTADICIONAL,:MARCADO,:ACUMDISPONIBLE,:ACUMCOSTO,:FECHAUA,'
        + ' :DCTFIJO,:COM_COST,:ACCT_PRODUCCION,:ES_CONTROLADO,:VLR_MAX_CONTROLADO,'
        + ' :FOBFECHA,:FOBFUENTE,:FOBDCT,:FOBGASTO,:FOBLOCAL,:IMPORTADO,:PRICEPROV,:DCTPROV,'
        + ' :FACTOR_CONVER_VENTAS,:FECHA_CREACION,:REFERENCIA_ANTERIOR,:PANIER,:GROUPE,'
        + ' :CRENEAU,:FAMILIA,:DESIGNACION,:DESCRIPCION_PRE,:DESCRIPCION_PRF,' +
        ' :DESCRIPCION_TECNICA,:APLICACION,:USO_POR_VEHICULO,:POSICION_ARANCELARIA,'
        + ' :DESPIECE1,:DESPIECE2,:DESPIECE3,:DESPIECE4,:AGOTAR_PR,:UNIDAD_EMBALAJE,'
        + ' :PESO_UNIDAD_EMBALAJE,:VOL_POR_UNIDAD_EMBALAJE,:QARTIFICIAL,:QSUGERIDO,'
        + ' :PERMANENCIA_QA,:PERMANENCIA_QS,:TIEMPOTRANSITO,:ORIGEN,:MARCAORIGEN,:GENERO,'
        + ' :PESO_PROMEDIO_UNI,:NUM_UNIDADES_POR_CAJA,:MAN_LOTE,:FACTURABLE,:CONTROLA_DCT,'
        + ' :COD_POSARANCEL,:DCTTALLER,:DESC1,:COD_APLICAC,:REF_INTERC,:ESTADOFAB,'
        + ' :REF_SUSTITUTAS,:MANEJA_TALLA_COLOR,:MANEJA_GRP_IMPRESORA,:IMPRESORA,'
        + ' :PRECIOIVA_MAX,:PRECIOIVA_MIN,:CANTIDAD_COLORES,:MANEJA_COMBINATORIA,'
        + ' :FECHA_LOTE,:FECHA_LIMITE_LOTE,:INVCMACCT,:FACTOR_CONVERT_VENTAS,:PRECIO_UNIDAD,'
        + ' :FLETES,:TRAMITES_USD,:MARGEN_U,:DIAS_ITEM,:KILOMETRAJE,:SALDOU,:SALDOPESOS,'
        + ' :COSTP_REF,:ROTCOD,:CRICOD,:FECHAPROMD,:PRECIOPROM,:PRECIONORM,:PORCPROM,:INVACCTE,'
        + ' :COSACCTE,:REVACCTE,:DEVACCTE,:TIPO_SERVICIO,:CUM,:TIEDES,:TIETIP,:DIASPROD,'
        + ' :RTFITEM,:RTFTIP,:RTFBASEMIN,:APLRTICA,:ULTCOSTEA,:ACTIVO,:FACPRECIO1,:FACPRECIO2,'
        + ' :MANPESO,:PORC_COMI_REC,:IMPTOAMOR,:MANEJOAIU,:MANTALLA,:NROPUNTOS,:NROPTOSDCTO,'
        + ' :SELPUNTOS,:PTOSXCADA,:PP_OBLIGATORIO,:PP_HORAFIJA,:IMPCONSUMO3,:VIDA_UTIL,'
        + ' :NIIF_VLRNTR,:ITEM_SERVICIO,:COSTO_INICIAL,:NIIF_PRECIO_VENTA_ESTIMADO,'
        + ' :NIIF_OPCION_COSTO_VENTA,:NIIF_PORCENTAJE,:ALTO,:ANCHO,:LARGO,:BONOACCT,'
        + ' :COSBONOACCT,:REVBONOACCT,:DEVBONOACCT,:DESACCT,:EDESACCT,:DESBONOACCT,'
        + ' :ACCTMANDANTE,:PORCENTAJE_MAND,:COD_CURVA,:CUENTA_INV_CONSIG,' +
        ' :CUENTA_COSTO_CONSIG,:CUENTA_INGRESO_TRASLADO,:FORMA_FARMACEUTICA,' +
        ' :CONCENTRACION_MEDICAMENTO)');
      vQ.Close;
      vQ.ParamByName('ITEM').AsString := QItemITEM.AsString;
      vQ.ParamByName('REVACCT').AsFloat := QItemREVACCT.AsFloat;
      vQ.ParamByName('INVACCT').AsFloat := QItemINVACCT.AsFloat;
      vQ.ParamByName('COSACCT').AsFloat := QItemCOSACCT.AsFloat;
      vQ.ParamByName('ITEMMSTR').AsString := QItemITEMMSTR.AsString;
      vQ.ParamByName('DESCRIPCION').AsString := QItemDESCRIPCION.AsString;
      vQ.ParamByName('CLASS').AsString := QItemCLASS.AsString;
      vQ.ParamByName('GRUPO').AsString := QItemGRUPO.AsString;
      vQ.ParamByName('REF').AsString := QItemREF.AsString;
      vQ.ParamByName('IMPOVENTA').AsString := QItemIMPOVENTA.AsString;
      vQ.ParamByName('CCOSTO').AsInteger := QItemCCOSTO.AsInteger;
      vQ.ParamByName('CCOSTOV').AsString := QItemCCOSTOV.AsString;
      vQ.ParamByName('DEPTO').AsInteger := QItemDEPTO.AsInteger;
      vQ.ParamByName('UOFMSALES').AsString := QItemUOFMSALES.AsString;
      vQ.ParamByName('UOFMORDERS').AsString := QItemUOFMORDERS.AsString;
      vQ.ParamByName('FACTOR').AsFloat := QItemFACTOR.AsFloat;
      vQ.ParamByName('ONORDER').AsFloat := QItemONORDER.AsFloat;
      vQ.ParamByName('PHYSICAL').AsFloat := QItemPHYSICAL.AsFloat;
      vQ.ParamByName('VENDOR').AsString := QItemVENDOR.AsString;
      vQ.ParamByName('COST').AsFloat := QItemCOST.AsFloat;
      vQ.ParamByName('COSTU').AsFloat := QItemCOSTU.AsFloat;
      vQ.ParamByName('COSTP').AsFloat := QItemCOSTP.AsFloat;
      vQ.ParamByName('PRICE').AsFloat := QItemPRICE.AsFloat;
      vQ.ParamByName('PRICE1').AsFloat := QItemPRICE1.AsFloat;
      vQ.ParamByName('PRICE2').AsFloat := QItemPRICE2.AsFloat;
      vQ.ParamByName('INQTY').AsFloat := QItemINQTY.AsFloat;
      vQ.ParamByName('INDATE').AsDateTime := QItemINDATE.AsDateTime;
      vQ.ParamByName('OUTQTY').AsFloat := QItemOUTQTY.AsFloat;
      vQ.ParamByName('OUTDATE').AsDateTime := QItemOUTDATE.AsDateTime;
      vQ.ParamByName('ADJQTY').AsFloat := QItemADJQTY.AsFloat;
      vQ.ParamByName('ADJDATE').AsDateTime := QItemADJDATE.AsDateTime;
      vQ.ParamByName('MTD_ISSUE').AsFloat := QItemMTD_ISSUE.AsFloat;
      vQ.ParamByName('MTD_RCPTS').AsFloat := QItemMTD_RCPTS.AsFloat;
      vQ.ParamByName('MTD_ADJ').AsFloat := QItemMTD_ADJ.AsFloat;
      vQ.ParamByName('YTD_ISSUE').AsFloat := QItemYTD_ISSUE.AsFloat;
      vQ.ParamByName('YTD_RCPTS').AsFloat := QItemYTD_RCPTS.AsFloat;
      vQ.ParamByName('YTD_ADJ').AsFloat := QItemYTD_ADJ.AsFloat;
      vQ.ParamByName('INVENTORY').AsString := QItemINVENTORY.AsString;
      vQ.ParamByName('MINIMO').AsFloat := QItemMINIMO.AsFloat;
      vQ.ParamByName('MAXIMO').AsFloat := QItemMAXIMO.AsFloat;
      vQ.ParamByName('KITLEVEL').AsString := QItemKITLEVEL.AsString;
      vQ.ParamByName('NOTAS').AsString := QItemNOTAS.AsString;
      vQ.ParamByName('COMMENTS').AsString := QItemCOMMENTS.AsString;
      vQ.ParamByName('TIPO').AsString := QItemTIPO.AsString;
      vQ.ParamByName('ESTADO').AsString := QItemESTADO.AsString;
      vQ.ParamByName('QTYSINCOST').AsFloat := QItemQTYSINCOST.AsFloat;
      vQ.ParamByName('PESO').AsFloat := QItemPESO.AsFloat;
      vQ.ParamByName('ENPROOR').AsFloat := QItemENPROOR.AsFloat;
      vQ.ParamByName('BARRA').AsString := QItemBARRA.AsString;
      vQ.ParamByName('MARCA').AsString := QItemMARCA.AsString;
      vQ.ParamByName('MODELO').AsString := QItemMODELO.AsString;
      vQ.ParamByName('PRICE3').AsFloat := QItemPRICE3.AsFloat;
      vQ.ParamByName('PRICE4').AsFloat := QItemPRICE4.AsFloat;
      vQ.ParamByName('PRICE5').AsFloat := QItemPRICE5.AsFloat;
      vQ.ParamByName('MARGEN').AsFloat := QItemMARGEN.AsFloat;
      vQ.ParamByName('DIAS_GARANTIA_PROVEEDOR').AsInteger :=
        QItemDIAS_GARANTIA_PROVEEDOR.AsInteger;
      vQ.ParamByName('DIAS_GARANTIA_CLIENTE').AsInteger :=
        QItemDIAS_GARANTIA_CLIENTE.AsInteger;
      vQ.ParamByName('DESC_MAXP').AsFloat := QItemDESC_MAXP.AsFloat;
      vQ.ParamByName('PORC_COMI').AsFloat := QItemPORC_COMI.AsFloat;
      vQ.ParamByName('SERIALES').AsString := QItemSERIALES.AsString;
      vQ.ParamByName('UBICACION').AsInteger := QItemUBICACION.AsInteger;
      vQ.ParamByName('DOBLE_UNIDAD').AsString := QItemDOBLE_UNIDAD.AsString;
      vQ.ParamByName('TIPO_FACTOR').AsString := QItemTIPO_FACTOR.AsString;
      vQ.ParamByName('PESO_PROMEDIO').AsFloat := QItemPESO_PROMEDIO.AsFloat;
      vQ.ParamByName('DESVIACION').AsFloat := QItemDESVIACION.AsFloat;
      vQ.ParamByName('USAR_DESVIACION').AsString :=
        QItemUSAR_DESVIACION.AsString;
      vQ.ParamByName('PESO_CAJA').AsFloat := QItemPESO_CAJA.AsFloat;
      vQ.ParamByName('UNIDADES_CAJA').AsFloat := QItemUNIDADES_CAJA.AsFloat;
      vQ.ParamByName('DIMENSION').AsString := QItemDIMENSION.AsString;
      vQ.ParamByName('PROCEDENCIA').AsString := QItemPROCEDENCIA.AsString;
      vQ.ParamByName('VALORFOB').AsFloat := QItemVALORFOB.AsFloat;
      vQ.ParamByName('IMPSTOCONSUMO').AsFloat := QItemIMPSTOCONSUMO.AsFloat;
      vQ.ParamByName('CODNIVEL').AsString := QItemCODNIVEL.AsString;
      vQ.ParamByName('NIVEL').AsInteger := QItemNIVEL.AsInteger;
      vQ.ParamByName('NPRICE1').AsInteger := QItemNPRICE1.AsInteger;
      vQ.ParamByName('NPRICE2').AsInteger := QItemNPRICE2.AsInteger;
      vQ.ParamByName('NPRICE3').AsInteger := QItemNPRICE3.AsInteger;
      vQ.ParamByName('NPRICE4').AsInteger := QItemNPRICE4.AsInteger;
      vQ.ParamByName('NPRICE5').AsInteger := QItemNPRICE5.AsInteger;
      vQ.ParamByName('REFN').AsInteger := QItemREFN.AsInteger;
      vQ.ParamByName('PROMOCION').AsString := QItemPROMOCION.AsString;
      vQ.ParamByName('FECHAPROMC').AsDateTime := QItemFECHAPROMC.AsDateTime;
      vQ.ParamByName('PRECIOIVA').AsFloat := QItemPRECIOIVA.AsFloat;
      vQ.ParamByName('OPCIONABC').AsString := QItemOPCIONABC.AsString;
      vQ.ParamByName('COD_BARRAS').AsString := QItemCOD_BARRAS.AsString;
      vQ.ParamByName('SUCCLIENTE').AsInteger := QItemSUCCLIENTE.AsInteger;
      vQ.ParamByName('TALLA').AsString := QItemTALLA.AsString;
      vQ.ParamByName('COLOR').AsString := QItemCOLOR.AsString;
      vQ.ParamByName('DEVACCT').AsFloat := QItemDEVACCT.AsFloat;
      vQ.ParamByName('IVA').AsInteger := QItemIVA.AsInteger;
      vQ.ParamByName('REFFABRICA').AsString := QItemREFFABRICA.AsString;
      vQ.ParamByName('IMPCONSUMO2').AsFloat := QItemIMPCONSUMO2.AsFloat;
      vQ.ParamByName('DCTADICIONAL').AsFloat := QItemDCTADICIONAL.AsFloat;
      vQ.ParamByName('MARCADO').AsString := QItemMARCADO.AsString;
      vQ.ParamByName('ACUMDISPONIBLE').AsFloat := QItemACUMDISPONIBLE.AsFloat;
      vQ.ParamByName('ACUMCOSTO').AsFloat := QItemACUMCOSTO.AsFloat;
      vQ.ParamByName('FECHAUA').AsDateTime := QItemFECHAUA.AsDateTime;
      vQ.ParamByName('DCTFIJO').AsFloat := QItemDCTFIJO.AsFloat;
      vQ.ParamByName('COM_COST').AsFloat := QItemCOM_COST.AsFloat;
      vQ.ParamByName('ACCT_PRODUCCION').AsFloat := QItemACCT_PRODUCCION.AsFloat;
      vQ.ParamByName('ES_CONTROLADO').AsString := QItemES_CONTROLADO.AsString;
      vQ.ParamByName('VLR_MAX_CONTROLADO').AsFloat :=
        QItemVLR_MAX_CONTROLADO.AsFloat;
      vQ.ParamByName('FOBFECHA').AsDateTime := QItemFOBFECHA.AsDateTime;
      vQ.ParamByName('FOBFUENTE').AsString := QItemFOBFUENTE.AsString;
      vQ.ParamByName('FOBDCT').AsFloat := QItemFOBDCT.AsFloat;
      vQ.ParamByName('FOBGASTO').AsFloat := QItemFOBGASTO.AsFloat;
      vQ.ParamByName('FOBLOCAL').AsFloat := QItemFOBLOCAL.AsFloat;
      vQ.ParamByName('IMPORTADO').AsString := QItemIMPORTADO.AsString;
      vQ.ParamByName('PRICEPROV').AsFloat := QItemPRICEPROV.AsFloat;
      vQ.ParamByName('DCTPROV').AsFloat := QItemDCTPROV.AsFloat;
      vQ.ParamByName('FACTOR_CONVER_VENTAS').AsFloat :=
        QItemFACTOR_CONVER_VENTAS.AsFloat;
      vQ.ParamByName('FECHA_CREACION').AsDateTime :=
        QItemFECHA_CREACION.AsDateTime;
      vQ.ParamByName('REFERENCIA_ANTERIOR').AsString :=
        QItemREFERENCIA_ANTERIOR.AsString;
      vQ.ParamByName('PANIER').AsString := QItemPANIER.AsString;
      vQ.ParamByName('GROUPE').AsString := QItemGROUPE.AsString;
      vQ.ParamByName('CRENEAU').AsString := QItemCRENEAU.AsString;
      vQ.ParamByName('FAMILIA').AsString := QItemFAMILIA.AsString;
      vQ.ParamByName('DESIGNACION').AsString := QItemDESIGNACION.AsString;
      vQ.ParamByName('DESCRIPCION_PRE').AsString :=
        QItemDESCRIPCION_PRE.AsString;
      vQ.ParamByName('DESCRIPCION_PRF').AsString :=
        QItemDESCRIPCION_PRF.AsString;
      vQ.ParamByName('DESCRIPCION_TECNICA').AsString :=
        QItemDESCRIPCION_TECNICA.AsString;
      vQ.ParamByName('APLICACION').AsString := QItemAPLICACION.AsString;
      vQ.ParamByName('USO_POR_VEHICULO').AsInteger :=
        QItemUSO_POR_VEHICULO.AsInteger;
      vQ.ParamByName('POSICION_ARANCELARIA').AsString :=
        QItemPOSICION_ARANCELARIA.AsString;
      vQ.ParamByName('DESPIECE1').AsString := QItemDESPIECE1.AsString;
      vQ.ParamByName('DESPIECE2').AsString := QItemDESPIECE2.AsString;
      vQ.ParamByName('DESPIECE3').AsString := QItemDESPIECE3.AsString;
      vQ.ParamByName('DESPIECE4').AsString := QItemDESPIECE4.AsString;
      vQ.ParamByName('AGOTAR_PR').AsString := QItemAGOTAR_PR.AsString;
      vQ.ParamByName('UNIDAD_EMBALAJE').AsString :=
        QItemUNIDAD_EMBALAJE.AsString;
      vQ.ParamByName('PESO_UNIDAD_EMBALAJE').AsFloat :=
        QItemPESO_UNIDAD_EMBALAJE.AsFloat;
      vQ.ParamByName('VOL_POR_UNIDAD_EMBALAJE').AsFloat :=
        QItemVOL_POR_UNIDAD_EMBALAJE.AsFloat;
      vQ.ParamByName('QARTIFICIAL').AsFloat := QItemQARTIFICIAL.AsFloat;
      vQ.ParamByName('QSUGERIDO').AsFloat := QItemQSUGERIDO.AsFloat;
      vQ.ParamByName('PERMANENCIA_QA').AsFloat := QItemPERMANENCIA_QA.AsFloat;
      vQ.ParamByName('PERMANENCIA_QS').AsFloat := QItemPERMANENCIA_QS.AsFloat;
      vQ.ParamByName('TIEMPOTRANSITO').AsFloat := QItemTIEMPOTRANSITO.AsFloat;
      vQ.ParamByName('ORIGEN').AsString := QItemORIGEN.AsString;
      vQ.ParamByName('MARCAORIGEN').AsString := QItemMARCAORIGEN.AsString;
      vQ.ParamByName('GENERO').AsString := QItemGENERO.AsString;
      vQ.ParamByName('PESO_PROMEDIO_UNI').AsFloat :=
        QItemPESO_PROMEDIO_UNI.AsFloat;
      vQ.ParamByName('NUM_UNIDADES_POR_CAJA').AsFloat :=
        QItemNUM_UNIDADES_POR_CAJA.AsFloat;
      vQ.ParamByName('MAN_LOTE').AsString := QItemMAN_LOTE.AsString;
      vQ.ParamByName('FACTURABLE').AsString := QItemFACTURABLE.AsString;
      vQ.ParamByName('CONTROLA_DCT').AsString := QItemCONTROLA_DCT.AsString;
      vQ.ParamByName('COD_POSARANCEL').AsString := QItemCOD_POSARANCEL.AsString;
      vQ.ParamByName('DCTTALLER').AsFloat := QItemDCTTALLER.AsFloat;
      vQ.ParamByName('DESC1').AsString := QItemDESC1.AsString;
      vQ.ParamByName('COD_APLICAC').AsString := QItemCOD_APLICAC.AsString;
      vQ.ParamByName('REF_INTERC').AsString := QItemREF_INTERC.AsString;
      vQ.ParamByName('ESTADOFAB').AsString := QItemESTADOFAB.AsString;
      vQ.ParamByName('REF_SUSTITUTAS').AsString := QItemREF_SUSTITUTAS.AsString;
      vQ.ParamByName('MANEJA_TALLA_COLOR').AsString :=
        QItemMANEJA_TALLA_COLOR.AsString;
      vQ.ParamByName('MANEJA_GRP_IMPRESORA').AsString :=
        QItemMANEJA_GRP_IMPRESORA.AsString;
      vQ.ParamByName('IMPRESORA').AsString := QItemIMPRESORA.AsString;
      vQ.ParamByName('PRECIOIVA_MAX').AsFloat := QItemPRECIOIVA_MAX.AsFloat;
      vQ.ParamByName('PRECIOIVA_MIN').AsFloat := QItemPRECIOIVA_MIN.AsFloat;
      vQ.ParamByName('CANTIDAD_COLORES').AsInteger :=
        QItemCANTIDAD_COLORES.AsInteger;
      vQ.ParamByName('MANEJA_COMBINATORIA').AsString :=
        QItemMANEJA_COMBINATORIA.AsString;
      vQ.ParamByName('FECHA_LOTE').AsDateTime := QItemFECHA_LOTE.AsDateTime;
      vQ.ParamByName('FECHA_LIMITE_LOTE').AsDateTime :=
        QItemFECHA_LIMITE_LOTE.AsDateTime;
      vQ.ParamByName('INVCMACCT').AsFloat := QItemINVCMACCT.AsFloat;
      vQ.ParamByName('FACTOR_CONVERT_VENTAS').AsFloat :=
        QItemFACTOR_CONVERT_VENTAS.AsFloat;
      vQ.ParamByName('PRECIO_UNIDAD').AsString := QItemPRECIO_UNIDAD.AsString;
      vQ.ParamByName('FLETES').AsFloat := QItemFLETES.AsFloat;
      vQ.ParamByName('TRAMITES_USD').AsFloat := QItemTRAMITES_USD.AsFloat;
      vQ.ParamByName('MARGEN_U').AsFloat := QItemMARGEN_U.AsFloat;
      vQ.ParamByName('DIAS_ITEM').AsInteger := QItemDIAS_ITEM.AsInteger;
      vQ.ParamByName('KILOMETRAJE').AsString := QItemKILOMETRAJE.AsString;
      vQ.ParamByName('SALDOU').AsFloat := QItemSALDOU.AsFloat;
      vQ.ParamByName('SALDOPESOS').AsFloat := QItemSALDOPESOS.AsFloat;
      vQ.ParamByName('COSTP_REF').AsFloat := QItemCOSTP_REF.AsFloat;
      vQ.ParamByName('ROTCOD').AsString := QItemROTCOD.AsString;
      vQ.ParamByName('CRICOD').AsString := QItemCRICOD.AsString;
      vQ.ParamByName('FECHAPROMD').AsDateTime := QItemFECHAPROMD.AsDateTime;
      vQ.ParamByName('PRECIOPROM').AsFloat := QItemPRECIOPROM.AsFloat;
      vQ.ParamByName('PRECIONORM').AsFloat := QItemPRECIONORM.AsFloat;
      vQ.ParamByName('PORCPROM').AsFloat := QItemPORCPROM.AsFloat;
      vQ.ParamByName('INVACCTE').AsFloat := QItemINVACCTE.AsFloat;
      vQ.ParamByName('COSACCTE').AsFloat := QItemCOSACCTE.AsFloat;
      vQ.ParamByName('REVACCTE').AsFloat := QItemREVACCTE.AsFloat;
      vQ.ParamByName('DEVACCTE').AsFloat := QItemDEVACCTE.AsFloat;
      vQ.ParamByName('TIPO_SERVICIO').AsString := QItemTIPO_SERVICIO.AsString;
      vQ.ParamByName('CUM').AsString := QItemCUM.AsString;
      vQ.ParamByName('TIEDES').AsString := QItemTIEDES.AsString;
      vQ.ParamByName('TIETIP').AsString := QItemTIETIP.AsString;
      vQ.ParamByName('DIASPROD').AsInteger := QItemDIASPROD.AsInteger;
      vQ.ParamByName('RTFITEM').AsFloat := QItemRTFITEM.AsFloat;
      vQ.ParamByName('RTFTIP').AsString := QItemRTFTIP.AsString;
      vQ.ParamByName('RTFBASEMIN').AsFloat := QItemRTFBASEMIN.AsFloat;
      vQ.ParamByName('APLRTICA').AsString := QItemAPLRTICA.AsString;
      vQ.ParamByName('ULTCOSTEA').AsFloat := QItemULTCOSTEA.AsFloat;
      vQ.ParamByName('ACTIVO').AsString := QItemACTIVO.AsString;
      vQ.ParamByName('FACPRECIO1').AsFloat := QItemFACPRECIO1.AsFloat;
      vQ.ParamByName('FACPRECIO2').AsFloat := QItemFACPRECIO2.AsFloat;
      vQ.ParamByName('MANPESO').AsString := QItemMANPESO.AsString;
      vQ.ParamByName('PORC_COMI_REC').AsFloat := QItemPORC_COMI_REC.AsFloat;
      vQ.ParamByName('IMPTOAMOR').AsString := QItemIMPTOAMOR.AsString;
      vQ.ParamByName('MANEJOAIU').AsString := QItemMANEJOAIU.AsString;
      vQ.ParamByName('MANTALLA').AsString := QItemMANTALLA.AsString;
      vQ.ParamByName('NROPUNTOS').AsFloat := QItemNROPUNTOS.AsFloat;
      vQ.ParamByName('NROPTOSDCTO').AsFloat := QItemNROPTOSDCTO.AsFloat;
      vQ.ParamByName('SELPUNTOS').AsString := QItemSELPUNTOS.AsString;
      vQ.ParamByName('PTOSXCADA').AsFloat := QItemPTOSXCADA.AsFloat;
      vQ.ParamByName('PP_OBLIGATORIO').AsString := QItemPP_OBLIGATORIO.AsString;
      vQ.ParamByName('PP_HORAFIJA').AsString := QItemPP_HORAFIJA.AsString;
      vQ.ParamByName('IMPCONSUMO3').AsFloat := QItemIMPCONSUMO3.AsFloat;
      vQ.ParamByName('VIDA_UTIL').AsInteger := QItemVIDA_UTIL.AsInteger;
      vQ.ParamByName('NIIF_VLRNTR').AsFloat := QItemNIIF_VLRNTR.AsFloat;
      vQ.ParamByName('ITEM_SERVICIO').AsString := QItemITEM_SERVICIO.AsString;
      vQ.ParamByName('COSTO_INICIAL').AsSingle := QItemCOSTO_INICIAL.AsSingle;
      vQ.ParamByName('NIIF_PRECIO_VENTA_ESTIMADO').AsFloat :=
        QItemNIIF_PRECIO_VENTA_ESTIMADO.AsFloat;
      vQ.ParamByName('NIIF_OPCION_COSTO_VENTA').AsInteger :=
        QItemNIIF_OPCION_COSTO_VENTA.AsInteger;
      vQ.ParamByName('NIIF_PORCENTAJE').AsFloat := QItemNIIF_PORCENTAJE.AsFloat;
      vQ.ParamByName('ALTO').AsFloat := QItemALTO.AsFloat;
      vQ.ParamByName('ANCHO').AsFloat := QItemANCHO.AsFloat;
      vQ.ParamByName('LARGO').AsFloat := QItemLARGO.AsFloat;
      vQ.ParamByName('BONOACCT').AsFloat := QItemBONOACCT.AsFloat;
      vQ.ParamByName('COSBONOACCT').AsFloat := QItemCOSBONOACCT.AsFloat;
      vQ.ParamByName('REVBONOACCT').AsFloat := QItemREVBONOACCT.AsFloat;
      vQ.ParamByName('DEVBONOACCT').AsFloat := QItemDEVBONOACCT.AsFloat;
      vQ.ParamByName('DESACCT').AsFloat := QItemDESACCT.AsFloat;
      vQ.ParamByName('EDESACCT').AsFloat := QItemEDESACCT.AsFloat;
      vQ.ParamByName('DESBONOACCT').AsFloat := QItemDESBONOACCT.AsFloat;
      vQ.ParamByName('ACCTMANDANTE').AsFloat := QItemACCTMANDANTE.AsFloat;
      vQ.ParamByName('PORCENTAJE_MAND').AsFloat := QItemPORCENTAJE_MAND.AsFloat;
      vQ.ParamByName('COD_CURVA').AsString := QItemCOD_CURVA.AsString;
      vQ.ParamByName('CUENTA_INV_CONSIG').AsFloat :=
        QItemCUENTA_INV_CONSIG.AsFloat;
      vQ.ParamByName('CUENTA_COSTO_CONSIG').AsFloat :=
        QItemCUENTA_COSTO_CONSIG.AsFloat;
      vQ.ParamByName('CUENTA_INGRESO_TRASLADO').AsFloat :=
        QItemCUENTA_INGRESO_TRASLADO.AsFloat;
      vQ.ParamByName('FORMA_FARMACEUTICA').AsString :=
        QItemFORMA_FARMACEUTICA.AsString;
      vQ.ParamByName('CONCENTRACION_MEDICAMENTO').AsString :=
        QItemCONCENTRACION_MEDICAMENTO.AsString;
      vQ.ExecSQL;
    finally
      vQ.DisposeOf;
    end;
    Numero := Numero + 1;
    ProgressBar1.Value := ProgressBar1.Value + 1;
    Application.ProcessMessages;
    QItem.Next;
  End;

  Memo1.Lines.Add('->Se Actualizan Items:');
  Memo1.Lines.Add('  -Tabla Item');
  Memo1.Lines.Add('  -Cantidad de Items: ' + IntToStr(Numero));
end;

procedure TMain.ActualizarItemUnidad;
var
  Numero: Integer;
  vQ: TFDQuery;
begin
  Numero := 0;
  QItemUnidad.Close;
  QItemUnidad.Open;
  QItemUnidad.Last;
  ProgressBar1.Value := 0;
  ProgressBar1.Max := QItemUnidad.RecordCount;
  QItemUnidad.First;

  while not QItemUnidad.Eof do
  Begin
    vQ := TFDQuery.Create(nil);
    try
      vQ.Connection := Main.ConDestino;
      vQ.SQL.Add
        (' update or insert INTO ITEM_UNIDAD (ITEM,FACTOR_C,COD_UNIDAD,PRICE,PRICE1,'
        + ' PRICE2,PRICE3,PRICE4,PRICE5)VALUES(' +
        ' :ITEM,:FACTOR_C,:COD_UNIDAD,:PRICE,:PRICE1,:PRICE2,:PRICE3,:PRICE4,:PRICE5)');
      vQ.Close;
      vQ.ParamByName('ITEM').AsString := QItemUnidadITEM.AsString;
      vQ.ParamByName('FACTOR_C').AsString := QItemUnidadFACTOR_C.AsString;
      vQ.ParamByName('COD_UNIDAD').AsString := QItemUnidadCOD_UNIDAD.AsString;
      vQ.ParamByName('PRICE').AsString := QItemUnidadPRICE.AsString;
      vQ.ParamByName('PRICE1').AsString := QItemUnidadPRICE1.AsString;
      vQ.ParamByName('PRICE2').AsString := QItemUnidadPRICE2.AsString;
      vQ.ParamByName('PRICE3').AsString := QItemUnidadPRICE3.AsString;
      vQ.ParamByName('PRICE4').AsString := QItemUnidadPRICE4.AsString;
      vQ.ParamByName('PRICE5').AsString := QItemUnidadPRICE5.AsString;
      vQ.ExecSQL;
    finally
      vQ.DisposeOf;
    end;
    Numero := Numero + 1;
    ProgressBar1.Value := ProgressBar1.Value + 1;
    Application.ProcessMessages;
    QItemUnidad.Next;
  End;

  Memo1.Lines.Add('->Se Actualiza Item Unidad:');
  Memo1.Lines.Add('  -Tabla Item_Unidad');
  Memo1.Lines.Add('  -Cantidad de Unidades: ' + IntToStr(Numero));
end;

procedure TMain.ActualizarLineas;
var
  Numero: Integer;
  vQ: TFDQuery;
begin
  Numero := 0;
  Qlinea.Close;
  Qlinea.Open;
  Qlinea.Last;
  ProgressBar1.Value := 0;
  ProgressBar1.Max := Qlinea.RecordCount;
  Qlinea.First;

  while not Qlinea.Eof do
  Begin
    vQ := TFDQuery.Create(nil);
    try

      vQ.Connection := Main.ConDestino;
      vQ.SQL.Add(' update or insert INTO LINEA (CODLINEA,DESCLINEA)VALUES(' +
        ' :CODLINEA,:DESCLINEA)');
      vQ.Close;
      vQ.ParamByName('CODLINEA').AsString := QlineaCODLINEA.AsString;
      vQ.ParamByName('DESCLINEA').AsString := QlineaDESCLINEA.AsString;
      vQ.ExecSQL;
    finally
      vQ.DisposeOf;
    end;
    Numero := Numero + 1;
    ProgressBar1.Value := ProgressBar1.Value + 1;
    Application.ProcessMessages;
    Qlinea.Next;
  End;

  Memo1.Lines.Add('->Se Actualizan Lineas de Producto:');
  Memo1.Lines.Add('  -Tabla Linea');
  Memo1.Lines.Add('  -Cantidad de Lineas: ' + IntToStr(Numero));
end;

procedure TMain.ActualizarLista;
var
  Numero: Integer;
  vQ: TFDQuery;
begin
  Numero := 0;
  QLista.Close;
  QLista.Open;
  QLista.Last;
  ProgressBar1.Value := 0;
  ProgressBar1.Max := QLista.RecordCount;
  QLista.First;

  while not QLista.Eof do
  Begin
    vQ := TFDQuery.Create(nil);
    try

      vQ.Connection := Main.ConDestino;
      vQ.SQL.Add
        (' update or insert INTO LISTA (TIPO,CODIGO,DESCRIPCION,OBSERVACION,' +
        ' POCEN,VALOR,ACCT,MINIMO,MAXIMO,DPCCEST,DIASZON,PRORRATA,UNDREF' +
        ' )VALUES(' + ' :TIPO,:CODIGO,:DESCRIPCION,:OBSERVACION,' +
        ' :POCEN,:VALOR,:ACCT,:MINIMO,:MAXIMO,:DPCCEST,:DIASZON,:PRORRATA,:UNDREF)');
      vQ.Close;
      vQ.ParamByName('TIPO').AsString := QListaTIPO.AsString;
      vQ.ParamByName('CODIGO').AsInteger := QListaCODIGO.AsInteger;
      vQ.ParamByName('DESCRIPCION').AsString := QListaDESCRIPCION.AsString;
      vQ.ParamByName('OBSERVACION').AsString := QListaOBSERVACION.AsString;
      vQ.ParamByName('POCEN').AsFloat := QListaPOCEN.AsFloat;
      vQ.ParamByName('VALOR').AsFloat := QListaVALOR.AsFloat;
      vQ.ParamByName('ACCT').AsFloat := QListaACCT.AsFloat;
      vQ.ParamByName('MINIMO').AsFloat := QListaMINIMO.AsFloat;
      vQ.ParamByName('MAXIMO').AsFloat := QListaMAXIMO.AsFloat;
      vQ.ParamByName('DPCCEST').AsString := QListaDPCCEST.AsString;
      vQ.ParamByName('DIASZON').AsInteger := QListaDIASZON.AsInteger;
      vQ.ParamByName('PRORRATA').AsString := QListaPRORRATA.AsString;
      vQ.ParamByName('UNDREF').AsFloat := QListaUNDREF.AsFloat;
      vQ.ExecSQL;
    finally
      vQ.DisposeOf;
    end;
    Numero := Numero + 1;
    ProgressBar1.Value := ProgressBar1.Value + 1;
    Application.ProcessMessages;
    QLista.Next;
  End;

  Memo1.Lines.Add('->Se Actualiza La Lista:');
  Memo1.Lines.Add('  -Tabla Lista');
  Memo1.Lines.Add('  -Cantidad de Listas: ' + IntToStr(Numero));
end;

procedure TMain.ActualizarNombres;
var
  Numero: Integer;
  vQ: TFDQuery;
begin
  Numero := 0;
  QNombres.Close;
  QNombres.Open;
  QNombres.Last;
  ProgressBar1.Value := 0;
  ProgressBar1.Max := QNombres.RecordCount;
  QNombres.First;

  while not QNombres.Eof do
  Begin
    vQ := TFDQuery.Create(nil);
    try

      vQ.Connection := Main.ConDestino;
      vQ.SQL.Add
        (' update or insert INTO NOMBRES (USERNAME,CLAVE,ACLEVEL,LEVEL1,LEVEL2,'
        + ' LEVEL3,LEVEL4,LEVEL5,LEVEL6,LEVEL7,LEVEL8,LEVEL9,LEVE10,LEVEL11,' +
        ' TIPO_USUARIO,NOMBRE_COMPLETO,ENCRIPTADO,DPTO,LOCORIGEN,LOCDESTINO,' +
        ' ACTIVO,OPCION1,OPCION2,OPCION3,OPCION4,OPCION5,OPCION6,OPCION7,OPCION8,'
        + ' FILSUC,COD_PERFIL,EMAIL,TELEFONO,FECHANAC,SEXO,USUARIOFACTURA,IDVEND)'
        + ' VALUES(' + ' :USERNAME,:CLAVE,:ACLEVEL,:LEVEL1,:LEVEL2,' +
        ' :LEVEL3,:LEVEL4,:LEVEL5,:LEVEL6,:LEVEL7,:LEVEL8,:LEVEL9,:LEVE10,:LEVEL11,'
        + ' :TIPO_USUARIO,:NOMBRE_COMPLETO,:ENCRIPTADO,:DPTO,:LOCORIGEN,:LOCDESTINO,'
        + ' :ACTIVO,:OPCION1,:OPCION2,:OPCION3,:OPCION4,:OPCION5,:OPCION6,:OPCION7,:OPCION8,'
        + ' :FILSUC,:COD_PERFIL,:EMAIL,:TELEFONO,:FECHANAC,:SEXO,:USUARIOFACTURA,:IDVEND)');
      vQ.Close;
      vQ.ParamByName('USERNAME').AsString := QNombresUSERNAME.AsString;
      vQ.ParamByName('CLAVE').AsString := QNombresCLAVE.AsString;
      vQ.ParamByName('ACLEVEL').AsString := QNombresACLEVEL.AsString;
      vQ.ParamByName('LEVEL1').AsString := QNombresLEVEL1.AsString;
      vQ.ParamByName('LEVEL2').AsString := QNombresLEVEL2.AsString;
      vQ.ParamByName('LEVEL3').AsString := QNombresLEVEL3.AsString;
      vQ.ParamByName('LEVEL4').AsString := QNombresLEVEL4.AsString;
      vQ.ParamByName('LEVEL5').AsString := QNombresLEVEL5.AsString;
      vQ.ParamByName('LEVEL6').AsString := QNombresLEVEL6.AsString;
      vQ.ParamByName('LEVEL7').AsString := QNombresLEVEL7.AsString;
      vQ.ParamByName('LEVEL8').AsString := QNombresLEVEL8.AsString;
      vQ.ParamByName('LEVEL9').AsString := QNombresLEVEL9.AsString;
      vQ.ParamByName('LEVE10').AsString := QNombresLEVE10.AsString;
      vQ.ParamByName('LEVEL11').AsString := QNombresLEVEL11.AsString;
      vQ.ParamByName('TIPO_USUARIO').AsString := QNombresTIPO_USUARIO.AsString;
      vQ.ParamByName('NOMBRE_COMPLETO').AsString :=
        QNombresNOMBRE_COMPLETO.AsString;
      vQ.ParamByName('ENCRIPTADO').AsString := QNombresENCRIPTADO.AsString;
      vQ.ParamByName('DPTO').AsInteger := QNombresDPTO.AsInteger;
      vQ.ParamByName('LOCORIGEN').AsString := QNombresLOCORIGEN.AsString;
      vQ.ParamByName('LOCDESTINO').AsString := QNombresLOCDESTINO.AsString;
      vQ.ParamByName('ACTIVO').AsString := QNombresACTIVO.AsString;
      vQ.ParamByName('OPCION1').AsInteger := QNombresOPCION1.AsInteger;
      vQ.ParamByName('OPCION2').AsInteger := QNombresOPCION2.AsInteger;
      vQ.ParamByName('OPCION3').AsInteger := QNombresOPCION3.AsInteger;
      vQ.ParamByName('OPCION4').AsInteger := QNombresOPCION4.AsInteger;
      vQ.ParamByName('OPCION5').AsInteger := QNombresOPCION5.AsInteger;
      vQ.ParamByName('OPCION6').AsInteger := QNombresOPCION6.AsInteger;
      vQ.ParamByName('OPCION7').AsInteger := QNombresOPCION7.AsInteger;
      vQ.ParamByName('OPCION8').AsInteger := QNombresOPCION8.AsInteger;
      vQ.ParamByName('FILSUC').AsString := QNombresFILSUC.AsString;
      vQ.ParamByName('COD_PERFIL').AsString := QNombresCOD_PERFIL.AsString;
      vQ.ParamByName('EMAIL').AsString := QNombresEMAIL.AsString;
      vQ.ParamByName('TELEFONO').AsString := QNombresTELEFONO.AsString;
      vQ.ParamByName('FECHANAC').AsDateTime := QNombresFECHANAC.AsDateTime;
      vQ.ParamByName('SEXO').AsString := QNombresSEXO.AsString;
      vQ.ParamByName('USUARIOFACTURA').AsString :=
        QNombresUSUARIOFACTURA.AsString;
      vQ.ParamByName('IDVEND').AsInteger := QNombresIDVEND.AsInteger;

      vQ.ExecSQL;
    finally
      vQ.DisposeOf;
    end;
    Numero := Numero + 1;
    ProgressBar1.Value := ProgressBar1.Value + 1;
    Application.ProcessMessages;
    QNombres.Next;
  End;

  Memo1.Lines.Add('->Se Actualizan Los Usuarios del Sistema:');
  Memo1.Lines.Add('  -Tabla Nombres');
  Memo1.Lines.Add('  -Cantidad de Usuarios: ' + IntToStr(Numero));
end;

procedure TMain.ActualizarSegActividades;
var
  Numero: Integer;
  vQ: TFDQuery;
begin
  Numero := 0;
  QSeg_Actividades.Close;
  QSeg_Actividades.Open;
  QSeg_Actividades.Last;
  ProgressBar1.Value := 0;
  ProgressBar1.Max := QSeg_Actividades.RecordCount;
  QSeg_Actividades.First;

  while not QSeg_Actividades.Eof do
  Begin
    vQ := TFDQuery.Create(nil);
    try

      vQ.Connection := Main.ConDestino;
      vQ.SQL.Add
        (' update or insert INTO SEG_ACTIVIDADES (MODULO,ACTIVIDAD,TODOS,ADICIONAR,'
        + ' BORRAR,EDITAR,IMPRIMIR,ANULAR,CONTABILIZAR,CONSULTAR,EJECUTAR,' +
        ' DESCRIPCION_ACT,ORDEN_ACT,REIMPRIMIR)VALUES(' +
        ' :MODULO,:ACTIVIDAD,:TODOS,:ADICIONAR,:BORRAR,:EDITAR,:IMPRIMIR,:ANULAR,'
        + ' :CONTABILIZAR,:CONSULTAR,:EJECUTAR,:DESCRIPCION_ACT,:ORDEN_ACT,:REIMPRIMIR)');
      vQ.Close;
      vQ.ParamByName('MODULO').AsString := QSeg_ActividadesMODULO.AsString;
      vQ.ParamByName('ACTIVIDAD').AsString :=
        QSeg_ActividadesACTIVIDAD.AsString;
      vQ.ParamByName('TODOS').AsString := QSeg_ActividadesTODOS.AsString;
      vQ.ParamByName('ADICIONAR').AsString :=
        QSeg_ActividadesADICIONAR.AsString;
      vQ.ParamByName('BORRAR').AsString := QSeg_ActividadesBORRAR.AsString;
      vQ.ParamByName('EDITAR').AsString := QSeg_ActividadesEDITAR.AsString;
      vQ.ParamByName('IMPRIMIR').AsString := QSeg_ActividadesIMPRIMIR.AsString;
      vQ.ParamByName('ANULAR').AsString := QSeg_ActividadesANULAR.AsString;
      vQ.ParamByName('CONTABILIZAR').AsString :=
        QSeg_ActividadesCONTABILIZAR.AsString;
      vQ.ParamByName('CONSULTAR').AsString :=
        QSeg_ActividadesCONSULTAR.AsString;
      vQ.ParamByName('EJECUTAR').AsString := QSeg_ActividadesEJECUTAR.AsString;
      vQ.ParamByName('DESCRIPCION_ACT').AsString :=
        QSeg_ActividadesDESCRIPCION_ACT.AsString;
      vQ.ParamByName('ORDEN_ACT').AsInteger :=
        QSeg_ActividadesORDEN_ACT.AsInteger;
      vQ.ParamByName('REIMPRIMIR').AsString :=
        QSeg_ActividadesREIMPRIMIR.AsString;
      vQ.ExecSQL;
    finally
      vQ.DisposeOf;
    end;
    Numero := Numero + 1;
    ProgressBar1.Value := ProgressBar1.Value + 1;
    Application.ProcessMessages;
    QSeg_Actividades.Next;
  End;

  Memo1.Lines.Add('->Se Actualizan Actividades Para Usuarios:');
  Memo1.Lines.Add('  -Tabla Seg_Actividades');
  Memo1.Lines.Add('  -Cantidad de Activiades: ' + IntToStr(Numero));
end;

procedure TMain.ActualizarSegPermisosAct;
var
  Numero: Integer;
  vQ: TFDQuery;
begin
  Numero := 0;
  QSeg_Permisos_Act.Close;
  QSeg_Permisos_Act.Open;
  QSeg_Permisos_Act.Last;
  ProgressBar1.Value := 0;
  ProgressBar1.Max := QSeg_Permisos_Act.RecordCount;
  QSeg_Permisos_Act.First;

  while not QSeg_Permisos_Act.Eof do
  Begin
    vQ := TFDQuery.Create(nil);
    try

      vQ.Connection := Main.ConDestino;
      vQ.SQL.Add
        (' update or insert INTO SEG_PERMISOS_ACT (MODULO,ACTIVIDAD,USUARIO,' +
        ' OP,CONFIRMAR)VALUES(' +
        ' :MODULO,:ACTIVIDAD,:USUARIO,:OP,:CONFIRMAR)');
      vQ.Close;
      vQ.ParamByName('MODULO').AsString := QSeg_Permisos_ActMODULO.AsString;
      vQ.ParamByName('ACTIVIDAD').AsString :=
        QSeg_Permisos_ActACTIVIDAD.AsString;
      vQ.ParamByName('USUARIO').AsString := QSeg_Permisos_ActUSUARIO.AsString;
      vQ.ParamByName('OP').AsString := QSeg_Permisos_ActOP.AsString;
      vQ.ParamByName('CONFIRMAR').AsString :=
        QSeg_Permisos_ActCONFIRMAR.AsString;
      vQ.ExecSQL;
    finally
      vQ.DisposeOf;
    end;
    Numero := Numero + 1;
    ProgressBar1.Value := ProgressBar1.Value + 1;
    Application.ProcessMessages;
    QSeg_Permisos_Act.Next;
  End;

  Memo1.Lines.Add('->Se Actualizan Permisos de Usuarios:');
  Memo1.Lines.Add('  -Tabla Seg_Permisos_Act');
  Memo1.Lines.Add('  -Cantidad de Permisos: ' + IntToStr(Numero));
end;

procedure TMain.ActualizarSubGrupos;
var
  Numero: Integer;
  vQ: TFDQuery;
begin
  Numero := 0;
  QSubGrupo.Close;
  QSubGrupo.Open;
  QSubGrupo.Last;
  ProgressBar1.Value := 0;
  ProgressBar1.Max := QSubGrupo.RecordCount;
  QSubGrupo.First;

  while not QSubGrupo.Eof do
  Begin
    vQ := TFDQuery.Create(nil);
    try

      vQ.Connection := Main.ConDestino;
      vQ.SQL.Add
        (' update or insert INTO SUBGRUPO (CODSUBGRUPO,CODGRUPO,CODLINEA,' +
        ' DESCSUBGRUPO,TIEDES,PRINTER)VALUES(' +
        ' :CODSUBGRUPO,:CODGRUPO,:CODLINEA,:DESCSUBGRUPO,:TIEDES,:PRINTER)');
      vQ.Close;
      vQ.ParamByName('CODSUBGRUPO').AsString := QSubGrupoCODSUBGRUPO.AsString;
      vQ.ParamByName('CODGRUPO').AsString := QSubGrupoCODGRUPO.AsString;
      vQ.ParamByName('CODLINEA').AsString := QSubGrupoCODLINEA.AsString;
      vQ.ParamByName('DESCSUBGRUPO').AsString := QSubGrupoDESCSUBGRUPO.AsString;
      vQ.ParamByName('TIEDES').AsString := QSubGrupoTIEDES.AsString;
      vQ.ParamByName('PRINTER').AsString := QSubGrupoPRINTER.AsString;
      vQ.ExecSQL;
    finally
      vQ.DisposeOf;
    end;
    Numero := Numero + 1;
    ProgressBar1.Value := ProgressBar1.Value + 1;
    Application.ProcessMessages;
    QSubGrupo.Next;
  End;

  Memo1.Lines.Add('->Se Actualizan SubGrupos de Producto:');
  Memo1.Lines.Add('  -Tabla SubGrupo');
  Memo1.Lines.Add('  -Cantidad de SubGrupos: ' + IntToStr(Numero));
end;

procedure TMain.ActualizarTerceros;
var
  Numero: Integer;
  vQ: TFDQuery;
begin
  Numero := 0;
  QCust.DisableControls;
  QCust.Close;
  QCust.Open;
  QCust.Last;
  ProgressBar1.Value := 0;
  ProgressBar1.Max := QCust.RecordCount;
  QCust.First;

  while not QCust.Eof do
  Begin
    vQ := TFDQuery.Create(nil);
    try
      vQ.Connection := Main.ConDestino;
      vQ.SQL.Add
        (' update or insert INTO CUST (ID_N,NIT,ACCT,ACCTP,COMPANY,ADDR1,ADDR2,CITY,PAIS,CONTACT1,'
        + ' CARGO1,CONTACT2,CARGO2,PHONE1,EXT1,PHONE2,EXT2,PHONE3,EXT3,FAX,EXT4,NOTAS,ACTIVIDAD,GRUPO,'
        + ' CATEGORIA,ZONA,TERMS,TERMSP,GRAVABLE,RETENEDOR,LATE,CREDITLMT,ONACCOUNT,NIVEL,FUENTE,ISSUE1099,'
        + ' ONETIME,RETIVA,IVAIN,AUTORET,CREDITO,PLAZO,CLIENTE,PROVEEDOR,OTRO,EMPLEADO,VENDEDOR,ICAIN,RETEICA,'
        + ' TIPOEMP,COD_VEND,IDVEND,PROSPECTO,DESCUENTO,CV,E,S,FECHA_CREACION,EMAIL,TIPORETEICA,DCTADICIONAL,'
        + ' DEPARTAMENTO,COMPANY_EXTENDIDO,ID_TIPOCARTERA,COD_NIVEL,DIAS_GRACIA,USERNAME,RETIVA_PROV,DCTO_AD1,'
        + ' DCTO_AD2,MEDICO,IPS,TIPORETICA_VENTA,GRAVABLEIP,TASA_COM,CLITIP,EAN_ENTIDAD_COMP,NUIT,PORCON,IVATEO,'
        + ' RTIVA100,TASAAIU,NRO_TARJETA,FECVEN,COD_EPS,CONTEO,TASA_DCTO_PRONTOPAGO,RETECREEC,RETECREEV,AUTOCREE,'
        + ' NIIF_CONTA_AUTO_FAC,CREDITLMTPROV,TIPRET,TIPAUTRET,INACTIVO,BANKNO,CTA_CORRIENTE,CODIGO_BANCO,'
        + ' APLICA_RETEFUENTE,CONTRATO)' +
        ' values (:ID_N,:NIT,:ACCT,:ACCTP,:COMPANY,:ADDR1,:ADDR2,:CITY,:PAIS,:CONTACT1,'
        + ' :CARGO1,:CONTACT2,:CARGO2,:PHONE1,:EXT1,:PHONE2,:EXT2,:PHONE3,:EXT3,:FAX,:EXT4,:NOTAS,:ACTIVIDAD,:GRUPO,'
        + ' :CATEGORIA,:ZONA,:TERMS,:TERMSP,:GRAVABLE,:RETENEDOR,:LATE,:CREDITLMT,:ONACCOUNT,:NIVEL,:FUENTE,:ISSUE1099,'
        + ' :ONETIME,:RETIVA,:IVAIN,:AUTORET,:CREDITO,:PLAZO,:CLIENTE,:PROVEEDOR,:OTRO,:EMPLEADO,:VENDEDOR,:ICAIN,:RETEICA,'
        + ' :TIPOEMP,:COD_VEND,:IDVEND,:PROSPECTO,:DESCUENTO,:CV,:E,:S,:FECHA_CREACION,:EMAIL,:TIPORETEICA,:DCTADICIONAL,'
        + ' :DEPARTAMENTO,:COMPANY_EXTENDIDO,:ID_TIPOCARTERA,:COD_NIVEL,:DIAS_GRACIA,:USERNAME,:RETIVA_PROV,:DCTO_AD1,'
        + ' :DCTO_AD2,:MEDICO,:IPS,:TIPORETICA_VENTA,:GRAVABLEIP,:TASA_COM,:CLITIP,:EAN_ENTIDAD_COMP,:NUIT,:PORCON,:IVATEO,'
        + ' :RTIVA100,:TASAAIU,:NRO_TARJETA,:FECVEN,:COD_EPS,:CONTEO,:TASA_DCTO_PRONTOPAGO,:RETECREEC,:RETECREEV,:AUTOCREE,'
        + ' :NIIF_CONTA_AUTO_FAC,:CREDITLMTPROV,:TIPRET,:TIPAUTRET,:INACTIVO,:BANKNO,:CTA_CORRIENTE,:CODIGO_BANCO,'
        + ' :APLICA_RETEFUENTE,:CONTRATO)');
      vQ.Close;
      vQ.ParamByName('ID_N').AsString := QCustID_N.AsString;
      vQ.ParamByName('NIT').AsString := QCustNIT.AsString;
      vQ.ParamByName('ACCT').AsFloat := QCustACCT.AsFloat;
      vQ.ParamByName('ACCTP').AsFloat := QCustACCTP.AsFloat;
      vQ.ParamByName('COMPANY').AsString := QCustCOMPANY.AsString;
      vQ.ParamByName('ADDR1').AsString := QCustADDR1.AsString;
      vQ.ParamByName('ADDR2').AsString := QCustADDR2.AsString;
      vQ.ParamByName('CITY').AsString := QCustCITY.AsString;
      vQ.ParamByName('PAIS').AsString := QCustPAIS.AsString;
      vQ.ParamByName('CONTACT1').AsString := QCustCONTACT1.AsString;
      vQ.ParamByName('CARGO1').AsString := QCustCARGO1.AsString;
      vQ.ParamByName('CARGO1').AsString := QCustCARGO1.AsString;
      vQ.ParamByName('CONTACT2').AsString := QCustCONTACT2.AsString;
      vQ.ParamByName('CARGO2').AsString := QCustCARGO2.AsString;
      vQ.ParamByName('PHONE1').AsString := QCustPHONE1.AsString;
      vQ.ParamByName('EXT1').AsString := QCustEXT1.AsString;
      vQ.ParamByName('PHONE2').AsString := QCustPHONE2.AsString;
      vQ.ParamByName('EXT2').AsString := QCustEXT2.AsString;
      vQ.ParamByName('PHONE3').AsString := QCustPHONE3.AsString;
      vQ.ParamByName('EXT3').AsString := QCustEXT3.AsString;
      vQ.ParamByName('FAX').AsString := QCustFAX.AsString;
      vQ.ParamByName('EXT4').AsString := QCustEXT4.AsString;
      vQ.ParamByName('NOTAS').AsString := QCustNOTAS.AsString;
      vQ.ParamByName('ACTIVIDAD').AsInteger := QCustACTIVIDAD.AsInteger;
      vQ.ParamByName('GRUPO').AsInteger := QCustGRUPO.AsInteger;
      vQ.ParamByName('CATEGORIA').AsInteger := QCustCATEGORIA.AsInteger;
      vQ.ParamByName('ZONA').AsInteger := QCustZONA.AsInteger;
      vQ.ParamByName('TERMS').AsString := QCustTERMS.AsString;
      vQ.ParamByName('TERMSP').AsString := QCustTERMSP.AsString;
      vQ.ParamByName('GRAVABLE').AsString := QCustGRAVABLE.AsString;
      vQ.ParamByName('RETENEDOR').AsString := QCustRETENEDOR.AsString;
      vQ.ParamByName('LATE').AsString := QCustLATE.AsString;
      vQ.ParamByName('CREDITLMT').AsFloat := QCustCREDITLMT.AsFloat;
      vQ.ParamByName('ONACCOUNT').AsString := QCustONACCOUNT.AsString;
      vQ.ParamByName('NIVEL').AsString := QCustNIVEL.AsString;
      vQ.ParamByName('FUENTE').AsInteger := QCustFUENTE.AsInteger;
      vQ.ParamByName('ISSUE1099').AsString := QCustISSUE1099.AsString;
      vQ.ParamByName('ONETIME').AsString := QCustONETIME.AsString;
      vQ.ParamByName('RETIVA').AsString := QCustRETIVA.AsString;
      vQ.ParamByName('IVAIN').AsString := QCustIVAIN.AsString;
      vQ.ParamByName('AUTORET').AsString := QCustAUTORET.AsString;
      vQ.ParamByName('CREDITO').AsString := QCustCREDITO.AsString;
      vQ.ParamByName('PLAZO').AsString := QCustPLAZO.AsString;
      vQ.ParamByName('CLIENTE').AsString := QCustCLIENTE.AsString;
      vQ.ParamByName('PROVEEDOR').AsString := QCustPROVEEDOR.AsString;
      vQ.ParamByName('OTRO').AsString := QCustOTRO.AsString;
      vQ.ParamByName('EMPLEADO').AsString := QCustEMPLEADO.AsString;
      vQ.ParamByName('VENDEDOR').AsString := QCustVENDEDOR.AsString;
      vQ.ParamByName('ICAIN').AsString := QCustICAIN.AsString;
      vQ.ParamByName('RETEICA').AsString := QCustRETEICA.AsString;
      vQ.ParamByName('TIPOEMP').AsString := QCustTIPOEMP.AsString;
      vQ.ParamByName('COD_VEND').AsString := QCustCOD_VEND.AsString;
      vQ.ParamByName('IDVEND').AsInteger := QCustIDVEND.AsInteger;
      vQ.ParamByName('PROSPECTO').AsString := QCustPROSPECTO.AsString;
      vQ.ParamByName('DESCUENTO').AsFloat := QCustDESCUENTO.AsFloat;
      vQ.ParamByName('CV').AsInteger := QCustCV.AsInteger;
      vQ.ParamByName('E').AsInteger := QCustE.AsInteger;
      vQ.ParamByName('S').AsInteger := QCustS.AsInteger;
      vQ.ParamByName('FECHA_CREACION').AsDateTime :=
        QCustFECHA_CREACION.AsDateTime;
      vQ.ParamByName('EMAIL').AsString := QCustEMAIL.AsString;
      vQ.ParamByName('TIPORETEICA').AsString := QCustTIPORETEICA.AsString;
      vQ.ParamByName('DCTADICIONAL').AsString := QCustDCTADICIONAL.AsString;
      vQ.ParamByName('DEPARTAMENTO').AsString := QCustDEPARTAMENTO.AsString;
      vQ.ParamByName('COMPANY_EXTENDIDO').AsString :=
        QCustCOMPANY_EXTENDIDO.AsString;
      vQ.ParamByName('ID_TIPOCARTERA').AsString := QCustID_TIPOCARTERA.AsString;
      vQ.ParamByName('COD_NIVEL').AsString := QCustCOD_NIVEL.AsString;
      vQ.ParamByName('DIAS_GRACIA').AsInteger := QCustDIAS_GRACIA.AsInteger;
      vQ.ParamByName('USERNAME').AsString := QCustUSERNAME.AsString;
      vQ.ParamByName('RETIVA_PROV').AsString := QCustRETIVA_PROV.AsString;
      vQ.ParamByName('DCTO_AD1').AsFloat := QCustDCTO_AD1.AsFloat;
      vQ.ParamByName('DCTO_AD2').AsFloat := QCustDCTO_AD2.AsFloat;
      vQ.ParamByName('MEDICO').AsString := QCustMEDICO.AsString;
      vQ.ParamByName('IPS').AsString := QCustIPS.AsString;
      vQ.ParamByName('TIPORETICA_VENTA').AsString :=
        QCustTIPORETICA_VENTA.AsString;
      vQ.ParamByName('GRAVABLEIP').AsString := QCustGRAVABLEIP.AsString;
      vQ.ParamByName('TASA_COM').AsFloat := QCustTASA_COM.AsFloat;
      vQ.ParamByName('CLITIP').AsInteger := QCustCLITIP.AsInteger;
      vQ.ParamByName('EAN_ENTIDAD_COMP').AsString :=
        QCustEAN_ENTIDAD_COMP.AsString;
      vQ.ParamByName('NUIT').AsString := QCustNUIT.AsString;
      vQ.ParamByName('PORCON').AsFloat := QCustPORCON.AsFloat;
      vQ.ParamByName('IVATEO').AsString := QCustIVATEO.AsString;
      vQ.ParamByName('RTIVA100').AsString := QCustRTIVA100.AsString;

      vQ.ParamByName('NRO_TARJETA').AsString := QCustNRO_TARJETA.AsString;
      vQ.ParamByName('FECVEN').AsDateTime := QCustFECVEN.AsDateTime;
      vQ.ParamByName('COD_EPS').AsString := QCustCOD_EPS.AsString;
      vQ.ParamByName('CONTEO').AsInteger := QCustCONTEO.AsInteger;
      vQ.ParamByName('TASA_DCTO_PRONTOPAGO').AsFloat :=
        QCustTASA_DCTO_PRONTOPAGO.AsFloat;
      vQ.ParamByName('RETECREEC').AsString := QCustRETECREEC.AsString;
      vQ.ParamByName('RETECREEV').AsString := QCustRETECREEV.AsString;
      vQ.ParamByName('AUTOCREE').AsString := QCustAUTOCREE.AsString;
      vQ.ParamByName('NIIF_CONTA_AUTO_FAC').AsString :=
        QCustNIIF_CONTA_AUTO_FAC.AsString;
      vQ.ParamByName('CREDITLMTPROV').AsFloat := QCustCREDITLMTPROV.AsFloat;
      vQ.ParamByName('TIPRET').AsString := QCustTIPRET.AsString;
      vQ.ParamByName('TIPAUTRET').AsString := QCustTIPAUTRET.AsString;
      vQ.ParamByName('INACTIVO').AsString := QCustINACTIVO.AsString;
      vQ.ParamByName('BANKNO').AsString := QCustBANKNO.AsString;
      vQ.ParamByName('CTA_CORRIENTE').AsString := QCustCTA_CORRIENTE.AsString;
      vQ.ParamByName('CODIGO_BANCO').AsInteger := QCustCODIGO_BANCO.AsInteger;
      vQ.ParamByName('APLICA_RETEFUENTE').AsString :=
        QCustAPLICA_RETEFUENTE.AsString;
      vQ.ParamByName('CONTRATO').AsString := QCustCONTRATO.AsString;
      vQ.ExecSQL;

      QShipto.DisableControls;
      QShipto.Close;
      QShipto.ParamByName('ID_N').AsString := QCustID_N.AsString;
      QShipto.Open;

      QShipto.First;
      while not QShipto.Eof do
      Begin
        vQ.Close;
        vQ.SQL.Clear;
        vQ.SQL.Add
          ('UPDATE OR INSERT INTO SHIPTO (ID_N,SUCCLIENTE,DESCRIPCION,COMPANY,'
          + 'ADDR1,ADDR2,PHONE1,PHONE2,FAX,EXT1,EXT2,CONTEO,ZONA,' +
          'ID_VEND,PAIS,CONTACT1,CARGO1,EMAIL,CIRCUITO,COMUNA,BARRIO,' +
          'IMPCONSUMO,DEPARTAMENTO,CITY,RETIVA_PROV,CREDITLMT,ESTADO)' +
          'VALUES (:ID_N,:SUCCLIENTE,:DESCRIPCION,:COMPANY,' +
          ':ADDR1,:ADDR2,:PHONE1,:PHONE2,:FAX,:EXT1,:EXT2,:CONTEO,:ZONA,' +
          ':ID_VEND,:PAIS,:CONTACT1,:CARGO1,:EMAIL,:CIRCUITO,:COMUNA,:BARRIO,' +
          ':IMPCONSUMO,:DEPARTAMENTO,:CITY,:RETIVA_PROV,:CREDITLMT,:ESTADO)');
        vQ.Close;
        vQ.ParamByName('ID_N').AsString := QShiptoID_N.AsString;
        vQ.ParamByName('SUCCLIENTE').AsInteger := QShiptoSUCCLIENTE.AsInteger;
        vQ.ParamByName('DESCRIPCION').AsString := QShiptoDESCRIPCION.AsString;
        vQ.ParamByName('COMPANY').AsString := QShiptoCOMPANY.AsString;
        vQ.ParamByName('ADDR1').AsString := QShiptoADDR1.AsString;
        vQ.ParamByName('ADDR2').AsString := QShiptoADDR2.AsString;
        vQ.ParamByName('PHONE1').AsString := QShiptoPHONE1.AsString;
        vQ.ParamByName('PHONE2').AsString := QShiptoPHONE2.AsString;
        vQ.ParamByName('FAX').AsString := QShiptoFAX.AsString;
        vQ.ParamByName('EXT1').AsString := QShiptoEXT1.AsString;
        vQ.ParamByName('EXT2').AsString := QShiptoEXT2.AsString;
        vQ.ParamByName('CONTEO').AsInteger := QShiptoCONTEO.AsInteger;
        vQ.ParamByName('ZONA').AsInteger := QShiptoZONA.AsInteger;
        vQ.ParamByName('ID_VEND').AsInteger := QShiptoID_VEND.AsInteger;
        vQ.ParamByName('PAIS').AsString := QShiptoPAIS.AsString;
        vQ.ParamByName('CONTACT1').AsString := QShiptoCONTACT1.AsString;
        vQ.ParamByName('CARGO1').AsString := QShiptoCARGO1.AsString;
        vQ.ParamByName('EMAIL').AsString := QShiptoEMAIL.AsString;
        vQ.ParamByName('CIRCUITO').AsInteger := QShiptoCIRCUITO.AsInteger;
        vQ.ParamByName('COMUNA').AsInteger := QShiptoCOMUNA.AsInteger;
        vQ.ParamByName('BARRIO').AsInteger := QShiptoBARRIO.AsInteger;
        vQ.ParamByName('IMPCONSUMO').AsString := QShiptoIMPCONSUMO.AsString;
        vQ.ParamByName('DEPARTAMENTO').AsString := QShiptoDEPARTAMENTO.AsString;
        vQ.ParamByName('CITY').AsString := QShiptoCITY.AsString;
        vQ.ParamByName('RETIVA_PROV').AsString := QShiptoRETIVA_PROV.AsString;
        vQ.ParamByName('CREDITLMT').AsFloat := QShiptoCREDITLMT.AsFloat;
        vQ.ParamByName('ESTADO').AsString := QShiptoESTADO.AsString;
        vQ.ExecSQL;
        QShipto.Next;
      End;

      QTributaria.DisableControls;
      QTributaria.Close;
      QTributaria.ParamByName('ID_N').AsString := QCustID_N.AsString;
      QTributaria.Open;

      QTributaria.First;
      while not QTributaria.Eof do
      Begin
        vQ.Close;
        vQ.SQL.Clear;
        vQ.SQL.Add('UPDATE OR INSERT INTO TRIBUTARIA (ID_N,COMPANY,TDOC, ' +
          'CV,TIPO_CONTRIBUYENTE,PRIMER_NOMBRE,SEGUNDO_NOMBRE,PRIMER_APELLIDO, '
          + 'SEGUNDO_APELLIDO,ESTAB_COMERCIAL,PRETRANS)values( ' +
          ':ID_N,:COMPANY,:TDOC,:CV,:TIPO_CONTRIBUYENTE,:PRIMER_NOMBRE,:SEGUNDO_NOMBRE, '
          + ':PRIMER_APELLIDO,:SEGUNDO_APELLIDO,:ESTAB_COMERCIAL,:PRETRANS)');
        vQ.Close;
        vQ.ParamByName('ID_N').AsString := QTributariaID_N.AsString;
        vQ.ParamByName('COMPANY').AsString := QTributariaCOMPANY.AsString;
        vQ.ParamByName('TDOC').AsInteger := QTributariaTDOC.AsInteger;
        vQ.ParamByName('CV').AsInteger := QTributariaCV.AsInteger;
        vQ.ParamByName('TIPO_CONTRIBUYENTE').AsInteger :=
          QTributariaTIPO_CONTRIBUYENTE.AsInteger;
        vQ.ParamByName('PRIMER_NOMBRE').AsString :=
          QTributariaPRIMER_NOMBRE.AsString;
        vQ.ParamByName('SEGUNDO_NOMBRE').AsString :=
          QTributariaSEGUNDO_NOMBRE.AsString;
        vQ.ParamByName('PRIMER_APELLIDO').AsString :=
          QTributariaPRIMER_APELLIDO.AsString;
        vQ.ParamByName('SEGUNDO_APELLIDO').AsString :=
          QTributariaSEGUNDO_APELLIDO.AsString;
        vQ.ParamByName('ESTAB_COMERCIAL').AsString :=
          QTributariaESTAB_COMERCIAL.AsString;
        vQ.ParamByName('PRETRANS').AsString := QTributariaPRETRANS.AsString;
        vQ.ExecSQL;
        QTributaria.Next;
      End;
    finally
      vQ.DisposeOf;
    end;

    Numero := Numero + 1;
    ProgressBar1.Value := ProgressBar1.Value + 1;
    Application.ProcessMessages;
    QCust.Next;
  End;
  Memo1.Lines.Add('->Se Actualizan Terceros:');
  Memo1.Lines.Add('  -Tabla Cust');
  Memo1.Lines.Add('  -Tabla Shipto');
  Memo1.Lines.Add('  -Tabla Tributaria');
  Memo1.Lines.Add('  -Cantidad de Terceros: ' + IntToStr(Numero));

end;

procedure TMain.ActualizarUnidades;
var
  Numero: Integer;
  vQ: TFDQuery;
begin
  Numero := 0;
  QUnidad.Close;
  QUnidad.Open;
  QUnidad.Last;
  ProgressBar1.Value := 0;
  ProgressBar1.Max := QUnidad.RecordCount;
  QUnidad.First;

  while not QUnidad.Eof do
  Begin
    vQ := TFDQuery.Create(nil);
    try

      vQ.Connection := Main.ConDestino;
      vQ.SQL.Add(' update or insert INTO UNIDAD (COD_UNIDAD,DESCRIPCION)VALUES('
        + ' :COD_UNIDAD,:DESCRIPCION)');
      vQ.Close;
      vQ.ParamByName('COD_UNIDAD').AsString := QUnidadCOD_UNIDAD.AsString;
      vQ.ParamByName('DESCRIPCION').AsString := QUnidadDESCRIPCION.AsString;
      vQ.ExecSQL;
    finally
      vQ.DisposeOf;
    end;
    Numero := Numero + 1;
    ProgressBar1.Value := ProgressBar1.Value + 1;
    Application.ProcessMessages;
    QUnidad.Next;
  End;

  Memo1.Lines.Add('->Se Actualizan Medidas de Producto:');
  Memo1.Lines.Add('  -Tabla Unidad');
  Memo1.Lines.Add('  -Cantidad de Medidas: ' + IntToStr(Numero));
end;

procedure TMain.ActualizarVendedores;
var
  Numero: Integer;
  vQ: TFDQuery;
begin
  Numero := 0;
  QVendedor.Close;
  QVendedor.Open;
  QVendedor.Last;
  ProgressBar1.Value := 0;
  ProgressBar1.Max := QVendedor.RecordCount;
  QVendedor.First;

  while not QVendedor.Eof do
  Begin
    vQ := TFDQuery.Create(nil);
    try

      vQ.Connection := Main.ConDestino;
      vQ.SQL.Add
        (' update or insert INTO VENDEDOR (IDVEND,NOMBRE,TELEFONO,CUOTAMINMENSUAL,'
        + ' BASICOMENSUAL,ZONAVENDEDOR,COMVENTA,COMRECA0_30,COMRECA31_60,COMRECA61_90,'
        + ' COMRECAMASDE90,E,S,ID_N,BASE_RTICA,ACTIVO,COMRECA_TARIFA)' +
        ' VALUES(:IDVEND,:NOMBRE,:TELEFONO,:CUOTAMINMENSUAL,' +
        ' :BASICOMENSUAL,:ZONAVENDEDOR,:COMVENTA,:COMRECA0_30,:COMRECA31_60,:COMRECA61_90,'
        + ' :COMRECAMASDE90,:E,:S,:ID_N,:BASE_RTICA,:ACTIVO,:COMRECA_TARIFA)');
      vQ.Close;
      vQ.ParamByName('IDVEND').AsInteger := QVendedorIDVEND.AsInteger;
      vQ.ParamByName('NOMBRE').AsString := QVendedorNOMBRE.AsString;
      vQ.ParamByName('TELEFONO').AsString := QVendedorTELEFONO.AsString;
      vQ.ParamByName('CUOTAMINMENSUAL').AsFloat :=
        QVendedorCUOTAMINMENSUAL.AsFloat;
      vQ.ParamByName('BASICOMENSUAL').AsFloat := QVendedorBASICOMENSUAL.AsFloat;
      vQ.ParamByName('ZONAVENDEDOR').AsInteger :=
        QVendedorZONAVENDEDOR.AsInteger;
      vQ.ParamByName('COMVENTA').AsFloat := QVendedorCOMVENTA.AsFloat;
      vQ.ParamByName('COMRECA0_30').AsFloat := QVendedorCOMRECA0_30.AsFloat;
      vQ.ParamByName('COMRECA31_60').AsFloat := QVendedorCOMRECA31_60.AsFloat;
      vQ.ParamByName('COMRECA61_90').AsFloat := QVendedorCOMRECA61_90.AsFloat;
      vQ.ParamByName('COMRECAMASDE90').AsFloat :=
        QVendedorCOMRECAMASDE90.AsFloat;
      vQ.ParamByName('E').AsInteger := QVendedorE.AsInteger;
      vQ.ParamByName('S').AsInteger := QVendedorS.AsInteger;
      vQ.ParamByName('ID_N').AsString := QVendedorID_N.AsString;
      vQ.ParamByName('BASE_RTICA').AsFloat := QVendedorBASE_RTICA.AsFloat;
      vQ.ParamByName('ACTIVO').AsString := QVendedorACTIVO.AsString;
      vQ.ParamByName('COMRECA_TARIFA').AsFloat :=
        QVendedorCOMRECA_TARIFA.AsFloat;
      vQ.ExecSQL;
    finally
      vQ.DisposeOf;
    end;
    Numero := Numero + 1;
    ProgressBar1.Value := ProgressBar1.Value + 1;
    Application.ProcessMessages;
    QVendedor.Next;
  End;

  Memo1.Lines.Add('->Se Actualizan Los Vendedores:');
  Memo1.Lines.Add('  -Tabla Vendedor');
  Memo1.Lines.Add('  -Cantidad de Vendedores: ' + IntToStr(Numero));
end;

procedure TMain.Button1Click(Sender: TObject);
begin
  Application.CreateForm(TForm2, Form2);
  Form2.ShowModal;
  Form2.Free;

end;

procedure TMain.Button2Click(Sender: TObject);
begin

  Memo1.Lines.Clear;
  Memo1.Lines.Add('Conectado a Origen:');
  ConOrigen.Connected := False;
  ConOrigen.Params.VALUES['driverid'] := 'FB';
  ConOrigen.Params.VALUES['DATABASE'] := Edit1.Text;
  ConOrigen.Params.VALUES['user_name'] := 'SYSDBA';
  ConOrigen.Params.VALUES['PASSWORD'] := 'masterkey';
  ConOrigen.Params.VALUES['Protocol'] := 'ipTCPIP';
  Memo1.Lines.Add(Edit1.Text);
  Memo1.Lines.Add('Conectado a Destino:');
  ConDestino.Connected := False;
  ConDestino.Params.VALUES['driverid'] := 'FB';
  ConDestino.Params.VALUES['DATABASE'] := Edit2.Text;
  ConDestino.Params.VALUES['user_name'] := 'SYSDBA';
  ConDestino.Params.VALUES['PASSWORD'] := 'masterkey';
  ConDestino.Params.VALUES['Protocol'] := 'ipTCPIP';
  Memo1.Lines.Add(Edit2.Text);
  Memo1.Lines.Add('');

  if Cuentas = True then
    ActualizarCuentas;
  if Terceros = True then
    ActualizarTerceros;
  if Items = True then
  BEGIN
    ActualizarLineas;
    ActualizarGrupos;
    ActualizarSubGrupos;
    ActualizarLista;
    ActualizarUnidades;
    ActualizarBodegas;
    ActualizarItems;
    ActualizarItemUnidad;
  END;
  if Usuarios = True then
  Begin
    ActualizarNombres;
    ActualizarSegActividades;
    ActualizarSegPermisosAct;
    ActualizarFactipdoc;
    ActualizarVendedores;
  End;
  if FormasPago = True then
  Begin
    ActualizarForPago;
    ActualizarBancos;
    ActualizarConceptosRC;
  End;

  if CheckTodos.IsChecked = True then
  begin
    PasarPedidos;
    PasarCotizaciones;
    PasarRemisiones;
    PasarFacturas;
    PasarOrdenesdeCompras;
    PasarEntradas;
    PasarAjustes;
    PasarTraslados;
    PasarEnsambles;
    PasarCarteraProv;
    PasarComprobantes;
  end
  else
  begin
    if CheckPedidos.IsChecked = True then
    begin
      PasarPedidos;
    end;
    if CheckCotizaciones.IsChecked = True then
    begin
      PasarCotizaciones;
    end;
    if CheckRemisiones.IsChecked = True then
    begin
      PasarRemisiones;
    end;
    if CheckFacDev.IsChecked = True then
    begin
      PasarFacturas;
    end;
    if CheckOrdenCom.IsChecked = True then
    begin
      PasarOrdenesdeCompras;
    end;
    if CheckEntrDev.IsChecked = True then
    begin
      PasarEntradas;
    end;
    if CheckAjustes.IsChecked = True then
    begin
      PasarAjustes;
    end;
    if CheckTraslados.IsChecked = True then
    begin
      PasarTraslados;
    end;
    if CheckEnsambles.IsChecked = True then
    begin
      PasarEnsambles;
    end;
    if CheckCarteraProv.IsChecked = True then
    begin
      PasarCarteraProv;
    end;
    if CheckComprobantes.IsChecked = True then
    begin
      PasarComprobantes;
    end;
  end;
  ShowMessage('Carga Completa !!');

end;

procedure TMain.CheckAjustesChange(Sender: TObject);
begin
  if CheckAjustes.IsChecked = True then
  begin
    CheckTodos.IsChecked := False;
  end;
end;

procedure TMain.CheckCarteraProvChange(Sender: TObject);
begin
  if CheckCarteraProv.IsChecked = True then
  begin
    CheckTodos.IsChecked := False;
  end;
end;

procedure TMain.CheckComprobantesChange(Sender: TObject);
begin
  if CheckComprobantes.IsChecked = True then
  begin
    CheckTodos.IsChecked := False;
  end;
end;

procedure TMain.CheckCotizacionesChange(Sender: TObject);
begin
  if CheckCotizaciones.IsChecked = True then
  begin
    CheckTodos.IsChecked := False;
  end;
end;

procedure TMain.CheckDocxSucChange(Sender: TObject);
begin
  if CheckDocxSuc.IsChecked = False then
  begin
    Edit3.Enabled := False;
    Edit4.Enabled := False;
  end
  else if CheckDocxSuc.IsChecked = True then
  begin
    Edit3.Enabled := True;
    Edit4.Enabled := True;
  end;

end;

procedure TMain.CheckEnsamblesChange(Sender: TObject);
begin
  if CheckEnsambles.IsChecked = True then
  begin
    CheckTodos.IsChecked := False;
  end;
end;

procedure TMain.CheckEntrDevChange(Sender: TObject);
begin
  if CheckEntrDev.IsChecked = True then
  begin
    CheckTodos.IsChecked := False;
  end;
end;

procedure TMain.CheckFacDevChange(Sender: TObject);
begin
  if CheckFacDev.IsChecked = True then
  begin
    CheckTodos.IsChecked := False;
  end;
end;

procedure TMain.CheckOrdenComChange(Sender: TObject);
begin
  if CheckOrdenCom.IsChecked = True then
  begin
    CheckTodos.IsChecked := False;
  end;
end;

procedure TMain.CheckPedidosChange(Sender: TObject);
begin
  if CheckPedidos.IsChecked = True then
  begin
    CheckTodos.IsChecked := False;
  end;
end;

procedure TMain.CheckRemisionesChange(Sender: TObject);
begin
  if CheckRemisiones.IsChecked = True then
  begin
    CheckTodos.IsChecked := False;
  end;
end;

procedure TMain.CheckTodosChange(Sender: TObject);
begin
  if CheckTodos.IsChecked = True then
  begin
    CheckFacDev.IsChecked := False;
    CheckCotizaciones.IsChecked := False;
    CheckRemisiones.IsChecked := False;
    CheckOrdenCom.IsChecked := False;
    CheckEntrDev.IsChecked := False;
    CheckAjustes.IsChecked := False;
    CheckTraslados.IsChecked := False;
    CheckEnsambles.IsChecked := False;
    CheckCarteraProv.IsChecked := False;
    CheckComprobantes.IsChecked := False;
    CheckPedidos.IsChecked := False;
  end;

end;

procedure TMain.CheckTrasladosChange(Sender: TObject);
begin
  if CheckTraslados.IsChecked = True then
  begin
    CheckTodos.IsChecked := False;
  end;
end;

procedure TMain.EliminarAjustes(Tipo: String; Number: Integer);
var
  vQ: TFDQuery;
begin

  vQ := TFDQuery.Create(nil);
  try
    vQ.Connection := Main.ConDestino;
    vQ.SQL.Add('DELETE FROM IPADJUSTD WHERE TIPO= :TIPO AND BATCH=:NUMBER');
    vQ.Close;
    vQ.ParamByName('TIPO').AsString := Tipo;
    vQ.ParamByName('NUMBER').AsInteger := Number;
    vQ.ExecSQL;

    vQ.SQL.Clear;
    vQ.SQL.Add('DELETE FROM IPADJUSTE WHERE TIPO= :TIPO AND BATCH=:NUMBER');
    vQ.Close;
    vQ.ParamByName('TIPO').AsString := Tipo;
    vQ.ParamByName('NUMBER').AsInteger := Number;
    vQ.ExecSQL;

    vQ.SQL.Clear;
    vQ.SQL.Add('DELETE FROM ITEMACT WHERE TIPO= :TIPO AND BATCH=:NUMBER');
    vQ.Close;
    vQ.ParamByName('TIPO').AsString := Tipo;
    vQ.ParamByName('NUMBER').AsInteger := Number;
    vQ.ExecSQL;

    vQ.SQL.Clear;
    vQ.SQL.Add('DELETE FROM GL WHERE TIPO= :TIPO AND BATCH=:NUMBER');
    vQ.Close;
    vQ.ParamByName('TIPO').AsString := Tipo;
    vQ.ParamByName('NUMBER').AsInteger := Number;
    vQ.ExecSQL;
  finally
    vQ.DisposeOf;
  end;

End;

procedure TMain.EliminarCarteraProv(Tipo: String; Number: Integer);
var
  vQ: TFDQuery;
begin

  vQ := TFDQuery.Create(nil);
  try
    vQ.Connection := Main.ConDestino;

    vQ.SQL.Clear;
    vQ.SQL.Add('DELETE FROM CARPRODE WHERE TIPO= :TIPO AND BATCH=:NUMBER');
    vQ.Close;
    vQ.ParamByName('TIPO').AsString := Tipo;
    vQ.ParamByName('NUMBER').AsInteger := Number;
    vQ.ExecSQL;

    vQ.SQL.Clear;
    vQ.SQL.Add('DELETE FROM CARPROEN WHERE TIPO= :TIPO AND BATCH=:NUMBER');
    vQ.Close;
    vQ.ParamByName('TIPO').AsString := Tipo;
    vQ.ParamByName('NUMBER').AsInteger := Number;
    vQ.ExecSQL;

    vQ.SQL.Clear;
    vQ.SQL.Add('DELETE FROM GL WHERE TIPO= :TIPO AND BATCH=:NUMBER');
    vQ.Close;
    vQ.ParamByName('TIPO').AsString := Tipo;
    vQ.ParamByName('NUMBER').AsInteger := Number;
    vQ.ExecSQL;

    vQ.SQL.Clear;
    vQ.SQL.Add('DELETE FROM CARPRO WHERE TIPO= :TIPO AND BATCH=:NUMBER');
    vQ.Close;
    vQ.ParamByName('TIPO').AsString := Tipo;
    vQ.ParamByName('NUMBER').AsInteger := Number;
    vQ.ExecSQL;

  finally
    vQ.DisposeOf;
  end;

End;

procedure TMain.EliminarComprobantes(Tipo: String; Number: Integer);
var
  vQ: TFDQuery;
begin

  vQ := TFDQuery.Create(nil);
  try
    vQ.Connection := Main.ConDestino;

    vQ.SQL.Clear;
    vQ.SQL.Add('DELETE FROM GLDET WHERE TIPO= :TIPO AND BATCH=:NUMBER');
    vQ.Close;
    vQ.ParamByName('TIPO').AsString := Tipo;
    vQ.ParamByName('NUMBER').AsInteger := Number;
    vQ.ExecSQL;

    vQ.SQL.Clear;
    vQ.SQL.Add('DELETE FROM GLEN WHERE TIPO= :TIPO AND BATCH=:NUMBER');
    vQ.Close;
    vQ.ParamByName('TIPO').AsString := Tipo;
    vQ.ParamByName('NUMBER').AsInteger := Number;
    vQ.ExecSQL;

    vQ.SQL.Clear;
    vQ.SQL.Add('DELETE FROM GL WHERE TIPO= :TIPO AND BATCH=:NUMBER');
    vQ.Close;
    vQ.ParamByName('TIPO').AsString := Tipo;
    vQ.ParamByName('NUMBER').AsInteger := Number;
    vQ.ExecSQL;

  finally
    vQ.DisposeOf;
  end;

End;

procedure TMain.EliminarCotizaciones(Tipo: String; Number: Integer);
var
  vQ: TFDQuery;
begin

  vQ := TFDQuery.Create(nil);
  try
    vQ.Connection := Main.ConDestino;
    vQ.SQL.Add('DELETE FROM DET_PROD WHERE TIPO= :TIPO AND NUMERO=:NUMBER');
    vQ.Close;
    vQ.ParamByName('TIPO').AsString := Tipo;
    vQ.ParamByName('NUMBER').AsInteger := Number;
    vQ.ExecSQL;

    vQ.SQL.Clear;
    vQ.SQL.Add('DELETE FROM COTIZACI WHERE TIPO= :TIPO AND NUMERO=:NUMBER');
    vQ.Close;
    vQ.ParamByName('TIPO').AsString := Tipo;
    vQ.ParamByName('NUMBER').AsInteger := Number;
    vQ.ExecSQL;
  finally
    vQ.DisposeOf;
  end;

End;

procedure TMain.EliminarFacturas(Tipo: String; Number: Integer);
var
  vQ: TFDQuery;
begin

  vQ := TFDQuery.Create(nil);
  try
    vQ.Connection := Main.ConDestino;
    vQ.SQL.Add('DELETE FROM PAGOS WHERE TIPO= :TIPO AND NUMERO=:NUMBER');
    vQ.Close;
    vQ.ParamByName('TIPO').AsString := Tipo;
    vQ.ParamByName('NUMBER').AsInteger := Number;
    vQ.ExecSQL;

    vQ.SQL.Clear;
    vQ.SQL.Add('DELETE FROM OEDET WHERE TIPO= :TIPO AND NUMBER=:NUMBER');
    vQ.Close;
    vQ.ParamByName('TIPO').AsString := Tipo;
    vQ.ParamByName('NUMBER').AsInteger := Number;
    vQ.ExecSQL;

    vQ.SQL.Clear;
    vQ.SQL.Add('DELETE FROM OE WHERE TIPO= :TIPO AND NUMBER=:NUMBER');
    vQ.Close;
    vQ.ParamByName('TIPO').AsString := Tipo;
    vQ.ParamByName('NUMBER').AsInteger := Number;
    vQ.ExecSQL;

    vQ.SQL.Clear;
    vQ.SQL.Add('DELETE FROM ITEMACT WHERE TIPO= :TIPO AND BATCH=:NUMBER');
    vQ.Close;
    vQ.ParamByName('TIPO').AsString := Tipo;
    vQ.ParamByName('NUMBER').AsInteger := Number;
    vQ.ExecSQL;

    vQ.SQL.Clear;
    vQ.SQL.Add('DELETE FROM GL WHERE TIPO= :TIPO AND BATCH=:NUMBER');
    vQ.Close;
    vQ.ParamByName('TIPO').AsString := Tipo;
    vQ.ParamByName('NUMBER').AsInteger := Number;
    vQ.ExecSQL;

    vQ.SQL.Clear;
    vQ.SQL.Add('DELETE FROM CARPRO WHERE TIPO= :TIPO AND BATCH=:NUMBER');
    vQ.Close;
    vQ.ParamByName('TIPO').AsString := Tipo;
    vQ.ParamByName('NUMBER').AsInteger := Number;
    vQ.ExecSQL;

  finally
    vQ.DisposeOf;
  end;

End;

procedure TMain.EliminarOrdenDeCompra(Tipo: String; Number: Integer);
var
  vQ: TFDQuery;
begin

  vQ := TFDQuery.Create(nil);
  try
    vQ.Connection := Main.ConDestino;
    vQ.SQL.Add('DELETE FROM OC_IP WHERE TYPEOC= :TIPO AND NUMBEROC=:NUMBER');
    vQ.Close;
    vQ.ParamByName('TIPO').AsString := Tipo;
    vQ.ParamByName('NUMBER').AsInteger := Number;
    vQ.ExecSQL;

    vQ.SQL.Clear;
    vQ.SQL.Add('DELETE FROM IPOCD WHERE TIPO= :TIPO AND NUMBER=:NUMBER');
    vQ.Close;
    vQ.ParamByName('TIPO').AsString := Tipo;
    vQ.ParamByName('NUMBER').AsInteger := Number;
    vQ.ExecSQL;

    vQ.SQL.Clear;
    vQ.SQL.Add('DELETE FROM IPOCE WHERE TIPO= :TIPO AND NUMBER=:NUMBER');
    vQ.Close;
    vQ.ParamByName('TIPO').AsString := Tipo;
    vQ.ParamByName('NUMBER').AsInteger := Number;
    vQ.ExecSQL;
  finally
    vQ.DisposeOf;
  end;

End;

procedure TMain.EliminarPedidos(Tipo: String; Number: Integer);
var
  vQ: TFDQuery;
begin

  vQ := TFDQuery.Create(nil);
  try
    vQ.Connection := Main.ConDestino;
    vQ.SQL.Add
      ('DELETE FROM PEDFACT WHERE TIPO_PEDIDO= :TIPO AND NUMERO_PEDIDO=:NUMBER');
    vQ.Close;
    vQ.ParamByName('TIPO').AsString := Tipo;
    vQ.ParamByName('NUMBER').AsInteger := Number;
    vQ.ExecSQL;

    vQ.SQL.Clear;
    vQ.SQL.Add('DELETE FROM PEDIDOD WHERE TIPO= :TIPO AND NUMBER=:NUMBER');
    vQ.Close;
    vQ.ParamByName('TIPO').AsString := Tipo;
    vQ.ParamByName('NUMBER').AsInteger := Number;
    vQ.ExecSQL;

    vQ.SQL.Clear;
    vQ.SQL.Add('DELETE FROM PEDIDOE WHERE TIPO= :TIPO AND NUMBER=:NUMBER');
    vQ.Close;
    vQ.ParamByName('TIPO').AsString := Tipo;
    vQ.ParamByName('NUMBER').AsInteger := Number;
    vQ.ExecSQL;

    vQ.SQL.Clear;
    vQ.SQL.Add('DELETE FROM ITEMACT WHERE TIPO= :TIPO AND BATCH=:NUMBER');
    vQ.Close;
    vQ.ParamByName('TIPO').AsString := Tipo;
    vQ.ParamByName('NUMBER').AsInteger := Number;
    vQ.ExecSQL;

  finally
    vQ.DisposeOf;
  end;

End;

procedure TMain.EliminarEnsables(Tipo: String; Number: Integer);
var
  vQ: TFDQuery;
begin

  vQ := TFDQuery.Create(nil);
  try
    vQ.Connection := Main.ConDestino;

    vQ.SQL.Clear;
    vQ.SQL.Add('DELETE FROM ENSAMBLED WHERE TIPO= :TIPO AND BATCH=:NUMBER');
    vQ.Close;
    vQ.ParamByName('TIPO').AsString := Tipo;
    vQ.ParamByName('NUMBER').AsInteger := Number;
    vQ.ExecSQL;

    vQ.SQL.Clear;
    vQ.SQL.Add('DELETE FROM ENSAMBLEE WHERE TIPO= :TIPO AND BATCH=:NUMBER');
    vQ.Close;
    vQ.ParamByName('TIPO').AsString := Tipo;
    vQ.ParamByName('NUMBER').AsInteger := Number;
    vQ.ExecSQL;

    vQ.SQL.Clear;
    vQ.SQL.Add('DELETE FROM ITEMACT WHERE TIPO= :TIPO AND BATCH=:NUMBER');
    vQ.Close;
    vQ.ParamByName('TIPO').AsString := Tipo;
    vQ.ParamByName('NUMBER').AsInteger := Number;
    vQ.ExecSQL;

    vQ.SQL.Clear;
    vQ.SQL.Add('DELETE FROM GL WHERE TIPO= :TIPO AND BATCH=:NUMBER');
    vQ.Close;
    vQ.ParamByName('TIPO').AsString := Tipo;
    vQ.ParamByName('NUMBER').AsInteger := Number;
    vQ.ExecSQL;

  finally
    vQ.DisposeOf;
  end;

End;

procedure TMain.EliminarEntradas(Tipo: String; Number: Integer);
var
  vQ: TFDQuery;
begin

  vQ := TFDQuery.Create(nil);
  try
    vQ.Connection := Main.ConDestino;
    vQ.SQL.Add('DELETE FROM OC_IP WHERE TYPEIP= :TIPO AND NUMBERIP=:NUMBER');
    vQ.Close;
    vQ.ParamByName('TIPO').AsString := Tipo;
    vQ.ParamByName('NUMBER').AsInteger := Number;
    vQ.ExecSQL;

    vQ.SQL.Clear;
    vQ.SQL.Add('DELETE FROM IPDET WHERE TIPO= :TIPO AND NUMBER=:NUMBER');
    vQ.Close;
    vQ.ParamByName('TIPO').AsString := Tipo;
    vQ.ParamByName('NUMBER').AsInteger := Number;
    vQ.ExecSQL;

    vQ.SQL.Clear;
    vQ.SQL.Add('DELETE FROM IP WHERE TIPO= :TIPO AND NUMBER=:NUMBER');
    vQ.Close;
    vQ.ParamByName('TIPO').AsString := Tipo;
    vQ.ParamByName('NUMBER').AsInteger := Number;
    vQ.ExecSQL;

    vQ.SQL.Clear;
    vQ.SQL.Add('DELETE FROM GL WHERE TIPO= :TIPO AND BATCH=:NUMBER');
    vQ.Close;
    vQ.ParamByName('TIPO').AsString := Tipo;
    vQ.ParamByName('NUMBER').AsInteger := Number;
    vQ.ExecSQL;

    vQ.SQL.Clear;
    vQ.SQL.Add('DELETE FROM CARPRO WHERE TIPO= :TIPO AND BATCH=:NUMBER');
    vQ.Close;
    vQ.ParamByName('TIPO').AsString := Tipo;
    vQ.ParamByName('NUMBER').AsInteger := Number;
    vQ.ExecSQL;

  finally
    vQ.DisposeOf;
  end;

End;

procedure TMain.EliminarRemisiones(Tipo: String; Number: Integer);
var
  vQ: TFDQuery;
begin

  vQ := TFDQuery.Create(nil);
  try
    vQ.Connection := Main.ConDestino;
    vQ.SQL.Add('DELETE FROM REMISIOND WHERE TIPO= :TIPO AND NUMERO=:NUMBER');
    vQ.Close;
    vQ.ParamByName('TIPO').AsString := Tipo;
    vQ.ParamByName('NUMBER').AsInteger := Number;
    vQ.ExecSQL;

    vQ.SQL.Clear;
    vQ.SQL.Add('DELETE FROM REMISIONE WHERE TIPO= :TIPO AND NUMERO=:NUMBER');
    vQ.Close;
    vQ.ParamByName('TIPO').AsString := Tipo;
    vQ.ParamByName('NUMBER').AsInteger := Number;
    vQ.ExecSQL;

    vQ.SQL.Clear;
    vQ.SQL.Add('DELETE FROM ITEMACT WHERE TIPO= :TIPO AND BATCH=:NUMBER');
    vQ.Close;
    vQ.ParamByName('TIPO').AsString := Tipo;
    vQ.ParamByName('NUMBER').AsInteger := Number;
    vQ.ExecSQL;
  finally
    vQ.DisposeOf;
  end;

End;

procedure TMain.EliminarTraslados(Tipo: String; Number: Integer);
var
  vQ: TFDQuery;
begin

  vQ := TFDQuery.Create(nil);
  try
    vQ.Connection := Main.ConDestino;
    vQ.SQL.Add('DELETE FROM TRASDET WHERE TIPO= :TIPO AND NUMERO=:NUMBER');
    vQ.Close;
    vQ.ParamByName('TIPO').AsString := Tipo;
    vQ.ParamByName('NUMBER').AsInteger := Number;
    vQ.ExecSQL;

    vQ.SQL.Clear;
    vQ.SQL.Add('DELETE FROM TRASLADO WHERE TIPO= :TIPO AND NUMERO=:NUMBER');
    vQ.Close;
    vQ.ParamByName('TIPO').AsString := Tipo;
    vQ.ParamByName('NUMBER').AsInteger := Number;
    vQ.ExecSQL;

    vQ.SQL.Clear;
    vQ.SQL.Add('DELETE FROM ITEMACT WHERE TIPO= :TIPO AND BATCH=:NUMBER');
    vQ.Close;
    vQ.ParamByName('TIPO').AsString := Tipo;
    vQ.ParamByName('NUMBER').AsInteger := Number;
    vQ.ExecSQL;
  finally
    vQ.DisposeOf;
  end;

End;

procedure TMain.FormCreate(Sender: TObject);
begin
  Cuentas := False;
  Terceros := False;
  Items := False;
  Usuarios := False;
  FormasPago := False;
  DateEdit1.Date := Date - 30;
  DateEdit2.Date := Date;
  CheckTodos.IsChecked := True;
end;

procedure TMain.SpeedButton1Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
    Edit1.Text := OpenDialog1.FileName;
end;

procedure TMain.SpeedButton2Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
    Edit2.Text := OpenDialog1.FileName;
end;

function TMain.TraerTipos(Tipo: String): String;
var
  Resultado: String;
  Consulta: TFDQuery;
begin
  Consulta := TFDQuery.Create(nil);
  try
    Consulta.Connection := Main.ConDestino;
    Consulta.SQL.Add('SELECT CLASE from TIPDOC WHERE TIPO IN(' + Tipo + ')');
    Consulta.Open;
    Consulta.First;
    Resultado := '';
    while not Consulta.Eof do
    begin
      if Resultado = '' then
      begin
        Resultado := Resultado + '''' + Consulta.FieldByName('CLASE')
          .AsString + '''';
      end
      else
        Resultado := Resultado + ',' + '''' + Consulta.FieldByName('CLASE')
          .AsString + '''';
      Consulta.Next;
    end;

  finally
    Consulta.DisposeOf;
    Result := Resultado;
  end;
end;

procedure TMain.PasarAjustes;
var
  Tipos: string;
  Numero: Integer;
  vQ: TFDQuery;
begin
  Tipos := TraerTipos('''AI''');
  Numero := 0;
  QIpAdjuste.Close;
  QIpAdjuste.ParamByName('FI').AsDate := DateEdit1.Date;
  QIpAdjuste.ParamByName('FF').AsDate := DateEdit2.Date;
  QIpAdjuste.SQL.Add(' AND TIPO IN(' + Tipos + ')');
  if CheckDocxSuc.IsChecked = True then
  begin
    QIpAdjuste.SQL.Add(' AND S= :SUC');
    QIpAdjuste.ParamByName('SUC').AsInteger := StrToInt(Edit4.Text);
  end;

  QIpAdjuste.Open;

  QIpAdjuste.Last;
  ProgressBar1.Value := 0;
  ProgressBar1.Max := QIpAdjuste.RecordCount;
  QIpAdjuste.First;

  while not QIpAdjuste.Eof do
  Begin
    vQ := TFDQuery.Create(nil);
    try
      EliminarAjustes(QIpAdjusteTIPO.AsString, QIpAdjusteBATCH.AsInteger);
      vQ.Connection := Main.ConDestino;
      vQ.SQL.Add
        (' INSERT INTO IPADJUSTE (E,S,TIPO,BATCH,ID_USUARIO,ID_N,SUCCLIENTE,FECHA,'
        + ' DESCRIPCION,CONCEPTO,TOTALS,TOTALE,POSTED,DOC_EXTERNO,ESTADO,' +
        ' NUMERO_CRUCE_EA,TIPO_CRUCE_EA,S_CRUCE)VALUES(' +
        ':E,:S,:TIPO,:BATCH,:ID_USUARIO,:ID_N,:SUCCLIENTE,:FECHA,' +
        ' :DESCRIPCION,:CONCEPTO,:TOTALS,:TOTALE,:POSTED,:DOC_EXTERNO,:ESTADO,'
        + ' :NUMERO_CRUCE_EA,:TIPO_CRUCE_EA,:S_CRUCE)');
      vQ.Close;

      vQ.ParamByName('E').AsInteger := QIpAdjusteE.AsInteger;
      vQ.ParamByName('S').AsInteger := QIpAdjusteS.AsInteger;
      vQ.ParamByName('TIPO').AsString := QIpAdjusteTIPO.AsString;
      vQ.ParamByName('BATCH').AsInteger := QIpAdjusteBATCH.AsInteger;
      vQ.ParamByName('ID_USUARIO').AsString := QIpAdjusteID_USUARIO.AsString;
      vQ.ParamByName('ID_N').AsString := QIpAdjusteID_N.AsString;
      vQ.ParamByName('SUCCLIENTE').AsInteger := QIpAdjusteSUCCLIENTE.AsInteger;
      vQ.ParamByName('FECHA').AsDateTime := QIpAdjusteFECHA.AsDateTime;
      vQ.ParamByName('DESCRIPCION').AsString := QIpAdjusteDESCRIPCION.AsString;
      vQ.ParamByName('CONCEPTO').AsString := QIpAdjusteCONCEPTO.AsString;
      vQ.ParamByName('TOTALS').AsFloat := QIpAdjusteTOTALS.AsFloat;
      vQ.ParamByName('TOTALE').AsFloat := QIpAdjusteTOTALE.AsFloat;
      vQ.ParamByName('POSTED').AsString := QIpAdjustePOSTED.AsString;
      vQ.ParamByName('DOC_EXTERNO').AsInteger :=
        QIpAdjusteDOC_EXTERNO.AsInteger;
      vQ.ParamByName('ESTADO').AsString := QIpAdjusteESTADO.AsString;
      vQ.ParamByName('NUMERO_CRUCE_EA').AsInteger :=
        QIpAdjusteNUMERO_CRUCE_EA.AsInteger;
      vQ.ParamByName('TIPO_CRUCE_EA').AsString :=
        QIpAdjusteTIPO_CRUCE_EA.AsString;
      vQ.ParamByName('S_CRUCE').AsInteger := QIpAdjusteS_CRUCE.AsInteger;

      vQ.ExecSQL;

      QIpAdjustd.Close;
      QIpAdjustd.ParamByName('TIPO').AsString := QIpAdjusteTIPO.AsString;
      QIpAdjustd.ParamByName('NUMBER').AsInteger := QIpAdjusteBATCH.AsInteger;

      QIpAdjustd.Open;
      QIpAdjustd.First;

      while not QIpAdjustd.Eof do
      Begin
        vQ.SQL.Clear;
        vQ.SQL.Add
          (' INSERT INTO IPADJUSTD(E,S,BATCH,TIPO,CONTEO,ID_USUARIO,ACCT,ITEM,LOCATION,'
          + ' TRANSCODE,PROY,ACTIVIDAD,CCOSTO,DEPTO,LOTE,SUBTOTAL,COLOR,DESTINO,COSTO_AJUSTE,'
          + ' COST,QTYB,QTY,FECHA_VENCIMIENTO,COD_TALLA,COD_COLOR,CODBARRASCURVA)'
          + ' VALUES(:E,:S,:BATCH,:TIPO,:CONTEO,:ID_USUARIO,:ACCT,:ITEM,:LOCATION,'
          + ' :TRANSCODE,:PROY,:ACTIVIDAD,:CCOSTO,:DEPTO,:LOTE,:SUBTOTAL,:COLOR,:DESTINO,:COSTO_AJUSTE,'
          + ' :COST,:QTYB,:QTY,:FECHA_VENCIMIENTO,:COD_TALLA,:COD_COLOR,:CODBARRASCURVA)');

        vQ.ParamByName('E').AsInteger := QIpAdjustdE.AsInteger;
        vQ.ParamByName('S').AsInteger := QIpAdjustdS.AsInteger;
        vQ.ParamByName('BATCH').AsInteger := QIpAdjustdBATCH.AsInteger;
        vQ.ParamByName('TIPO').AsString := QIpAdjustdTIPO.AsString;
        vQ.ParamByName('CONTEO').AsInteger := QIpAdjustdCONTEO.AsInteger;
        vQ.ParamByName('ID_USUARIO').AsString := QIpAdjustdID_USUARIO.AsString;
        vQ.ParamByName('ACCT').AsFloat := QIpAdjustdACCT.AsFloat;
        vQ.ParamByName('ITEM').AsString := QIpAdjustdITEM.AsString;
        vQ.ParamByName('LOCATION').AsString := QIpAdjustdLOCATION.AsString;
        vQ.ParamByName('TRANSCODE').AsString := QIpAdjustdTRANSCODE.AsString;
        vQ.ParamByName('PROY').AsString := QIpAdjustdPROY.AsString;
        vQ.ParamByName('ACTIVIDAD').AsString := QIpAdjustdACTIVIDAD.AsString;
        vQ.ParamByName('CCOSTO').AsInteger := QIpAdjustdCCOSTO.AsInteger;
        vQ.ParamByName('DEPTO').AsInteger := QIpAdjustdDEPTO.AsInteger;
        vQ.ParamByName('LOTE').AsString := QIpAdjustdLOTE.AsString;
        vQ.ParamByName('SUBTOTAL').AsFloat := QIpAdjustdSUBTOTAL.AsFloat;
        vQ.ParamByName('COLOR').AsString := QIpAdjustdCOLOR.AsString;
        vQ.ParamByName('DESTINO').AsInteger := QIpAdjustdDESTINO.AsInteger;
        vQ.ParamByName('COSTO_AJUSTE').AsFloat :=
          QIpAdjustdCOSTO_AJUSTE.AsFloat;
        vQ.ParamByName('COST').AsFloat := QIpAdjustdCOST.AsFloat;
        vQ.ParamByName('QTYB').AsFloat := QIpAdjustdQTYB.AsFloat;
        vQ.ParamByName('QTY').AsFloat := QIpAdjustdQTY.AsFloat;
        vQ.ParamByName('FECHA_VENCIMIENTO').AsDateTime :=
          QIpAdjustdFECHA_VENCIMIENTO.AsDateTime;
        vQ.ParamByName('COD_TALLA').AsString := QIpAdjustdCOD_TALLA.AsString;
        vQ.ParamByName('COD_COLOR').AsString := QIpAdjustdCOD_COLOR.AsString;
        vQ.ParamByName('CODBARRASCURVA').AsString :=
          QIpAdjustdCODBARRASCURVA.AsString;
        vQ.Close;
        vQ.ExecSQL;
        QIpAdjustd.Next;
      END;

    finally
      vQ.DisposeOf;
    end;
    PasarItemact(QIpAdjusteTIPO.AsString, QIpAdjusteBATCH.AsInteger);
    PasarGl(QIpAdjusteTIPO.AsString, QIpAdjusteBATCH.AsInteger);
    Numero := Numero + 1;
    ProgressBar1.Value := ProgressBar1.Value + 1;
    Application.ProcessMessages;
    QIpAdjuste.Next;
  End;

  Memo1.Lines.Add('->Se Actualizan Ajustes de Inventario:');
  Memo1.Lines.Add('  -Tabla IpAdjuste');
  Memo1.Lines.Add('  -Tabla IpAdjustd');
  Memo1.Lines.Add('  -Tabla Itemact');
  Memo1.Lines.Add('  -Cantidad de Ajustes de Inventario: ' + IntToStr(Numero));
end;

procedure TMain.PasarCarpro(Tipo: String; Number: Integer);
var
  vQ: TFDQuery;
begin

  QCarpro.Close;
  QCarpro.ParamByName('TIPO').AsString := Tipo;
  QCarpro.ParamByName('NUMBER').AsInteger := Number;
  QCarpro.Open;
  QCarpro.First;

  while not QCarpro.Eof do
  Begin
    vQ := TFDQuery.Create(nil);
    try
      vQ.Connection := Main.ConDestino;
      vQ.SQL.Add
        (' INSERT INTO CARPRO (CONTEO,ID_N,ACCT,TIPO,BATCH,E,S,DESCRIPCION,FECHA,'
        + ' DUEDATE,INVC,DEPTO,CCOST,ACTIVIDAD,PERIOD,CONCIL,CRUCE,BENEF,ABONO,'
        + ' IDVEND,CONCEPTO,USUARIO,TIPO_IMP,NRO_IMP,CONCEPTO_IMP,SALDO_REPORTE,'
        + ' PROYECTO,BANCO,CHEQUE,CONCEPTO_PAGO,ID_TIPOCARTERA,COMENTARIO,CHEQUE_POSTF,'
        + ' FECHA_CHEQUE,VENCIMIENTO,DIAPAGO,SALDO,BASE,CREDIT,DEBIT,TASA_CAMBIO,'
        + ' SALDO_US,CREDITO_US,DEBITO_US,CUOTA,SHIPTO,FECHA_CONSIG,ESTADO_DEUDA,'
        + ' COD_FLUJOEFE,PORC_TASA,TIEMPO_MESES)VALUES (' +
        ' :CONTEO,:ID_N,:ACCT,:TIPO,:BATCH,:E,:S,:DESCRIPCION,:FECHA,' +
        ' :DUEDATE,:INVC,:DEPTO,:CCOST,:ACTIVIDAD,:PERIOD,:CONCIL,:CRUCE,:BENEF,:ABONO,'
        + ' :IDVEND,:CONCEPTO,:USUARIO,:TIPO_IMP,:NRO_IMP,:CONCEPTO_IMP,:SALDO_REPORTE,'
        + ' :PROYECTO,:BANCO,:CHEQUE,:CONCEPTO_PAGO,:ID_TIPOCARTERA,:COMENTARIO,:CHEQUE_POSTF,'
        + ' :FECHA_CHEQUE,:VENCIMIENTO,:DIAPAGO,:SALDO,:BASE,:CREDIT,:DEBIT,:TASA_CAMBIO,'
        + ' :SALDO_US,:CREDITO_US,:DEBITO_US,:CUOTA,:SHIPTO,:FECHA_CONSIG,:ESTADO_DEUDA,'
        + ' :COD_FLUJOEFE,:PORC_TASA,:TIEMPO_MESES)');

      vQ.ParamByName('CONTEO').AsInteger := QCarproCONTEO.AsInteger;
      vQ.ParamByName('BATCH').AsInteger := QCarproBATCH.AsInteger;
      vQ.ParamByName('E').AsInteger := QCarproE.AsInteger;
      vQ.ParamByName('S').AsInteger := QCarproS.AsInteger;
      vQ.ParamByName('DEPTO').AsInteger := QCarproDEPTO.AsInteger;
      vQ.ParamByName('CCOST').AsInteger := QCarproCCOST.AsInteger;
      vQ.ParamByName('IDVEND').AsInteger := QCarproIDVEND.AsInteger;
      vQ.ParamByName('NRO_IMP').AsInteger := QCarproNRO_IMP.AsInteger;
      vQ.ParamByName('CONCEPTO_IMP').AsInteger := QCarproCONCEPTO_IMP.AsInteger;
      vQ.ParamByName('BANCO').AsInteger := QCarproBANCO.AsInteger;
      vQ.ParamByName('CONCEPTO_PAGO').AsInteger :=
        QCarproCONCEPTO_PAGO.AsInteger;
      vQ.ParamByName('CUOTA').AsInteger := QCarproCUOTA.AsInteger;
      vQ.ParamByName('SHIPTO').AsInteger := QCarproSHIPTO.AsInteger;
      vQ.ParamByName('COD_FLUJOEFE').AsInteger := QCarproCOD_FLUJOEFE.AsInteger;

      vQ.ParamByName('ID_N').AsString := QCarproID_N.AsString;
      vQ.ParamByName('TIPO').AsString := QCarproTIPO.AsString;
      vQ.ParamByName('DESCRIPCION').AsString := QCarproDESCRIPCION.AsString;
      vQ.ParamByName('INVC').AsString := QCarproINVC.AsString;
      vQ.ParamByName('ACTIVIDAD').AsString := QCarproACTIVIDAD.AsString;
      vQ.ParamByName('PERIOD').AsString := QCarproPERIOD.AsString;
      vQ.ParamByName('CONCIL').AsString := QCarproCONCIL.AsString;
      vQ.ParamByName('CRUCE').AsString := QCarproCRUCE.AsString;
      vQ.ParamByName('BENEF').AsString := QCarproBENEF.AsString;
      vQ.ParamByName('CONCEPTO').AsString := QCarproCONCEPTO.AsString;
      vQ.ParamByName('USUARIO').AsString := QCarproUSUARIO.AsString;
      vQ.ParamByName('TIPO_IMP').AsString := QCarproTIPO_IMP.AsString;
      vQ.ParamByName('PROYECTO').AsString := QCarproPROYECTO.AsString;
      vQ.ParamByName('CHEQUE').AsString := QCarproCHEQUE.AsString;
      vQ.ParamByName('ID_TIPOCARTERA').AsString :=
        QCarproID_TIPOCARTERA.AsString;
      vQ.ParamByName('COMENTARIO').AsString := QCarproCOMENTARIO.AsString;
      vQ.ParamByName('CHEQUE_POSTF').AsString := QCarproCHEQUE_POSTF.AsString;
      vQ.ParamByName('DIAPAGO').AsString := QCarproDIAPAGO.AsString;
      vQ.ParamByName('ESTADO_DEUDA').AsString := QCarproESTADO_DEUDA.AsString;

      vQ.ParamByName('ACCT').AsFloat := QCarproACCT.AsFloat;
      vQ.ParamByName('ABONO').AsFloat := QCarproABONO.AsFloat;
      vQ.ParamByName('SALDO_REPORTE').AsFloat := QCarproSALDO_REPORTE.AsFloat;
      vQ.ParamByName('SALDO').AsFloat := QCarproSALDO.AsFloat;
      vQ.ParamByName('BASE').AsFloat := QCarproBASE.AsFloat;
      vQ.ParamByName('CREDIT').AsFloat := QCarproCREDIT.AsFloat;
      vQ.ParamByName('DEBIT').AsFloat := QCarproDEBIT.AsFloat;
      vQ.ParamByName('TASA_CAMBIO').AsFloat := QCarproTASA_CAMBIO.AsFloat;
      vQ.ParamByName('SALDO_US').AsFloat := QCarproSALDO_US.AsFloat;
      vQ.ParamByName('CREDITO_US').AsFloat := QCarproCREDITO_US.AsFloat;
      vQ.ParamByName('DEBITO_US').AsFloat := QCarproDEBITO_US.AsFloat;
      vQ.ParamByName('PORC_TASA').AsFloat := QCarproPORC_TASA.AsFloat;
      vQ.ParamByName('TIEMPO_MESES').AsFloat := QCarproTIEMPO_MESES.AsFloat;

      vQ.ParamByName('FECHA').AsDateTime := QCarproFECHA.AsDateTime;
      vQ.ParamByName('DUEDATE').AsDateTime := QCarproDUEDATE.AsDateTime;
      vQ.ParamByName('FECHA_CHEQUE').AsDateTime :=
        QCarproFECHA_CHEQUE.AsDateTime;
      vQ.ParamByName('VENCIMIENTO').AsDateTime := QCarproVENCIMIENTO.AsDateTime;
      vQ.ParamByName('FECHA_CONSIG').AsDateTime :=
        QCarproFECHA_CONSIG.AsDateTime;

      vQ.Close;
      vQ.ExecSQL;

    finally
      vQ.DisposeOf;
    end;

    Application.ProcessMessages;
    QCarpro.Next;
  End;
end;

procedure TMain.PasarCarteraProv;
var
  Tipos: string;
  Numero: Integer;
  vQ: TFDQuery;
begin
  Tipos := TraerTipos('''RC'',''ND'',''NC'',''CE'',''FP'',''AJ''');
  Numero := 0;
  QCarproen.Close;
  QCarproen.ParamByName('FI').AsDate := DateEdit1.Date;
  QCarproen.ParamByName('FF').AsDate := DateEdit2.Date;
  QCarproen.SQL.Add(' AND TIPO IN(' + Tipos + ')');
  if CheckDocxSuc.IsChecked = True then
  begin
    QCarproen.SQL.Add(' AND S= :SUC');
    QCarproen.ParamByName('SUC').AsInteger := StrToInt(Edit4.Text);
  end;

  QCarproen.Open;

  QCarproen.Last;
  ProgressBar1.Value := 0;
  ProgressBar1.Max := QCarproen.RecordCount;
  QCarproen.First;

  while not QCarproen.Eof do
  Begin
    vQ := TFDQuery.Create(nil);
    try
      EliminarCarteraProv(QCarproenTIPO.AsString, QCarproenBATCH.AsInteger);
      vQ.Connection := Main.ConDestino;
      vQ.SQL.Add
        (' INSERT INTO CARPROEN (E,S,TIPO,BATCH,ID_N,FECHA,TOTAL,USERNAME,' +
        ' FECHA_HORA,OBSERV,BANCO,CHEQUE,DUEDATE,LETRAS,IDVEND,SHIPTO,' +
        ' EXPORTADA,ENTREGADO,REVISADO,REVISOR,FECHA_REVISION,IMPRESO,' +
        ' DOC_FISICO,CHEQUE_POSTF,FECHA_CHEQUE,PROYECTO,SALDO_DEUDA,SALDO_DEUDA_ABONO,'
        + ' PONUMBER,INTERES_IMPLICITO,DETALLE,FECHA_CONTAB_CONSIG,DETERIORO_ESFA,'
        + ' CONCEPTO_NOTAFE,ENVIADO )' +
        ' VALUES(:E,:S,:TIPO,:BATCH,:ID_N,:FECHA,:TOTAL,:USERNAME,' +
        ' :FECHA_HORA,:OBSERV,:BANCO,:CHEQUE,:DUEDATE,:LETRAS,:IDVEND,:SHIPTO,'
        + ' :EXPORTADA,:ENTREGADO,:REVISADO,:REVISOR,:FECHA_REVISION,:IMPRESO,'
        + ' :DOC_FISICO,:CHEQUE_POSTF,:FECHA_CHEQUE,:PROYECTO,:SALDO_DEUDA,:SALDO_DEUDA_ABONO,'
        + ' :PONUMBER,:INTERES_IMPLICITO,:DETALLE,:FECHA_CONTAB_CONSIG,:DETERIORO_ESFA,'
        + ' :CONCEPTO_NOTAFE,:ENVIADO)');
      vQ.Close;

      vQ.ParamByName('E').AsInteger := QCarproenE.AsInteger;
      vQ.ParamByName('S').AsInteger := QCarproenS.AsInteger;
      vQ.ParamByName('TIPO').AsString := QCarproenTIPO.AsString;
      vQ.ParamByName('BATCH').AsInteger := QCarproenBATCH.AsInteger;
      vQ.ParamByName('ID_N').AsString := QCarproenID_N.AsString;
      vQ.ParamByName('FECHA').AsDateTime := QCarproenFECHA.AsDateTime;
      vQ.ParamByName('TOTAL').AsFloat := QCarproenTOTAL.AsFloat;
      vQ.ParamByName('USERNAME').AsString := QCarproenUSERNAME.AsString;
      vQ.ParamByName('FECHA_HORA').AsString := QCarproenFECHA_HORA.AsString;
      vQ.ParamByName('OBSERV').AsString := QCarproenOBSERV.AsString;
      vQ.ParamByName('BANCO').AsString := QCarproenBANCO.AsString;
      vQ.ParamByName('CHEQUE').AsString := QCarproenCHEQUE.AsString;
      vQ.ParamByName('DUEDATE').AsDateTime := QCarproenDUEDATE.AsDateTime;
      vQ.ParamByName('LETRAS').AsString := QCarproenLETRAS.AsString;
      vQ.ParamByName('IDVEND').AsInteger := QCarproenIDVEND.AsInteger;
      vQ.ParamByName('SHIPTO').AsInteger := QCarproenSHIPTO.AsInteger;
      vQ.ParamByName('EXPORTADA').AsString := QCarproenEXPORTADA.AsString;
      vQ.ParamByName('ENTREGADO').AsString := QCarproenENTREGADO.AsString;
      vQ.ParamByName('REVISADO').AsString := QCarproenREVISADO.AsString;
      vQ.ParamByName('REVISOR').AsString := QCarproenREVISOR.AsString;
      vQ.ParamByName('FECHA_REVISION').AsDateTime :=
        QCarproenFECHA_REVISION.AsDateTime;
      vQ.ParamByName('IMPRESO').AsString := QCarproenIMPRESO.AsString;
      vQ.ParamByName('DOC_FISICO').AsString := QCarproenDOC_FISICO.AsString;
      vQ.ParamByName('CHEQUE_POSTF').AsString := QCarproenCHEQUE_POSTF.AsString;
      vQ.ParamByName('FECHA_CHEQUE').AsDateTime :=
        QCarproenFECHA_CHEQUE.AsDateTime;
      vQ.ParamByName('PROYECTO').AsString := QCarproenPROYECTO.AsString;
      vQ.ParamByName('SALDO_DEUDA').AsFloat := QCarproenSALDO_DEUDA.AsFloat;
      vQ.ParamByName('SALDO_DEUDA_ABONO').AsFloat :=
        QCarproenSALDO_DEUDA_ABONO.AsFloat;
      vQ.ParamByName('PONUMBER').AsString := QCarproenPONUMBER.AsString;
      vQ.ParamByName('INTERES_IMPLICITO').AsString :=
        QCarproenINTERES_IMPLICITO.AsString;
      vQ.ParamByName('DETALLE').AsString := QCarproenDETALLE.AsString;
      vQ.ParamByName('FECHA_CONTAB_CONSIG').AsString :=
        QCarproenFECHA_CONTAB_CONSIG.AsString;
      vQ.ParamByName('DETERIORO_ESFA').AsString :=
        QCarproenDETERIORO_ESFA.AsString;
      vQ.ParamByName('CONCEPTO_NOTAFE').AsString :=
        QCarproenCONCEPTO_NOTAFE.AsString;
      vQ.ParamByName('ENVIADO').AsString := QCarproenENVIADO.AsString;

      vQ.ExecSQL;

      QCarprode.Close;
      QCarprode.ParamByName('TIPO').AsString := QCarproenTIPO.AsString;
      QCarprode.ParamByName('NUMBER').AsInteger := QCarproenBATCH.AsInteger;

      QCarprode.Open;
      QCarprode.First;

      while not QCarprode.Eof do
      Begin
        vQ.SQL.Clear;
        vQ.SQL.Add
          (' INSERT INTO CARPRODE(CONTEO,TIPO,BATCH,ID_N,ACCT,E,S,CRUCE,' +
          ' INVC,FECHA,DUEDATE,DPTO,CCOST,ACTIVIDAD,DESCRIPCION,DIAS,' +
          ' DESTINO,TIPO_REF,REFERENCIA,TIPO_IMP,NRO_IMP,CONCEPTO_IMP,' +
          ' BANCO,CHEQUE,PROYECTO,CONCEPTO_PAGO,ID_TIPOCARTERA,INVC_ENTERO,' +
          ' CHEQUE_POSTF,FECHA_CHEQUE,SALDO,CREDIT,TASA_CAMBIO,CREDITO_US,' +
          ' DEBITO_US,BASE,DEBIT,CUOTA,FECHA_CONSIG,FECHA_FACTURA,MAYOR_VALOR,'
          + ' VALOR_IMPUESTO,IMPORT,COD_FLUJOEFE,IDVEND,PORC_TASA,TIEMPO_MESES,'
          + ' PAGO_DISP) VALUES(:CONTEO,:TIPO,:BATCH,:ID_N,:ACCT,:E,:S,:CRUCE,'
          + ' :INVC,:FECHA,:DUEDATE,:DPTO,:CCOST,:ACTIVIDAD,:DESCRIPCION,:DIAS,'
          + ' :DESTINO,:TIPO_REF,:REFERENCIA,:TIPO_IMP,:NRO_IMP,:CONCEPTO_IMP,'
          + ' :BANCO,:CHEQUE,:PROYECTO,:CONCEPTO_PAGO,:ID_TIPOCARTERA,:INVC_ENTERO,'
          + ' :CHEQUE_POSTF,:FECHA_CHEQUE,:SALDO,:CREDIT,:TASA_CAMBIO,:CREDITO_US,'
          + ' :DEBITO_US,:BASE,:DEBIT,:CUOTA,:FECHA_CONSIG,:FECHA_FACTURA,:MAYOR_VALOR,'
          + ' :VALOR_IMPUESTO,:IMPORT,:COD_FLUJOEFE,:IDVEND,:PORC_TASA,:TIEMPO_MESES,'
          + ' :PAGO_DISP)');

        vQ.ParamByName('CONTEO').AsInteger := QCarprodeCONTEO.AsInteger;
        vQ.ParamByName('TIPO').AsString := QCarprodeTIPO.AsString;
        vQ.ParamByName('BATCH').AsInteger := QCarprodeBATCH.AsInteger;
        vQ.ParamByName('ID_N').AsString := QCarprodeID_N.AsString;
        vQ.ParamByName('ACCT').AsFloat := QCarprodeACCT.AsFloat;
        vQ.ParamByName('E').AsInteger := QCarprodeE.AsInteger;
        vQ.ParamByName('S').AsInteger := QCarprodeS.AsInteger;
        vQ.ParamByName('CRUCE').AsString := QCarprodeCRUCE.AsString;
        vQ.ParamByName('INVC').AsString := QCarprodeINVC.AsString;
        vQ.ParamByName('FECHA').AsDateTime := QCarprodeFECHA.AsDateTime;
        vQ.ParamByName('DUEDATE').AsDateTime := QCarprodeDUEDATE.AsDateTime;
        vQ.ParamByName('DPTO').AsInteger := QCarprodeDPTO.AsInteger;
        vQ.ParamByName('CCOST').AsInteger := QCarprodeCCOST.AsInteger;
        vQ.ParamByName('ACTIVIDAD').AsString := QCarprodeACTIVIDAD.AsString;
        vQ.ParamByName('DESCRIPCION').AsString := QCarprodeDESCRIPCION.AsString;
        vQ.ParamByName('DIAS').AsFloat := QCarprodeDIAS.AsFloat;
        vQ.ParamByName('DESTINO').AsInteger := QCarprodeDESTINO.AsInteger;
        vQ.ParamByName('TIPO_REF').AsString := QCarprodeTIPO_REF.AsString;
        vQ.ParamByName('REFERENCIA').AsInteger := QCarprodeREFERENCIA.AsInteger;
        vQ.ParamByName('TIPO_IMP').AsString := QCarprodeTIPO_IMP.AsString;
        vQ.ParamByName('NRO_IMP').AsInteger := QCarprodeNRO_IMP.AsInteger;
        vQ.ParamByName('CONCEPTO_IMP').AsInteger :=
          QCarprodeCONCEPTO_IMP.AsInteger;
        vQ.ParamByName('BANCO').AsInteger := QCarprodeBANCO.AsInteger;
        vQ.ParamByName('CHEQUE').AsString := QCarprodeCHEQUE.AsString;
        vQ.ParamByName('PROYECTO').AsString := QCarprodePROYECTO.AsString;
        vQ.ParamByName('CONCEPTO_PAGO').AsInteger :=
          QCarprodeCONCEPTO_PAGO.AsInteger;
        vQ.ParamByName('ID_TIPOCARTERA').AsString :=
          QCarprodeID_TIPOCARTERA.AsString;
        vQ.ParamByName('INVC_ENTERO').AsInteger :=
          QCarprodeINVC_ENTERO.AsInteger;
        vQ.ParamByName('CHEQUE_POSTF').AsString :=
          QCarprodeCHEQUE_POSTF.AsString;
        vQ.ParamByName('FECHA_CHEQUE').AsDateTime :=
          QCarprodeFECHA_CHEQUE.AsDateTime;
        vQ.ParamByName('SALDO').AsFloat := QCarprodeSALDO.AsFloat;
        vQ.ParamByName('CREDIT').AsFloat := QCarprodeCREDIT.AsFloat;
        vQ.ParamByName('TASA_CAMBIO').AsFloat := QCarprodeTASA_CAMBIO.AsFloat;
        vQ.ParamByName('CREDITO_US').AsFloat := QCarprodeCREDITO_US.AsFloat;
        vQ.ParamByName('DEBITO_US').AsFloat := QCarprodeDEBITO_US.AsFloat;
        vQ.ParamByName('BASE').AsFloat := QCarprodeBASE.AsFloat;
        vQ.ParamByName('DEBIT').AsFloat := QCarprodeDEBIT.AsFloat;
        vQ.ParamByName('CUOTA').AsFloat := QCarprodeCUOTA.AsFloat;
        vQ.ParamByName('FECHA_CONSIG').AsDateTime :=
          QCarprodeFECHA_CONSIG.AsDateTime;
        vQ.ParamByName('FECHA_FACTURA').AsDateTime :=
          QCarprodeFECHA_FACTURA.AsDateTime;
        vQ.ParamByName('MAYOR_VALOR').AsFloat := QCarprodeMAYOR_VALOR.AsFloat;
        vQ.ParamByName('VALOR_IMPUESTO').AsSingle :=
          QCarprodeVALOR_IMPUESTO.AsSingle;
        vQ.ParamByName('IMPORT').AsString := QCarprodeIMPORT.AsString;
        vQ.ParamByName('COD_FLUJOEFE').AsInteger :=
          QCarprodeCOD_FLUJOEFE.AsInteger;
        vQ.ParamByName('IDVEND').AsInteger := QCarprodeIDVEND.AsInteger;
        vQ.ParamByName('PORC_TASA').AsFloat := QCarprodePORC_TASA.AsFloat;
        vQ.ParamByName('TIEMPO_MESES').AsFloat := QCarprodeTIEMPO_MESES.AsFloat;
        vQ.ParamByName('PAGO_DISP').AsString := QCarprodePAGO_DISP.AsString;
        vQ.Close;
        vQ.ExecSQL;
        QCarprode.Next;
      END;

    finally
      vQ.DisposeOf;
    end;

    PasarGl(QCarproenTIPO.AsString, QCarproenBATCH.AsInteger);
    PasarCarpro(QCarproenTIPO.AsString, QCarproenBATCH.AsInteger);

    Numero := Numero + 1;
    ProgressBar1.Value := ProgressBar1.Value + 1;
    Application.ProcessMessages;
    QCarproen.Next;
  End;

  Memo1.Lines.Add
    ('->Se Actualizan Recibos de Caja, Notas Debito, Notas Crediro,');
  Memo1.Lines.Add(' Comprobantes de Egreso, Facturas por Pagar, Ajustes:');
  Memo1.Lines.Add('  -Tabla Carpro');
  Memo1.Lines.Add('  -Tabla Carproen');
  Memo1.Lines.Add('  -Tabla Carprode');
  Memo1.Lines.Add('  -Tabla Gl');
  Memo1.Lines.Add('  -Cantidad de Documentos: ' + IntToStr(Numero));
end;

procedure TMain.PasarComprobantes;
var
  Tipos: string;
  Numero: Integer;
  vQ: TFDQuery;
begin
  Tipos := TraerTipos('''CC'',''00'',''01'',''XX'',''XN'',''XT''');
  Numero := 0;
  QGlen.Close;
  QGlen.ParamByName('FI').AsDate := DateEdit1.Date;
  QGlen.ParamByName('FF').AsDate := DateEdit2.Date;
  QGlen.SQL.Add(' AND TIPO IN(' + Tipos + ')');
  if CheckDocxSuc.IsChecked = True then
  begin
    QGlen.SQL.Add(' AND S= :SUC');
    QGlen.ParamByName('SUC').AsInteger := StrToInt(Edit4.Text);
  end;

  QGlen.Open;
  QGlen.Last;
  ProgressBar1.Value := 0;
  ProgressBar1.Max := QGlen.RecordCount;
  QGlen.First;

  while not QGlen.Eof do
  Begin
    vQ := TFDQuery.Create(nil);
    try
      EliminarComprobantes(QGlenTIPO.AsString, QGlenBATCH.AsInteger);
      vQ.Connection := Main.ConDestino;
      vQ.SQL.Add
        (' INSERT INTO GLEN (E,S,TIPO,BATCH,FECHA,USERNAME,REVISADO,REVISOR,' +
        ' FECHA_REVISION,EXPORTADA,ESTADO,DESCRIPCION,ID_N)' +
        ' VALUES(:E,:S,:TIPO,:BATCH,:FECHA,:USERNAME,:REVISADO,:REVISOR,' +
        ' :FECHA_REVISION,:EXPORTADA,:ESTADO,:DESCRIPCION,null)');
      vQ.Close;

      vQ.ParamByName('E').AsInteger := QGlenE.AsInteger;
      vQ.ParamByName('S').AsInteger := QGlenS.AsInteger;
      vQ.ParamByName('TIPO').AsString := QGlenTIPO.AsString;
      vQ.ParamByName('BATCH').AsInteger := QGlenBATCH.AsInteger;
      vQ.ParamByName('FECHA').AsDateTime := QGlenFECHA.AsDateTime;
      vQ.ParamByName('USERNAME').AsString := QGlenUSERNAME.AsString;
      vQ.ParamByName('REVISADO').AsString := QGlenREVISADO.AsString;
      vQ.ParamByName('REVISOR').AsString := QGlenREVISOR.AsString;
      vQ.ParamByName('FECHA_REVISION').AsDateTime :=
        QGlenFECHA_REVISION.AsDateTime;
      vQ.ParamByName('EXPORTADA').AsString := QGlenEXPORTADA.AsString;
      vQ.ParamByName('ESTADO').AsString := QGlenESTADO.AsString;
      vQ.ParamByName('DESCRIPCION').AsString := QGlenDESCRIPCION.AsString;

      vQ.ExecSQL;

      QGldet.Close;
      QGldet.ParamByName('TIPO').AsString := QGlenTIPO.AsString;
      QGldet.ParamByName('NUMBER').AsInteger := QGlenBATCH.AsInteger;

      QGldet.Open;
      QGldet.First;

      while not QGldet.Eof do
      Begin
        vQ.SQL.Clear;
        vQ.SQL.Add
          (' INSERT INTO GLDET(CONTEO,ID_N,ACCT,E,S,TIPO,BATCH,CUOTA,INVC,DEPTO,'
          + ' CCOST,ACTIVIDAD,DEBIT,CREDIT,PERIOD,BASE,DESCRIPCION,CLOSING,CONCIL,'
          + ' CRUCE,DESTINO,DUEDATE,PROYECTO) VALUES(:CONTEO,:ID_N,:ACCT,:E,:S,:TIPO,:BATCH,'
          + ' :CUOTA,:INVC,:DEPTO,' +
          ' :CCOST,:ACTIVIDAD,:DEBIT,:CREDIT,:PERIOD,:BASE,:DESCRIPCION,:CLOSING,:CONCIL,'
          + ' :CRUCE,:DESTINO,:DUEDATE,:PROYECTO)');

        vQ.ParamByName('CONTEO').AsInteger := QGldetCONTEO.AsInteger;
        vQ.ParamByName('ID_N').AsString := QGldetID_N.AsString;
        vQ.ParamByName('ACCT').AsFloat := QGldetACCT.AsFloat;
        vQ.ParamByName('E').AsInteger := QGldetE.AsInteger;
        vQ.ParamByName('S').AsInteger := QGldetS.AsInteger;
        vQ.ParamByName('TIPO').AsString := QGldetTIPO.AsString;
        vQ.ParamByName('BATCH').AsInteger := QGldetBATCH.AsInteger;
        vQ.ParamByName('CUOTA').AsInteger := QGldetCUOTA.AsInteger;
        vQ.ParamByName('INVC').AsString := QGldetINVC.AsString;
        vQ.ParamByName('DEPTO').AsInteger := QGldetDEPTO.AsInteger;
        vQ.ParamByName('CCOST').AsInteger := QGldetCCOST.AsInteger;
        vQ.ParamByName('ACTIVIDAD').AsString := QGldetACTIVIDAD.AsString;
        vQ.ParamByName('DEBIT').AsFloat := QGldetDEBIT.AsFloat;
        vQ.ParamByName('CREDIT').AsFloat := QGldetCREDIT.AsFloat;
        vQ.ParamByName('PERIOD').AsString := QGldetPERIOD.AsString;
        vQ.ParamByName('BASE').AsFloat := QGldetBASE.AsFloat;
        vQ.ParamByName('DESCRIPCION').AsString := QGldetDESCRIPCION.AsString;
        vQ.ParamByName('CLOSING').AsString := QGldetCLOSING.AsString;
        vQ.ParamByName('CONCIL').AsString := QGldetCONCIL.AsString;
        vQ.ParamByName('CRUCE').AsString := QGldetCRUCE.AsString;
        vQ.ParamByName('DESTINO').AsInteger := QGldetDESTINO.AsInteger;
        vQ.ParamByName('DUEDATE').AsDateTime := QGldetDUEDATE.AsDateTime;
        vQ.ParamByName('PROYECTO').AsString := QGldetPROYECTO.AsString;
        vQ.Close;
        vQ.ExecSQL;
        QGldet.Next;
      END;

    finally
      vQ.DisposeOf;
    end;

    PasarGl(QGlenTIPO.AsString, QGlenBATCH.AsInteger);
    Numero := Numero + 1;
    ProgressBar1.Value := ProgressBar1.Value + 1;
    Application.ProcessMessages;
    QGlen.Next;
  End;

  Memo1.Lines.Add('->Se Actualizan Comprobantes Contables y Cierres Contables');
  Memo1.Lines.Add('  -Tabla Glen');
  Memo1.Lines.Add('  -Tabla Gldet');
  Memo1.Lines.Add('  -Tabla Gl');
  Memo1.Lines.Add('  -Cantidad de Documentos: ' + IntToStr(Numero));
end;

procedure TMain.PasarCotizaciones;
var
  Tipos: string;
  Numero: Integer;
  vQ: TFDQuery;
begin
  Tipos := TraerTipos('''CT''');
  Numero := 0;
  QCotizaci.Close;
  QCotizaci.ParamByName('FI').AsDate := DateEdit1.Date;
  QCotizaci.ParamByName('FF').AsDate := DateEdit2.Date;
  QCotizaci.SQL.Add(' AND TIPO IN(' + Tipos + ')');
  if CheckDocxSuc.IsChecked = True then
  begin
    QCotizaci.SQL.Add(' AND ID_SUCURSAL= :SUC');
    QCotizaci.ParamByName('SUC').AsInteger := StrToInt(Edit4.Text);
  end;

  QCotizaci.Open;

  QCotizaci.Last;
  ProgressBar1.Value := 0;
  ProgressBar1.Max := QCotizaci.RecordCount;
  QCotizaci.First;

  while not QCotizaci.Eof do
  Begin
    vQ := TFDQuery.Create(nil);
    try
      EliminarCotizaciones(QCotizaciTIPO.AsString, QCotizaciNUMERO.AsInteger);
      vQ.Connection := Main.ConDestino;
      vQ.SQL.Add
        (' INSERT INTO COTIZACI (NUMERO,TIPO,ID_EMPRESA,ID_SUCURSAL,ID_CLIENTE,'
        + ' TOTAL,SUBTOTAL,FORMA_PAGO,SU_SOLICITUD,DP,CC,MEDIO_ENTREGA,MONEDA_COTI,'
        + ' VENDEDOR,TIPO_CAMB_HOY,TIPO_CLIENTE,MEDIO_CONTACTO,CONTACTO,EN_PEDIDO_NO,'
        + ' CIUDAD_PAIS,OBSERVACIONES,DCTO_ADC_P,DCTO_ADC_VALOR,COMENTARIO,ESTADO_N,'
        + ' MOTIVO_APLAZ,FECHA,FECHA_VEN,FECHA_ENTREGA,PROX_LLAMADA,TOTALDESCTO,'
        + ' TOTALIVA,ANULAR,PROYECTO,ID_USUARIO,AUTORIZADO,SHIPTO,COD_NIVEL,COD_MONEDA,'
        + ' TRM,TOTAL_MEXT,FECHA_TRM,IDN_CONTADO,LETRASING,IVA_FACTURA,CONCEPTOSIVA,'
        + ' SUB_FACTURA,TOT_FACTURA,DESC_FACTURA,LISTA_COTIZA,VALIDEZ,ESTADO,BONOTOTAL,'
        + ' NOMBRECOT)VALUES(:NUMERO,:TIPO,:ID_EMPRESA,:ID_SUCURSAL,:ID_CLIENTE,'
        + ' :TOTAL,:SUBTOTAL,:FORMA_PAGO,:SU_SOLICITUD,:DP,:CC,:MEDIO_ENTREGA,:MONEDA_COTI,'
        + ' :VENDEDOR,:TIPO_CAMB_HOY,:TIPO_CLIENTE,:MEDIO_CONTACTO,:CONTACTO,:EN_PEDIDO_NO,'
        + ' :CIUDAD_PAIS,:OBSERVACIONES,:DCTO_ADC_P,:DCTO_ADC_VALOR,:COMENTARIO,:ESTADO_N,'
        + ' :MOTIVO_APLAZ,:FECHA,:FECHA_VEN,:FECHA_ENTREGA,:PROX_LLAMADA,:TOTALDESCTO,'
        + ' :TOTALIVA,:ANULAR,:PROYECTO,:ID_USUARIO,:AUTORIZADO,:SHIPTO,:COD_NIVEL,:COD_MONEDA,'
        + ' :TRM,:TOTAL_MEXT,:FECHA_TRM,:IDN_CONTADO,:LETRASING,:IVA_FACTURA,:CONCEPTOSIVA,'
        + ' :SUB_FACTURA,:TOT_FACTURA,:DESC_FACTURA,:LISTA_COTIZA,:VALIDEZ,:ESTADO,:BONOTOTAL,'
        + ' :NOMBRECOT)');
      vQ.Close;

      vQ.ParamByName('NUMERO').AsInteger := QCotizaciNUMERO.AsInteger;
      vQ.ParamByName('ID_EMPRESA').AsInteger := QCotizaciID_EMPRESA.AsInteger;
      vQ.ParamByName('ID_SUCURSAL').AsInteger := QCotizaciID_SUCURSAL.AsInteger;
      vQ.ParamByName('TOTAL').AsFloat := QCotizaciTOTAL.AsFloat;
      vQ.ParamByName('SUBTOTAL').AsFloat := QCotizaciSUBTOTAL.AsFloat;
      vQ.ParamByName('FORMA_PAGO').AsInteger := QCotizaciFORMA_PAGO.AsInteger;
      vQ.ParamByName('SU_SOLICITUD').AsInteger :=
        QCotizaciSU_SOLICITUD.AsInteger;
      vQ.ParamByName('DP').AsInteger := QCotizaciDP.AsInteger;
      vQ.ParamByName('CC').AsInteger := QCotizaciCC.AsInteger;
      vQ.ParamByName('MEDIO_ENTREGA').AsInteger :=
        QCotizaciMEDIO_ENTREGA.AsInteger;
      vQ.ParamByName('MONEDA_COTI').AsInteger := QCotizaciMONEDA_COTI.AsInteger;
      vQ.ParamByName('VENDEDOR').AsInteger := QCotizaciVENDEDOR.AsInteger;
      vQ.ParamByName('TIPO_CAMB_HOY').AsFloat := QCotizaciTIPO_CAMB_HOY.AsFloat;
      vQ.ParamByName('MEDIO_CONTACTO').AsInteger :=
        QCotizaciMEDIO_CONTACTO.AsInteger;
      vQ.ParamByName('CONTACTO').AsInteger := QCotizaciCONTACTO.AsInteger;
      vQ.ParamByName('EN_PEDIDO_NO').AsInteger :=
        QCotizaciEN_PEDIDO_NO.AsInteger;
      vQ.ParamByName('DCTO_ADC_P').AsFloat := QCotizaciDCTO_ADC_P.AsFloat;
      vQ.ParamByName('DCTO_ADC_VALOR').AsFloat :=
        QCotizaciDCTO_ADC_VALOR.AsFloat;
      vQ.ParamByName('ESTADO_N').AsInteger := QCotizaciESTADO_N.AsInteger;
      vQ.ParamByName('MOTIVO_APLAZ').AsInteger :=
        QCotizaciMOTIVO_APLAZ.AsInteger;
      vQ.ParamByName('TOTALDESCTO').AsFloat := QCotizaciTOTALDESCTO.AsFloat;
      vQ.ParamByName('TOTALIVA').AsFloat := QCotizaciTOTALIVA.AsFloat;
      vQ.ParamByName('ANULAR').AsInteger := QCotizaciANULAR.AsInteger;
      vQ.ParamByName('SHIPTO').AsInteger := QCotizaciSHIPTO.AsInteger;
      vQ.ParamByName('TRM').AsFloat := QCotizaciTRM.AsFloat;
      vQ.ParamByName('TOTAL_MEXT').AsFloat := QCotizaciTOTAL_MEXT.AsFloat;
      vQ.ParamByName('TIPO').AsString := QCotizaciTIPO.AsString;
      vQ.ParamByName('ID_CLIENTE').AsString := QCotizaciID_CLIENTE.AsString;
      vQ.ParamByName('TIPO_CLIENTE').AsString := QCotizaciTIPO_CLIENTE.AsString;
      vQ.ParamByName('CIUDAD_PAIS').AsString := QCotizaciCIUDAD_PAIS.AsString;
      vQ.ParamByName('OBSERVACIONES').AsString :=
        QCotizaciOBSERVACIONES.AsString;
      vQ.ParamByName('COMENTARIO').AsString := QCotizaciCOMENTARIO.AsString;
      vQ.ParamByName('PROYECTO').AsString := QCotizaciPROYECTO.AsString;
      vQ.ParamByName('ID_USUARIO').AsString := QCotizaciID_USUARIO.AsString;
      vQ.ParamByName('AUTORIZADO').AsString := QCotizaciAUTORIZADO.AsString;
      vQ.ParamByName('COD_NIVEL').AsString := QCotizaciCOD_NIVEL.AsString;
      vQ.ParamByName('COD_MONEDA').AsString := QCotizaciCOD_MONEDA.AsString;
      vQ.ParamByName('IDN_CONTADO').AsString := QCotizaciIDN_CONTADO.AsString;
      vQ.ParamByName('LETRASING').AsString := QCotizaciLETRASING.AsString;
      vQ.ParamByName('IVA_FACTURA').AsString := QCotizaciIVA_FACTURA.AsString;
      vQ.ParamByName('CONCEPTOSIVA').AsString := QCotizaciCONCEPTOSIVA.AsString;
      vQ.ParamByName('SUB_FACTURA').AsString := QCotizaciSUB_FACTURA.AsString;
      vQ.ParamByName('TOT_FACTURA').AsString := QCotizaciTOT_FACTURA.AsString;
      vQ.ParamByName('DESC_FACTURA').AsString := QCotizaciDESC_FACTURA.AsString;
      vQ.ParamByName('LISTA_COTIZA').AsString := QCotizaciLISTA_COTIZA.AsString;
      vQ.ParamByName('VALIDEZ').AsString := QCotizaciVALIDEZ.AsString;
      vQ.ParamByName('ESTADO').AsString := QCotizaciESTADO.AsString;
      vQ.ParamByName('BONOTOTAL').AsSingle := QCotizaciBONOTOTAL.AsSingle;
      vQ.ParamByName('NOMBRECOT').AsString := QCotizaciNOMBRECOT.AsString;
      vQ.ParamByName('FECHA').AsDateTime := QCotizaciFECHA.AsDateTime;
      vQ.ParamByName('FECHA_VEN').AsDateTime := QCotizaciFECHA_VEN.AsDateTime;
      vQ.ParamByName('FECHA_ENTREGA').AsDateTime :=
        QCotizaciFECHA_ENTREGA.AsDateTime;
      vQ.ParamByName('PROX_LLAMADA').AsDateTime :=
        QCotizaciPROX_LLAMADA.AsDateTime;
      vQ.ParamByName('FECHA_TRM').AsDateTime := QCotizaciFECHA_TRM.AsDateTime;

      vQ.ExecSQL;

      QDet_Prod.Close;
      QDet_Prod.ParamByName('TIPO').AsString := QCotizaciTIPO.AsString;
      QDet_Prod.ParamByName('NUMBER').AsInteger := QCotizaciNUMERO.AsInteger;

      QDet_Prod.Open;
      QDet_Prod.First;

      while not QDet_Prod.Eof do
      Begin
        vQ.SQL.Clear;
        vQ.SQL.Add
          (' INSERT INTO DET_PROD(NUMERO,COD_DESC,CANTIDAD,DESCRIPCION,VLR_UNITARIO,'
          + ' VRL_TOTAL,IVA,IVA_VALOR,DESCTO,TOTAL_PARC,DESCTOP,COSTOP,COSTOU,UTIL_P,'
          + ' UTIL_U,DCTFIJO,DCTCLIENTE,DCTADICIONAL,LAMINA,ESTILO,UNIDADES_POR_JUEGO,'
          + ' LARGO,ANCHO,MATERIAL,TINTAS,ALTO,CARAS,TIPO,ID_EMPRESA,ID_SUCURSAL,CONTEO,'
          + ' TOTALDCT,VLR_UNITARIO_MEXT,COLOR,DCTO_AD1,DCTO_AD2,VLR_DCTFIJO,VLR_DCT,'
          + ' VLR_DCTOAD1,VLR_DCTOAD2,VLR_DCTOADICIONAL,COD_UNIDAD_VENTA,FACTOR,'
          + ' DESCRIPCION_ADIC,COSTO_USD,FLETES_USD,TRAMITES_USD,NACIONALIZACION_USD,'
          + ' PRECIO_VENTA_USD,MARGEN_U,GRAVAMEN_U,VLR_UNIT_SUG,DETITEM,PROYECTO,'
          + ' ACTIVIDAD,DPTO,CCOST,COD_TALLA,COD_COLOR,PRECIOIVA,BONO,TOTALBONO,'
          + ' CODBARRASCURVA)VALUES(' +
          ' :NUMERO,:COD_DESC,:CANTIDAD,:DESCRIPCION,:VLR_UNITARIO,' +
          ' :VRL_TOTAL,:IVA,:IVA_VALOR,:DESCTO,:TOTAL_PARC,:DESCTOP,:COSTOP,:COSTOU,:UTIL_P,'
          + ' :UTIL_U,:DCTFIJO,:DCTCLIENTE,:DCTADICIONAL,:LAMINA,:ESTILO,:UNIDADES_POR_JUEGO,'
          + ' :LARGO,:ANCHO,:MATERIAL,:TINTAS,:ALTO,:CARAS,:TIPO,:ID_EMPRESA,:ID_SUCURSAL,:CONTEO,'
          + ' :TOTALDCT,:VLR_UNITARIO_MEXT,:COLOR,:DCTO_AD1,:DCTO_AD2,:VLR_DCTFIJO,:VLR_DCT,'
          + ' :VLR_DCTOAD1,:VLR_DCTOAD2,:VLR_DCTOADICIONAL,:COD_UNIDAD_VENTA,:FACTOR,'
          + ' :DESCRIPCION_ADIC,:COSTO_USD,:FLETES_USD,:TRAMITES_USD,:NACIONALIZACION_USD,'
          + ' :PRECIO_VENTA_USD,:MARGEN_U,:GRAVAMEN_U,:VLR_UNIT_SUG,:DETITEM,:PROYECTO,'
          + ' :ACTIVIDAD,:DPTO,:CCOST,:COD_TALLA,:COD_COLOR,:PRECIOIVA,:BONO,:TOTALBONO,'
          + ' :CODBARRASCURVA)');

        vQ.ParamByName('CANTIDAD').AsFloat := QDet_ProdCANTIDAD.AsFloat;
        vQ.ParamByName('VLR_UNITARIO').AsFloat := QDet_ProdVLR_UNITARIO.AsFloat;
        vQ.ParamByName('VRL_TOTAL').AsFloat := QDet_ProdVRL_TOTAL.AsFloat;
        vQ.ParamByName('IVA').AsFloat := QDet_ProdIVA.AsFloat;
        vQ.ParamByName('IVA_VALOR').AsFloat := QDet_ProdIVA_VALOR.AsFloat;
        vQ.ParamByName('DESCTO').AsFloat := QDet_ProdDESCTO.AsFloat;
        vQ.ParamByName('TOTAL_PARC').AsFloat := QDet_ProdTOTAL_PARC.AsFloat;
        vQ.ParamByName('DESCTOP').AsFloat := QDet_ProdDESCTOP.AsFloat;
        vQ.ParamByName('COSTOP').AsFloat := QDet_ProdCOSTOP.AsFloat;
        vQ.ParamByName('COSTOU').AsFloat := QDet_ProdCOSTOU.AsFloat;
        vQ.ParamByName('UTIL_P').AsFloat := QDet_ProdUTIL_P.AsFloat;
        vQ.ParamByName('UTIL_U').AsFloat := QDet_ProdUTIL_U.AsFloat;
        vQ.ParamByName('DCTFIJO').AsFloat := QDet_ProdDCTFIJO.AsFloat;
        vQ.ParamByName('DCTCLIENTE').AsFloat := QDet_ProdDCTCLIENTE.AsFloat;
        vQ.ParamByName('DCTADICIONAL').AsFloat := QDet_ProdDCTADICIONAL.AsFloat;
        vQ.ParamByName('LAMINA').AsFloat := QDet_ProdLAMINA.AsFloat;
        vQ.ParamByName('UNIDADES_POR_JUEGO').AsFloat :=
          QDet_ProdUNIDADES_POR_JUEGO.AsFloat;
        vQ.ParamByName('LARGO').AsFloat := QDet_ProdLARGO.AsFloat;
        vQ.ParamByName('ANCHO').AsFloat := QDet_ProdANCHO.AsFloat;
        vQ.ParamByName('TINTAS').AsFloat := QDet_ProdTINTAS.AsFloat;
        vQ.ParamByName('ALTO').AsFloat := QDet_ProdALTO.AsFloat;
        vQ.ParamByName('CARAS').AsFloat := QDet_ProdCARAS.AsFloat;
        vQ.ParamByName('TOTALDCT').AsFloat := QDet_ProdTOTALDCT.AsFloat;
        vQ.ParamByName('VLR_UNITARIO_MEXT').AsFloat :=
          QDet_ProdVLR_UNITARIO_MEXT.AsFloat;
        vQ.ParamByName('DCTO_AD1').AsFloat := QDet_ProdDCTO_AD1.AsFloat;
        vQ.ParamByName('DCTO_AD2').AsFloat := QDet_ProdDCTO_AD2.AsFloat;
        vQ.ParamByName('VLR_DCTFIJO').AsFloat := QDet_ProdVLR_DCTFIJO.AsFloat;
        vQ.ParamByName('VLR_DCT').AsFloat := QDet_ProdVLR_DCT.AsFloat;
        vQ.ParamByName('VLR_DCTOAD1').AsFloat := QDet_ProdVLR_DCTOAD1.AsFloat;
        vQ.ParamByName('VLR_DCTOAD2').AsFloat := QDet_ProdVLR_DCTOAD2.AsFloat;
        vQ.ParamByName('VLR_DCTOADICIONAL').AsFloat :=
          QDet_ProdVLR_DCTOADICIONAL.AsFloat;
        vQ.ParamByName('FACTOR').AsFloat := QDet_ProdFACTOR.AsFloat;
        vQ.ParamByName('COSTO_USD').AsFloat := QDet_ProdCOSTO_USD.AsFloat;
        vQ.ParamByName('FLETES_USD').AsFloat := QDet_ProdFLETES_USD.AsFloat;
        vQ.ParamByName('TRAMITES_USD').AsFloat := QDet_ProdTRAMITES_USD.AsFloat;
        vQ.ParamByName('NACIONALIZACION_USD').AsFloat :=
          QDet_ProdNACIONALIZACION_USD.AsFloat;
        vQ.ParamByName('PRECIO_VENTA_USD').AsFloat :=
          QDet_ProdPRECIO_VENTA_USD.AsFloat;
        vQ.ParamByName('MARGEN_U').AsFloat := QDet_ProdMARGEN_U.AsFloat;
        vQ.ParamByName('GRAVAMEN_U').AsFloat := QDet_ProdGRAVAMEN_U.AsFloat;
        vQ.ParamByName('VLR_UNIT_SUG').AsFloat := QDet_ProdVLR_UNIT_SUG.AsFloat;
        vQ.ParamByName('PRECIOIVA').AsFloat := QDet_ProdPRECIOIVA.AsFloat;
        vQ.ParamByName('TOTALBONO').AsSingle := QDet_ProdTOTALBONO.AsSingle;

        vQ.ParamByName('NUMERO').AsInteger := QDet_ProdNUMERO.AsInteger;
        vQ.ParamByName('ID_EMPRESA').AsInteger := QDet_ProdID_EMPRESA.AsInteger;
        vQ.ParamByName('ID_SUCURSAL').AsInteger :=
          QDet_ProdID_SUCURSAL.AsInteger;
        vQ.ParamByName('CONTEO').AsInteger := QDet_ProdCONTEO.AsInteger;
        vQ.ParamByName('DPTO').AsInteger := QDet_ProdDPTO.AsInteger;
        vQ.ParamByName('CCOST').AsInteger := QDet_ProdCCOST.AsInteger;

        vQ.ParamByName('COD_DESC').AsString := QDet_ProdCOD_DESC.AsString;
        vQ.ParamByName('DESCRIPCION').AsString := QDet_ProdDESCRIPCION.AsString;
        vQ.ParamByName('ESTILO').AsString := QDet_ProdESTILO.AsString;
        vQ.ParamByName('MATERIAL').AsString := QDet_ProdMATERIAL.AsString;
        vQ.ParamByName('TIPO').AsString := QDet_ProdTIPO.AsString;
        vQ.ParamByName('COLOR').AsString := QDet_ProdCOLOR.AsString;
        vQ.ParamByName('COD_UNIDAD_VENTA').AsString :=
          QDet_ProdCOD_UNIDAD_VENTA.AsString;
        vQ.ParamByName('DESCRIPCION_ADIC').AsString :=
          QDet_ProdDESCRIPCION_ADIC.AsString;
        vQ.ParamByName('DETITEM').AsString := QDet_ProdDETITEM.AsString;
        vQ.ParamByName('PROYECTO').AsString := QDet_ProdPROYECTO.AsString;
        vQ.ParamByName('ACTIVIDAD').AsString := QDet_ProdACTIVIDAD.AsString;
        vQ.ParamByName('COD_TALLA').AsString := QDet_ProdCOD_TALLA.AsString;
        vQ.ParamByName('COD_COLOR').AsString := QDet_ProdCOD_COLOR.AsString;
        vQ.ParamByName('BONO').AsString := QDet_ProdBONO.AsString;
        vQ.ParamByName('CODBARRASCURVA').AsString :=
          QDet_ProdCODBARRASCURVA.AsString;
        vQ.Close;
        vQ.ExecSQL;
        QDet_Prod.Next;
      END;

    finally
      vQ.DisposeOf;
    end;

    Numero := Numero + 1;
    ProgressBar1.Value := ProgressBar1.Value + 1;
    Application.ProcessMessages;
    QCotizaci.Next;
  End;

  Memo1.Lines.Add('->Se Actualizan Cotizaciones:');
  Memo1.Lines.Add('  -Tabla Cotizaci');
  Memo1.Lines.Add('  -Tabla Det_Prod');
  Memo1.Lines.Add('  -Cantidad de Cotizaciones: ' + IntToStr(Numero));
end;

procedure TMain.PasarEnsambles;
var
  Tipos: string;
  Numero: Integer;
  vQ: TFDQuery;
begin
  Tipos := TraerTipos('''EN''');
  Numero := 0;
  QEnsamblee.Close;
  QEnsamblee.ParamByName('FI').AsDate := DateEdit1.Date;
  QEnsamblee.ParamByName('FF').AsDate := DateEdit2.Date;
  QEnsamblee.SQL.Add(' AND TIPO IN(' + Tipos + ')');
  if CheckDocxSuc.IsChecked = True then
  begin
    QEnsamblee.SQL.Add(' AND S= :SUC');
    QEnsamblee.ParamByName('SUC').AsInteger := StrToInt(Edit4.Text);
  end;

  QEnsamblee.Open;

  QEnsamblee.Last;
  ProgressBar1.Value := 0;
  ProgressBar1.Max := QEnsamblee.RecordCount;
  QEnsamblee.First;

  while not QEnsamblee.Eof do
  Begin
    vQ := TFDQuery.Create(nil);
    try
      EliminarEnsables(QEnsambleeTIPO.AsString, QEnsambleeBATCH.AsInteger);
      vQ.Connection := Main.ConDestino;
      vQ.SQL.Add
        (' INSERT INTO ENSAMBLEE (E,S,TIPO,BATCH,ID_USUARIO,ID_N,SUCCLIENTE,FECHA,'
        + ' DESCRIPCION,CONCEPTO,COLOR,LOTE,DOC_FISICO,COMENTARIO,TOTAL,POSTED,'
        + ' NUMBER_IP,TIPO_IP,FECHA_VENCIMIENTO,ESTADO,NUMERO)VALUES(:E,:S,:TIPO,:BATCH,'
        + ' :ID_USUARIO,:ID_N,:SUCCLIENTE,:FECHA,:DESCRIPCION,:CONCEPTO,:COLOR,:LOTE,'
        + ' :DOC_FISICO,:COMENTARIO,:TOTAL,:POSTED,:NUMBER_IP,:TIPO_IP,:FECHA_VENCIMIENTO,'
        + ' :ESTADO,:NUMERO)');
      vQ.Close;

      vQ.ParamByName('E').AsInteger := QEnsambleeE.AsInteger;
      vQ.ParamByName('S').AsInteger := QEnsambleeS.AsInteger;
      vQ.ParamByName('TIPO').AsString := QEnsambleeTIPO.AsString;
      vQ.ParamByName('BATCH').AsInteger := QEnsambleeBATCH.AsInteger;
      vQ.ParamByName('ID_USUARIO').AsString := QEnsambleeID_USUARIO.AsString;
      vQ.ParamByName('ID_N').AsString := QEnsambleeID_N.AsString;
      vQ.ParamByName('SUCCLIENTE').AsInteger := QEnsambleeSUCCLIENTE.AsInteger;
      vQ.ParamByName('FECHA').AsDateTime := QEnsambleeFECHA.AsDateTime;
      vQ.ParamByName('DESCRIPCION').AsString := QEnsambleeDESCRIPCION.AsString;
      vQ.ParamByName('CONCEPTO').AsString := QEnsambleeCONCEPTO.AsString;
      vQ.ParamByName('COLOR').AsString := QEnsambleeCOLOR.AsString;
      vQ.ParamByName('LOTE').AsString := QEnsambleeLOTE.AsString;
      vQ.ParamByName('DOC_FISICO').AsString := QEnsambleeDOC_FISICO.AsString;
      vQ.ParamByName('COMENTARIO').AsString := QEnsambleeCOMENTARIO.AsString;
      vQ.ParamByName('TOTAL').AsFloat := QEnsambleeTOTAL.AsFloat;
      vQ.ParamByName('POSTED').AsString := QEnsambleePOSTED.AsString;
      vQ.ParamByName('NUMBER_IP').AsInteger := QEnsambleeNUMBER_IP.AsInteger;
      vQ.ParamByName('TIPO_IP').AsString := QEnsambleeTIPO_IP.AsString;
      vQ.ParamByName('FECHA_VENCIMIENTO').AsDateTime :=
        QEnsambleeFECHA_VENCIMIENTO.AsDateTime;
      vQ.ParamByName('ESTADO').AsString := QEnsambleeESTADO.AsString;
      vQ.ParamByName('NUMERO').AsInteger := QEnsambleeNUMERO.AsInteger;
      vQ.ExecSQL;

      QEnsambled.Close;
      QEnsambled.ParamByName('TIPO').AsString := QEnsambleeTIPO.AsString;
      QEnsambled.ParamByName('NUMBER').AsInteger := QEnsambleeBATCH.AsInteger;

      QEnsambled.Open;
      QEnsambled.First;

      while not QEnsambled.Eof do
      Begin
        vQ.SQL.Clear;
        vQ.SQL.Add
          (' INSERT INTO ENSAMBLED(E,S,TIPO,BATCH,CONTEO,ID_USUARIO,ACCT,ITEM,LOCATION,'
          + ' TRANSCODE,LOTE,COLOR,COSTO_AJUSTE,CUENTA_AJUSTE,QTY,COST,QTYB,IDN_LOC,PROY,'
          + ' ACTIVIDAD,CCOSTO,DEPTO,COD_TALLA,COD_COLOR,CODBARRASCURVA,CANTIDAD_RECETA,'
          + ' DIGITADO_M)VALUES(' +
          ' :E,:S,:TIPO,:BATCH,:CONTEO,:ID_USUARIO,:ACCT,:ITEM,:LOCATION,' +
          ' :TRANSCODE,:LOTE,:COLOR,:COSTO_AJUSTE,:CUENTA_AJUSTE,:QTY,:COST,:QTYB,:IDN_LOC,:PROY,'
          + ' :ACTIVIDAD,:CCOSTO,:DEPTO,:COD_TALLA,:COD_COLOR,:CODBARRASCURVA,:CANTIDAD_RECETA,'
          + ' :DIGITADO_M)');

        vQ.ParamByName('E').AsInteger := QEnsambledE.AsInteger;
        vQ.ParamByName('S').AsInteger := QEnsambledS.AsInteger;
        vQ.ParamByName('TIPO').AsString := QEnsambledTIPO.AsString;
        vQ.ParamByName('BATCH').AsInteger := QEnsambledBATCH.AsInteger;
        vQ.ParamByName('CONTEO').AsInteger := QEnsambledCONTEO.AsInteger;
        vQ.ParamByName('ID_USUARIO').AsString := QEnsambledID_USUARIO.AsString;
        vQ.ParamByName('ACCT').AsFloat := QEnsambledACCT.AsFloat;
        vQ.ParamByName('ITEM').AsString := QEnsambledITEM.AsString;
        vQ.ParamByName('LOCATION').AsString := QEnsambledLOCATION.AsString;
        vQ.ParamByName('TRANSCODE').AsString := QEnsambledTRANSCODE.AsString;
        vQ.ParamByName('LOTE').AsString := QEnsambledLOTE.AsString;
        vQ.ParamByName('COLOR').AsString := QEnsambledCOLOR.AsString;
        vQ.ParamByName('COSTO_AJUSTE').AsFloat :=
          QEnsambledCOSTO_AJUSTE.AsFloat;
        vQ.ParamByName('CUENTA_AJUSTE').AsFloat :=
          QEnsambledCUENTA_AJUSTE.AsFloat;
        vQ.ParamByName('QTY').AsFloat := QEnsambledQTY.AsFloat;
        vQ.ParamByName('COST').AsFloat := QEnsambledCOST.AsFloat;
        vQ.ParamByName('QTYB').AsFloat := QEnsambledQTYB.AsFloat;
        vQ.ParamByName('IDN_LOC').AsString := QEnsambledIDN_LOC.AsString;
        vQ.ParamByName('PROY').AsString := QEnsambledPROY.AsString;
        vQ.ParamByName('ACTIVIDAD').AsString := QEnsambledACTIVIDAD.AsString;
        vQ.ParamByName('CCOSTO').AsInteger := QEnsambledCCOSTO.AsInteger;
        vQ.ParamByName('DEPTO').AsInteger := QEnsambledDEPTO.AsInteger;
        vQ.ParamByName('COD_TALLA').AsString := QEnsambledCOD_TALLA.AsString;
        vQ.ParamByName('COD_COLOR').AsString := QEnsambledCOD_COLOR.AsString;
        vQ.ParamByName('CODBARRASCURVA').AsString :=
          QEnsambledCODBARRASCURVA.AsString;
        vQ.ParamByName('CANTIDAD_RECETA').AsFloat :=
          QEnsambledCANTIDAD_RECETA.AsFloat;
        vQ.ParamByName('DIGITADO_M').AsString := QEnsambledDIGITADO_M.AsString;
        vQ.Close;
        vQ.ExecSQL;
        QEnsambled.Next;
      END;

    finally
      vQ.DisposeOf;
    end;
    PasarItemact(QEnsambleeTIPO.AsString, QEnsambleeBATCH.AsInteger);
    PasarGl(QEnsambleeTIPO.AsString, QEnsambleeBATCH.AsInteger);
    Numero := Numero + 1;
    ProgressBar1.Value := ProgressBar1.Value + 1;
    Application.ProcessMessages;
    QEnsamblee.Next;
  End;

  Memo1.Lines.Add('->Se Actualizan Ensambles:');
  Memo1.Lines.Add('  -Tabla Ensamblee');
  Memo1.Lines.Add('  -Tabla Ensambled');
  Memo1.Lines.Add('  -Tabla Gl');
  Memo1.Lines.Add('  -Tabla ItemAct');
  Memo1.Lines.Add('  -Cantidad de Ensambles: ' + IntToStr(Numero));
end;

procedure TMain.PasarEntradas;
var
  Tipos: string;
  Numero: Integer;
  vQ: TFDQuery;
begin
  Tipos := TraerTipos('''EA'',''DP''');
  Numero := 0;
  QIp.Close;
  QIp.ParamByName('FI').AsDate := DateEdit1.Date;
  QIp.ParamByName('FF').AsDate := DateEdit2.Date;
  QIp.SQL.Add(' AND TIPO IN(' + Tipos + ')');
  if CheckDocxSuc.IsChecked = True then
  begin
    QIp.SQL.Add(' AND S= :SUC');
    QIp.ParamByName('SUC').AsInteger := StrToInt(Edit4.Text);
  end;

  QIp.Open;

  QIp.Last;
  ProgressBar1.Value := 0;
  ProgressBar1.Max := QIp.RecordCount;
  QIp.First;

  while not QIp.Eof do
  Begin
    vQ := TFDQuery.Create(nil);
    try
      EliminarEntradas(QIpTIPO.AsString, QIpNUMBER.AsInteger);
      vQ.Connection := Main.ConDestino;
      vQ.SQL.Add
        (' INSERT INTO IP (TIPO,NUMBER,ID_N,ACCT,PONUMBER,FECHA,COST,POSTED,COMMENTS,'
        + ' CLOSED,CLOSEPO,PRINTED,ENTPAR,RECTOT,ANUL,ENTORDEN,CONTABIL,ENTFACT,ENTCDEV,'
        + ' DEVUELTO,PORDESC,VALORDCT,VALORFLETE,EMPRESA,TOTALOTROS,TOTALRETEN,TOTALITEMS,'
        + ' VALORIVA,VALORICA,VALORRTIVA,VALORRTICA,TOTALSDCT,TOTALCDCT,DUEDATE,E,S,SUCCLIENTE,'
        + ' DOCASC,ENTMC,REVISADO,FECHA_ENTREGA,FECHA_REQUISICION,ID_USUARIO,OCNUMERO,IMPORTACION,'
        + ' E_CRUCE,S_CRUCE,TIPO_CRUCE,NUMBER_CRUCE,EA_AUTO_LEGALIZADA,VALIVABIEN,VALIVASER,DOC_EXTERNO,'
        + ' CCOSTO,DEPTO,PROYECTO,ACTIVIDAD,RETECREE,CODCREE,TIPO_IMP,NRO_IMP,ESTADO,TOTAL_BONO)'
        + ' VALUES(:TIPO,:NUMBER,:ID_N,:ACCT,:PONUMBER,:FECHA,:COST,:POSTED,:COMMENTS,'
        + ' :CLOSED,:CLOSEPO,:PRINTED,:ENTPAR,:RECTOT,:ANUL,:ENTORDEN,:CONTABIL,:ENTFACT,:ENTCDEV,'
        + ' :DEVUELTO,:PORDESC,:VALORDCT,:VALORFLETE,:EMPRESA,:TOTALOTROS,:TOTALRETEN,:TOTALITEMS,'
        + ' :VALORIVA,:VALORICA,:VALORRTIVA,:VALORRTICA,:TOTALSDCT,:TOTALCDCT,:DUEDATE,:E,:S,:SUCCLIENTE,'
        + ' :DOCASC,:ENTMC,:REVISADO,:FECHA_ENTREGA,:FECHA_REQUISICION,:ID_USUARIO,:OCNUMERO,:IMPORTACION,'
        + ' :E_CRUCE,:S_CRUCE,:TIPO_CRUCE,:NUMBER_CRUCE,:EA_AUTO_LEGALIZADA,:VALIVABIEN,:VALIVASER,:DOC_EXTERNO,'
        + ' :CCOSTO,:DEPTO,:PROYECTO,:ACTIVIDAD,:RETECREE,:CODCREE,:TIPO_IMP,:NRO_IMP,:ESTADO,:TOTAL_BONO)');
      vQ.Close;

      vQ.ParamByName('TIPO').AsString := QIpTIPO.AsString;
      vQ.ParamByName('NUMBER').AsInteger := QIpNUMBER.AsInteger;
      vQ.ParamByName('ID_N').AsString := QIpID_N.AsString;
      vQ.ParamByName('ACCT').AsFloat := QIpACCT.AsFloat;
      vQ.ParamByName('PONUMBER').AsString := QIpPONUMBER.AsString;
      vQ.ParamByName('FECHA').AsDateTime := QIpFECHA.AsDateTime;
      vQ.ParamByName('COST').AsFloat := QIpCOST.AsFloat;
      vQ.ParamByName('POSTED').AsString := QIpPOSTED.AsString;
      vQ.ParamByName('COMMENTS').AsString := QIpCOMMENTS.AsString;
      vQ.ParamByName('CLOSED').AsString := QIpCLOSED.AsString;
      vQ.ParamByName('CLOSEPO').AsString := QIpCLOSEPO.AsString;
      vQ.ParamByName('PRINTED').AsString := QIpPRINTED.AsString;
      vQ.ParamByName('ENTPAR').AsString := QIpENTPAR.AsString;
      vQ.ParamByName('RECTOT').AsString := QIpRECTOT.AsString;
      vQ.ParamByName('ANUL').AsString := QIpANUL.AsString;
      vQ.ParamByName('ENTORDEN').AsString := QIpENTORDEN.AsString;
      vQ.ParamByName('CONTABIL').AsString := QIpCONTABIL.AsString;
      vQ.ParamByName('ENTFACT').AsString := QIpENTFACT.AsString;
      vQ.ParamByName('ENTCDEV').AsString := QIpENTCDEV.AsString;
      vQ.ParamByName('DEVUELTO').AsString := QIpDEVUELTO.AsString;
      vQ.ParamByName('PORDESC').AsFloat := QIpPORDESC.AsFloat;
      vQ.ParamByName('VALORDCT').AsFloat := QIpVALORDCT.AsFloat;
      vQ.ParamByName('VALORFLETE').AsFloat := QIpVALORFLETE.AsFloat;
      vQ.ParamByName('EMPRESA').AsString := QIpEMPRESA.AsString;
      vQ.ParamByName('TOTALOTROS').AsFloat := QIpTOTALOTROS.AsFloat;
      vQ.ParamByName('TOTALRETEN').AsFloat := QIpTOTALRETEN.AsFloat;
      vQ.ParamByName('TOTALITEMS').AsFloat := QIpTOTALITEMS.AsFloat;
      vQ.ParamByName('VALORIVA').AsFloat := QIpVALORIVA.AsFloat;
      vQ.ParamByName('VALORICA').AsFloat := QIpVALORICA.AsFloat;
      vQ.ParamByName('VALORRTIVA').AsFloat := QIpVALORRTIVA.AsFloat;
      vQ.ParamByName('VALORRTICA').AsFloat := QIpVALORRTICA.AsFloat;
      vQ.ParamByName('TOTALSDCT').AsFloat := QIpTOTALSDCT.AsFloat;
      vQ.ParamByName('TOTALCDCT').AsFloat := QIpTOTALCDCT.AsFloat;
      vQ.ParamByName('DUEDATE').AsDateTime := QIpDUEDATE.AsDateTime;
      vQ.ParamByName('DOCASC').AsString := QIpDOCASC.AsString;
      vQ.ParamByName('ENTMC').AsString := QIpENTMC.AsString;
      vQ.ParamByName('REVISADO').AsString := QIpREVISADO.AsString;
      vQ.ParamByName('FECHA_ENTREGA').AsDateTime := QIpFECHA_ENTREGA.AsDateTime;
      vQ.ParamByName('FECHA_REQUISICION').AsDateTime :=
        QIpFECHA_REQUISICION.AsDateTime;
      vQ.ParamByName('ID_USUARIO').AsString := QIpID_USUARIO.AsString;
      vQ.ParamByName('OCNUMERO').AsString := QIpOCNUMERO.AsString;
      vQ.ParamByName('IMPORTACION').AsString := QIpIMPORTACION.AsString;
      vQ.ParamByName('E_CRUCE').AsInteger := QIpE_CRUCE.AsInteger;
      vQ.ParamByName('S_CRUCE').AsInteger := QIpS_CRUCE.AsInteger;
      vQ.ParamByName('TIPO_CRUCE').AsString := QIpTIPO_CRUCE.AsString;
      vQ.ParamByName('NUMBER_CRUCE').AsInteger := QIpNUMBER_CRUCE.AsInteger;
      vQ.ParamByName('EA_AUTO_LEGALIZADA').AsString :=
        QIpEA_AUTO_LEGALIZADA.AsString;
      vQ.ParamByName('VALIVABIEN').AsFloat := QIpVALIVABIEN.AsFloat;
      vQ.ParamByName('VALIVASER').AsFloat := QIpVALIVASER.AsFloat;
      vQ.ParamByName('DOC_EXTERNO').AsString := QIpDOC_EXTERNO.AsString;
      vQ.ParamByName('CCOSTO').AsInteger := QIpCCOSTO.AsInteger;
      vQ.ParamByName('DEPTO').AsInteger := QIpDEPTO.AsInteger;
      vQ.ParamByName('PROYECTO').AsString := QIpPROYECTO.AsString;
      vQ.ParamByName('ACTIVIDAD').AsString := QIpACTIVIDAD.AsString;
      vQ.ParamByName('E').AsInteger := QIpE.AsInteger;
      vQ.ParamByName('S').AsInteger := QIpS.AsInteger;
      vQ.ParamByName('SUCCLIENTE').AsInteger := QIpSUCCLIENTE.AsInteger;
      vQ.ParamByName('RETECREE').AsFloat := QIpRETECREE.AsFloat;
      vQ.ParamByName('CODCREE').AsString := QIpCODCREE.AsString;
      vQ.ParamByName('TIPO_IMP').AsString := QIpTIPO_IMP.AsString;
      vQ.ParamByName('NRO_IMP').AsInteger := QIpNRO_IMP.AsInteger;
      vQ.ParamByName('ESTADO').AsString := QIpESTADO.AsString;
      vQ.ParamByName('TOTAL_BONO').AsString := QIpTOTAL_BONO.AsString;
      vQ.ExecSQL;

      QIpdet.Close;
      QIpdet.ParamByName('TIPO').AsString := QIpTIPO.AsString;
      QIpdet.ParamByName('NUMBER').AsInteger := QIpNUMBER.AsInteger;

      QIpdet.Open;
      QIpdet.First;

      while not QIpdet.Eof do
      Begin
        vQ.SQL.Clear;
        vQ.SQL.Add
          (' INSERT INTO IPDET(TIPO,NUMBER,CONTEO,ITEM,LOCATION,COST,QTY,QTYREC,'
          + ' QTYPEND,EXTEND,PESO,COSTCDESC,COSTCFLETE,REFOC,REFREC,CLOSEDOC,QTYDEV,'
          + ' CC,PB,QTYB,QTYBDEV,PORCDCT,VALORDCT,E,DESTINO,S,LOTE,COSTMC,NODOCR,'
          + ' TPDOCR,EDOCR,SDOCR,FECHA_VENCIMIENTO,COLOR,IVA,COSTO_AJUSTE,NUMERO_AUTO,'
          + ' CADENA_ADICIONAL,E_AUTO,S_AUTO,TIPO_AUTO,CODOCR,CONTEO_AUTO,DEPTO,CCOSTO,'
          + ' ACTIVIDAD,PROY,COD_TALLA,COD_COLOR,FACTOR,PRECIO_UNITARIO_IVA,VALIVA,'
          + ' VALOR_IVA,CUBX,CUBY,CUBZ,CUBFACTOR,CAJA_SET,MANIFIESTOID,COSTOEXT,TOTAL_BONO,'
          + ' BONO,CODBARRASCURVA,VALOR_IVA_MAYOR,VALOR_BASE_MAYOR,DEVUELTO)' +
          ' VALUES(:TIPO,:NUMBER,:CONTEO,:ITEM,:LOCATION,:COST,:QTY,:QTYREC,' +
          ' :QTYPEND,:EXTEND,:PESO,:COSTCDESC,:COSTCFLETE,:REFOC,:REFREC,:CLOSEDOC,:QTYDEV,'
          + ' :CC,:PB,:QTYB,:QTYBDEV,:PORCDCT,:VALORDCT,:E,:DESTINO,:S,:LOTE,:COSTMC,:NODOCR,'
          + ' :TPDOCR,:EDOCR,:SDOCR,:FECHA_VENCIMIENTO,:COLOR,:IVA,:COSTO_AJUSTE,:NUMERO_AUTO,'
          + ' :CADENA_ADICIONAL,:E_AUTO,:S_AUTO,:TIPO_AUTO,:CODOCR,:CONTEO_AUTO,:DEPTO,:CCOSTO,'
          + ' :ACTIVIDAD,:PROY,:COD_TALLA,:COD_COLOR,:FACTOR,:PRECIO_UNITARIO_IVA,:VALIVA,'
          + ' :VALOR_IVA,:CUBX,:CUBY,:CUBZ,:CUBFACTOR,:CAJA_SET,:MANIFIESTOID,:COSTOEXT,:TOTAL_BONO,'
          + ' :BONO,:CODBARRASCURVA,:VALOR_IVA_MAYOR,:VALOR_BASE_MAYOR,:DEVUELTO)');

        vQ.ParamByName('TIPO').AsString := QIpdetTIPO.AsString;
        vQ.ParamByName('NUMBER').AsInteger := QIpdetNUMBER.AsInteger;
        vQ.ParamByName('CONTEO').AsInteger := QIpdetCONTEO.AsInteger;
        vQ.ParamByName('ITEM').AsString := QIpdetITEM.AsString;
        vQ.ParamByName('LOCATION').AsString := QIpdetLOCATION.AsString;
        vQ.ParamByName('COST').AsFloat := QIpdetCOST.AsFloat;
        vQ.ParamByName('QTY').AsFloat := QIpdetQTY.AsFloat;
        vQ.ParamByName('QTYREC').AsFloat := QIpdetQTYREC.AsFloat;
        vQ.ParamByName('QTYPEND').AsFloat := QIpdetQTYPEND.AsFloat;
        vQ.ParamByName('EXTEND').AsFloat := QIpdetEXTEND.AsFloat;
        vQ.ParamByName('PESO').AsFloat := QIpdetPESO.AsFloat;
        vQ.ParamByName('COSTCDESC').AsFloat := QIpdetCOSTCDESC.AsFloat;
        vQ.ParamByName('COSTCFLETE').AsFloat := QIpdetCOSTCFLETE.AsFloat;
        vQ.ParamByName('REFOC').AsString := QIpdetREFOC.AsString;
        vQ.ParamByName('REFREC').AsString := QIpdetREFREC.AsString;
        vQ.ParamByName('CLOSEDOC').AsString := QIpdetCLOSEDOC.AsString;
        vQ.ParamByName('QTYDEV').AsFloat := QIpdetQTYDEV.AsFloat;
        vQ.ParamByName('CC').AsFloat := QIpdetCC.AsFloat;
        vQ.ParamByName('PB').AsFloat := QIpdetPB.AsFloat;
        vQ.ParamByName('QTYB').AsFloat := QIpdetQTYB.AsFloat;
        vQ.ParamByName('QTYBDEV').AsFloat := QIpdetQTYBDEV.AsFloat;
        vQ.ParamByName('PORCDCT').AsFloat := QIpdetPORCDCT.AsFloat;
        vQ.ParamByName('VALORDCT').AsFloat := QIpdetVALORDCT.AsFloat;
        vQ.ParamByName('E').AsInteger := QIpdetE.AsInteger;
        vQ.ParamByName('DESTINO').AsInteger := QIpdetDESTINO.AsInteger;
        vQ.ParamByName('S').AsInteger := QIpdetS.AsInteger;
        vQ.ParamByName('LOTE').AsString := QIpdetLOTE.AsString;
        vQ.ParamByName('COSTMC').AsFloat := QIpdetCOSTMC.AsFloat;
        vQ.ParamByName('NODOCR').AsInteger := QIpdetNODOCR.AsInteger;
        vQ.ParamByName('TPDOCR').AsString := QIpdetTPDOCR.AsString;
        vQ.ParamByName('EDOCR').AsInteger := QIpdetEDOCR.AsInteger;
        vQ.ParamByName('SDOCR').AsInteger := QIpdetSDOCR.AsInteger;
        vQ.ParamByName('FECHA_VENCIMIENTO').AsDateTime :=
          QIpdetFECHA_VENCIMIENTO.AsDateTime;
        vQ.ParamByName('COLOR').AsString := QIpdetCOLOR.AsString;
        vQ.ParamByName('IVA').AsFloat := QIpdetIVA.AsFloat;
        vQ.ParamByName('COSTO_AJUSTE').AsFloat := QIpdetCOSTO_AJUSTE.AsFloat;
        vQ.ParamByName('NUMERO_AUTO').AsInteger := QIpdetNUMERO_AUTO.AsInteger;
        vQ.ParamByName('CADENA_ADICIONAL').AsString :=
          QIpdetCADENA_ADICIONAL.AsString;
        vQ.ParamByName('E_AUTO').AsInteger := QIpdetE_AUTO.AsInteger;
        vQ.ParamByName('S_AUTO').AsInteger := QIpdetS_AUTO.AsInteger;
        vQ.ParamByName('TIPO_AUTO').AsString := QIpdetTIPO_AUTO.AsString;
        vQ.ParamByName('CODOCR').AsInteger := QIpdetCODOCR.AsInteger;
        vQ.ParamByName('CONTEO_AUTO').AsInteger := QIpdetCONTEO_AUTO.AsInteger;
        vQ.ParamByName('DEPTO').AsInteger := QIpdetDEPTO.AsInteger;
        vQ.ParamByName('CCOSTO').AsInteger := QIpdetCCOSTO.AsInteger;
        vQ.ParamByName('ACTIVIDAD').AsString := QIpdetACTIVIDAD.AsString;
        vQ.ParamByName('PROY').AsString := QIpdetPROY.AsString;
        vQ.ParamByName('COD_TALLA').AsString := QIpdetCOD_TALLA.AsString;
        vQ.ParamByName('COD_COLOR').AsString := QIpdetCOD_COLOR.AsString;
        vQ.ParamByName('FACTOR').AsFloat := QIpdetFACTOR.AsFloat;
        vQ.ParamByName('PRECIO_UNITARIO_IVA').AsFloat :=
          QIpdetPRECIO_UNITARIO_IVA.AsFloat;
        vQ.ParamByName('VALIVA').AsFloat := QIpdetVALIVA.AsFloat;
        vQ.ParamByName('VALOR_IVA').AsFloat := QIpdetVALOR_IVA.AsFloat;
        vQ.ParamByName('CUBX').AsFloat := QIpdetCUBX.AsFloat;
        vQ.ParamByName('CUBY').AsFloat := QIpdetCUBY.AsFloat;
        vQ.ParamByName('CUBZ').AsFloat := QIpdetCUBZ.AsFloat;
        vQ.ParamByName('CUBFACTOR').AsFloat := QIpdetCUBFACTOR.AsFloat;
        vQ.ParamByName('CAJA_SET').AsFloat := QIpdetCAJA_SET.AsFloat;
        vQ.ParamByName('MANIFIESTOID').AsString := QIpdetMANIFIESTOID.AsString;
        vQ.ParamByName('COSTOEXT').AsFloat := QIpdetCOSTOEXT.AsFloat;
        vQ.ParamByName('TOTAL_BONO').AsFloat := QIpdetTOTAL_BONO.AsFloat;
        vQ.ParamByName('BONO').AsString := QIpdetBONO.AsString;
        vQ.ParamByName('CODBARRASCURVA').AsString :=
          QIpdetCODBARRASCURVA.AsString;
        vQ.ParamByName('VALOR_IVA_MAYOR').AsFloat :=
          QIpdetVALOR_IVA_MAYOR.AsFloat;
        vQ.ParamByName('VALOR_BASE_MAYOR').AsFloat :=
          QIpdetVALOR_BASE_MAYOR.AsFloat;
        vQ.ParamByName('DEVUELTO').AsString := QIpdetDEVUELTO.AsString;
        vQ.Close;
        vQ.ExecSQL;
        QIpdet.Next;
      END;

      QOc_Ip.Close;
      QOc_Ip.ParamByName('TIPO').AsString := QIpTIPO.AsString;
      QOc_Ip.ParamByName('NUMBER').AsInteger := QIpNUMBER.AsInteger;

      QOc_Ip.Open;
      QOc_Ip.First;

      while not QOc_Ip.Eof do
      Begin
        vQ.SQL.Clear;
        vQ.SQL.Add(' INSERT INTO OC_IP(NUMBERIP,TYPEIP,E,S,TYPEOC,NUMBEROC)' +
          ' VALUES(:NUMBERIP,:TYPEIP,:E,:S,:TYPEOC,:NUMBEROC)');

        vQ.ParamByName('TYPEIP').AsString := QOc_IpTYPEIP.AsString;
        vQ.ParamByName('TYPEOC').AsString := QOc_IpTYPEOC.AsString;
        vQ.ParamByName('NUMBERIP').AsInteger := QOc_IpNUMBERIP.AsInteger;
        vQ.ParamByName('E').AsInteger := QOc_IpE.AsInteger;
        vQ.ParamByName('S').AsInteger := QOc_IpS.AsInteger;
        vQ.ParamByName('NUMBEROC').AsInteger := QOc_IpNUMBEROC.AsInteger;

        vQ.Close;
        vQ.ExecSQL;
        QOc_Ip.Next;
      END;

    finally
      vQ.DisposeOf;
    end;
    PasarItemact(QIpTIPO.AsString, QIpNUMBER.AsInteger);
    PasarGl(QIpTIPO.AsString, QIpNUMBER.AsInteger);
    PasarCarpro(QIpTIPO.AsString, QIpNUMBER.AsInteger);

    Numero := Numero + 1;
    ProgressBar1.Value := ProgressBar1.Value + 1;
    Application.ProcessMessages;
    QIp.Next;
  End;

  Memo1.Lines.Add('->Se Actualizan Entradas y Devoluciones:');
  Memo1.Lines.Add('  -Tabla Ip');
  Memo1.Lines.Add('  -Tabla Ipdet');
  Memo1.Lines.Add('  -Tabla Oc_Ip');
  Memo1.Lines.Add('  -Cantidad de Entradas y Devoluciones: ' +
    IntToStr(Numero));
end;

procedure TMain.PasarFacturas;
var
  Tipos: string;
  Numero: Integer;
  vQ: TFDQuery;
begin
  Tipos := TraerTipos('''FA'',''DV''');
  Numero := 0;
  QOe.Close;
  QOe.ParamByName('FI').AsDate := DateEdit1.Date;
  QOe.ParamByName('FF').AsDate := DateEdit2.Date;
  QOe.SQL.Add(' AND TIPO IN(' + Tipos + ')');
  if CheckDocxSuc.IsChecked = True then
  begin
    QOe.SQL.Add(' AND ID_SUCURSAL= :SUC');
    QOe.ParamByName('SUC').AsInteger := StrToInt(Edit4.Text);
  end;

  QOe.Open;

  QOe.Last;
  ProgressBar1.Value := 0;
  ProgressBar1.Max := QOe.RecordCount;
  QOe.First;

  while not QOe.Eof do
  Begin
    vQ := TFDQuery.Create(nil);
    try
      EliminarFacturas(QOeTIPO.AsString, QOeNUMBER.AsInteger);
      vQ.Connection := Main.ConDestino;
      vQ.SQL.Add
        (' INSERT INTO OE (ID_EMPRESA,ID_SUCURSAL,NUMBER,TIPO,ID_USUARIO,' +
        ' ID_N,ENTITY,SALESMAN,FECHA,DUEDATE,SUBTOTAL,COST,SALESTAX,FEDTAX,' +
        ' DISC1,DISC2,DISC3,SHIPTO1,SHIPTO2,SHIPTO4,ONACCOUNT,PRINTED,POSTED,' +
        ' CLOSED,PONUMBER,TERMS,DES_GLO,POR_DES,DESTOTAL,TOTAL,CODSUC,IMPCONSUMO,'
        + ' RFAPLICADA,SHIPTO,TIPO_PEDIDO,DEV_FACTURA,DEV_TIPOFAC,DIFERENCIA,' +
        ' CODACTIVIDAD,SERIALES,OCNUMERO,LETRAS,EXPORTADA,D,NROREMISION,' +
        ' CODTRANSPORTADOR,CONDUCTOR,NITCONDUCTOR,PESO,BULTOS,DESPACHADOPOR,' +
        ' CODPROYECTO,DESCRIPCION_RECETA,SI,REVISADO,FP,CE,CC,VLR_MERCANCIA,OTRO,'
        + ' UNIDADES,ID_TIPOCARTERA,DEDUCIBLE_CLENTE,ID_NDEDUCIBLE,PESO_NETO,OTROSCARGOS,'
        + ' DEDUCIBLE_CLIENTE,CAJA,SERIALDISCO,PAGOSPORVALOR,DESCRIP_ORDENPAC,NRO_ORDENPAC,'
        + ' COD_PLACA,COMMENTS,TOTALDEUDA,AFECTA_RETENCION,TOTALDOL,VALDEV,PORCENIVA,'
        + ' FORPAGVAL,TIMBRE,CENICA,CONTRACT,FORMAS_PAGO,VALIVABIEN,VALIVASER,IMPAMOR,'
        + ' OBSDESPACHO,COMENTA2,TOTALCRUCEANTICIPO,SALDOANTICIPOS,SHIPTO6,CONNIIF,'
        + ' CONTAB_NIIF, COD_MONEDA,HORCRE,CUFE,ENVIADO_DEV)VALUES(:ID_EMPRESA,:ID_SUCURSAL,:NUMBER,:TIPO,:ID_USUARIO,'
        + ' :ID_N,:ENTITY,:SALESMAN,:FECHA,:DUEDATE,:SUBTOTAL,:COST,:SALESTAX,:FEDTAX,'
        + ' :DISC1,:DISC2,:DISC3,:SHIPTO1,:SHIPTO2,:SHIPTO4,:ONACCOUNT,:PRINTED,:POSTED,'
        + ' :CLOSED,:PONUMBER,:TERMS,:DES_GLO,:POR_DES,:DESTOTAL,:TOTAL,:CODSUC,:IMPCONSUMO,'
        + ' :RFAPLICADA,:SHIPTO,:TIPO_PEDIDO,:DEV_FACTURA,:DEV_TIPOFAC,:DIFERENCIA,'
        + ' :CODACTIVIDAD,:SERIALES,:OCNUMERO,:LETRAS,:EXPORTADA,:D,:NROREMISION,'
        + ' :CODTRANSPORTADOR,:CONDUCTOR,:NITCONDUCTOR,:PESO,:BULTOS,:DESPACHADOPOR,'
        + ' :CODPROYECTO,:DESCRIPCION_RECETA,:SI,:REVISADO,:FP,:CE,:CC,:VLR_MERCANCIA,:OTRO,'
        + ' :UNIDADES,:ID_TIPOCARTERA,:DEDUCIBLE_CLENTE,:ID_NDEDUCIBLE,:PESO_NETO,:OTROSCARGOS,'
        + ' :DEDUCIBLE_CLIENTE,:CAJA,:SERIALDISCO,:PAGOSPORVALOR,:DESCRIP_ORDENPAC,:NRO_ORDENPAC,'
        + ' :COD_PLACA,:COMMENTS,:TOTALDEUDA,:AFECTA_RETENCION,:TOTALDOL,:VALDEV,:PORCENIVA,'
        + ' :FORPAGVAL,:TIMBRE,:CENICA,:CONTRACT,:FORMAS_PAGO,:VALIVABIEN,:VALIVASER,:IMPAMOR,'
        + ' :OBSDESPACHO,:COMENTA2,:TOTALCRUCEANTICIPO,:SALDOANTICIPOS,:SHIPTO6,:CONNIIF,'
        + ' :CONTAB_NIIF,:COD_MONEDA,:HORCRE,:CUFE,:ENVIADO_DEV)');
      vQ.Close;

      vQ.ParamByName('ID_EMPRESA').AsInteger := QOeID_EMPRESA.AsInteger;
      vQ.ParamByName('ID_SUCURSAL').AsInteger := QOeID_SUCURSAL.AsInteger;
      vQ.ParamByName('NUMBER').AsInteger := QOeNUMBER.AsInteger;
      vQ.ParamByName('TIPO').AsString := QOeTIPO.AsString;
      vQ.ParamByName('ID_USUARIO').AsString := QOeID_USUARIO.AsString;
      vQ.ParamByName('ID_N').AsString := QOeID_N.AsString;
      vQ.ParamByName('ENTITY').AsString := QOeENTITY.AsString;
      vQ.ParamByName('SALESMAN').AsInteger := QOeSALESMAN.AsInteger;
      vQ.ParamByName('FECHA').AsDateTime := QOeFECHA.AsDateTime;
      vQ.ParamByName('DUEDATE').AsDateTime := QOeDUEDATE.AsDateTime;
      vQ.ParamByName('SUBTOTAL').AsFloat := QOeSUBTOTAL.AsFloat;
      vQ.ParamByName('COST').AsFloat := QOeCOST.AsFloat;
      vQ.ParamByName('SALESTAX').AsFloat := QOeSALESTAX.AsFloat;
      vQ.ParamByName('FEDTAX').AsFloat := QOeFEDTAX.AsFloat;
      vQ.ParamByName('DISC1').AsFloat := QOeDISC1.AsFloat;
      vQ.ParamByName('DISC2').AsFloat := QOeDISC2.AsFloat;
      vQ.ParamByName('DISC3').AsFloat := QOeDISC3.AsFloat;
      vQ.ParamByName('DES_GLO').AsFloat := QOeDES_GLO.AsFloat;
      vQ.ParamByName('POR_DES').AsFloat := QOePOR_DES.AsFloat;
      vQ.ParamByName('DESTOTAL').AsFloat := QOeDESTOTAL.AsFloat;
      vQ.ParamByName('TOTAL').AsFloat := QOeTOTAL.AsFloat;
      vQ.ParamByName('CODSUC').AsInteger := QOeCODSUC.AsInteger;
      vQ.ParamByName('IMPCONSUMO').AsFloat := QOeIMPCONSUMO.AsFloat;
      vQ.ParamByName('DIFERENCIA').AsFloat := QOeDIFERENCIA.AsFloat;
      vQ.ParamByName('D').AsInteger := QOeD.AsInteger;
      vQ.ParamByName('PESO').AsFloat := QOePESO.AsFloat;
      vQ.ParamByName('BULTOS').AsFloat := QOeBULTOS.AsFloat;
      vQ.ParamByName('VLR_MERCANCIA').AsFloat := QOeVLR_MERCANCIA.AsFloat;
      vQ.ParamByName('UNIDADES').AsFloat := QOeUNIDADES.AsFloat;
      vQ.ParamByName('DEDUCIBLE_CLENTE').AsFloat := QOeDEDUCIBLE_CLENTE.AsFloat;
      vQ.ParamByName('PESO_NETO').AsFloat := QOePESO_NETO.AsFloat;
      vQ.ParamByName('OTROSCARGOS').AsFloat := QOeOTROSCARGOS.AsFloat;
      vQ.ParamByName('SHIPTO1').AsString := QOeSHIPTO1.AsString;
      vQ.ParamByName('SHIPTO2').AsString := QOeSHIPTO2.AsString;
      vQ.ParamByName('SHIPTO4').AsString := QOeSHIPTO4.AsString;
      vQ.ParamByName('ONACCOUNT').AsString := QOeONACCOUNT.AsString;
      vQ.ParamByName('PRINTED').AsString := QOePRINTED.AsString;
      vQ.ParamByName('POSTED').AsString := QOePOSTED.AsString;
      vQ.ParamByName('CLOSED').AsString := QOeCLOSED.AsString;
      vQ.ParamByName('PONUMBER').AsString := QOePONUMBER.AsString;
      vQ.ParamByName('TERMS').AsString := QOeTERMS.AsString;
      vQ.ParamByName('RFAPLICADA').AsString := QOeRFAPLICADA.AsString;
      vQ.ParamByName('SHIPTO').AsInteger := QOeSHIPTO.AsInteger;
      vQ.ParamByName('TIPO_PEDIDO').AsString := QOeTIPO_PEDIDO.AsString;
      vQ.ParamByName('DEV_FACTURA').AsInteger := QOeDEV_FACTURA.AsInteger;
      vQ.ParamByName('DEV_TIPOFAC').AsString := QOeDEV_TIPOFAC.AsString;
      vQ.ParamByName('CODACTIVIDAD').AsString := QOeCODACTIVIDAD.AsString;
      vQ.ParamByName('SERIALES').AsString := QOeSERIALES.AsString;
      vQ.ParamByName('OCNUMERO').AsString := QOeOCNUMERO.AsString;
      vQ.ParamByName('LETRAS').AsString := QOeLETRAS.AsString;
      vQ.ParamByName('EXPORTADA').AsString := QOeEXPORTADA.AsString;
      vQ.ParamByName('NROREMISION').AsString := QOeNROREMISION.AsString;
      vQ.ParamByName('CODTRANSPORTADOR').AsString :=
        QOeCODTRANSPORTADOR.AsString;
      vQ.ParamByName('CONDUCTOR').AsString := QOeCONDUCTOR.AsString;
      vQ.ParamByName('NITCONDUCTOR').AsString := QOeNITCONDUCTOR.AsString;
      vQ.ParamByName('DESPACHADOPOR').AsString := QOeDESPACHADOPOR.AsString;
      vQ.ParamByName('CODPROYECTO').AsString := QOeCODPROYECTO.AsString;
      vQ.ParamByName('DESCRIPCION_RECETA').AsString :=
        QOeDESCRIPCION_RECETA.AsString;
      vQ.ParamByName('SI').AsString := QOeSI.AsString;
      vQ.ParamByName('REVISADO').AsString := QOeREVISADO.AsString;
      vQ.ParamByName('FP').AsString := QOeFP.AsString;
      vQ.ParamByName('CE').AsString := QOeCE.AsString;
      vQ.ParamByName('CC').AsString := QOeCC.AsString;
      vQ.ParamByName('OTRO').AsString := QOeOTRO.AsString;
      vQ.ParamByName('ID_TIPOCARTERA').AsString := QOeID_TIPOCARTERA.AsString;
      vQ.ParamByName('ID_NDEDUCIBLE').AsString := QOeID_NDEDUCIBLE.AsString;
      vQ.ParamByName('DEDUCIBLE_CLIENTE').AsFloat :=
        QOeDEDUCIBLE_CLIENTE.AsFloat;
      vQ.ParamByName('CAJA').AsString := QOeCAJA.AsString;
      vQ.ParamByName('SERIALDISCO').AsString := QOeSERIALDISCO.AsString;
      vQ.ParamByName('PAGOSPORVALOR').AsString := QOePAGOSPORVALOR.AsString;
      vQ.ParamByName('DESCRIP_ORDENPAC').AsString :=
        QOeDESCRIP_ORDENPAC.AsString;
      vQ.ParamByName('NRO_ORDENPAC').AsString := QOeNRO_ORDENPAC.AsString;
      vQ.ParamByName('COD_PLACA').AsString := QOeCOD_PLACA.AsString;
      vQ.ParamByName('COMMENTS').AsString := QOeCOMMENTS.AsString;
      vQ.ParamByName('TOTALDEUDA').AsFloat := QOeTOTALDEUDA.AsFloat;
      vQ.ParamByName('AFECTA_RETENCION').AsString :=
        QOeAFECTA_RETENCION.AsString;
      vQ.ParamByName('TOTALDOL').AsFloat := QOeTOTALDOL.AsFloat;
      vQ.ParamByName('VALDEV').AsFloat := QOeVALDEV.AsFloat;
      vQ.ParamByName('PORCENIVA').AsString := QOePORCENIVA.AsString;
      vQ.ParamByName('FORPAGVAL').AsString := QOeFORPAGVAL.AsString;
      vQ.ParamByName('TIMBRE').AsFloat := QOeTIMBRE.AsFloat;
      vQ.ParamByName('CENICA').AsFloat := QOeCENICA.AsFloat;
      vQ.ParamByName('CONTRACT').AsFloat := QOeCONTRACT.AsFloat;
      vQ.ParamByName('FORMAS_PAGO').AsString := QOeFORMAS_PAGO.AsString;
      vQ.ParamByName('VALIVABIEN').AsFloat := QOeVALIVABIEN.AsFloat;
      vQ.ParamByName('VALIVASER').AsFloat := QOeVALIVASER.AsFloat;
      vQ.ParamByName('IMPAMOR').AsFloat := QOeIMPAMOR.AsFloat;
      vQ.ParamByName('OBSDESPACHO').AsString := QOeOBSDESPACHO.AsString;
      vQ.ParamByName('COMENTA2').AsString := QOeCOMENTA2.AsString;
      vQ.ParamByName('TOTALCRUCEANTICIPO').AsFloat :=
        QOeTOTALCRUCEANTICIPO.AsFloat;
      vQ.ParamByName('SALDOANTICIPOS').AsFloat := QOeSALDOANTICIPOS.AsFloat;
      vQ.ParamByName('SHIPTO6').AsString := QOeSHIPTO6.AsString;
      vQ.ParamByName('CONNIIF').AsString := QOeCONNIIF.AsString;
      vQ.ParamByName('CONTAB_NIIF').AsString := QOeCONTAB_NIIF.AsString;
      vQ.ParamByName('COD_MONEDA').AsString := QOeCOD_MONEDA.AsString;
      vQ.ParamByName('HORCRE').AsString := QOeHORCRE.AsString;
      vQ.ParamByName('CUFE').AsString := QOeCUFE.AsString;
      vQ.ParamByName('ENVIADO_DEV').AsString := QOeENVIADO_DEV.AsString;
      vQ.ExecSQL;

      QOedet.Close;
      QOedet.ParamByName('TIPO').AsString := QOeTIPO.AsString;
      QOedet.ParamByName('NUMBER').AsInteger := QOeNUMBER.AsInteger;

      QOedet.Open;
      QOedet.First;

      while not QOedet.Eof do
      Begin
        vQ.SQL.Clear;
        vQ.SQL.Add
          (' INSERT INTO OEDET(CONTEO,ID_EMPRESA,ID_SUCURSAL,NUMBER,TIPO,' +
          ' ID_USUARIO,ITEM,LOCATION,IVA,QTYSHIP,QTYORDER,PRICE,PRICE1,EXTEND,'
          + ' TAXES,COST,DIAS_GARANTIA,DCT,TOTALDCT,VLR_IVA,PORC_IVA,CAJAS,PESO_BRUTO,'
          + ' TIPO_FACTOR,DOBLE_UNIDAD,USAR_DESVIACION,DESVIACIONP,PESO_PROMEDIOI,FALLO,'
          + ' PESO_NETO,DESINICIO,DESFINAL,CAJAS_SUGERIDAS,PESO_NETOI,IMPCONSUMO,PRECIOIVA,'
          + ' TIPO_PEDIDO,NUMERO_PEDIDO,SERIALES,NOTES,DCTADICIONAL,MANDANTE,PROYECTO,'
          + ' DCTFIJO,COD_UNIDAD_VENTA,FACTOR,KITNO,KITDESCRIPCION,COLOR,DCTPORVALOR,'
          + ' DCTO_AD1,DCTO_AD2,COSTO_AJUSTE,VLR_DCTFIJO,VLR_DCT,VLR_DCTOAD1,VLR_DCTOAD2,'
          + ' VLR_DCTOADICIONAL,OCNUMERO,COD_CENTRO,DESCRIP_CENTRO,DIAS_ITEM,KILOMETRAJES,'
          + ' PORC_COMI,NOTES1,IDN_LOC,MARVAL,MARPOR,TOTALDOL,PRECIODOL,ACTIVIDAD,'
          + ' DPTO,CCOST,RTFTIP,RTFITEM,RTFBASEMIN,RTFVAL,NUMITEM,UTIL1,UTIL2,NUMUSU,'
          + ' IMPAMOR,ITEM2,POSICION,IDN_PAC,COD_TALLA,COD_COLOR)VALUES(' +
          ' :CONTEO,:ID_EMPRESA,:ID_SUCURSAL,:NUMBER,:TIPO' +
          ' ,:ID_USUARIO,:ITEM,:LOCATION,:IVA,:QTYSHIP,:QTYORDER,:PRICE,:PRICE1,:EXTEND'
          + ' ,:TAXES,:COST,:DIAS_GARANTIA,:DCT,:TOTALDCT,:VLR_IVA,:PORC_IVA,:CAJAS,:PESO_BRUTO'
          + ' ,:TIPO_FACTOR,:DOBLE_UNIDAD,:USAR_DESVIACION,:DESVIACIONP,:PESO_PROMEDIOI,:FALLO'
          + ' ,:PESO_NETO,:DESINICIO,:DESFINAL,:CAJAS_SUGERIDAS,:PESO_NETOI,:IMPCONSUMO,:PRECIOIVA'
          + ' ,:TIPO_PEDIDO,:NUMERO_PEDIDO,:SERIALES,:NOTES,:DCTADICIONAL,:MANDANTE,:PROYECTO'
          + ' ,:DCTFIJO,:COD_UNIDAD_VENTA,:FACTOR,:KITNO,:KITDESCRIPCION,:COLOR,:DCTPORVALOR'
          + ' ,:DCTO_AD1,:DCTO_AD2,:COSTO_AJUSTE,:VLR_DCTFIJO,:VLR_DCT,:VLR_DCTOAD1,:VLR_DCTOAD2'
          + ' ,:VLR_DCTOADICIONAL,:OCNUMERO,:COD_CENTRO,:DESCRIP_CENTRO,:DIAS_ITEM,:KILOMETRAJES'
          + ' ,:PORC_COMI,:NOTES1,:IDN_LOC,:MARVAL,:MARPOR,:TOTALDOL,:PRECIODOL,:ACTIVIDAD'
          + ' ,:DPTO,:CCOST,:RTFTIP,:RTFITEM,:RTFBASEMIN,:RTFVAL,:NUMITEM,:UTIL1,:UTIL2,:NUMUSU'
          + ' ,:IMPAMOR,:ITEM2,:POSICION,:IDN_PAC,:COD_TALLA,:COD_COLOR)');

        vQ.ParamByName('CONTEO').AsInteger := QOedetCONTEO.AsInteger;
        vQ.ParamByName('ID_EMPRESA').AsInteger := QOedetID_EMPRESA.AsInteger;
        vQ.ParamByName('ID_SUCURSAL').AsInteger := QOedetID_SUCURSAL.AsInteger;
        vQ.ParamByName('NUMBER').AsString := QOedetNUMBER.AsString;
        vQ.ParamByName('TIPO').AsString := QOedetTIPO.AsString;
        vQ.ParamByName('ID_USUARIO').AsString := QOedetID_USUARIO.AsString;
        vQ.ParamByName('ITEM').AsString := QOedetITEM.AsString;
        vQ.ParamByName('LOCATION').AsString := QOedetLOCATION.AsString;
        vQ.ParamByName('IVA').AsInteger := QOedetIVA.AsInteger;
        vQ.ParamByName('QTYSHIP').AsFloat := QOedetQTYSHIP.AsFloat;
        vQ.ParamByName('QTYORDER').AsFloat := QOedetQTYORDER.AsFloat;
        vQ.ParamByName('PRICE').AsFloat := QOedetPRICE.AsFloat;
        vQ.ParamByName('PRICE1').AsFloat := QOedetPRICE1.AsFloat;
        vQ.ParamByName('EXTEND').AsFloat := QOedetEXTEND.AsFloat;
        vQ.ParamByName('TAXES').AsFloat := QOedetTAXES.AsFloat;
        vQ.ParamByName('COST').AsFloat := QOedetCOST.AsFloat;
        vQ.ParamByName('DIAS_GARANTIA').AsInteger :=
          QOedetDIAS_GARANTIA.AsInteger;
        vQ.ParamByName('DCT').AsFloat := QOedetDCT.AsFloat;
        vQ.ParamByName('TOTALDCT').AsFloat := QOedetTOTALDCT.AsFloat;
        vQ.ParamByName('VLR_IVA').AsFloat := QOedetVLR_IVA.AsFloat;
        vQ.ParamByName('PORC_IVA').AsFloat := QOedetPORC_IVA.AsFloat;
        vQ.ParamByName('CAJAS').AsFloat := QOedetCAJAS.AsFloat;
        vQ.ParamByName('PESO_BRUTO').AsFloat := QOedetPESO_BRUTO.AsFloat;
        vQ.ParamByName('DESVIACIONP').AsFloat := QOedetDESVIACIONP.AsFloat;
        vQ.ParamByName('PESO_PROMEDIOI').AsFloat :=
          QOedetPESO_PROMEDIOI.AsFloat;
        vQ.ParamByName('PESO_NETO').AsFloat := QOedetPESO_NETO.AsFloat;
        vQ.ParamByName('DESINICIO').AsFloat := QOedetDESINICIO.AsFloat;
        vQ.ParamByName('DESFINAL').AsFloat := QOedetDESFINAL.AsFloat;
        vQ.ParamByName('CAJAS_SUGERIDAS').AsFloat :=
          QOedetCAJAS_SUGERIDAS.AsFloat;
        vQ.ParamByName('PESO_NETOI').AsFloat := QOedetPESO_NETOI.AsFloat;
        vQ.ParamByName('IMPCONSUMO').AsFloat := QOedetIMPCONSUMO.AsFloat;
        vQ.ParamByName('PRECIOIVA').AsFloat := QOedetPRECIOIVA.AsFloat;
        vQ.ParamByName('NUMERO_PEDIDO').AsInteger :=
          QOedetNUMERO_PEDIDO.AsInteger;
        vQ.ParamByName('DCTADICIONAL').AsFloat := QOedetDCTADICIONAL.AsFloat;
        vQ.ParamByName('DCTFIJO').AsFloat := QOedetDCTFIJO.AsFloat;
        vQ.ParamByName('FACTOR').AsFloat := QOedetFACTOR.AsFloat;
        vQ.ParamByName('DCTPORVALOR').AsFloat := QOedetDCTPORVALOR.AsFloat;
        vQ.ParamByName('DCTO_AD1').AsFloat := QOedetDCTO_AD1.AsFloat;
        vQ.ParamByName('DCTO_AD2').AsFloat := QOedetDCTO_AD2.AsFloat;
        vQ.ParamByName('COSTO_AJUSTE').AsFloat := QOedetCOSTO_AJUSTE.AsFloat;
        vQ.ParamByName('VLR_DCTFIJO').AsFloat := QOedetVLR_DCTFIJO.AsFloat;
        vQ.ParamByName('VLR_DCT').AsFloat := QOedetVLR_DCT.AsFloat;
        vQ.ParamByName('VLR_DCTOAD1').AsFloat := QOedetVLR_DCTOAD1.AsFloat;
        vQ.ParamByName('VLR_DCTOAD2').AsFloat := QOedetVLR_DCTOAD2.AsFloat;
        vQ.ParamByName('VLR_DCTOADICIONAL').AsFloat :=
          QOedetVLR_DCTOADICIONAL.AsFloat;
        vQ.ParamByName('COD_CENTRO').AsInteger := QOedetCOD_CENTRO.AsInteger;
        vQ.ParamByName('DIAS_ITEM').AsInteger := QOedetDIAS_ITEM.AsInteger;
        vQ.ParamByName('KILOMETRAJES').AsInteger :=
          QOedetKILOMETRAJES.AsInteger;
        vQ.ParamByName('PORC_COMI').AsFloat := QOedetPORC_COMI.AsFloat;
        vQ.ParamByName('MARVAL').AsFloat := QOedetMARVAL.AsFloat;
        vQ.ParamByName('MARPOR').AsFloat := QOedetMARPOR.AsFloat;
        vQ.ParamByName('TOTALDOL').AsFloat := QOedetTOTALDOL.AsFloat;
        vQ.ParamByName('PRECIODOL').AsFloat := QOedetPRECIODOL.AsFloat;
        vQ.ParamByName('TIPO_FACTOR').AsString := QOedetTIPO_FACTOR.AsString;
        vQ.ParamByName('DOBLE_UNIDAD').AsString := QOedetDOBLE_UNIDAD.AsString;
        vQ.ParamByName('USAR_DESVIACION').AsString :=
          QOedetUSAR_DESVIACION.AsString;
        vQ.ParamByName('FALLO').AsString := QOedetFALLO.AsString;
        vQ.ParamByName('TIPO_PEDIDO').AsString := QOedetTIPO_PEDIDO.AsString;
        vQ.ParamByName('SERIALES').AsString := QOedetSERIALES.AsString;
        vQ.ParamByName('NOTES').AsString := QOedetNOTES.AsString;
        vQ.ParamByName('MANDANTE').AsString := QOedetMANDANTE.AsString;
        vQ.ParamByName('PROYECTO').AsString := QOedetPROYECTO.AsString;
        vQ.ParamByName('COD_UNIDAD_VENTA').AsString :=
          QOedetCOD_UNIDAD_VENTA.AsString;
        vQ.ParamByName('KITNO').AsString := QOedetKITNO.AsString;
        vQ.ParamByName('KITDESCRIPCION').AsString :=
          QOedetKITDESCRIPCION.AsString;
        vQ.ParamByName('COLOR').AsString := QOedetCOLOR.AsString;
        vQ.ParamByName('OCNUMERO').AsString := QOedetOCNUMERO.AsString;
        vQ.ParamByName('DESCRIP_CENTRO').AsString :=
          QOedetDESCRIP_CENTRO.AsString;
        vQ.ParamByName('NOTES1').AsString := QOedetNOTES1.AsString;
        vQ.ParamByName('IDN_LOC').AsString := QOedetIDN_LOC.AsString;
        vQ.ParamByName('ACTIVIDAD').AsString := QOedetACTIVIDAD.AsString;
        vQ.ParamByName('DPTO').AsInteger := QOedetDPTO.AsInteger;
        vQ.ParamByName('CCOST').AsInteger := QOedetCCOST.AsInteger;
        vQ.ParamByName('RTFTIP').AsString := QOedetRTFTIP.AsString;
        vQ.ParamByName('NUMUSU').AsString := QOedetNUMUSU.AsString;
        vQ.ParamByName('ITEM2').AsString := QOedetITEM2.AsString;
        vQ.ParamByName('IDN_PAC').AsString := QOedetIDN_PAC.AsString;
        vQ.ParamByName('COD_TALLA').AsString := QOedetCOD_TALLA.AsString;
        vQ.ParamByName('COD_COLOR').AsString := QOedetCOD_COLOR.AsString;
        vQ.ParamByName('RTFITEM').AsFloat := QOedetRTFITEM.AsFloat;
        vQ.ParamByName('RTFBASEMIN').AsFloat := QOedetRTFBASEMIN.AsFloat;
        vQ.ParamByName('RTFVAL').AsFloat := QOedetRTFVAL.AsFloat;
        vQ.ParamByName('NUMITEM').AsInteger := QOedetNUMITEM.AsInteger;
        vQ.ParamByName('UTIL1').AsFloat := QOedetUTIL1.AsFloat;
        vQ.ParamByName('UTIL2').AsFloat := QOedetUTIL2.AsFloat;
        vQ.ParamByName('IMPAMOR').AsFloat := QOedetIMPAMOR.AsFloat;
        vQ.ParamByName('POSICION').AsInteger := QOedetPOSICION.AsInteger;
        vQ.Close;
        vQ.ExecSQL;
        QOedet.Next;
      END;

      QPagos.Close;
      QPagos.ParamByName('TIPO').AsString := QOeTIPO.AsString;
      QPagos.ParamByName('NUMBER').AsInteger := QOeNUMBER.AsInteger;
      QPagos.Open;
      QPagos.First;

      while not QPagos.Eof do
      Begin
        vQ.SQL.Clear;
        vQ.SQL.Add
          (' INSERT INTO PAGOS(EMPRESA,SUCURSAL,NUMERO,TIPO,NUM_CUOTA,USUARIO,ACCT,'
          + ' CONCEPTO,DESCRIPCION,PORC,DIAS,FECHA,NUM_DOC,COD_BANCO,PLAZA,VLR_PAGO,'
          + ' CONTA,TIPO_REF,REFERENCIA,ID_N,NROCRUCE,TIPOCRUCE,CUOTACRUCE,DPTO,CC,'
          + ' VALRECIB,CONTEO)VALUES(' +
          ' :EMPRESA,:SUCURSAL,:NUMERO,:TIPO,:NUM_CUOTA,:USUARIO,:ACCT,' +
          ' :CONCEPTO,:DESCRIPCION,:PORC,:DIAS,:FECHA,:NUM_DOC,:COD_BANCO,:PLAZA,:VLR_PAGO,'
          + ' :CONTA,:TIPO_REF,:REFERENCIA,:ID_N,:NROCRUCE,:TIPOCRUCE,:CUOTACRUCE,:DPTO,:CC,'
          + ' :VALRECIB,:CONTEO)');

        vQ.ParamByName('EMPRESA').AsInteger := QPagosEMPRESA.AsInteger;
        vQ.ParamByName('SUCURSAL').AsInteger := QPagosSUCURSAL.AsInteger;
        vQ.ParamByName('NUMERO').AsInteger := QPagosNUMERO.AsInteger;
        vQ.ParamByName('NUM_CUOTA').AsInteger := QPagosNUM_CUOTA.AsInteger;
        vQ.ParamByName('CONCEPTO').AsInteger := QPagosCONCEPTO.AsInteger;
        vQ.ParamByName('DIAS').AsInteger := QPagosDIAS.AsInteger;
        vQ.ParamByName('COD_BANCO').AsInteger := QPagosCOD_BANCO.AsInteger;
        vQ.ParamByName('REFERENCIA').AsInteger := QPagosREFERENCIA.AsInteger;
        vQ.ParamByName('NROCRUCE').AsInteger := QPagosNROCRUCE.AsInteger;
        vQ.ParamByName('CUOTACRUCE').AsInteger := QPagosCUOTACRUCE.AsInteger;
        vQ.ParamByName('DPTO').AsInteger := QPagosDPTO.AsInteger;
        vQ.ParamByName('CC').AsInteger := QPagosCC.AsInteger;
        vQ.ParamByName('CONTEO').AsInteger := QPagosCONTEO.AsInteger;
        vQ.ParamByName('TIPO').AsString := QPagosTIPO.AsString;
        vQ.ParamByName('USUARIO').AsString := QPagosUSUARIO.AsString;
        vQ.ParamByName('DESCRIPCION').AsString := QPagosDESCRIPCION.AsString;
        vQ.ParamByName('FECHA').AsDateTime := QPagosFECHA.AsDateTime;
        vQ.ParamByName('NUM_DOC').AsString := QPagosNUM_DOC.AsString;
        vQ.ParamByName('PLAZA').AsString := QPagosPLAZA.AsString;
        vQ.ParamByName('CONTA').AsString := QPagosCONTA.AsString;
        vQ.ParamByName('TIPO_REF').AsString := QPagosTIPO_REF.AsString;
        vQ.ParamByName('ID_N').AsString := QPagosID_N.AsString;
        vQ.ParamByName('TIPOCRUCE').AsString := QPagosTIPOCRUCE.AsString;
        vQ.ParamByName('ACCT').AsFloat := QPagosACCT.AsFloat;
        vQ.ParamByName('PORC').AsFloat := QPagosPORC.AsFloat;
        vQ.ParamByName('VLR_PAGO').AsFloat := QPagosVLR_PAGO.AsFloat;
        vQ.ParamByName('VALRECIB').AsFloat := QPagosVALRECIB.AsFloat;

        vQ.ExecSQL;
        QPagos.Next;
      END;

      QPedfact.Close;
      QPedfact.ParamByName('TIPO').AsString := QOeTIPO.AsString;
      QPedfact.ParamByName('NUMBER').AsInteger := QOeNUMBER.AsInteger;
      QPedfact.Open;
      QPedfact.First;

      while not QPedfact.Eof do
      Begin
        vQ.SQL.Clear;
        vQ.SQL.Add
          (' INSERT INTO PEDFACT(EMPRESA,SUCURSAL,USUARIO,NUMERO_FACTURA,NUMERO_PEDIDO,'
          + 'TIPO,TIPO_PEDIDO)VALUES(' +
          ' :EMPRESA,:SUCURSAL,:USUARIO,:NUMERO_FACTURA,:NUMERO_PEDIDO,:TIPO,:TIPO_PEDIDO)');

        vQ.ParamByName('EMPRESA').AsInteger := QPedfactEMPRESA.AsInteger;
        vQ.ParamByName('SUCURSAL').AsInteger := QPedfactSUCURSAL.AsInteger;
        vQ.ParamByName('USUARIO').AsString := QPedfactUSUARIO.AsString;
        vQ.ParamByName('NUMERO_FACTURA').AsInteger :=
          QPedfactNUMERO_FACTURA.AsInteger;
        vQ.ParamByName('NUMERO_PEDIDO').AsInteger :=
          QPedfactNUMERO_PEDIDO.AsInteger;
        vQ.ParamByName('TIPO').AsString := QPedfactTIPO.AsString;
        vQ.ParamByName('TIPO_PEDIDO').AsString := QPedfactTIPO_PEDIDO.AsString;

        vQ.ExecSQL;
        QPedfact.Next;
      END;

    finally
      vQ.DisposeOf;
    end;
    PasarItemact(QOeTIPO.AsString, QOeNUMBER.AsInteger);
    PasarGl(QOeTIPO.AsString, QOeNUMBER.AsInteger);
    PasarCarpro(QOeTIPO.AsString, QOeNUMBER.AsInteger);
    Numero := Numero + 1;
    ProgressBar1.Value := ProgressBar1.Value + 1;
    Application.ProcessMessages;
    QOe.Next;
  End;

  Memo1.Lines.Add('->Se Actualizan Facturas:');
  Memo1.Lines.Add('  -Tabla Oe');
  Memo1.Lines.Add('  -Tabla Oedet');
  Memo1.Lines.Add('  -Tabla Pagos');
  Memo1.Lines.Add('  -Tabla Itemact');
  Memo1.Lines.Add('  -Tabla Gl');
  Memo1.Lines.Add('  -Tabla Carpro');
  Memo1.Lines.Add('  -Tabla PedFact');
  Memo1.Lines.Add('  -Cantidad de Facturas: ' + IntToStr(Numero));
end;

procedure TMain.PasarGl(Tipo: String; Number: Integer);
var
  vQ: TFDQuery;
begin

  QGl.Close;
  QGl.ParamByName('TIPO').AsString := Tipo;
  QGl.ParamByName('NUMBER').AsInteger := Number;
  QGl.Open;
  QGl.First;

  while not QGl.Eof do
  Begin
    vQ := TFDQuery.Create(nil);
    try
      vQ.Connection := Main.ConDestino;
      vQ.SQL.Add
        (' INSERT INTO GL (CONTEO,ID_N,ACCT,E,S,TIPO,BATCH,FECHA,DUEDATE,INVC,'
        + ' DEPTO,CCOST,ACTIVIDAD,PERIOD,DESCRIPCION,CLOSING,CONCIL,CRUCE,USERNAME,'
        + ' DESTINO,PROYECTO,BASE,CREDIT,DEBIT,CUOTA,PRORRATEADO,ESTADO,MAYOR_VALOR,'
        + ' COD_FLUJOEFE,CONSEC_CARPRODE)VALUES (' +
        ' :CONTEO,:ID_N,:ACCT,:E,:S,:TIPO,:BATCH,:FECHA,:DUEDATE,:INVC, ' +
        ' :DEPTO,:CCOST,:ACTIVIDAD,:PERIOD,:DESCRIPCION,:CLOSING,:CONCIL,:CRUCE,:USERNAME,'
        + ' :DESTINO,:PROYECTO,:BASE,:CREDIT,:DEBIT,:CUOTA,:PRORRATEADO,:ESTADO,:MAYOR_VALOR,'
        + ' :COD_FLUJOEFE,:CONSEC_CARPRODE)');

      vQ.ParamByName('CONTEO').AsInteger := QGlCONTEO.AsInteger;
      vQ.ParamByName('E').AsInteger := QGlE.AsInteger;
      vQ.ParamByName('S').AsInteger := QGlS.AsInteger;
      vQ.ParamByName('BATCH').AsInteger := QGlBATCH.AsInteger;
      vQ.ParamByName('DEPTO').AsInteger := QGlDEPTO.AsInteger;
      vQ.ParamByName('CCOST').AsInteger := QGlCCOST.AsInteger;
      vQ.ParamByName('DESTINO').AsInteger := QGlDESTINO.AsInteger;
      vQ.ParamByName('CUOTA').AsInteger := QGlCUOTA.AsInteger;
      vQ.ParamByName('COD_FLUJOEFE').AsInteger := QGlCOD_FLUJOEFE.AsInteger;
      vQ.ParamByName('CONSEC_CARPRODE').AsInteger :=
        QGlCONSEC_CARPRODE.AsInteger;

      vQ.ParamByName('ID_N').AsString := QGlID_N.AsString;
      vQ.ParamByName('TIPO').AsString := QGlTIPO.AsString;
      vQ.ParamByName('INVC').AsString := QGlINVC.AsString;
      vQ.ParamByName('ACTIVIDAD').AsString := QGlACTIVIDAD.AsString;
      vQ.ParamByName('PERIOD').AsString := QGlPERIOD.AsString;
      vQ.ParamByName('DESCRIPCION').AsString := QGlDESCRIPCION.AsString;
      vQ.ParamByName('CLOSING').AsString := QGlCLOSING.AsString;
      vQ.ParamByName('CONCIL').AsString := QGlCONCIL.AsString;
      vQ.ParamByName('CRUCE').AsString := QGlCRUCE.AsString;
      vQ.ParamByName('USERNAME').AsString := QGlUSERNAME.AsString;
      vQ.ParamByName('PROYECTO').AsString := QGlPROYECTO.AsString;
      vQ.ParamByName('PRORRATEADO').AsString := QGlPRORRATEADO.AsString;
      vQ.ParamByName('ESTADO').AsString := QGlESTADO.AsString;
      vQ.ParamByName('ACCT').AsFloat := QGlACCT.AsFloat;
      vQ.ParamByName('BASE').AsFloat := QGlBASE.AsFloat;
      vQ.ParamByName('CREDIT').AsFloat := QGlCREDIT.AsFloat;
      vQ.ParamByName('DEBIT').AsFloat := QGlDEBIT.AsFloat;
      vQ.ParamByName('MAYOR_VALOR').AsFloat := QGlMAYOR_VALOR.AsFloat;
      vQ.ParamByName('FECHA').AsDateTime := QGlFECHA.AsDateTime;
      vQ.ParamByName('DUEDATE').AsDateTime := QGlDUEDATE.AsDateTime;
      vQ.Close;
      vQ.ExecSQL;

    finally
      vQ.DisposeOf;
    end;

    Application.ProcessMessages;
    QGl.Next;
  End;
end;

procedure TMain.PasarItemact(Tipo: String; Number: Integer);
var
  vQ: TFDQuery;
begin

  QItemact.Close;
  QItemact.ParamByName('TIPO').AsString := Tipo;
  QItemact.ParamByName('NUMBER').AsInteger := Number;
  QItemact.Open;
  QItemact.First;

  while not QItemact.Eof do
  Begin
    vQ := TFDQuery.Create(nil);
    try
      vQ.Connection := Main.ConDestino;
      vQ.SQL.Add
        (' INSERT INTO ITEMACT (CONTEO,LOCATION,ITEM,ID_N,TIPO,BATCH,FECHA,QTY,'
        + ' VALUNIT,VALCDCT,VALCFLE,QTYB,E,S,LOTE,TOTPARCIAL,PRIORIDAD,COLOR,AJUSTE,'
        + ' COSTPAJUSTADO,TOTALAJUSTADO,COSTOP,SALDOU,SALDOPESOS,NUMITEM,COD_TALLA,'
        + ' COD_COLOR,QTYREM,QTYPED,BO,RESERVA,TIPOORIGEN,NUMBERORIGEN,NOSERIE,'
        + ' LOTEFVENCE,NOSERIE2,CRUNUM,CRUTIP,CRUREM,REMTIP)VALUES (' +
        ' :CONTEO,:LOCATION,:ITEM,:ID_N,:TIPO,:BATCH,:FECHA,:QTY,' +
        ' :VALUNIT,:VALCDCT,:VALCFLE,:QTYB,:E,:S,:LOTE,:TOTPARCIAL,:PRIORIDAD,:COLOR,:AJUSTE,'
        + ' :COSTPAJUSTADO,:TOTALAJUSTADO,:COSTOP,:SALDOU,:SALDOPESOS,:NUMITEM,:COD_TALLA,'
        + ' :COD_COLOR,:QTYREM,:QTYPED,:BO,:RESERVA,:TIPOORIGEN,:NUMBERORIGEN,:NOSERIE,'
        + ' :LOTEFVENCE,:NOSERIE2,:CRUNUM,:CRUTIP,:CRUREM,:REMTIP)');

      vQ.ParamByName('CONTEO').AsInteger := QItemactCONTEO.AsInteger;
      vQ.ParamByName('BATCH').AsInteger := QItemactBATCH.AsInteger;
      vQ.ParamByName('E').AsInteger := QItemactE.AsInteger;
      vQ.ParamByName('S').AsInteger := QItemactS.AsInteger;
      vQ.ParamByName('PRIORIDAD').AsInteger := QItemactPRIORIDAD.AsInteger;
      vQ.ParamByName('NUMITEM').AsInteger := QItemactNUMITEM.AsInteger;
      vQ.ParamByName('NUMBERORIGEN').AsInteger :=
        QItemactNUMBERORIGEN.AsInteger;
      vQ.ParamByName('CRUNUM').AsInteger := QItemactCRUNUM.AsInteger;
      vQ.ParamByName('CRUREM').AsInteger := QItemactCRUREM.AsInteger;
      vQ.ParamByName('LOCATION').AsString := QItemactLOCATION.AsString;
      vQ.ParamByName('ITEM').AsString := QItemactITEM.AsString;
      vQ.ParamByName('ID_N').AsString := QItemactID_N.AsString;
      vQ.ParamByName('TIPO').AsString := QItemactTIPO.AsString;
      vQ.ParamByName('LOTE').AsString := QItemactLOTE.AsString;
      vQ.ParamByName('COLOR').AsString := QItemactCOLOR.AsString;
      vQ.ParamByName('COD_TALLA').AsString := QItemactCOD_TALLA.AsString;
      vQ.ParamByName('COD_COLOR').AsString := QItemactCOD_COLOR.AsString;
      vQ.ParamByName('TIPOORIGEN').AsString := QItemactTIPOORIGEN.AsString;
      vQ.ParamByName('NOSERIE').AsString := QItemactNOSERIE.AsString;
      vQ.ParamByName('NOSERIE2').AsString := QItemactNOSERIE2.AsString;
      vQ.ParamByName('CRUTIP').AsString := QItemactCRUTIP.AsString;
      vQ.ParamByName('REMTIP').AsString := QItemactREMTIP.AsString;
      vQ.ParamByName('QTY').AsFloat := QItemactQTY.AsFloat;
      vQ.ParamByName('VALUNIT').AsFloat := QItemactVALUNIT.AsFloat;
      vQ.ParamByName('VALCDCT').AsFloat := QItemactVALCDCT.AsFloat;
      vQ.ParamByName('VALCFLE').AsFloat := QItemactVALCFLE.AsFloat;
      vQ.ParamByName('QTYB').AsFloat := QItemactQTYB.AsFloat;
      vQ.ParamByName('TOTPARCIAL').AsFloat := QItemactTOTPARCIAL.AsFloat;
      vQ.ParamByName('AJUSTE').AsFloat := QItemactAJUSTE.AsFloat;
      vQ.ParamByName('COSTPAJUSTADO').AsFloat := QItemactCOSTPAJUSTADO.AsFloat;
      vQ.ParamByName('TOTALAJUSTADO').AsFloat := QItemactTOTALAJUSTADO.AsFloat;
      vQ.ParamByName('COSTOP').AsFloat := QItemactCOSTOP.AsFloat;
      vQ.ParamByName('SALDOU').AsFloat := QItemactSALDOU.AsFloat;
      vQ.ParamByName('SALDOPESOS').AsFloat := QItemactSALDOPESOS.AsFloat;
      vQ.ParamByName('QTYREM').AsFloat := QItemactQTYREM.AsFloat;
      vQ.ParamByName('QTYPED').AsFloat := QItemactQTYPED.AsFloat;
      vQ.ParamByName('BO').AsFloat := QItemactBO.AsFloat;
      vQ.ParamByName('RESERVA').AsFloat := QItemactRESERVA.AsFloat;
      vQ.ParamByName('FECHA').AsDateTime := QItemactFECHA.AsDateTime;
      vQ.ParamByName('LOTEFVENCE').AsDateTime := QItemactLOTEFVENCE.AsDateTime;
      vQ.Close;
      vQ.ExecSQL;

    finally
      vQ.DisposeOf;
    end;

    Application.ProcessMessages;
    QItemact.Next;
  End;
end;

procedure TMain.PasarOrdenesdeCompras;
var
  Tipos: string;
  Numero: Integer;
  vQ: TFDQuery;
begin
  Tipos := TraerTipos('''OC''');
  Numero := 0;
  QIpoce.Close;
  QIpoce.ParamByName('FI').AsDate := DateEdit1.Date;
  QIpoce.ParamByName('FF').AsDate := DateEdit2.Date;
  QIpoce.SQL.Add(' AND TIPO IN(' + Tipos + ')');
  if CheckDocxSuc.IsChecked = True then
  begin
    QIpoce.SQL.Add(' AND S= :SUC');
    QIpoce.ParamByName('SUC').AsInteger := StrToInt(Edit4.Text);
  end;

  QIpoce.Open;

  QIpoce.Last;
  ProgressBar1.Value := 0;
  ProgressBar1.Max := QIpoce.RecordCount;
  QIpoce.First;

  while not QIpoce.Eof do
  Begin
    vQ := TFDQuery.Create(nil);
    try
      EliminarOrdenDeCompra(QIpoceTIPO.AsString, QIpoceNUMBER.AsInteger);
      vQ.Connection := Main.ConDestino;
      vQ.SQL.Add
        (' INSERT INTO IPOCE (E,S,TIPO,NUMBER,ID_N,SUCCLIENTE,ACCT,FECHA,ESTADO,'
        + ' DUEDATE,ORIGEN,IMP_GENERADA,COMENTARIO,TOTAL,FECHA_PAGO,TOTALDCT,TOTALRETEN,'
        + ' VALORRTIVA,TOTALIVA,SUBTOTAL,TIPOEMP,CODMONEDA,TASACAMBIO,ID_N_SOLICITANTE,'
        + ' VALORRTICA,ID_USUARIO,FECHA_REQUISICION,RETECREE,CODCREE,TIPO_IMP,NRO_IMP)'
        + ' VALUES(:E,:S,:TIPO,:NUMBER,:ID_N,:SUCCLIENTE,:ACCT,:FECHA,:ESTADO,'
        + ' :DUEDATE,:ORIGEN,:IMP_GENERADA,:COMENTARIO,:TOTAL,:FECHA_PAGO,:TOTALDCT,:TOTALRETEN,'
        + ' :VALORRTIVA,:TOTALIVA,:SUBTOTAL,:TIPOEMP,:CODMONEDA,:TASACAMBIO,:ID_N_SOLICITANTE,'
        + ' :VALORRTICA,:ID_USUARIO,:FECHA_REQUISICION,:RETECREE,:CODCREE,:TIPO_IMP,:NRO_IMP)');
      vQ.Close;

      vQ.ParamByName('E').AsInteger := QIpoceE.AsInteger;
      vQ.ParamByName('S').AsInteger := QIpoceS.AsInteger;
      vQ.ParamByName('TIPO').AsString := QIpoceTIPO.AsString;
      vQ.ParamByName('NUMBER').AsInteger := QIpoceNUMBER.AsInteger;
      vQ.ParamByName('ID_N').AsString := QIpoceID_N.AsString;
      vQ.ParamByName('SUCCLIENTE').AsInteger := QIpoceSUCCLIENTE.AsInteger;
      vQ.ParamByName('ACCT').AsFloat := QIpoceACCT.AsFloat;
      vQ.ParamByName('FECHA').AsDateTime := QIpoceFECHA.AsDateTime;
      vQ.ParamByName('ESTADO').AsString := QIpoceESTADO.AsString;
      vQ.ParamByName('DUEDATE').AsDateTime := QIpoceDUEDATE.AsDateTime;
      vQ.ParamByName('ORIGEN').AsString := QIpoceORIGEN.AsString;
      vQ.ParamByName('IMP_GENERADA').AsString := QIpoceIMP_GENERADA.AsString;
      vQ.ParamByName('COMENTARIO').AsString := QIpoceCOMENTARIO.AsString;
      vQ.ParamByName('TOTAL').AsFloat := QIpoceTOTAL.AsFloat;
      vQ.ParamByName('FECHA_PAGO').AsDateTime := QIpoceFECHA_PAGO.AsDateTime;
      vQ.ParamByName('TOTALDCT').AsFloat := QIpoceTOTALDCT.AsFloat;
      vQ.ParamByName('TOTALRETEN').AsFloat := QIpoceTOTALRETEN.AsFloat;
      vQ.ParamByName('VALORRTIVA').AsFloat := QIpoceVALORRTIVA.AsFloat;
      vQ.ParamByName('TOTALIVA').AsFloat := QIpoceTOTALIVA.AsFloat;
      vQ.ParamByName('SUBTOTAL').AsFloat := QIpoceSUBTOTAL.AsFloat;
      vQ.ParamByName('TIPOEMP').AsInteger := QIpoceTIPOEMP.AsInteger;
      vQ.ParamByName('CODMONEDA').AsString := QIpoceCODMONEDA.AsString;
      vQ.ParamByName('TASACAMBIO').AsFloat := QIpoceTASACAMBIO.AsFloat;
      vQ.ParamByName('ID_N_SOLICITANTE').AsString :=
        QIpoceID_N_SOLICITANTE.AsString;
      vQ.ParamByName('VALORRTICA').AsFloat := QIpoceVALORRTICA.AsFloat;
      vQ.ParamByName('ID_USUARIO').AsString := QIpoceID_USUARIO.AsString;
      vQ.ParamByName('FECHA_REQUISICION').AsDateTime :=
        QIpoceFECHA_REQUISICION.AsDateTime;
      vQ.ParamByName('RETECREE').AsFloat := QIpoceRETECREE.AsFloat;
      vQ.ParamByName('CODCREE').AsString := QIpoceCODCREE.AsString;
      vQ.ParamByName('TIPO_IMP').AsString := QIpoceTIPO_IMP.AsString;
      vQ.ParamByName('NRO_IMP').AsInteger := QIpoceNRO_IMP.AsInteger;

      vQ.ExecSQL;

      QIpocd.Close;
      QIpocd.ParamByName('TIPO').AsString := QIpoceTIPO.AsString;
      QIpocd.ParamByName('NUMBER').AsInteger := QIpoceNUMBER.AsInteger;

      QIpocd.Open;
      QIpocd.First;

      while not QIpocd.Eof do
      Begin
        vQ.SQL.Clear;
        vQ.SQL.Add
          (' INSERT INTO IPOCD(E,S,TIPO,NUMBER,CONTEO,ITEM,LOCATION,QTY,RECIBIDO,'
          + ' CC,PB,QTYB,COST,PORC_IVA,FALTANTE,PRICEPROV,DCTPROV,COSTOEXT,TIPO_IMPORT,'
          + ' NUMERO_IMPORT,CONTEO_IMPORT,E_IMPORT,S_IMPORT,CADENA_ADICIONAL,NUM_SUBORDEN,'
          + ' ESTADO,TIPO_SUBORDEN,DEPTO,CCOSTO,ACTIVIDAD,PROY,TIPO_PEDIDO,NUMERO_PEDIDO,'
          + ' CONTEO_PEDIDO,E_PEDIDO,S_PEDIDO,COD_TALLA,COD_COLOR,FACTOR,CODBARRASCURVA)'
          + ' VALUES(:E,:S,:TIPO,:NUMBER,:CONTEO,:ITEM,:LOCATION,:QTY,:RECIBIDO,'
          + ' :CC,:PB,:QTYB,:COST,:PORC_IVA,:FALTANTE,:PRICEPROV,:DCTPROV,:COSTOEXT,:TIPO_IMPORT,'
          + ' :NUMERO_IMPORT,:CONTEO_IMPORT,:E_IMPORT,:S_IMPORT,:CADENA_ADICIONAL,:NUM_SUBORDEN,'
          + ' :ESTADO,:TIPO_SUBORDEN,:DEPTO,:CCOSTO,:ACTIVIDAD,:PROY,:TIPO_PEDIDO,:NUMERO_PEDIDO,'
          + ' :CONTEO_PEDIDO,:E_PEDIDO,:S_PEDIDO,:COD_TALLA,:COD_COLOR,:FACTOR,:CODBARRASCURVA)');

        vQ.ParamByName('E').AsInteger := QIpocdE.AsInteger;
        vQ.ParamByName('S').AsInteger := QIpocdS.AsInteger;
        vQ.ParamByName('TIPO').AsString := QIpocdTIPO.AsString;
        vQ.ParamByName('NUMBER').AsInteger := QIpocdNUMBER.AsInteger;
        vQ.ParamByName('CONTEO').AsInteger := QIpocdCONTEO.AsInteger;
        vQ.ParamByName('ITEM').AsString := QIpocdITEM.AsString;
        vQ.ParamByName('LOCATION').AsString := QIpocdLOCATION.AsString;
        vQ.ParamByName('QTY').AsFloat := QIpocdQTY.AsFloat;
        vQ.ParamByName('RECIBIDO').AsFloat := QIpocdRECIBIDO.AsFloat;
        vQ.ParamByName('CC').AsFloat := QIpocdCC.AsFloat;
        vQ.ParamByName('PB').AsFloat := QIpocdPB.AsFloat;
        vQ.ParamByName('QTYB').AsFloat := QIpocdQTYB.AsFloat;
        vQ.ParamByName('COST').AsFloat := QIpocdCOST.AsFloat;
        vQ.ParamByName('PORC_IVA').AsFloat := QIpocdPORC_IVA.AsFloat;
        vQ.ParamByName('FALTANTE').AsFloat := QIpocdFALTANTE.AsFloat;
        vQ.ParamByName('PRICEPROV').AsFloat := QIpocdPRICEPROV.AsFloat;
        vQ.ParamByName('DCTPROV').AsFloat := QIpocdDCTPROV.AsFloat;
        vQ.ParamByName('COSTOEXT').AsFloat := QIpocdCOSTOEXT.AsFloat;
        vQ.ParamByName('TIPO_IMPORT').AsString := QIpocdTIPO_IMPORT.AsString;
        vQ.ParamByName('NUMERO_IMPORT').AsInteger :=
          QIpocdNUMERO_IMPORT.AsInteger;
        vQ.ParamByName('CONTEO_IMPORT').AsInteger :=
          QIpocdCONTEO_IMPORT.AsInteger;
        vQ.ParamByName('E_IMPORT').AsInteger := QIpocdE_IMPORT.AsInteger;
        vQ.ParamByName('S_IMPORT').AsInteger := QIpocdS_IMPORT.AsInteger;
        vQ.ParamByName('CADENA_ADICIONAL').AsString :=
          QIpocdCADENA_ADICIONAL.AsString;
        vQ.ParamByName('NUM_SUBORDEN').AsInteger :=
          QIpocdNUM_SUBORDEN.AsInteger;
        vQ.ParamByName('ESTADO').AsInteger := QIpocdESTADO.AsInteger;
        vQ.ParamByName('TIPO_SUBORDEN').AsString :=
          QIpocdTIPO_SUBORDEN.AsString;
        vQ.ParamByName('DEPTO').AsInteger := QIpocdDEPTO.AsInteger;
        vQ.ParamByName('CCOSTO').AsInteger := QIpocdCCOSTO.AsInteger;
        vQ.ParamByName('ACTIVIDAD').AsString := QIpocdACTIVIDAD.AsString;
        vQ.ParamByName('PROY').AsString := QIpocdPROY.AsString;
        vQ.ParamByName('TIPO_PEDIDO').AsString := QIpocdTIPO_PEDIDO.AsString;
        vQ.ParamByName('NUMERO_PEDIDO').AsInteger :=
          QIpocdNUMERO_PEDIDO.AsInteger;
        vQ.ParamByName('CONTEO_PEDIDO').AsInteger :=
          QIpocdCONTEO_PEDIDO.AsInteger;
        vQ.ParamByName('E_PEDIDO').AsInteger := QIpocdE_PEDIDO.AsInteger;
        vQ.ParamByName('S_PEDIDO').AsInteger := QIpocdS_PEDIDO.AsInteger;
        vQ.ParamByName('COD_TALLA').AsString := QIpocdCOD_TALLA.AsString;
        vQ.ParamByName('COD_COLOR').AsString := QIpocdCOD_COLOR.AsString;
        vQ.ParamByName('FACTOR').AsFloat := QIpocdFACTOR.AsFloat;
        vQ.ParamByName('CODBARRASCURVA').AsString :=
          QIpocdCODBARRASCURVA.AsString;
        vQ.Close;
        vQ.ExecSQL;
        QIpocd.Next;
      END;

    finally
      vQ.DisposeOf;
    end;

    Numero := Numero + 1;
    ProgressBar1.Value := ProgressBar1.Value + 1;
    Application.ProcessMessages;
    QIpoce.Next;
  End;

  Memo1.Lines.Add('->Se Actualizan Ordenes de Compra:');
  Memo1.Lines.Add('  -Tabla Ipoce');
  Memo1.Lines.Add('  -Tabla Ipocd');
  Memo1.Lines.Add('  -Cantidad de Ordenes de Compra: ' + IntToStr(Numero));
end;

procedure TMain.PasarPedidos;
var
  Tipos: string;
  Numero: Integer;
  vQ: TFDQuery;
begin
  Tipos := TraerTipos('''PE''');
  Numero := 0;
  QPedidoe.Close;
  QPedidoe.ParamByName('FI').AsDate := DateEdit1.Date;
  QPedidoe.ParamByName('FF').AsDate := DateEdit2.Date;
  QPedidoe.SQL.Add(' AND TIPO IN(' + Tipos + ')');
  if CheckDocxSuc.IsChecked = True then
  begin
    QPedidoe.SQL.Add(' AND ID_SUCURSAL= :SUC');
    QPedidoe.ParamByName('SUC').AsInteger := StrToInt(Edit4.Text);
  end;

  QPedidoe.Open;

  QPedidoe.Last;
  ProgressBar1.Value := 0;
  ProgressBar1.Max := QPedidoe.RecordCount;
  QPedidoe.First;

  while not QPedidoe.Eof do
  Begin
    vQ := TFDQuery.Create(nil);
    try
      EliminarPedidos(QPedidoeTIPO.AsString, QPedidoeNUMBER.AsInteger);
      vQ.Connection := Main.ConDestino;
      vQ.SQL.Add
        (' INSERT INTO PEDIDOE (ID_EMPRESA,ID_SUCURSAL,TIPO,NUMBER,TIPO_PEDIDO,ID_USUARIO,ID_N,SUCCLIENTE,'
        + ' ENTITY,SALESMAN,NUMBERFROM,NUMBERTO,FECHA,DUEDATE,SUBTOTAL,COST,SALESTAX,'
        + ' FEDTAX,DISC1,DISC2,DISC3,SHIPTO1,SHIPTO2,SHIPTO3,SHIPTO4,SHIPTO5,SHIPTO6,'
        + ' ONACCOUNT,PRINTED,POSTED,CLOSED,PONUMBER,TERMS,JOBNO,DES_GLO,POR_DES,COD_ORD,'
        + ' RPT_NUM,DESTOTAL,TOTAL,TOTALPEDIDO,ESTADO,AUTORIZADO,APROB_BANCO,CONCEPTO,'
        + ' DESCRIPCION,TIENE_GAR,OCNUMERO,CODACTIVIDAD,CODPROYECTO,FECHA_ENTREGA,'
        + ' ID_USUARIO_FACTURACION,CAUSALES,REMISIONADO,HORA,FECHA_SISTEMA,DESCRIPCION_RECETA,'
        + ' COD_PLACA,COMMENTS,VALOR_ABONO,ITEM,NOSERIE,KMT,PROPIETARIO,COD_NIVEL,BONOTOTAL)'
        + ' VALUES(:ID_EMPRESA,:ID_SUCURSAL,:TIPO,:NUMBER,:TIPO_PEDIDO,:ID_USUARIO,:ID_N,:SUCCLIENTE,'
        + ' :ENTITY,:SALESMAN,:NUMBERFROM,:NUMBERTO,:FECHA,:DUEDATE,:SUBTOTAL,:COST,:SALESTAX,'
        + ' :FEDTAX,:DISC1,:DISC2,:DISC3,:SHIPTO1,:SHIPTO2,:SHIPTO3,:SHIPTO4,:SHIPTO5,:SHIPTO6,'
        + ' :ONACCOUNT,:PRINTED,:POSTED,:CLOSED,:PONUMBER,:TERMS,:JOBNO,:DES_GLO,:POR_DES,:COD_ORD,'
        + ' :RPT_NUM,:DESTOTAL,:TOTAL,:TOTALPEDIDO,:ESTADO,:AUTORIZADO,:APROB_BANCO,:CONCEPTO,'
        + ' :DESCRIPCION,:TIENE_GAR,:OCNUMERO,:CODACTIVIDAD,:CODPROYECTO,:FECHA_ENTREGA,'
        + ' :ID_USUARIO_FACTURACION,:CAUSALES,:REMISIONADO,:HORA,:FECHA_SISTEMA,:DESCRIPCION_RECETA,'
        + ' :COD_PLACA,:COMMENTS,:VALOR_ABONO,null,null,:KMT,null,:COD_NIVEL,:BONOTOTAL)');
      vQ.Close;

      vQ.ParamByName('ID_EMPRESA').AsInteger := QPedidoeID_EMPRESA.AsInteger;
      vQ.ParamByName('ID_SUCURSAL').AsInteger := QPedidoeID_SUCURSAL.AsInteger;
      vQ.ParamByName('TIPO').AsString := QPedidoeTIPO.AsString;
      vQ.ParamByName('NUMBER').AsInteger := QPedidoeNUMBER.AsInteger;
      vQ.ParamByName('TIPO_PEDIDO').AsString := QPedidoeTIPO_PEDIDO.AsString;
      vQ.ParamByName('ID_USUARIO').AsString := QPedidoeID_USUARIO.AsString;
      vQ.ParamByName('ID_N').AsString := QPedidoeID_N.AsString;
      vQ.ParamByName('SUCCLIENTE').AsInteger := QPedidoeSUCCLIENTE.AsInteger;
      vQ.ParamByName('ENTITY').AsString := QPedidoeENTITY.AsString;
      vQ.ParamByName('SALESMAN').AsInteger := QPedidoeSALESMAN.AsInteger;
      vQ.ParamByName('NUMBERFROM').AsString := QPedidoeNUMBERFROM.AsString;
      vQ.ParamByName('NUMBERTO').AsString := QPedidoeNUMBERTO.AsString;
      vQ.ParamByName('FECHA').AsDateTime := QPedidoeFECHA.AsDateTime;
      vQ.ParamByName('DUEDATE').AsDateTime := QPedidoeDUEDATE.AsDateTime;
      vQ.ParamByName('SUBTOTAL').AsFloat := QPedidoeSUBTOTAL.AsFloat;
      vQ.ParamByName('COST').AsFloat := QPedidoeCOST.AsFloat;
      vQ.ParamByName('SALESTAX').AsFloat := QPedidoeSALESTAX.AsFloat;
      vQ.ParamByName('FEDTAX').AsFloat := QPedidoeFEDTAX.AsFloat;
      vQ.ParamByName('DISC1').AsFloat := QPedidoeDISC1.AsFloat;
      vQ.ParamByName('DISC2').AsFloat := QPedidoeDISC2.AsFloat;
      vQ.ParamByName('DISC3').AsFloat := QPedidoeDISC3.AsFloat;
      vQ.ParamByName('SHIPTO1').AsString := QPedidoeSHIPTO1.AsString;
      vQ.ParamByName('SHIPTO2').AsString := QPedidoeSHIPTO2.AsString;
      vQ.ParamByName('SHIPTO3').AsString := QPedidoeSHIPTO3.AsString;
      vQ.ParamByName('SHIPTO4').AsString := QPedidoeSHIPTO4.AsString;
      vQ.ParamByName('SHIPTO5').AsString := QPedidoeSHIPTO5.AsString;
      vQ.ParamByName('SHIPTO6').AsString := QPedidoeSHIPTO6.AsString;
      vQ.ParamByName('ONACCOUNT').AsString := QPedidoeONACCOUNT.AsString;
      vQ.ParamByName('PRINTED').AsString := QPedidoePRINTED.AsString;
      vQ.ParamByName('POSTED').AsString := QPedidoePOSTED.AsString;
      vQ.ParamByName('CLOSED').AsString := QPedidoeCLOSED.AsString;
      vQ.ParamByName('PONUMBER').AsString := QPedidoePONUMBER.AsString;
      vQ.ParamByName('TERMS').AsString := QPedidoeTERMS.AsString;
      vQ.ParamByName('JOBNO').AsString := QPedidoeJOBNO.AsString;
      vQ.ParamByName('DES_GLO').AsFloat := QPedidoeDES_GLO.AsFloat;
      vQ.ParamByName('POR_DES').AsFloat := QPedidoePOR_DES.AsFloat;
      vQ.ParamByName('COD_ORD').AsString := QPedidoeCOD_ORD.AsString;
      vQ.ParamByName('RPT_NUM').AsString := QPedidoeRPT_NUM.AsString;
      vQ.ParamByName('DESTOTAL').AsFloat := QPedidoeDESTOTAL.AsFloat;
      vQ.ParamByName('TOTAL').AsFloat := QPedidoeTOTAL.AsFloat;
      vQ.ParamByName('TOTALPEDIDO').AsFloat := QPedidoeTOTALPEDIDO.AsFloat;
      vQ.ParamByName('ESTADO').AsString := QPedidoeESTADO.AsString;
      vQ.ParamByName('AUTORIZADO').AsString := QPedidoeAUTORIZADO.AsString;
      vQ.ParamByName('APROB_BANCO').AsString := QPedidoeAPROB_BANCO.AsString;
      vQ.ParamByName('CONCEPTO').AsInteger := QPedidoeCONCEPTO.AsInteger;
      vQ.ParamByName('DESCRIPCION').AsString := QPedidoeDESCRIPCION.AsString;
      vQ.ParamByName('TIENE_GAR').AsString := QPedidoeTIENE_GAR.AsString;
      vQ.ParamByName('OCNUMERO').AsString := QPedidoeOCNUMERO.AsString;
      vQ.ParamByName('CODACTIVIDAD').AsString := QPedidoeCODACTIVIDAD.AsString;
      vQ.ParamByName('CODPROYECTO').AsString := QPedidoeCODPROYECTO.AsString;
      vQ.ParamByName('FECHA_ENTREGA').AsDateTime :=
        QPedidoeFECHA_ENTREGA.AsDateTime;
      vQ.ParamByName('ID_USUARIO_FACTURACION').AsString :=
        QPedidoeID_USUARIO_FACTURACION.AsString;
      vQ.ParamByName('CAUSALES').AsString := QPedidoeCAUSALES.AsString;
      vQ.ParamByName('REMISIONADO').AsString := QPedidoeREMISIONADO.AsString;
      vQ.ParamByName('HORA').AsString := QPedidoeHORA.AsString;
      vQ.ParamByName('FECHA_SISTEMA').AsDateTime :=
        QPedidoeFECHA_SISTEMA.AsDateTime;
      vQ.ParamByName('DESCRIPCION_RECETA').AsString :=
        QPedidoeDESCRIPCION_RECETA.AsString;
      vQ.ParamByName('COD_PLACA').AsString := QPedidoeCOD_PLACA.AsString;
      vQ.ParamByName('COMMENTS').AsString := QPedidoeCOMMENTS.AsString;
      vQ.ParamByName('VALOR_ABONO').AsString := QPedidoeVALOR_ABONO.AsString;
      vQ.ParamByName('KMT').AsString := QPedidoeKMT.AsString;
      vQ.ParamByName('COD_NIVEL').AsString := QPedidoeCOD_NIVEL.AsString;
      vQ.ParamByName('BONOTOTAL').AsString := QPedidoeBONOTOTAL.AsString;

      vQ.ExecSQL;

      QPedidod.Close;
      QPedidod.ParamByName('TIPO').AsString := QPedidoeTIPO.AsString;
      QPedidod.ParamByName('NUMBER').AsInteger := QPedidoeNUMBER.AsInteger;

      QPedidod.Open;
      QPedidod.First;

      while not QPedidod.Eof do
      Begin
        vQ.SQL.Clear;
        vQ.SQL.Add
          (' INSERT INTO PEDIDOD(ID_EMPRESA,ID_SUCURSAL,TIPO,NUMBER,CONTEO,ITEM,IMPOVENTA,LOCATION,QTYSHIP,'
          + ' QTYORDER,PRICE,EXTEND,TAXES,COST,NOTES,DIAS_GARANTIA,DCT,TOTALDCT,VLR_IVA,'
          + ' PORC_IVA,CAJAS,PESO_BRUTO,TIPO_FACTOR,DOBLE_UNIDAD,USAR_DESVIACION,DESVIACIONP,'
          + ' PESO_PROMEDIOI,FALLO,PESO_NETOI,PRECIO_VENDEDOR,AUTORIZADO,ORIGEN,NUM_SERIAL,'
          + ' BO,RESERVA,DCTADICIONAL,DCTFIJO,ESTADO,QTY_REMISIONADA,COLOR,TIPO_COTIZA,'
          + ' NUMERO_COTIZA,ZVLRBRUTO,ZDESCUENTO,ZDIFERENCIA,FECHAAPRODUCIR,KITNO,KIT_DESCRIPCION,'
          + ' DCTO_AD1,DCTO_AD2,VLR_DCTFIJO,VLR_DCT,VLR_DCTOAD1,VLR_DCTOAD2,VLR_DCTOADICIONAL,'
          + ' OCNUMERO,MANDANTE,COD_CENTRO,DESCRIP_CENTRO,DIAS_ITEM,KILOMETRAJES,PORC_COMI,'
          + ' PROYECTO,ACTIVIDAD,DPTO,CCOST,COD_TALLA,COD_COLOR,PRECIOIVA,BONO,TOTALBONO,'
          + ' CODBARRASCURVA,CODIGO_ZONA,NUMERO_ZONA)' +
          ' VALUES(:ID_EMPRESA,:ID_SUCURSAL,:TIPO,:NUMBER,:CONTEO,:ITEM,:IMPOVENTA,:LOCATION,:QTYSHIP'
          + ' ,:QTYORDER,:PRICE,:EXTEND,:TAXES,:COST,:NOTES,:DIAS_GARANTIA,:DCT,:TOTALDCT,:VLR_IVA'
          + ' ,:PORC_IVA,:CAJAS,:PESO_BRUTO,:TIPO_FACTOR,:DOBLE_UNIDAD,:USAR_DESVIACION,:DESVIACIONP'
          + ' ,:PESO_PROMEDIOI,:FALLO,:PESO_NETOI,:PRECIO_VENDEDOR,:AUTORIZADO,:ORIGEN,:NUM_SERIAL'
          + ' ,:BO,:RESERVA,:DCTADICIONAL,:DCTFIJO,:ESTADO,:QTY_REMISIONADA,:COLOR,:TIPO_COTIZA'
          + ' ,:NUMERO_COTIZA,:ZVLRBRUTO,:ZDESCUENTO,:ZDIFERENCIA,:FECHAAPRODUCIR,:KITNO,:KIT_DESCRIPCION'
          + ' ,:DCTO_AD1,:DCTO_AD2,:VLR_DCTFIJO,:VLR_DCT,:VLR_DCTOAD1,:VLR_DCTOAD2,:VLR_DCTOADICIONAL'
          + ' ,:OCNUMERO,:MANDANTE,:COD_CENTRO,:DESCRIP_CENTRO,:DIAS_ITEM,:KILOMETRAJES,:PORC_COMI'
          + ' ,:PROYECTO,:ACTIVIDAD,:DPTO,:CCOST,:COD_TALLA,:COD_COLOR,:PRECIOIVA,:BONO,:TOTALBONO'
          + ' ,:CODBARRASCURVA,:CODIGO_ZONA,:NUMERO_ZONA)');

        vQ.ParamByName('ID_EMPRESA').AsInteger := QPedidodID_EMPRESA.AsInteger;
        vQ.ParamByName('ID_SUCURSAL').AsInteger :=
          QPedidodID_SUCURSAL.AsInteger;
        vQ.ParamByName('TIPO').AsString := QPedidodTIPO.AsString;
        vQ.ParamByName('NUMBER').AsInteger := QPedidodNUMBER.AsInteger;
        vQ.ParamByName('CONTEO').AsInteger := QPedidodCONTEO.AsInteger;
        vQ.ParamByName('ITEM').AsString := QPedidodITEM.AsString;
        vQ.ParamByName('IMPOVENTA').AsString := QPedidodIMPOVENTA.AsString;
        vQ.ParamByName('LOCATION').AsString := QPedidodLOCATION.AsString;
        vQ.ParamByName('QTYSHIP').AsFloat := QPedidodQTYSHIP.AsFloat;
        vQ.ParamByName('QTYORDER').AsFloat := QPedidodQTYORDER.AsFloat;
        vQ.ParamByName('PRICE').AsFloat := QPedidodPRICE.AsFloat;
        vQ.ParamByName('EXTEND').AsFloat := QPedidodEXTEND.AsFloat;
        vQ.ParamByName('TAXES').AsFloat := QPedidodTAXES.AsFloat;
        vQ.ParamByName('COST').AsFloat := QPedidodCOST.AsFloat;
        vQ.ParamByName('NOTES').AsString := QPedidodNOTES.AsString;
        vQ.ParamByName('DIAS_GARANTIA').AsInteger :=
          QPedidodDIAS_GARANTIA.AsInteger;
        vQ.ParamByName('DCT').AsFloat := QPedidodDCT.AsFloat;
        vQ.ParamByName('TOTALDCT').AsFloat := QPedidodTOTALDCT.AsFloat;
        vQ.ParamByName('VLR_IVA').AsFloat := QPedidodVLR_IVA.AsFloat;
        vQ.ParamByName('PORC_IVA').AsFloat := QPedidodPORC_IVA.AsFloat;
        vQ.ParamByName('CAJAS').AsFloat := QPedidodCAJAS.AsFloat;
        vQ.ParamByName('PESO_BRUTO').AsFloat := QPedidodPESO_BRUTO.AsFloat;
        vQ.ParamByName('TIPO_FACTOR').AsString := QPedidodTIPO_FACTOR.AsString;
        vQ.ParamByName('DOBLE_UNIDAD').AsString :=
          QPedidodDOBLE_UNIDAD.AsString;
        vQ.ParamByName('USAR_DESVIACION').AsString :=
          QPedidodUSAR_DESVIACION.AsString;
        vQ.ParamByName('DESVIACIONP').AsFloat := QPedidodDESVIACIONP.AsFloat;
        vQ.ParamByName('PESO_PROMEDIOI').AsFloat :=
          QPedidodPESO_PROMEDIOI.AsFloat;
        vQ.ParamByName('FALLO').AsString := QPedidodFALLO.AsString;
        vQ.ParamByName('PESO_NETOI').AsFloat := QPedidodPESO_NETOI.AsFloat;
        vQ.ParamByName('PRECIO_VENDEDOR').AsFloat :=
          QPedidodPRECIO_VENDEDOR.AsFloat;
        vQ.ParamByName('AUTORIZADO').AsString := QPedidodAUTORIZADO.AsString;
        vQ.ParamByName('ORIGEN').AsString := QPedidodORIGEN.AsString;
        vQ.ParamByName('NUM_SERIAL').AsString := QPedidodNUM_SERIAL.AsString;
        vQ.ParamByName('BO').AsFloat := QPedidodBO.AsFloat;
        vQ.ParamByName('RESERVA').AsFloat := QPedidodRESERVA.AsFloat;
        vQ.ParamByName('DCTADICIONAL').AsFloat := QPedidodDCTADICIONAL.AsFloat;
        vQ.ParamByName('DCTFIJO').AsFloat := QPedidodDCTFIJO.AsFloat;
        vQ.ParamByName('ESTADO').AsString := QPedidodESTADO.AsString;
        vQ.ParamByName('QTY_REMISIONADA').AsFloat :=
          QPedidodQTY_REMISIONADA.AsFloat;
        vQ.ParamByName('COLOR').AsString := QPedidodCOLOR.AsString;
        vQ.ParamByName('TIPO_COTIZA').AsString := QPedidodTIPO_COTIZA.AsString;
        vQ.ParamByName('NUMERO_COTIZA').AsInteger :=
          QPedidodNUMERO_COTIZA.AsInteger;
        vQ.ParamByName('ZVLRBRUTO').AsFloat := QPedidodZVLRBRUTO.AsFloat;
        vQ.ParamByName('ZDESCUENTO').AsFloat := QPedidodZDESCUENTO.AsFloat;
        vQ.ParamByName('ZDIFERENCIA').AsFloat := QPedidodZDIFERENCIA.AsFloat;
        vQ.ParamByName('FECHAAPRODUCIR').AsDateTime :=
          QPedidodFECHAAPRODUCIR.AsDateTime;
        vQ.ParamByName('KITNO').AsString := QPedidodKITNO.AsString;
        vQ.ParamByName('KIT_DESCRIPCION').AsString :=
          QPedidodKIT_DESCRIPCION.AsString;
        vQ.ParamByName('DCTO_AD1').AsFloat := QPedidodDCTO_AD1.AsFloat;
        vQ.ParamByName('DCTO_AD2').AsFloat := QPedidodDCTO_AD2.AsFloat;
        vQ.ParamByName('VLR_DCTFIJO').AsFloat := QPedidodVLR_DCTFIJO.AsFloat;
        vQ.ParamByName('VLR_DCT').AsFloat := QPedidodVLR_DCT.AsFloat;
        vQ.ParamByName('VLR_DCTOAD1').AsFloat := QPedidodVLR_DCTOAD1.AsFloat;
        vQ.ParamByName('VLR_DCTOAD2').AsFloat := QPedidodVLR_DCTOAD2.AsFloat;
        vQ.ParamByName('VLR_DCTOADICIONAL').AsFloat :=
          QPedidodVLR_DCTOADICIONAL.AsFloat;
        vQ.ParamByName('OCNUMERO').AsString := QPedidodOCNUMERO.AsString;
        vQ.ParamByName('MANDANTE').AsString := QPedidodMANDANTE.AsString;
        vQ.ParamByName('COD_CENTRO').AsInteger := QPedidodCOD_CENTRO.AsInteger;
        vQ.ParamByName('DESCRIP_CENTRO').AsString :=
          QPedidodDESCRIP_CENTRO.AsString;
        vQ.ParamByName('DIAS_ITEM').AsInteger := QPedidodDIAS_ITEM.AsInteger;
        vQ.ParamByName('KILOMETRAJES').AsInteger :=
          QPedidodKILOMETRAJES.AsInteger;
        vQ.ParamByName('PORC_COMI').AsFloat := QPedidodPORC_COMI.AsFloat;
        vQ.ParamByName('PROYECTO').AsString := QPedidodPROYECTO.AsString;
        vQ.ParamByName('ACTIVIDAD').AsString := QPedidodACTIVIDAD.AsString;
        vQ.ParamByName('DPTO').AsInteger := QPedidodDPTO.AsInteger;
        vQ.ParamByName('CCOST').AsInteger := QPedidodCCOST.AsInteger;
        vQ.ParamByName('COD_TALLA').AsString := QPedidodCOD_TALLA.AsString;
        vQ.ParamByName('COD_COLOR').AsString := QPedidodCOD_COLOR.AsString;
        vQ.ParamByName('PRECIOIVA').AsFloat := QPedidodPRECIOIVA.AsFloat;
        vQ.ParamByName('BONO').AsString := QPedidodBONO.AsString;
        vQ.ParamByName('TOTALBONO').AsSingle := QPedidodTOTALBONO.AsSingle;
        vQ.ParamByName('CODBARRASCURVA').AsString :=
          QPedidodCODBARRASCURVA.AsString;
        vQ.ParamByName('CODIGO_ZONA').AsString := QPedidodCODIGO_ZONA.AsString;
        vQ.ParamByName('NUMERO_ZONA').AsString := QPedidodNUMERO_ZONA.AsString;
        vQ.Close;
        vQ.ExecSQL;
        QPedidod.Next;
      END;

    finally
      vQ.DisposeOf;
    end;
    PasarItemact(QPedidoeTIPO.AsString, QPedidoeNUMBER.AsInteger);

    Numero := Numero + 1;
    ProgressBar1.Value := ProgressBar1.Value + 1;
    Application.ProcessMessages;
    QPedidoe.Next;
  End;

  Memo1.Lines.Add('->Se Actualizan Pedidos:');
  Memo1.Lines.Add('  -Tabla Pedidoe');
  Memo1.Lines.Add('  -Tabla Pedidod');
  Memo1.Lines.Add('  -Tabla Itemact');
  Memo1.Lines.Add('  -Cantidad de Pedidos: ' + IntToStr(Numero));
end;

procedure TMain.PasarRemisiones;
var
  Tipos: string;
  Numero: Integer;
  vQ: TFDQuery;
begin
  Tipos := TraerTipos('''RM''');
  Numero := 0;
  QRemisione.Close;
  QRemisione.ParamByName('FI').AsDate := DateEdit1.Date;
  QRemisione.ParamByName('FF').AsDate := DateEdit2.Date;
  QRemisione.SQL.Add(' AND TIPO IN(' + Tipos + ')');
  if CheckDocxSuc.IsChecked = True then
  begin
    QRemisione.SQL.Add(' AND ID_SUCURSAL= :SUC');
    QRemisione.ParamByName('SUC').AsInteger := StrToInt(Edit4.Text);
  end;

  QRemisione.Open;

  QRemisione.Last;
  ProgressBar1.Value := 0;
  ProgressBar1.Max := QRemisione.RecordCount;
  QRemisione.First;

  while not QRemisione.Eof do
  Begin
    vQ := TFDQuery.Create(nil);
    try
      EliminarRemisiones(QRemisioneTIPO.AsString, QRemisioneNUMERO.AsInteger);
      vQ.Connection := Main.ConDestino;
      vQ.SQL.Add
        (' INSERT INTO REMISIONE (ID_EMPRESA,ID_SUCURSAL,NUMERO,TIPO,ID_USUARIO,'
        + ' ID_N,SHIPTO,SALESMAN,FECHA,SUBTOTAL,SALESTAX,FEDTAX,TERMS,JOBNO,DESTOTAL,'
        + ' TOTAL,CODPROYECTO,CODACTIVIDAD,SERIALES,OCNUMERO,LETRAS,EXPORTADA,D,'
        + ' CODTRANSPORTADOR,DESPACHADOR,CONDUCTOR,NITCONDUCTOR,PESO,BULTOS,DESPACHADOPOR,'
        + ' AUTORIZAR,DOCRESPALDO,NUMERORESPALDO,TRANSPORTADORA,ORCARGE,PLACAS,ANULADO,'
        + ' FACTURADO,UNIDADES,FECHA_ENTREGA,FECHA_DESPACHO,PLANILLA_MO,FP,CE,CC,OTRO,'
        + ' VLR_MERCANCIA,PESO_NETO,DESCRIPCION_RECETA,IVA_FACTURA,CONCEPTOSIVA,SUB_FACTURA,'
        + ' TOT_FACTURA,DESC_FACTURA,COMENTARIOS,CONCEPTO_AN,FORMA_PAGO,CONTEO_PEDIDO,'
        + ' PARCIAL,BONOTOTAL)VALUES(:ID_EMPRESA,:ID_SUCURSAL,:NUMERO,:TIPO,:ID_USUARIO,'
        + ' :ID_N,:SHIPTO,:SALESMAN,:FECHA,:SUBTOTAL,:SALESTAX,:FEDTAX,:TERMS,:JOBNO,:DESTOTAL,'
        + ' :TOTAL,:CODPROYECTO,:CODACTIVIDAD,:SERIALES,:OCNUMERO,:LETRAS,:EXPORTADA,:D,'
        + ' :CODTRANSPORTADOR,:DESPACHADOR,:CONDUCTOR,:NITCONDUCTOR,:PESO,:BULTOS,:DESPACHADOPOR,'
        + ' :AUTORIZAR,:DOCRESPALDO,:NUMERORESPALDO,:TRANSPORTADORA,:ORCARGE,:PLACAS,:ANULADO,'
        + ' :FACTURADO,:UNIDADES,:FECHA_ENTREGA,:FECHA_DESPACHO,:PLANILLA_MO,:FP,:CE,:CC,:OTRO,'
        + ' :VLR_MERCANCIA,:PESO_NETO,:DESCRIPCION_RECETA,:IVA_FACTURA,:CONCEPTOSIVA,:SUB_FACTURA,'
        + ' :TOT_FACTURA,:DESC_FACTURA,:COMENTARIOS,:CONCEPTO_AN,:FORMA_PAGO,:CONTEO_PEDIDO,'
        + ' :PARCIAL,:BONOTOTAL)');
      vQ.Close;

      vQ.ParamByName('ID_EMPRESA').AsInteger := QRemisioneID_EMPRESA.AsInteger;
      vQ.ParamByName('ID_SUCURSAL').AsInteger :=
        QRemisioneID_SUCURSAL.AsInteger;
      vQ.ParamByName('NUMERO').AsInteger := QRemisioneNUMERO.AsInteger;
      vQ.ParamByName('TIPO').AsString := QRemisioneTIPO.AsString;
      vQ.ParamByName('ID_USUARIO').AsString := QRemisioneID_USUARIO.AsString;
      vQ.ParamByName('ID_N').AsString := QRemisioneID_N.AsString;
      vQ.ParamByName('SHIPTO').AsInteger := QRemisioneSHIPTO.AsInteger;
      vQ.ParamByName('SALESMAN').AsInteger := QRemisioneSALESMAN.AsInteger;
      vQ.ParamByName('FECHA').AsDateTime := QRemisioneFECHA.AsDateTime;
      vQ.ParamByName('SUBTOTAL').AsFloat := QRemisioneSUBTOTAL.AsFloat;
      vQ.ParamByName('SALESTAX').AsFloat := QRemisioneSALESTAX.AsFloat;
      vQ.ParamByName('FEDTAX').AsFloat := QRemisioneFEDTAX.AsFloat;
      vQ.ParamByName('TERMS').AsString := QRemisioneTERMS.AsString;
      vQ.ParamByName('JOBNO').AsString := QRemisioneJOBNO.AsString;
      vQ.ParamByName('DESTOTAL').AsFloat := QRemisioneDESTOTAL.AsFloat;
      vQ.ParamByName('TOTAL').AsFloat := QRemisioneTOTAL.AsFloat;
      vQ.ParamByName('CODPROYECTO').AsString := QRemisioneCODPROYECTO.AsString;
      vQ.ParamByName('CODACTIVIDAD').AsString :=
        QRemisioneCODACTIVIDAD.AsString;
      vQ.ParamByName('SERIALES').AsString := QRemisioneSERIALES.AsString;
      vQ.ParamByName('OCNUMERO').AsString := QRemisioneOCNUMERO.AsString;
      vQ.ParamByName('LETRAS').AsString := QRemisioneLETRAS.AsString;
      vQ.ParamByName('EXPORTADA').AsString := QRemisioneEXPORTADA.AsString;
      vQ.ParamByName('D').AsInteger := QRemisioneD.AsInteger;
      vQ.ParamByName('CODTRANSPORTADOR').AsString :=
        QRemisioneCODTRANSPORTADOR.AsString;
      vQ.ParamByName('DESPACHADOR').AsString := QRemisioneDESPACHADOR.AsString;
      vQ.ParamByName('CONDUCTOR').AsString := QRemisioneCONDUCTOR.AsString;
      vQ.ParamByName('NITCONDUCTOR').AsString :=
        QRemisioneNITCONDUCTOR.AsString;
      vQ.ParamByName('PESO').AsFloat := QRemisionePESO.AsFloat;
      vQ.ParamByName('BULTOS').AsFloat := QRemisioneBULTOS.AsFloat;
      vQ.ParamByName('DESPACHADOPOR').AsString :=
        QRemisioneDESPACHADOPOR.AsString;
      vQ.ParamByName('AUTORIZAR').AsString := QRemisioneAUTORIZAR.AsString;
      vQ.ParamByName('DOCRESPALDO').AsString := QRemisioneDOCRESPALDO.AsString;
      vQ.ParamByName('NUMERORESPALDO').AsInteger :=
        QRemisioneNUMERORESPALDO.AsInteger;
      vQ.ParamByName('TRANSPORTADORA').AsString :=
        QRemisioneTRANSPORTADORA.AsString;
      vQ.ParamByName('ORCARGE').AsString := QRemisioneORCARGE.AsString;
      vQ.ParamByName('PLACAS').AsString := QRemisionePLACAS.AsString;
      vQ.ParamByName('ANULADO').AsString := QRemisioneANULADO.AsString;
      vQ.ParamByName('FACTURADO').AsString := QRemisioneFACTURADO.AsString;
      vQ.ParamByName('UNIDADES').AsFloat := QRemisioneUNIDADES.AsFloat;
      vQ.ParamByName('FECHA_ENTREGA').AsDateTime :=
        QRemisioneFECHA_ENTREGA.AsDateTime;
      vQ.ParamByName('FECHA_DESPACHO').AsDateTime :=
        QRemisioneFECHA_DESPACHO.AsDateTime;
      vQ.ParamByName('PLANILLA_MO').AsString := QRemisionePLANILLA_MO.AsString;
      vQ.ParamByName('FP').AsString := QRemisioneFP.AsString;
      vQ.ParamByName('CE').AsString := QRemisioneCE.AsString;
      vQ.ParamByName('CC').AsString := QRemisioneCC.AsString;
      vQ.ParamByName('OTRO').AsString := QRemisioneOTRO.AsString;
      vQ.ParamByName('VLR_MERCANCIA').AsFloat :=
        QRemisioneVLR_MERCANCIA.AsFloat;
      vQ.ParamByName('PESO_NETO').AsFloat := QRemisionePESO_NETO.AsFloat;
      vQ.ParamByName('DESCRIPCION_RECETA').AsString :=
        QRemisioneDESCRIPCION_RECETA.AsString;
      vQ.ParamByName('IVA_FACTURA').AsString := QRemisioneIVA_FACTURA.AsString;
      vQ.ParamByName('CONCEPTOSIVA').AsString :=
        QRemisioneCONCEPTOSIVA.AsString;
      vQ.ParamByName('SUB_FACTURA').AsString := QRemisioneSUB_FACTURA.AsString;
      vQ.ParamByName('TOT_FACTURA').AsString := QRemisioneTOT_FACTURA.AsString;
      vQ.ParamByName('DESC_FACTURA').AsString :=
        QRemisioneDESC_FACTURA.AsString;
      vQ.ParamByName('COMENTARIOS').AsString := QRemisioneCOMENTARIOS.AsString;
      vQ.ParamByName('CONCEPTO_AN').AsString := QRemisioneCONCEPTO_AN.AsString;
      vQ.ParamByName('FORMA_PAGO').AsInteger := QRemisioneFORMA_PAGO.AsInteger;
      vQ.ParamByName('CONTEO_PEDIDO').AsInteger :=
        QRemisioneCONTEO_PEDIDO.AsInteger;
      vQ.ParamByName('PARCIAL').AsString := QRemisionePARCIAL.AsString;
      vQ.ParamByName('BONOTOTAL').AsString := QRemisioneBONOTOTAL.AsString;

      vQ.ExecSQL;

      QRemisiond.Close;
      QRemisiond.ParamByName('TIPO').AsString := QRemisioneTIPO.AsString;
      QRemisiond.ParamByName('NUMBER').AsInteger := QRemisioneNUMERO.AsInteger;

      QRemisiond.Open;
      QRemisiond.First;

      while not QRemisiond.Eof do
      Begin
        vQ.SQL.Clear;
        vQ.SQL.Add
          (' INSERT INTO REMISIOND(ID_EMPRESA,ID_SUCURSAL,NUMERO,TIPO,CONTEO,ITEM,'
          + ' LOCATION,CODIVA,QTYSHIP,QTYORDER,PRICE,PRECIOSUG,EXTEND,TAXES,DCT_ITEM,'
          + ' DCT_CLIENTE,DCT_ADICIONAL,TOTALDCT,VLR_IVA,PORC_IVA,IMPCONSUMO,PRECIOIVA,'
          + ' DOC_RESPALDO,NUMERO_RESPALDO,SERIALES,RESERVA_INICIAL,RESERVA_FINAL,'
          + ' DESCRIPCION_ADIC,KITNO,KIT_DESCRIPCION,DCTO_AD1,DCTO_AD2,VLR_DCTFIJO,'
          + ' VLR_DCT,VLR_DCTOAD1,VLR_DCTOAD2,VLR_DCTOADICIONAL,COD_UNIDAD_VENTA,'
          + ' FACTOR,OCNUMERO,DESCRIPCION_ADIC1,ACTIVIDAD,DPTO,CCOST,PROYECTO,'
          + ' CONTEO_PEDIDO,COD_TALLA,COD_COLOR,BONO,TOTALBONO,CODBARRASCURVA)'
          + ' VALUES(:ID_EMPRESA,:ID_SUCURSAL,:NUMERO,:TIPO,:CONTEO,:ITEM,' +
          ' :LOCATION,:CODIVA,:QTYSHIP,:QTYORDER,:PRICE,:PRECIOSUG,:EXTEND,:TAXES,:DCT_ITEM,'
          + ' :DCT_CLIENTE,:DCT_ADICIONAL,:TOTALDCT,:VLR_IVA,:PORC_IVA,:IMPCONSUMO,:PRECIOIVA,'
          + ' :DOC_RESPALDO,:NUMERO_RESPALDO,:SERIALES,:RESERVA_INICIAL,:RESERVA_FINAL,'
          + ' :DESCRIPCION_ADIC,:KITNO,:KIT_DESCRIPCION,:DCTO_AD1,:DCTO_AD2,:VLR_DCTFIJO,'
          + ' :VLR_DCT,:VLR_DCTOAD1,:VLR_DCTOAD2,:VLR_DCTOADICIONAL,:COD_UNIDAD_VENTA,'
          + ' :FACTOR,:OCNUMERO,:DESCRIPCION_ADIC1,:ACTIVIDAD,:DPTO,:CCOST,:PROYECTO,'
          + ' :CONTEO_PEDIDO,:COD_TALLA,:COD_COLOR,:BONO,:TOTALBONO,:CODBARRASCURVA)');

        vQ.ParamByName('ID_EMPRESA').AsInteger :=
          QRemisiondID_EMPRESA.AsInteger;
        vQ.ParamByName('ID_SUCURSAL').AsInteger :=
          QRemisiondID_SUCURSAL.AsInteger;
        vQ.ParamByName('NUMERO').AsInteger := QRemisiondNUMERO.AsInteger;
        vQ.ParamByName('TIPO').AsString := QRemisiondTIPO.AsString;
        vQ.ParamByName('CONTEO').AsString := QRemisiondCONTEO.AsString;
        vQ.ParamByName('ITEM').AsString := QRemisiondITEM.AsString;
        vQ.ParamByName('LOCATION').AsString := QRemisiondLOCATION.AsString;
        vQ.ParamByName('CODIVA').AsInteger := QRemisiondCODIVA.AsInteger;
        vQ.ParamByName('QTYSHIP').AsFloat := QRemisiondQTYSHIP.AsFloat;
        vQ.ParamByName('QTYORDER').AsFloat := QRemisiondQTYORDER.AsFloat;
        vQ.ParamByName('PRICE').AsFloat := QRemisiondPRICE.AsFloat;
        vQ.ParamByName('PRECIOSUG').AsFloat := QRemisiondPRECIOSUG.AsFloat;
        vQ.ParamByName('EXTEND').AsFloat := QRemisiondEXTEND.AsFloat;
        vQ.ParamByName('TAXES').AsFloat := QRemisiondTAXES.AsFloat;
        vQ.ParamByName('DCT_ITEM').AsFloat := QRemisiondDCT_ITEM.AsFloat;
        vQ.ParamByName('DCT_CLIENTE').AsFloat := QRemisiondDCT_CLIENTE.AsFloat;
        vQ.ParamByName('DCT_ADICIONAL').AsFloat :=
          QRemisiondDCT_ADICIONAL.AsFloat;
        vQ.ParamByName('TOTALDCT').AsFloat := QRemisiondTOTALDCT.AsFloat;
        vQ.ParamByName('VLR_IVA').AsFloat := QRemisiondVLR_IVA.AsFloat;
        vQ.ParamByName('PORC_IVA').AsFloat := QRemisiondPORC_IVA.AsFloat;
        vQ.ParamByName('IMPCONSUMO').AsFloat := QRemisiondIMPCONSUMO.AsFloat;
        vQ.ParamByName('PRECIOIVA').AsFloat := QRemisiondPRECIOIVA.AsFloat;
        vQ.ParamByName('DOC_RESPALDO').AsString :=
          QRemisiondDOC_RESPALDO.AsString;
        vQ.ParamByName('NUMERO_RESPALDO').AsInteger :=
          QRemisiondNUMERO_RESPALDO.AsInteger;
        vQ.ParamByName('SERIALES').AsString := QRemisiondSERIALES.AsString;
        vQ.ParamByName('RESERVA_INICIAL').AsFloat :=
          QRemisiondRESERVA_INICIAL.AsFloat;
        vQ.ParamByName('RESERVA_FINAL').AsFloat :=
          QRemisiondRESERVA_FINAL.AsFloat;
        vQ.ParamByName('DESCRIPCION_ADIC').AsString :=
          QRemisiondDESCRIPCION_ADIC.AsString;
        vQ.ParamByName('KITNO').AsString := QRemisiondKITNO.AsString;
        vQ.ParamByName('KIT_DESCRIPCION').AsString :=
          QRemisiondKIT_DESCRIPCION.AsString;
        vQ.ParamByName('DCTO_AD1').AsFloat := QRemisiondDCTO_AD1.AsFloat;
        vQ.ParamByName('DCTO_AD2').AsFloat := QRemisiondDCTO_AD2.AsFloat;
        vQ.ParamByName('VLR_DCTFIJO').AsFloat := QRemisiondVLR_DCTFIJO.AsFloat;
        vQ.ParamByName('VLR_DCT').AsFloat := QRemisiondVLR_DCT.AsFloat;
        vQ.ParamByName('VLR_DCTOAD1').AsFloat := QRemisiondVLR_DCTOAD1.AsFloat;
        vQ.ParamByName('VLR_DCTOAD2').AsFloat := QRemisiondVLR_DCTOAD2.AsFloat;
        vQ.ParamByName('VLR_DCTOADICIONAL').AsFloat :=
          QRemisiondVLR_DCTOADICIONAL.AsFloat;
        vQ.ParamByName('COD_UNIDAD_VENTA').AsString :=
          QRemisiondCOD_UNIDAD_VENTA.AsString;
        vQ.ParamByName('FACTOR').AsFloat := QRemisiondFACTOR.AsFloat;
        vQ.ParamByName('OCNUMERO').AsString := QRemisiondOCNUMERO.AsString;
        vQ.ParamByName('DESCRIPCION_ADIC1').AsString :=
          QRemisiondDESCRIPCION_ADIC1.AsString;
        vQ.ParamByName('ACTIVIDAD').AsString := QRemisiondACTIVIDAD.AsString;
        vQ.ParamByName('DPTO').AsInteger := QRemisiondDPTO.AsInteger;
        vQ.ParamByName('CCOST').AsInteger := QRemisiondCCOST.AsInteger;
        vQ.ParamByName('PROYECTO').AsString := QRemisiondPROYECTO.AsString;
        vQ.ParamByName('CONTEO_PEDIDO').AsInteger :=
          QRemisiondCONTEO_PEDIDO.AsInteger;
        vQ.ParamByName('COD_TALLA').AsString := QRemisiondCOD_TALLA.AsString;
        vQ.ParamByName('COD_COLOR').AsString := QRemisiondCOD_COLOR.AsString;
        vQ.ParamByName('BONO').AsString := QRemisiondBONO.AsString;
        vQ.ParamByName('TOTALBONO').AsSingle := QRemisiondTOTALBONO.AsSingle;
        vQ.ParamByName('CODBARRASCURVA').AsString :=
          QRemisiondCODBARRASCURVA.AsString;
        vQ.Close;
        vQ.ExecSQL;
        QRemisiond.Next;
      END;

    finally
      vQ.DisposeOf;
    end;
    PasarItemact(QRemisioneTIPO.AsString, QRemisioneNUMERO.AsInteger);
    Numero := Numero + 1;
    ProgressBar1.Value := ProgressBar1.Value + 1;
    Application.ProcessMessages;
    QRemisione.Next;
  End;

  Memo1.Lines.Add('->Se Actualizan Remisiones:');
  Memo1.Lines.Add('  -Tabla Remisione');
  Memo1.Lines.Add('  -Tabla Remisiond');
  Memo1.Lines.Add('  -Tabla Itemact');
  Memo1.Lines.Add('  -Cantidad de Remisiones: ' + IntToStr(Numero));
end;

procedure TMain.PasarTraslados;
var
  Tipos: string;
  Numero: Integer;
  vQ: TFDQuery;
begin
  Tipos := TraerTipos('''TB''');
  Numero := 0;
  QTraslado.Close;
  QTraslado.ParamByName('FI').AsDate := DateEdit1.Date;
  QTraslado.ParamByName('FF').AsDate := DateEdit2.Date;
  QTraslado.SQL.Add(' AND TIPO IN(' + Tipos + ')');
  if CheckDocxSuc.IsChecked = True then
  begin
    QTraslado.SQL.Add(' AND S= :SUC');
    QTraslado.ParamByName('SUC').AsInteger := StrToInt(Edit4.Text);
  end;

  QTraslado.Open;

  QTraslado.Last;
  ProgressBar1.Value := 0;
  ProgressBar1.Max := QTraslado.RecordCount;
  QTraslado.First;

  while not QTraslado.Eof do
  Begin
    vQ := TFDQuery.Create(nil);
    try
      EliminarTraslados(QTrasladoTIPO.AsString, QTrasladoNUMERO.AsInteger);
      vQ.Connection := Main.ConDestino;
      vQ.SQL.Add
        (' INSERT INTO TRASLADO (NUMERO,TIPO,E,S,ID_N,SUCCLIENTE,ID_USUARIO,LOCORI,'
        + ' LOCDEST,RESPREALI,FECHAREALI,FECHAACT,DESCRIPCION,ACTUALIZADO,IMPRESO,'
        + ' ANULADO,CONCEPTO,DOC_EXTERNO,USUARIO_AUTORIZA)VALUES(:NUMERO,:TIPO,:E,:S,'
        + ' :ID_N,:SUCCLIENTE,:ID_USUARIO,:LOCORI,' +
        ' :LOCDEST,:RESPREALI,:FECHAREALI,:FECHAACT,:DESCRIPCION,:ACTUALIZADO,:IMPRESO,'
        + ' :ANULADO,:CONCEPTO,:DOC_EXTERNO,:USUARIO_AUTORIZA)');
      vQ.Close;

      vQ.ParamByName('NUMERO').AsInteger := QTrasladoNUMERO.AsInteger;
      vQ.ParamByName('TIPO').AsString := QTrasladoTIPO.AsString;
      vQ.ParamByName('E').AsInteger := QTrasladoE.AsInteger;
      vQ.ParamByName('S').AsInteger := QTrasladoS.AsInteger;
      vQ.ParamByName('ID_N').AsString := QTrasladoID_N.AsString;
      vQ.ParamByName('SUCCLIENTE').AsInteger := QTrasladoSUCCLIENTE.AsInteger;
      vQ.ParamByName('ID_USUARIO').AsString := QTrasladoID_USUARIO.AsString;
      vQ.ParamByName('LOCORI').AsString := QTrasladoLOCORI.AsString;
      vQ.ParamByName('LOCDEST').AsString := QTrasladoLOCDEST.AsString;
      vQ.ParamByName('RESPREALI').AsString := QTrasladoRESPREALI.AsString;
      vQ.ParamByName('FECHAREALI').AsDateTime := QTrasladoFECHAREALI.AsDateTime;
      vQ.ParamByName('FECHAACT').AsDateTime := QTrasladoFECHAACT.AsDateTime;
      vQ.ParamByName('DESCRIPCION').AsString := QTrasladoDESCRIPCION.AsString;
      vQ.ParamByName('ACTUALIZADO').AsString := QTrasladoACTUALIZADO.AsString;
      vQ.ParamByName('IMPRESO').AsString := QTrasladoIMPRESO.AsString;
      vQ.ParamByName('ANULADO').AsString := QTrasladoANULADO.AsString;
      vQ.ParamByName('CONCEPTO').AsString := QTrasladoCONCEPTO.AsString;
      vQ.ParamByName('DOC_EXTERNO').AsInteger := QTrasladoDOC_EXTERNO.AsInteger;
      vQ.ParamByName('USUARIO_AUTORIZA').AsString :=
        QTrasladoUSUARIO_AUTORIZA.AsString;

      vQ.ExecSQL;

      QTrasdet.Close;
      QTrasdet.ParamByName('TIPO').AsString := QTrasladoTIPO.AsString;
      QTrasdet.ParamByName('NUMBER').AsInteger := QTrasladoNUMERO.AsInteger;

      QTrasdet.Open;
      QTrasdet.First;

      while not QTrasdet.Eof do
      Begin
        vQ.SQL.Clear;
        vQ.SQL.Add
          (' INSERT INTO TRASDET( NUMERO,TIPO,E,S,CONTEO,ITEM,CANTIDAD,CANTIDADB,'
          + ' CC,PB,COST,VALOR_RECIBIDO,VALOR_ENVIADO,COLOR,COSTO_AJUSTE,NOTES,LOTE,'
          + ' FECHA_VENCIMIENTO,COD_TALLA,COD_COLOR,CODBARRASCURVA)' +
          ' VALUES(:NUMERO,:TIPO,:E,:S,:CONTEO,:ITEM,:CANTIDAD,:CANTIDADB,' +
          ' :CC,:PB,:COST,:VALOR_RECIBIDO,:VALOR_ENVIADO,:COLOR,:COSTO_AJUSTE,:NOTES,:LOTE,'
          + ' :FECHA_VENCIMIENTO,:COD_TALLA,:COD_COLOR,:CODBARRASCURVA)');

        vQ.ParamByName('NUMERO').AsInteger := QTrasdetNUMERO.AsInteger;
        vQ.ParamByName('TIPO').AsString := QTrasdetTIPO.AsString;
        vQ.ParamByName('E').AsInteger := QTrasdetE.AsInteger;
        vQ.ParamByName('S').AsInteger := QTrasdetS.AsInteger;
        vQ.ParamByName('CONTEO').AsInteger := QTrasdetCONTEO.AsInteger;
        vQ.ParamByName('ITEM').AsString := QTrasdetITEM.AsString;
        vQ.ParamByName('CANTIDAD').AsFloat := QTrasdetCANTIDAD.AsFloat;
        vQ.ParamByName('CANTIDADB').AsFloat := QTrasdetCANTIDADB.AsFloat;
        vQ.ParamByName('CC').AsFloat := QTrasdetCC.AsFloat;
        vQ.ParamByName('PB').AsFloat := QTrasdetPB.AsFloat;
        vQ.ParamByName('COST').AsFloat := QTrasdetCOST.AsFloat;
        vQ.ParamByName('VALOR_RECIBIDO').AsFloat :=
          QTrasdetVALOR_RECIBIDO.AsFloat;
        vQ.ParamByName('VALOR_ENVIADO').AsFloat :=
          QTrasdetVALOR_ENVIADO.AsFloat;
        vQ.ParamByName('COLOR').AsString := QTrasdetCOLOR.AsString;
        vQ.ParamByName('COSTO_AJUSTE').AsFloat := QTrasdetCOSTO_AJUSTE.AsFloat;
        vQ.ParamByName('NOTES').AsString := QTrasdetNOTES.AsString;
        vQ.ParamByName('LOTE').AsString := QTrasdetLOTE.AsString;
        vQ.ParamByName('FECHA_VENCIMIENTO').AsDateTime :=
          QTrasdetFECHA_VENCIMIENTO.AsDateTime;
        vQ.ParamByName('COD_TALLA').AsString := QTrasdetCOD_TALLA.AsString;
        vQ.ParamByName('COD_COLOR').AsString := QTrasdetCOD_COLOR.AsString;
        vQ.ParamByName('CODBARRASCURVA').AsString :=
          QTrasdetCODBARRASCURVA.AsString;
        vQ.Close;
        vQ.ExecSQL;
        QTrasdet.Next;
      END;

    finally
      vQ.DisposeOf;
    end;
    PasarItemact(QTrasladoTIPO.AsString, QTrasladoNUMERO.AsInteger);
    Numero := Numero + 1;
    ProgressBar1.Value := ProgressBar1.Value + 1;
    Application.ProcessMessages;
    QTraslado.Next;
  End;

  Memo1.Lines.Add('->Se Actualizan Traslados de Bodega:');
  Memo1.Lines.Add('  -Tabla Traslado');
  Memo1.Lines.Add('  -Tabla Trasdet');
  Memo1.Lines.Add('  -Tabla Itemact');
  Memo1.Lines.Add('  -Cantidad de Traslados de Bodega: ' + IntToStr(Numero));
end;

end.

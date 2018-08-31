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
  FireDAC.Comp.DataSet, FMX.ScrollBox, FMX.Memo, System.threading, ActiveX,
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
    ConOrigen: TFDConnection;
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
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    CheckBox10: TCheckBox;
    CheckBox12: TCheckBox;
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
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
    procedure ActualizarItemUnidad;
    procedure ActualizarItems;
    procedure ActualizarNombres;
    procedure ActualizarSegActividades;
    procedure ActualizarSegPermisosAct;
    procedure ActualizarFactipdoc;
    procedure ActualizarForPago;
    procedure ActualizarBancos;

    procedure PasarFacturas;
    procedure EliminarFacturas(Tipo: String; Number: Integer);
  end;

var
  Main: TMain;

implementation

{$R *.fmx}

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
  Memo1.Lines.Add('  -Cantidad de Bancos: ' + Numero.ToString);
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
  Memo1.Lines.Add('  -Cantidad de Cuentas: ' + Numero.ToString);
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
  Memo1.Lines.Add('  -Cantidad de Cuentas: ' + Numero.ToString);
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
  Memo1.Lines.Add('  -Cantidad de Equivalencias: ' + Numero.ToString);
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
  Memo1.Lines.Add('  -Cantidad de Usuarios: ' + Numero.ToString);
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
  Memo1.Lines.Add('  -Cantidad de Formas de Pago: ' + Numero.ToString);
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
  Memo1.Lines.Add('  -Cantidad de Grupos: ' + Numero.ToString);
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
  Memo1.Lines.Add('  -Cantidad de Items: ' + Numero.ToString);
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
  Memo1.Lines.Add('  -Cantidad de Unidades: ' + Numero.ToString);
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
  Memo1.Lines.Add('  -Cantidad de Lineas: ' + Numero.ToString);
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
  Memo1.Lines.Add('  -Cantidad de Listas: ' + Numero.ToString);
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
  Memo1.Lines.Add('  -Cantidad de Usuarios: ' + Numero.ToString);
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
  Memo1.Lines.Add('  -Cantidad de Activiades: ' + Numero.ToString);
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
  Memo1.Lines.Add('  -Cantidad de Permisos: ' + Numero.ToString);
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
  Memo1.Lines.Add('  -Cantidad de SubGrupos: ' + Numero.ToString);
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
  Memo1.Lines.Add('  -Cantidad de Terceros: ' + Numero.ToString);

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
  Memo1.Lines.Add('  -Cantidad de Medidas: ' + Numero.ToString);
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
    ActualizarItems;
    ActualizarItemUnidad;
  END;
  if Usuarios = True then
  Begin
    ActualizarNombres;
    ActualizarSegActividades;
    ActualizarSegPermisosAct;
    ActualizarFactipdoc;
  End;
  if FormasPago = True then
  Begin
    ActualizarForPago;
    ActualizarBancos;
  End;

  if CheckTodos.IsChecked = True then
  begin
    ShowMessage('Todos Los Documentos');
  end
  else
  begin
    if CheckFacDev.IsChecked = True then
    begin
      ShowMessage('Facturas y Devoluciones');
      PasarFacturas;
    end;
    if CheckCotizaciones.IsChecked = True then
    begin
      ShowMessage('Cotizaciones');
    end;
  end;

  ShowMessage('Proceso Terminado');

end;

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
    vQ.SQL.Add('DELETE FROM NIIF_GL WHERE TIPO= :TIPO AND BATCH=:NUMBER');
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

procedure TMain.PasarFacturas;
var
  Numero: Integer;
  vQ: TFDQuery;
begin
  Numero := 0;
  QOe.Close;
  QOe.ParamByName('FI').AsDate := DateEdit1.Date;
  QOe.ParamByName('FF').AsDate := DateEdit2.Date;

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
          ' :CONTEO,:ID_EMPRESA,:ID_SUCURSAL,:NUMBER,:TIPO'
          +' ,:ID_USUARIO,:ITEM,:LOCATION,:IVA,:QTYSHIP,:QTYORDER,:PRICE,:PRICE1,:EXTEND'
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
    finally
      vQ.DisposeOf;
    end;
    Numero := Numero + 1;
    ProgressBar1.Value := ProgressBar1.Value + 1;
    Application.ProcessMessages;
    QOe.Next;
  End;

  Memo1.Lines.Add('->Se Actualizan Facturas:');
  Memo1.Lines.Add('  -Tabla Oe');
  Memo1.Lines.Add('  -Cantidad de Facturas: ' + Numero.ToString);
end;

end.

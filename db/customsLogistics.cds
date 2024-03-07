namespace db.customLogistics;
using {app.logistics } from './logistics1';

entity  Customs_Duty_Advice{
    key LRF_Customs_ID     :      UUID @Core.Computed;
    DateTo:Date;
    DateFrom:Date;
    PO_Number:String(20);
    SerialNo:String(20);
    Date:Date;
    Lrf_No:String(20);
    Ship_Ref:String(20);
    PO_Inco_Terms:String(20);
    FF_Liner_Name:String(20);
    CHA_File_No:Integer;
    BL_AWB_No:String(20);
    BL_AWB_date:Date;
    Vessel_No:Integer;
    Cargo_Desc:String(50);
    Supplier_Name:String(20);
    Importer_Name:String(20);
    BOE_No:String(20);
    BOE_Date:Date;
    OBL_Disp_Date:Date;
    OBL_Receipt_MPL_Date:Date;
    OBL_Courier_Date:Date;
    OBL_Receipt_CHA_Date:Date;
    Checklist_status_MPL:String(10);
    Custom_out_change_Date:Date;
    DO_receip_Ship_Line:Date;
    Cont_MVT_Bond_No:String(20);
    DPR_Req_Date:Date;
    BCD:Decimal(6,2);
    SWS:Decimal(6,2);
    IGST:Decimal(6,2);
    Add_Cust_Duty:Decimal(6,2);
    Other1_Initiator1:Decimal(6,2);
    Other2_Initiator2:Decimal(6,2);
    Other3_Initiator3:Decimal(6,2);
    Total:Decimal(6,2);
    UTR_No:String(20);
    UTR_Amount:Decimal(6,2);
    UTR_Date:Date;
    DPR_No:String(20);
    DPR_Date:Date;
    per_Adani_Logistics_LRF_Master : Association to one logistics.per_Adani_Logistics_LRF_Master;
}
entity CHA_Doc_Upload {
    key CHA_Doc_ID    :      UUID @Core.Computed;
    Activity:String(20);
    BL_NO:String(20);
    CHA_remarks:String(50);
    MPL_Remarks:String(50);
    Effect_Date:Date;
    Document_Upload:String(20);
    @Core.MediaType  : mediaType
        content                    : LargeBinary;
        @Core.IsMediaType: true
        mediaType                  : String;
        fileName                   : String;
    per_Adani_Logistics_LRF_Master : Association to one logistics.per_Adani_Logistics_LRF_Master;
}
entity  Terminal_handler_changes{
    key LRF_Customs_ID     :      UUID @Core.Computed;
    DateTo:Date;
    DateFrom:Date;
    SerialNo:String(20);
    Date:Date;
    Lrf_No:String(20);
    Ship_Ref:String(20);
    Vessel_No:Integer;
    Cargo_Desc:String(50);
    Supplier_Name:String(20);
    Importer_Name:String(20);
    THC_DO_Charges:Decimal(6,2);
    CFS:Decimal(6,2);
    Lift_Off:Decimal(6,2);
    Other1_Initiator1:Decimal(6,2);
    Other2_Initiator2:Decimal(6,2);
    Other3_Initiator3:Decimal(6,2);
    Total:Decimal(6,2);
    UTR_No:String(20);
    UTR_Amount:Decimal(6,2);
    UTR_Date:Date;
    DPR_No:String(20);
    DPR_Date:Date;
    per_Adani_Logistics_LRF_Master : Association to one logistics.per_Adani_Logistics_LRF_Master;
}
//
//  Constants.swift
//  mobilesdkfw
//
//  Created by Gal Blank on 3/9/16.
//  Copyright © 2016 Gal Blank. All rights reserved.
//

import Foundation


public class RBAProtocolConst:NSObject
{
    
    public static let sharedRBAConstsInstance = RBAProtocolConst()
    
    //EMV FLAG DESCRIPTORS
    public let IssuerIdentificationNumber   = "T42"
    public let ApplicationIdentifier        = "T4F"
    public let ApplicationLabel             = "T50"
    public let Track2Data                   = "T57"
    public let PrimaryAccountNumber         = "T5A"
    public let CardholderName               = "T5F20"
    public let ExpirationDate               = "T5F24"
    
    //ISO 3166-1 numeric - https://en.wikipedia.org/wiki/ISO_3166-1_numeric
    public let IssuerCountryCodeISO         = "T5F28"
    public let ApplicationPANSequenceNumber = "T5F34"
    public let ApplicationUsageControl      = "T9F07"
    public let IssuerCodeTableIndex         = "T9F11"
    public let ApplicationPreferredName     = "T9F12"
    public let TerminalCountryCode          = "T9F1A"
    public let InterfaceDeviceSerialNumber  = "T9F1E"
    public let emvTrack2Data                = "TFF1F"
    public let track3Data                   = "TFF21"
    public let applicationCryptogram        = "T9F26"
    public let applicationTransactionCounter = "T9F36"
    
    public let debitCardType                    = "A"
    public let creditCardType                   = "B"
    
    public let txnTypeSale                  = "01" //Sale
    public let txnTypeVoid                  = "02" //Void
    public let txnTypeReturn                = "01" //Return
    public let txnTypeVoidReturn            = "01" //Void return
    
    
    
    ////messages ids
    public let initiateEMVFromSwitch                        = "RequestEMV"
    public let AuthorizationRequestMessage                  = "AuthorizationRequestMessage" //33.03
    public let AuthorizationConfirmationResponseMessage     = "AuthorizationConfirmationResponseMessage" //33.05
    
    /*
    Company ID number assigned by FAPS.
    000001 – Gal Blank
    000002 – iATS
    000003 – Govolution
    000004 – ACC
    */
    public let companyID                    = "000001"
    
    /*
    1 = PIN
    2=Signature
    3=EMV Offline PIN
    4=No CVM
    */
    public let cardVerification             = 4
    
    
    /*
    1=MSR – Mag Stripe Read no PIN
    2=MSRP – Mag Stripe Read PIN
    3=CHIP with PIN
    4=CHIP no PIN
    5=NFC
    6=NFC with PIN
    7=EMV NFC
    8=EMV NFC with PIN
    */
    public let POSEntryCode =  1
    
    
    /*
    0=unknown
    1=POS is mobile phone
    2=Table
    3=Electronic Cash Register
    */
    public let POSEntryMode =  1
    
    public let CHIP_CARD = 0
    public let EMV_PROCESS_STATUS = 1
    public let EMV_COMPLETION_STATUS = 2
    public let LANG_SELECT_STATUS = 3
    public let APP_SELECT_STATUS = 4
    public let APP_CONFIRM_STATUS = 5
    public let RWRDS_REQ_STATUS = 6
    public let PYMT_TYPE_STATUS = 7
    public let AMT_CONFIRM_STATUS = 8
    public let LAST_PIN_ENTRY_TRY = 9
    public let OFFLINE_PIN_ENTERED = 10
    public let ACCNT_TYPE_SELECTED = 11
    public let AUTH_REQ_SENT = 12
    public let AUTH_RESP_RECEIVED = 13
    public let CONFIRM_RESP_SENT = 14
    public let TRANS_CANCELLED = 15
    public let CARD_READ_STATUS = 16
    public let CARD_LOCKED_STATUS = 17
    public let ERROR_DETECTED_STATUS = 18
    public let PREMATURE_CARD_REMOVAL = 19
    public let CARD_NOT_SUPPORTED = 20
    public let MAC_VERIFICATION_STATUS = 21
    public let POST_CONFIRM_WAIT_START_STATUS = 22
    public let SIGNATURE_REQUESTED = 23
    public let TRANS_PREP_RESP_SENT = 24
    public let EMV_FLOW_SUSPENDED = 25
    public let ONLINE_PIN_ENETERED = 26
    public let EMV_STATE = 27
    public let CLESS_TRANS_STARTED = 28
    public let CLESS_ERROR_FLAG = 29
    public let EMV_CASHBACK_STATUS = 30
    public let CLESS_STATUS = 31
    public let CLESS_ERROR = 32
    
    public let MAX_PAYLOAD_FDF = 0xfdf
    public let MAX_PAYLOAD_4KB = 4096
    public let MAX_PAYLOAD_3KB = 3072
    public let MAX_PAYLOAD_240B = 240
    
    public let RECEIVE_BUFFER_SIZE = 2048 // 1024
    public let STX:UInt8 = 0x02
    public let ETX:UInt8  = 0x03
    public let FS:UInt8  = 0x1c
    public let GS:UInt8  = 0x1d
    public let RS:UInt8  = 0x1e
    public let ACK:UInt8  = 0x06
    public let NAK:UInt8  = 0x15
    
    public let INDEX_NOTFOUND = -1
    
    public let CHAR_ENDS:CChar = 0x3f
    public let CHAR_SSTR2:CChar = 0x3b
    public let CHAR_SSTR1:CChar = 0x25
    public let CHAR_FS_TR2:CChar = 0x3d
    public let CHAR_FS_ENCRTR:CChar = 0x3a
    public let CHAR_TR1_FC_B:CChar = 0x42
    public let CHAR_FS_TR1:CChar = 0x5e
    public let CHAR_TR1_NS:CChar = 0x2f
    public let CHAR_FS:CChar = 0x1c
    public let CHAR_GS:CChar = 0x1d
    public let CHAR_ETX:CChar = 0x03
    public let CHAR_STX:CChar = 0x02
    public let CHAR_ACK:CChar = 0x06
    public let CHAR_NAK:CChar = 0x15
    
    public let ZERO = 0
    public let ONE = 1
    public let TWO = 2
    
    public let SUCCESS_HX = 0x30
    public let SUCCESS = 0
    public let SOURCE_CARD_DATA_CLESS = 0x43
    public let SOURCE_CARD_DATA_ME = 0x48
    public let SOURCE_CARD_DATA_MSR = 0x4d
    public let SOURCE_CARD_DATA_CHIP = 0x53
    public let SOURCE_CARD_DATA_ERROR = 0x45
    public let SOURCE_PIN_DATA_ERROR = 0x46
    
    public let SOURCE_SIGNATURE = 0x0a
    
    public let MSGID_OFFLINE = 0 // 0x3030
    public let MSGID_ONLINE = 1 // 0x3130
    public let MSGID_CARD_READ = 35 // 0x3332
    public let MSGID_10 = 16 // 0x3031
    public let MSGID_EMV = 51  //0x3333
    public let MSGID_EMV_SC02 = 0x3230
    public let MSGID_EMV_SC00 = 0x3030
    public let MSGID_EMV_SC03 = 0x3330
    public let MSGID_EMV_SC05 = 0x3530
    public let MSGID_DEVINFO = 7 //0x3730
    public let MSGID_EMVSTATUS = 9 //0x3930
    public let MSGID_SIG_AVAILABLE = 32 // 0x3032
    public let MSGID_SIG_DATA = 41 // 0x3932
    public let MSGID_PIN_DATA = 49 // 0x3133
    public let MSGID_DISPLAY_FORM = 36 // 0x3432
    public let MSGID_CONFIG_WRITE = 96 // 0x3036
    public let MSGID_CONFIG_READ = 97 // 0x3136
    public let MSGID_FILE_WRITE = 98 //0x3236
    public let MSGID_PAYMT_TYPE = 3 // 0x3430
    //
    public let ERROR_JSON_TEMPL = "[\"errorType\":\"0\",\"errorCodeType\":\"0\",\"errorResponseCode\":\"0\",\"errorDescription\":\"\"]"
    //
    public let DEVICE_OFFLINE = "00.0000"
    public let DEVICE_ONLINE = "01.00000000"
    public let DEVICE_INFO = "07."
    public let DEVICE_HEALTH_STATS = "08."
    public let DEVICE_BEEP = "51."
    public let DEVICE_REBOOT = "97."
    //
    public let ENABLE_READERS = "23."
    public let ENABLE_PIN_ENTRY = "31."
    public let ENABLE_CLRTXT_ENTRY = "27."
    //
    public let FORM_DISPLAY = "24."
    public let FORM_DISPLAY_TNCS = "25."
    public let FORM_DISPLAY_ADS = "30."
    public let FORM_UPDATE = "70."
    //
    public let VAR_SET = "28."
    public let VAR_GET = "29."
    public let CFG_WRITE = "60."
    public let CFG_READ = "61."
    public let FILE_WRITE = "62."
    public let FILE_READ = "63."
    public let FILE_DELETE = "64."
    //
    public let EMV = "33."
    public let EMV_INIT = "00."
    public let EMV_TR2_EQUIV = "02."
    public let EMV_AUTH_REQ = "03."
    public let EMV_AUTH_RESP = "04."
    public let EMV_AUTH_CONFIRM = "05."
    
    public let CMD_SIG = "20."
    
    public let KEY_PROMPT = "Prompt"
    public let KEY_FILE = "File"
    public let KEY_FILE_TYPE = "Fipublic letype"
    public let KEY_ELEMENT_TYPE = "ElementType"
    public let KEY_TEXT_ELEMENT_ID = "TextElementId"
    
    public let DEF_PROMPT_SIG = "Please Sign below"
    
    public let STR_EMPTY = ""
    public let STR_T = "T"
    public let STR_TGZ = "TGZ"
    
    public let EMV_SUBCMD_00 = 0x00
    public let EMV_SUBCMD_01 = 0x01
    public let EMV_SUBCMD_02 = 0x02
    public let EMV_SUBCMD_03 = 0x03
    public let EMV_SUBCMD_05 = 0x05
    public let EMV_SUBCMD_09 = 0x09
    
    //public let EMV_TRACK2_EQVUIV = 2
    //public let EMV_AUTHREQ = 3
    //public let EMV_CONFIRM_RESP = 5
    //public let EMV_CARD_STATUS = 9
    
    public let ACK_06 =  0x06
    
    public let EMV_SUSPEND:[UInt8] = [ 0x02, 0x33, 0x34, 0x2e, 0x53, 0x03, 0x79 ]
    
    public let EMV_RESUME = [ 0x02, 0x33, 0x34, 0x2e, 0x52, 0x03, 0x78 ]
    
    public let CFG_7_10 = [ 0x02, 0x36, 0x30, 0x2e, 0x37, 0x1d, 0x31, 0x30, 0x1d, 0x30, 0x03, 0x2d ]
    
    public let CFG_3_1  = [ 0x02, 0x36, 0x30, 0x2e, 0x33, 0x1d, 0x31, 0x1d, 0x30, 0x03, 0x19 ]
    
    public let EMV_SYNC =
    [
    0x02, 0x33, 0x33, 0x2e, 0x30, 0x39, 0x2e, 0x30, 0x30, 0x30, 0x30, 0x1c, 0x52, 0x1c, 0x1c, 0x03,
    0x44
    ]
    
    public let ALPHANUMERIC_ENTRY =
    [
    0x02, 0x32, 0x37, 0x2E, 0x30, 0x30, 0x30, 0x32, 0x30, 0x32, 0x31, 0x32, 0x1C, 0x31, 0x1C, 0x41,
    0x4C, 0x50, 0x48, 0x41, 0x4E, 0x45, 0x57, 0x2E, 0x4B, 0x33, 0x5A, 0x03, 0x1E
    ]
    public let CLR_15:[UInt8] = [ 0x02, 0x31, 0x35, 0x2e, 0x38, 0x03, 0x11 ]
    // 14.1 = TGZ
    // 14.2 = OGZ
    public let READ_14_1 = [ 0x02, 0x36, 0x31, 0x2E, 0x31, 0x34, 0x1D, 0x31, 0x1C, 0x03, 0x1F ]
    public let TEML_14_1 =
    [
    0x36, 0x30, 0x2E, 0x31, 0x34, 0x1D, 0x31, 0x1D
    ]
    public let REBOOT =
    [
    0x02, 0x39, 0x37, 0x2E, 0x03, 0x23
    ]
    public let MSG_08 =
    [
    0x02, 0x30, 0x37, 0x2e, 0x03, 0x2a
    ]
    public let MSG_07 =
    [
    0x02, 0x30, 0x37, 0x2e, 0x03, 0x2a
    ]
    public let OFFLINE:[UInt8] =
    [
    0x02, 0x30, 0x30, 0x2e, 0x30, 0x30, 0x30, 0x30, 0x03, 0x2d
    ]
    public let ONLINE =
    [
    0x02, 0x30, 0x31, 0x2e, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x03, 0x2c
    ]
    public let MSG_23_DEF =
    [
    0x02, 0x32, 0x33, 0x2e, 0x49, 0x6e, 0x73, 0x65, 0x72, 0x74, 0x2c, 0x20, 0x54, 0x61, 0x70, 0x20,
    0x6f, 0x72, 0x20, 0x53, 0x77, 0x69, 0x70, 0x65, 0x20, 0x43, 0x61, 0x72, 0x64, 0x1c, 0x1c, 0x1c,
    0x4d, 0x43, 0x53, 0x03, 0x42
    ]
    public let CFG_SIGNATURECAPTURE =
    [
    0x02, 0x36, 0x30, 0x2E, 0x39, 0x1D, 0x32, 0x1D, 0x31, 0x03, 0x11
    ]
    public let ENABLE_SIGNATURE =
    [
    0x02, 0x32, 0x30, 0x2e, 0x53, 0x69, 0x67, 0x6e, 0x20, 0x61, 0x6e, 0x64, 0x20, 0x70, 0x72, 0x65,
    0x73, 0x73, 0x20, 0x45, 0x6e, 0x74, 0x65, 0x72, 0x03, 0x78
    ]
    public let ENABLE_DISPLAY =
    [
    0x02, 0x32, 0x34, 0x2E, 0x41, 0x4D, 0x54, 0x56, 0x2E, 0x4B, 0x33, 0x5A, 0x1C, 0x54, 0x50, 0x52,
    0x4F, 0x4D, 0x50, 0x54, 0x4C, 0x49, 0x4E, 0x45, 0x31, 0x2C, 0x54, 0x45, 0x53, 0x54, 0x03, 0x60
    ]
    public let ENABLE_PINENTRY =
    [
    0x02, 0x33, 0x31, 0x2E, 0x44, 0x30, 0x31, 0x1C, 0x1C, 0x50, 0x49, 0x4E, 0x2E, 0x4B, 0x33, 0x5A,
    0x03, 0x31
    ]
    public let CHECK_KEYS =
    [
    0x02, 0x32, 0x39, 0x2E, 0x30, 0x30, 0x30, 0x30, 0x30, 0x38, 0x31, 0x30, 0x03, 0x2F
    ]
    public let CFG_9 =
    [
    0x02, 0x36, 0x30, 0x2e, 0x39, 0x1d, 0x32, 0x1d, 0x31, 0x03, 0x11
    ]
    public let CFG_8_FS_13 =
    [
    0x02, 0x36, 0x30, 0x2e, 0x38, 0x1d, 0x31, 0x1d, 0x31, 0x32, 0x38,
    0x31, 0x33, 0x1d, 0x31, 0x34, 0x1d, 0x31, 0x03, 0x2f
    ]
    public let CFG_8 =
    [
    0x02, 0x36, 0x30, 0x2e, 0x38, 0x1d, 0x31, 0x1d, 0x31, 0x03, 0x13
    ]
    public let CFG_13_14 =
    [
    0x02, 0x36, 0x30, 0x2e, 0x31, 0x33, 0x1d, 0x31, 0x34, 0x1d, 0x31, 0x03, 0x1d
    ]
    public let CFG_13_11 =
    [
    0x02, 0x36, 0x30, 0x2E, 0x31, 0x33, 0x1D, 0x31, 0x31, 0x1D, 0x31, 0x03, 0x18
    ]
    public let CFG_19 =
    [
    0x02, 0x36, 0x30, 0x2E, 0x31, 0x39, 0x1D, 0x31, 0x1D, 0x31, 0x03, 0x23
    ]
    public let CFG_7_29 =
    [
    0x02, 0x36, 0x30, 0x2E, 0x37, 0x1D, 0x32, 0x39, 0x1D, 0x31, 0x03, 0x26
    ]
    public let MSG_GET_SIG_DATA =
    [
    0x02, 0x32, 0x39, 0x2e, 0x30, 0x30, 0x30, 0x30, 0x30, 0x37, 0x31, 0x32, 0x03, 0x22
    ]
    public let MSG_GET_SIG_BLOCK_0 =
    [
    0x02, 0x32, 0x39, 0x2e, 0x30, 0x30, 0x30, 0x30, 0x30, 0x37, 0x30, 0x30, 0x03, 0x21
    ]
    public let MSG_GET_SIG_BLOCK_1 =
    [
    0x02, 0x32, 0x39, 0x2e, 0x30, 0x30, 0x30, 0x30, 0x30, 0x37, 0x30, 0x31, 0x03, 0x20
    ]
    public let MSG_GET_SIG_BLOCK_2 =
    [
    0x02, 0x32, 0x39, 0x2e, 0x30, 0x30, 0x30, 0x30, 0x30, 0x37, 0x30, 0x32, 0x03, 0x23
    ]
    public let MSG_GET_SIG_BLOCK_3 =
    [
    0x02, 0x32, 0x39, 0x2e, 0x30, 0x30, 0x30, 0x30, 0x30, 0x37, 0x30, 0x33, 0x03, 0x22
    ]
    public let CFG_VARS_HDR:[[UInt8]] =
    [
    [0x36, 0x30, 0x2e, 0x31, 0x34, 0x1d, 0x31, 0x1d],
    [0x36, 0x30, 0x2e, 0x31, 0x34, 0x1d, 0x32, 0x1d],
    [0x36, 0x30, 0x2e, 0x31, 0x34, 0x1d, 0x33, 0x1d],
    [0x36, 0x30, 0x2e, 0x31, 0x34, 0x1d, 0x34, 0x1d],
    [0x36, 0x30, 0x2e, 0x31, 0x34, 0x1d, 0x35, 0x1d],
    [0x36, 0x30, 0x2e, 0x31, 0x34, 0x1d, 0x36, 0x1d],
    [0x36, 0x30, 0x2e, 0x31, 0x34, 0x1d, 0x37, 0x1d],
    [0x36, 0x30, 0x2e, 0x31, 0x34, 0x1d, 0x38, 0x1d],
    [0x36, 0x30, 0x2e, 0x31, 0x34, 0x1d, 0x39, 0x1d],
    [0x36, 0x30, 0x2e, 0x31, 0x34, 0x1d, 0x31, 0x30, 0x1d],
    [0x36, 0x30, 0x2e, 0x31, 0x34, 0x1d, 0x31, 0x31, 0x1d],
    [0x36, 0x30, 0x2e, 0x31, 0x34, 0x1d, 0x31, 0x32, 0x1d],
    [0x36, 0x30, 0x2e, 0x31, 0x34, 0x1d, 0x31, 0x33, 0x1d],
    [0x36, 0x30, 0x2e, 0x31, 0x34, 0x1d, 0x31, 0x34, 0x1d],
    [0x36, 0x30, 0x2e, 0x31, 0x34, 0x1d, 0x31, 0x35, 0x1d],
    [0x36, 0x30, 0x2e, 0x31, 0x34, 0x1d, 0x31, 0x36, 0x1d],
    [0x36, 0x30, 0x2e, 0x31, 0x34, 0x1d, 0x31, 0x37, 0x1d],
    [0x36, 0x30, 0x2e, 0x31, 0x34, 0x1d, 0x31, 0x38, 0x1d],
    [0x36, 0x30, 0x2e, 0x31, 0x34, 0x1d, 0x31, 0x39, 0x1d],
    [0x36, 0x30, 0x2e, 0x31, 0x34, 0x1d, 0x32, 0x30, 0x1d],
    [0x36, 0x30, 0x2e, 0x31, 0x34, 0x1d, 0x32, 0x31, 0x1d],
    [0x36, 0x30, 0x2e, 0x31, 0x34, 0x1d, 0x32, 0x32, 0x1d],
    [0x36, 0x30, 0x2e, 0x31, 0x34, 0x1d, 0x32, 0x33, 0x1d],
    [0x36, 0x30, 0x2e, 0x31, 0x34, 0x1d, 0x32, 0x34, 0x1d],
    [0x36, 0x30, 0x2e, 0x31, 0x34, 0x1d, 0x32, 0x35, 0x1d]
    ]
    
    public let CFG_VAR_RETRV:[[UInt8]] =
    [
    [0x02, 0x36, 0x31, 0x2e, 0x31, 0x34, 0x1d, 0x31, 0x03, 0x03],
    [0x02, 0x36, 0x31, 0x2e, 0x31, 0x34, 0x1d, 0x32, 0x03, 0x00],
    [0x02, 0x36, 0x31, 0x2e, 0x31, 0x34, 0x1d, 0x33, 0x03, 0x01],
    [0x02, 0x36, 0x31, 0x2e, 0x31, 0x34, 0x1d, 0x34, 0x03, 0x06],
    [0x02, 0x36, 0x31, 0x2e, 0x31, 0x34, 0x1d, 0x35, 0x03, 0x07]
    ]
    
    public let CFG_MISC_ON:[[UInt8]] =
    [
    [0x02, 0x36, 0x30, 0x2e, 0x38, 0x1d, 0x31, 0x1d, 0x31, 0x03, 0x13],
    [0x02, 0x36, 0x30, 0x2e, 0x31, 0x33, 0x1d, 0x31, 0x34, 0x1d, 0x31, 0x03, 0x1d],
    [0x02, 0x36, 0x30, 0x2e, 0x39, 0x1d, 0x32, 0x1d, 0x31, 0x03, 0x11]
    ]
    
    public let CFG_MISC_OFF:[[UInt8]] =
    [
    [0x02, 0x36, 0x30, 0x2e, 0x38, 0x1d, 0x31, 0x1d, 0x31, 0x03, 0x13],
    [0x02, 0x36, 0x30, 0x2e, 0x31, 0x33, 0x1d, 0x31, 0x34, 0x1d, 0x31, 0x03, 0x1d],
    [0x02, 0x36, 0x30, 0x2e, 0x39, 0x1d, 0x32, 0x1d, 0x31, 0x03, 0x11]
    ]
    // EMV Test bytes
    public let MSG_EMV_INIT =
    [
    0x02, 0x33, 0x33, 0x2e, 0x30, 0x30, 0x2e, 0x30, 0x30, 0x30,
    0x30, 0x1c, 0x1c, 0x1c, 0x35, 0x30, 0x30, 0x30, 0x1c, 0x1c, 0x03, 0x1a
    ]
    public let EMV_INIT_OBSOlete =
    [
    0x02, 0x33, 0x33, 0x2e, 0x30, 0x30, 0x2e, 0x30, 0x30, 0x2e, 0x30, 0x30, 0x30, 0x30, 0x1c,
    0x31, 0x37, 0x32, 0x35, 0x03, 0x30
    ]
    public let TEST_EMV1401 =
    [
    0x02, 0x31, 0x34, 0x2e, 0x30, 0x31, 0x03, 0x29
    ]
    public let TEST_EMV13 =
    [
    0x02, 0x31, 0x33, 0x2e, 0x31, 0x37, 0x32, 0x35, 0x03, 0x2e
    ]
    public let TEST_EMV04 =
    [
    0x02, 0x30, 0x34, 0x2e, 0x30, 0x42, 0x30, 0x30, 0x30, 0x03, 0x6b
    ]
    public let TEST_EMVRESP =
    [
    0x02, 0x33, 0x33, 0x2e, 0x30, 0x34, 0x2e, 0x30, 0x30, 0x30, 0x30,
    0x1c, 0x54, 0x30, 0x30, 0x38, 0x41, 0x3a, 0x30, 0x30, 0x30, 0x32,
    0x3a, 0x61, 0x30, 0x30, 0x03, 0x55
    ]
    public let TEST_EMV3302RESP =
    [
    0x02, 0x33, 0x33, 0x2e, 0x30, 0x32, 0x2e, 0x30, 0x30, 0x30, 0x30, 0x1c, 0x54, 0x34, 0x46, 0x3a,
    0x30, 0x38, 0x3a, 0x68, 0x41, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x32, 0x35, 0x30, 0x31,
    0x30, 0x38, 0x30, 0x31, 0x1c, 0x54, 0x35, 0x30, 0x3a, 0x31, 0x30, 0x3a, 0x61, 0x41, 0x6d, 0x65,
    0x72, 0x69, 0x63, 0x61, 0x6e, 0x20, 0x45, 0x78, 0x70, 0x72, 0x65, 0x73, 0x73, 0x1c, 0x54, 0x35,
    0x37, 0x3a, 0x31, 0x33, 0x3a, 0x68, 0x33, 0x37, 0x34, 0x32, 0x34, 0x35, 0x34, 0x35, 0x35, 0x34,
    0x30, 0x30, 0x30, 0x30, 0x31, 0x44, 0x31, 0x35, 0x31, 0x32, 0x32, 0x30, 0x31, 0x31, 0x32, 0x30,
    0x31, 0x31, 0x32, 0x33, 0x34, 0x35, 0x30, 0x30, 0x30, 0x30, 0x30, 0x46, 0x1c, 0x54, 0x35, 0x41,
    0x3a, 0x30, 0x38, 0x3a, 0x68, 0x33, 0x37, 0x34, 0x32, 0x34, 0x35, 0x34, 0x35, 0x35, 0x34, 0x30,
    0x30, 0x30, 0x30, 0x31, 0x46, 0x1c, 0x54, 0x35, 0x46, 0x32, 0x30, 0x3a, 0x31, 0x41, 0x3a, 0x61,
    0x41, 0x4e, 0x20, 0x41, 0x45, 0x49, 0x50, 0x53, 0x20, 0x31, 0x34, 0x20, 0x20, 0x20, 0x20, 0x20,
    0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x1c, 0x54, 0x35, 0x46, 0x32, 0x34,
    0x3a, 0x30, 0x33, 0x3a, 0x68, 0x31, 0x35, 0x31, 0x32, 0x33, 0x31, 0x1c, 0x54, 0x35, 0x46, 0x32,
    0x38, 0x3a, 0x30, 0x32, 0x3a, 0x68, 0x30, 0x38, 0x32, 0x36, 0x1c, 0x54, 0x35, 0x46, 0x32, 0x44,
    0x3a, 0x30, 0x32, 0x3a, 0x61, 0x65, 0x6e, 0x1c, 0x54, 0x35, 0x46, 0x33, 0x30, 0x3a, 0x30, 0x32,
    0x3a, 0x68, 0x30, 0x32, 0x30, 0x31, 0x1c, 0x54, 0x35, 0x46, 0x33, 0x34, 0x3a, 0x30, 0x31, 0x3a,
    0x68, 0x30, 0x30, 0x1c, 0x54, 0x39, 0x46, 0x31, 0x41, 0x3a, 0x30, 0x32, 0x3a, 0x68, 0x30, 0x38,
    0x34, 0x30, 0x1c, 0x54, 0x39, 0x46, 0x31, 0x45, 0x3a, 0x30, 0x38, 0x3a, 0x61, 0x50, 0x54, 0x30,
    0x31, 0x30, 0x31, 0x37, 0x39, 0x03, 0x2b
    ]
    public let TEST_EMV3303RESP =
    [
    0x02, 0x33, 0x33, 0x2e, 0x30, 0x33, 0x2e, 0x30, 0x30, 0x30, 0x30, 0x1c, 0x54, 0x34, 0x46, 0x3a,
    0x30, 0x38, 0x3a, 0x68, 0x41, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x32, 0x35, 0x30, 0x31,
    0x30, 0x38, 0x30, 0x31, 0x1c, 0x54, 0x35, 0x30, 0x3a, 0x31, 0x30, 0x3a, 0x61, 0x41, 0x6d, 0x65,
    0x72, 0x69, 0x63, 0x61, 0x6e, 0x20, 0x45, 0x78, 0x70, 0x72, 0x65, 0x73, 0x73, 0x1c, 0x54, 0x35,
    0x37, 0x3a, 0x31, 0x33, 0x3a, 0x68, 0x33, 0x37, 0x34, 0x32, 0x34, 0x35, 0x34, 0x35, 0x35, 0x34,
    0x30, 0x30, 0x30, 0x30, 0x31, 0x44, 0x31, 0x35, 0x31, 0x32, 0x32, 0x30, 0x31, 0x31, 0x32, 0x30,
    0x31, 0x31, 0x32, 0x33, 0x34, 0x35, 0x30, 0x30, 0x30, 0x30, 0x30, 0x46, 0x1c, 0x54, 0x38, 0x32,
    0x3a, 0x30, 0x32, 0x3a, 0x68, 0x35, 0x43, 0x30, 0x30, 0x1c, 0x54, 0x38, 0x34, 0x3a, 0x30, 0x38,
    0x3a, 0x68, 0x41, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x32, 0x35, 0x30, 0x31, 0x30, 0x38,
    0x30, 0x31, 0x1c, 0x54, 0x39, 0x35, 0x3a, 0x30, 0x35, 0x3a, 0x68, 0x34, 0x30, 0x38, 0x30, 0x30,
    0x30, 0x30, 0x30, 0x30, 0x30, 0x1c, 0x54, 0x39, 0x41, 0x3a, 0x30, 0x33, 0x3a, 0x68, 0x31, 0x35,
    0x30, 0x34, 0x30, 0x37, 0x1c, 0x54, 0x39, 0x42, 0x3a, 0x30, 0x32, 0x3a, 0x68, 0x45, 0x38, 0x30,
    0x30, 0x1c, 0x54, 0x39, 0x43, 0x3a, 0x30, 0x31, 0x3a, 0x68, 0x30, 0x30, 0x1c, 0x54, 0x35, 0x46,
    0x32, 0x41, 0x3a, 0x30, 0x32, 0x3a, 0x68, 0x30, 0x38, 0x34, 0x30, 0x1c, 0x54, 0x35, 0x46, 0x33,
    0x34, 0x3a, 0x30, 0x31, 0x3a, 0x68, 0x30, 0x30, 0x1c, 0x54, 0x39, 0x46, 0x30, 0x32, 0x3a, 0x30,
    0x36, 0x3a, 0x68, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x31, 0x37, 0x32, 0x35, 0x1c,
    0x54, 0x39, 0x46, 0x30, 0x36, 0x3a, 0x30, 0x38, 0x3a, 0x68, 0x41, 0x30, 0x30, 0x30, 0x30, 0x30,
    0x30, 0x30, 0x32, 0x35, 0x30, 0x31, 0x30, 0x38, 0x30, 0x31, 0x1c, 0x54, 0x39, 0x46, 0x30, 0x39,
    0x3a, 0x30, 0x32, 0x3a, 0x68, 0x30, 0x30, 0x38, 0x43, 0x1c, 0x54, 0x39, 0x46, 0x31, 0x30, 0x3a,
    0x30, 0x37, 0x3a, 0x68, 0x30, 0x36, 0x46, 0x46, 0x30, 0x31, 0x30, 0x33, 0x41, 0x34, 0x42, 0x39,
    0x30, 0x30, 0x1c, 0x54, 0x39, 0x46, 0x31, 0x41, 0x3a, 0x30, 0x32, 0x3a, 0x68, 0x30, 0x38, 0x34,
    0x30, 0x1c, 0x54, 0x39, 0x46, 0x31, 0x45, 0x3a, 0x30, 0x38, 0x3a, 0x61, 0x50, 0x54, 0x30, 0x31,
    0x30, 0x31, 0x37, 0x39, 0x1c, 0x54, 0x39, 0x46, 0x32, 0x31, 0x3a, 0x30, 0x33, 0x3a, 0x68, 0x32,
    0x30, 0x33, 0x35, 0x34, 0x39, 0x1c, 0x54, 0x39, 0x46, 0x32, 0x36, 0x3a, 0x30, 0x38, 0x3a, 0x68,
    0x33, 0x37, 0x46, 0x33, 0x31, 0x44, 0x42, 0x37, 0x46, 0x41, 0x33, 0x36, 0x45, 0x46, 0x36, 0x45,
    0x1c, 0x54, 0x39, 0x46, 0x32, 0x37, 0x3a, 0x30, 0x31, 0x3a, 0x68, 0x38, 0x30, 0x1c, 0x54, 0x39,
    0x46, 0x33, 0x33, 0x3a, 0x30, 0x33, 0x3a, 0x68, 0x45, 0x30, 0x46, 0x38, 0x43, 0x38, 0x1c, 0x54,
    0x39, 0x46, 0x33, 0x34, 0x3a, 0x30, 0x33, 0x3a, 0x68, 0x34, 0x31, 0x30, 0x33, 0x30, 0x32, 0x1c,
    0x54, 0x39, 0x46, 0x33, 0x35, 0x3a, 0x30, 0x31, 0x3a, 0x68, 0x32, 0x32, 0x1c, 0x54, 0x39, 0x46,
    0x33, 0x36, 0x3a, 0x30, 0x32, 0x3a, 0x68, 0x30, 0x30, 0x35, 0x45, 0x1c, 0x54, 0x39, 0x46, 0x33,
    0x37, 0x3a, 0x30, 0x34, 0x3a, 0x68, 0x38, 0x41, 0x34, 0x45, 0x31, 0x31, 0x33, 0x46, 0x1c, 0x54,
    0x39, 0x46, 0x33, 0x39, 0x3a, 0x30, 0x31, 0x3a, 0x68, 0x30, 0x35, 0x1c, 0x54, 0x39, 0x46, 0x34,
    0x30, 0x3a, 0x30, 0x35, 0x3a, 0x68, 0x46, 0x30, 0x30, 0x30, 0x46, 0x30, 0x41, 0x30, 0x30, 0x31,
    0x1c, 0x54, 0x39, 0x46, 0x34, 0x31, 0x3a, 0x30, 0x34, 0x3a, 0x68, 0x30, 0x30, 0x30, 0x30, 0x30,
    0x30, 0x34, 0x31, 0x1c, 0x54, 0x39, 0x46, 0x35, 0x33, 0x3a, 0x30, 0x31, 0x3a, 0x68, 0x35, 0x32,
    0x1c, 0x44, 0x31, 0x30, 0x30, 0x35, 0x3a, 0x30, 0x32, 0x3a, 0x61, 0x30, 0x30, 0x1c, 0x44, 0x39,
    0x30, 0x30, 0x30, 0x3a, 0x30, 0x31, 0x3a, 0x61, 0x42, 0x1c, 0x44, 0x39, 0x30, 0x30, 0x31, 0x3a,
    0x30, 0x31, 0x3a, 0x61, 0x43, 0x03, 0x2b
    ]
    public let TEST_EMV3305RESP =
    [
    0x02, 0x33, 0x33, 0x2e, 0x30, 0x35, 0x2e, 0x30, 0x30, 0x30, 0x30, 0x1c, 0x54, 0x34, 0x46, 0x3a,
    0x30, 0x38, 0x3a, 0x68, 0x41, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x32, 0x35, 0x30, 0x31,
    0x30, 0x38, 0x30, 0x31, 0x1c, 0x54, 0x35, 0x30, 0x3a, 0x31, 0x30, 0x3a, 0x61, 0x41, 0x6d, 0x65,
    0x72, 0x69, 0x63, 0x61, 0x6e, 0x20, 0x45, 0x78, 0x70, 0x72, 0x65, 0x73, 0x73, 0x1c, 0x54, 0x35,
    0x37, 0x3a, 0x31, 0x33, 0x3a, 0x68, 0x33, 0x37, 0x34, 0x32, 0x34, 0x35, 0x34, 0x35, 0x35, 0x34,
    0x30, 0x30, 0x30, 0x30, 0x31, 0x44, 0x31, 0x35, 0x31, 0x32, 0x32, 0x30, 0x31, 0x31, 0x32, 0x30,
    0x31, 0x31, 0x32, 0x33, 0x34, 0x35, 0x30, 0x30, 0x30, 0x30, 0x30, 0x46, 0x1c, 0x54, 0x38, 0x32,
    0x3a, 0x30, 0x32, 0x3a, 0x68, 0x35, 0x43, 0x30, 0x30, 0x1c, 0x54, 0x38, 0x34, 0x3a, 0x30, 0x38,
    0x3a, 0x68, 0x41, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x32, 0x35, 0x30, 0x31, 0x30, 0x38,
    0x30, 0x31, 0x1c, 0x54, 0x38, 0x41, 0x3a, 0x30, 0x32, 0x3a, 0x61, 0x30, 0x30, 0x1c, 0x54, 0x38,
    0x45, 0x3a, 0x31, 0x30, 0x3a, 0x68, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30,
    0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x34, 0x32, 0x30, 0x31, 0x34, 0x31, 0x30, 0x33, 0x35, 0x45,
    0x30, 0x33, 0x31, 0x46, 0x30, 0x32, 0x1c, 0x54, 0x39, 0x35, 0x3a, 0x30, 0x35, 0x3a, 0x68, 0x34,
    0x30, 0x38, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x1c, 0x54, 0x39, 0x41, 0x3a, 0x30, 0x33,
    0x3a, 0x68, 0x31, 0x35, 0x30, 0x34, 0x30, 0x37, 0x1c, 0x54, 0x39, 0x42, 0x3a, 0x30, 0x32, 0x3a,
    0x68, 0x45, 0x38, 0x30, 0x30, 0x1c, 0x54, 0x39, 0x43, 0x3a, 0x30, 0x31, 0x3a, 0x68, 0x30, 0x30,
    0x1c, 0x54, 0x35, 0x46, 0x32, 0x41, 0x3a, 0x30, 0x32, 0x3a, 0x68, 0x30, 0x38, 0x34, 0x30, 0x1c,
    0x54, 0x35, 0x46, 0x33, 0x34, 0x3a, 0x30, 0x31, 0x3a, 0x68, 0x30, 0x30, 0x1c, 0x54, 0x39, 0x46,
    0x30, 0x32, 0x3a, 0x30, 0x36, 0x3a, 0x68, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x31,
    0x37, 0x32, 0x35, 0x1c, 0x54, 0x39, 0x46, 0x30, 0x33, 0x3a, 0x30, 0x36, 0x3a, 0x68, 0x30, 0x30,
    0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x1c, 0x54, 0x39, 0x46, 0x30, 0x36,
    0x3a, 0x30, 0x38, 0x3a, 0x68, 0x41, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x32, 0x35, 0x30,
    0x31, 0x30, 0x38, 0x30, 0x31, 0x1c, 0x54, 0x39, 0x46, 0x30, 0x37, 0x3a, 0x30, 0x32, 0x3a, 0x68,
    0x46, 0x46, 0x30, 0x30, 0x1c, 0x54, 0x39, 0x46, 0x30, 0x38, 0x3a, 0x30, 0x32, 0x3a, 0x68, 0x30,
    0x30, 0x30, 0x31, 0x1c, 0x54, 0x39, 0x46, 0x30, 0x39, 0x3a, 0x30, 0x32, 0x3a, 0x68, 0x30, 0x30,
    0x38, 0x43, 0x1c, 0x54, 0x39, 0x46, 0x30, 0x44, 0x3a, 0x30, 0x35, 0x3a, 0x68, 0x46, 0x30, 0x35,
    0x30, 0x45, 0x43, 0x41, 0x30, 0x34, 0x30, 0x1c, 0x54, 0x39, 0x46, 0x30, 0x45, 0x3a, 0x30, 0x35,
    0x3a, 0x68, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x1c, 0x54, 0x39, 0x46,
    0x30, 0x46, 0x3a, 0x30, 0x35, 0x3a, 0x68, 0x46, 0x30, 0x46, 0x38, 0x46, 0x43, 0x46, 0x38, 0x30,
    0x30, 0x1c, 0x54, 0x39, 0x46, 0x31, 0x30, 0x3a, 0x30, 0x37, 0x3a, 0x68, 0x30, 0x36, 0x46, 0x46,
    0x30, 0x31, 0x30, 0x33, 0x36, 0x34, 0x42, 0x44, 0x30, 0x30, 0x1c, 0x54, 0x39, 0x46, 0x31, 0x37,
    0x3a, 0x30, 0x31, 0x3a, 0x68, 0x30, 0x33, 0x1c, 0x54, 0x39, 0x46, 0x31, 0x41, 0x3a, 0x30, 0x32,
    0x3a, 0x68, 0x30, 0x38, 0x34, 0x30, 0x1c, 0x54, 0x39, 0x46, 0x31, 0x45, 0x3a, 0x30, 0x38, 0x3a,
    0x61, 0x50, 0x54, 0x30, 0x31, 0x30, 0x31, 0x37, 0x39, 0x1c, 0x54, 0x39, 0x46, 0x32, 0x31, 0x3a,
    0x30, 0x33, 0x3a, 0x68, 0x32, 0x30, 0x33, 0x35, 0x34, 0x39, 0x1c, 0x54, 0x39, 0x46, 0x32, 0x36,
    0x3a, 0x30, 0x38, 0x3a, 0x68, 0x30, 0x36, 0x44, 0x43, 0x42, 0x45, 0x34, 0x41, 0x42, 0x44, 0x35,
    0x31, 0x44, 0x41, 0x44, 0x44, 0x1c, 0x54, 0x39, 0x46, 0x32, 0x37, 0x3a, 0x30, 0x31, 0x3a, 0x68,
    0x34, 0x30, 0x1c, 0x54, 0x39, 0x46, 0x33, 0x33, 0x3a, 0x30, 0x33, 0x3a, 0x68, 0x45, 0x30, 0x46,
    0x38, 0x43, 0x38, 0x1c, 0x54, 0x39, 0x46, 0x33, 0x34, 0x3a, 0x30, 0x33, 0x3a, 0x68, 0x34, 0x31,
    0x30, 0x33, 0x30, 0x32, 0x1c, 0x54, 0x39, 0x46, 0x33, 0x35, 0x3a, 0x30, 0x31, 0x3a, 0x68, 0x32,
    0x32, 0x1c, 0x54, 0x39, 0x46, 0x33, 0x36, 0x3a, 0x30, 0x32, 0x3a, 0x68, 0x30, 0x30, 0x35, 0x45,
    0x1c, 0x54, 0x39, 0x46, 0x33, 0x37, 0x3a, 0x30, 0x34, 0x3a, 0x68, 0x38, 0x41, 0x34, 0x45, 0x31,
    0x31, 0x33, 0x46, 0x1c, 0x54, 0x39, 0x46, 0x34, 0x31, 0x3a, 0x30, 0x34, 0x3a, 0x68, 0x30, 0x30,
    0x30, 0x30, 0x30, 0x30, 0x34, 0x31, 0x1c, 0x54, 0x39, 0x46, 0x35, 0x33, 0x3a, 0x30, 0x31, 0x3a,
    0x68, 0x35, 0x32, 0x1c, 0x44, 0x31, 0x30, 0x30, 0x31, 0x3a, 0x30, 0x31, 0x3a, 0x61, 0x31, 0x1c,
    0x44, 0x31, 0x30, 0x30, 0x32, 0x3a, 0x30, 0x31, 0x3a, 0x61, 0x30, 0x1c, 0x44, 0x31, 0x30, 0x30,
    0x33, 0x3a, 0x30, 0x31, 0x3a, 0x61, 0x41, 0x1c, 0x44, 0x31, 0x30, 0x30, 0x35, 0x3a, 0x30, 0x32,
    0x3a, 0x61, 0x30, 0x30, 0x1c, 0x44, 0x31, 0x30, 0x30, 0x45, 0x3a, 0x30, 0x32, 0x3a, 0x61, 0x45,
    0x4e, 0x1c, 0x44, 0x31, 0x30, 0x30, 0x46, 0x3a, 0x30, 0x31, 0x3a, 0x61, 0x31, 0x03, 0x38
    ]
    
    public let TEST_P2PE_TR2 =
    [
    0x02, 0x32, 0x33, 0x2e, 0x30, 0x4d, 0x1c, 0x3b, 0x34, 0x30, 0x30, 0x35, 0x35, 0x37, 0x30, 0x30,
    0x30, 0x30, 0x30, 0x30, 0x31, 0x31, 0x31, 0x33, 0x3d, 0x31, 0x36, 0x30, 0x34, 0x31, 0x30, 0x31,
    0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x3f, 0x1c, 0x46,
    0x46, 0x46, 0x46, 0x37, 0x33, 0x38, 0x31, 0x33, 0x39, 0x30, 0x30, 0x30, 0x30, 0x32, 0x30, 0x30,
    0x30, 0x30, 0x31, 0x3a, 0x32, 0x3a, 0x30, 0x30, 0x34, 0x30, 0x3a, 0x46, 0x34, 0x38, 0x34, 0x37,
    0x35, 0x42, 0x34, 0x45, 0x35, 0x36, 0x46, 0x31, 0x38, 0x42, 0x30, 0x42, 0x41, 0x33, 0x33, 0x41,
    0x30, 0x32, 0x42, 0x34, 0x42, 0x44, 0x44, 0x42, 0x45, 0x41, 0x31, 0x38, 0x30, 0x35, 0x34, 0x42,
    0x41, 0x45, 0x45, 0x42, 0x46, 0x42, 0x46, 0x37, 0x36, 0x45, 0x32, 0x36, 0x38, 0x38, 0x38, 0x44,
    0x44, 0x42, 0x33, 0x35, 0x45, 0x33, 0x33, 0x30, 0x34, 0x34, 0x46, 0x43, 0x31, 0x44, 0x41, 0x42,
    0x36, 0x43, 0x39, 0x41, 0x32, 0x39, 0x33, 0x41, 0x33, 0x38, 0x43, 0x03, 0x1c
    ]
    
    public let TEST_P2PE_TR1_2 =
    [
    0x02, 0x32, 0x33, 0x2e, 0x30, 0x4d, 0x25, 0x42, 0x34, 0x37, 0x33, 0x37, 0x30, 0x32, 0x30, 0x30,
    0x30, 0x30, 0x30, 0x30, 0x31, 0x38, 0x32, 0x32, 0x5e, 0x4b, 0x48, 0x41, 0x4e, 0x2f, 0x20, 0x4b,
    0x48, 0x41, 0x4c, 0x49, 0x44, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,
    0x20, 0x20, 0x20, 0x5e, 0x31, 0x37, 0x30, 0x32, 0x31, 0x30, 0x31, 0x30, 0x30, 0x30, 0x30, 0x30,
    0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30,
    0x30, 0x30, 0x30, 0x3f, 0x1c, 0x3b, 0x34, 0x37, 0x33, 0x37, 0x30, 0x32, 0x30, 0x30, 0x30, 0x30,
    0x30, 0x30, 0x31, 0x38, 0x32, 0x32, 0x3d, 0x31, 0x37, 0x30, 0x32, 0x31, 0x30, 0x31, 0x30, 0x30,
    0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x3f, 0x1c, 0x46, 0x46, 0x46, 0x46, 0x37, 0x33,
    0x38, 0x31, 0x33, 0x39, 0x30, 0x30, 0x30, 0x30, 0x32, 0x30, 0x30, 0x30, 0x30, 0x31, 0x3a, 0x34,
    0x3a, 0x30, 0x31, 0x32, 0x30, 0x3a, 0x36, 0x34, 0x37, 0x38, 0x43, 0x42, 0x34, 0x41, 0x46, 0x30,
    0x35, 0x38, 0x35, 0x36, 0x37, 0x33, 0x44, 0x35, 0x39, 0x42, 0x42, 0x31, 0x34, 0x42, 0x43, 0x37,
    0x46, 0x35, 0x34, 0x42, 0x46, 0x44, 0x30, 0x32, 0x33, 0x32, 0x45, 0x30, 0x35, 0x36, 0x44, 0x46,
    0x38, 0x42, 0x42, 0x43, 0x44, 0x39, 0x38, 0x34, 0x37, 0x31, 0x45, 0x30, 0x33, 0x39, 0x45, 0x35,
    0x43, 0x39, 0x42, 0x36, 0x32, 0x31, 0x32, 0x34, 0x32, 0x44, 0x45, 0x45, 0x32, 0x39, 0x33, 0x34,
    0x44, 0x33, 0x39, 0x33, 0x44, 0x33, 0x35, 0x46, 0x32, 0x31, 0x37, 0x38, 0x38, 0x37, 0x36, 0x31,
    0x42, 0x35, 0x35, 0x45, 0x38, 0x41, 0x34, 0x35, 0x33, 0x43, 0x37, 0x42, 0x44, 0x36, 0x36, 0x32,
    0x38, 0x43, 0x42, 0x30, 0x34, 0x44, 0x43, 0x45, 0x38, 0x44, 0x39, 0x46, 0x43, 0x33, 0x37, 0x32,
    0x44, 0x30, 0x39, 0x39, 0x30, 0x38, 0x36, 0x39, 0x42, 0x30, 0x42, 0x37, 0x39, 0x34, 0x36, 0x31,
    0x33, 0x33, 0x38, 0x43, 0x42, 0x38, 0x36, 0x34, 0x31, 0x37, 0x43, 0x42, 0x44, 0x37, 0x46, 0x33,
    0x36, 0x30, 0x46, 0x30, 0x44, 0x44, 0x45, 0x31, 0x43, 0x36, 0x42, 0x33, 0x41, 0x33, 0x37, 0x37,
    0x35, 0x38, 0x43, 0x32, 0x33, 0x31, 0x31, 0x34, 0x46, 0x35, 0x41, 0x43, 0x39, 0x46, 0x35, 0x37,
    0x36, 0x30, 0x41, 0x33, 0x38, 0x31, 0x44, 0x46, 0x46, 0x44, 0x46, 0x42, 0x46, 0x30, 0x38, 0x44,
    0x44, 0x37, 0x45, 0x31, 0x33, 0x33, 0x45, 0x33, 0x46, 0x30, 0x42, 0x31, 0x33, 0x44, 0x34, 0x35,
    0x37, 0x38, 0x46, 0x38, 0x33, 0x32, 0x42, 0x44, 0x39, 0x44, 0x41, 0x37, 0x36, 0x46, 0x46, 0x37,
    0x45, 0x37, 0x32, 0x44, 0x38, 0x44, 0x03, 0x31
    ]
    
    public let RESP_07_RBA144 =
    [
    0x02, 0x30, 0x37, 0x2E, 0x49, 0x4E, 0x47, 0x4E, 0x41, 0x52, 0x1C, 0x69, 0x53, 0x43, 0x32, 0x35,
    0x30, 0x1C, 0x30, 0x49, 0x53, 0x43, 0x32, 0x35, 0x30, 0x2D, 0x33, 0x31, 0x50, 0x32, 0x35, 0x39,
    0x32, 0x41, 0x1C, 0x36, 0x35, 0x35, 0x33, 0x36, 0x1C, 0x31, 0x33, 0x31, 0x30, 0x37, 0x32, 0x1C,
    0x30, 0x30, 0x30, 0x30, 0x1C, 0x30, 0x34, 0x30, 0x31, 0x1C, 0x33, 0x38, 0x30, 0x36, 0x1C, 0x31,
    0x34, 0x30, 0x34, 0x1C, 0x30, 0x30, 0x30, 0x30, 0x1C, 0x30, 0x30, 0x30, 0x30, 0x1C, 0x4E, 0x2F,
    0x41, 0x1C, 0x4E, 0x2F, 0x41, 0x1C, 0x38, 0x30, 0x34, 0x32, 0x33, 0x32, 0x36, 0x30, 0x1C, 0x30,
    0x34, 0x36, 0x37, 0x1C, 0x30, 0x34, 0x38, 0x38, 0x1C, 0x30, 0x31, 0x30, 0x31, 0x1C, 0x30, 0x33,
    0x30, 0x38, 0x1C, 0x30, 0x32, 0x31, 0x31, 0x1C, 0x30, 0x33, 0x37, 0x33, 0x1C, 0x30, 0x30, 0x32,
    0x36, 0x1C, 0x30, 0x32, 0x30, 0x34, 0x1C, 0x4E, 0x4F, 0x4E, 0x45, 0x1C, 0x59, 0x45, 0x53, 0x03,
    0x74
    ]
    
}
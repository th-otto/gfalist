#include <stddef.h>
#include <stdint.h>
#include "tables.h"

static struct argdesc const REM_args[] = {
};

static struct argdesc const star_args[] = {
};

static struct argdesc const yPRINT_args[] = {
};

static struct argdesc const yGOSUB_args[] = {
};

static struct argdesc const yALERT_args[] = {
};

static struct argdesc const yADD_args[] = {
};

static struct argdesc const yALINE_args[] = {
};

static struct argdesc const yARECT_args[] = {
};

static struct argdesc const yAPOLY_args[] = {
};

static struct argdesc const yACHAR_args[] = {
};

static struct argdesc const yACLIP_args[] = {
};

static struct argdesc const yADDRIN_args[] = {
};

static struct argdesc const yADDROUT_args[] = {
};

static struct argdesc const yABSOLUTE_args[] = {
};

static struct argdesc const yAFTER_args[] = {
};

static struct argdesc const yATEXT_args[] = {
};

static struct argdesc const yARRAYFILL_args[] = {
};

static struct argdesc const yARRAY_args[] = {
};

static struct argdesc const yAMOUSE_args[] = {
};

static struct argdesc const yAVERAGE_RGB_args[] = {
};

static struct argdesc const yBMOVE_args[] = {
};

static struct argdesc const yBYTE_args[] = {
};

static struct argdesc const yBOX_args[] = {
};

static struct argdesc const yBGET_args[] = {
};

static struct argdesc const yBPUT_args[] = {
};

static struct argdesc const yBOUNDARY_args[] = {
};

static struct argdesc const yBITBLT_args[] = {
};

static struct argdesc const yBSAVE_args[] = {
};

static struct argdesc const yBLOAD_args[] = {
};

static struct argdesc const yBITBLK_args[] = {
};

static struct argdesc const yBFOBSPEC_args[] = {
};

static struct argdesc const yBEXG_args[] = {
};

static struct argdesc const yBMIRROR_args[] = {
};

static struct argdesc const yBZERO_args[] = {
};

static struct argdesc const yBFILL_args[] = {
};

static struct argdesc const yBEEP_args[] = {
};

static struct argdesc const yBCRYPT_args[] = {
};

static struct argdesc const yBXLATE_args[] = {
};

static struct argdesc const yBREPLACE_args[] = {
};

static struct argdesc const yBF_OBSPEC_args[] = {
};

static struct argdesc const yBF_CHARACTER_args[] = {
};

static struct argdesc const yBF_FRAMESIZE_args[] = {
};

static struct argdesc const yBF_FRAMECOL_args[] = {
};

static struct argdesc const yBF_TEXTCOL_args[] = {
};

static struct argdesc const yBF_TEXTMODE_args[] = {
};

static struct argdesc const yBF_FILLPATTERN_args[] = {
};

static struct argdesc const yBF_INTERIORCOL_args[] = {
};

static struct argdesc const yBI_PDATA_args[] = {
};

static struct argdesc const yBI_WB_args[] = {
};

static struct argdesc const yBI_HL_args[] = {
};

static struct argdesc const yBI_X_args[] = {
};

static struct argdesc const yBI_Y_args[] = {
};

static struct argdesc const yBI_COLOR_args[] = {
};

static struct argdesc const yBAR_args[] = {
};

static struct argdesc const yCOLOR_args[] = {
};

static struct argdesc const yCASE_args[] = {
};

static struct argdesc const yCONT_args[] = {
};

static struct argdesc const yCONTRL_args[] = {
};

static struct argdesc const yCARD_args[] = {
};

static struct argdesc const yCHAR_args[] = {
};

static struct argdesc const ySTRPOKE_args[] = {
};

static struct argdesc const yCLOSE_args[] = {
};

static struct argdesc const yCLEAR_args[] = {
};

static struct argdesc const yCIRCLE_args[] = {
};

static struct argdesc const yCHDIR_args[] = {
};

static struct argdesc const yCHDRIVE_args[] = {
};

static struct argdesc const yCLR_args[] = {
};

static struct argdesc const yCLS_args[] = {
};

static struct argdesc const yCLIP_args[] = {
};

static struct argdesc const yCHAIN_args[] = {
};

static struct argdesc const yCALL_args[] = {
};

static struct argdesc const yCURVE_args[] = {
};

static struct argdesc const yCICONBLK_args[] = {
};

static struct argdesc const yC2P_args[] = {
};

static struct argdesc const yCRASTER_args[] = {
};

static struct argdesc const yCPUFLUSH_args[] = {
};

static struct argdesc const yCOLDBOOT_args[] = {
};

static struct argdesc const yCI_MAINLIST_args[] = {
};

static struct argdesc const yCI_NUM_PLANES_args[] = {
};

static struct argdesc const yCI_COL_DATA_args[] = {
};

static struct argdesc const yCI_COL_MASK_args[] = {
};

static struct argdesc const yCI_SEL_DATA_args[] = {
};

static struct argdesc const yCI_SEL_MASK_args[] = {
};

static struct argdesc const yCI_NEXT_RES_args[] = {
};

static struct argdesc const yDATA_args[] = {
};

static struct argdesc const yDO_args[] = {
};

static struct argdesc const yDEFLINE_args[] = {
};

static struct argdesc const yDEFMOUSE_args[] = {
};

static struct argdesc const yDEFLIST_args[] = {
};

static struct argdesc const yDEFMARK_args[] = {
};

static struct argdesc const yDEFNUM_args[] = {
};

static struct argdesc const yDEFTEXT_args[] = {
};

static struct argdesc const yDEFFILL_args[] = {
};

static struct argdesc const yDEFFN_args[] = {
};

static struct argdesc const yDEFAULT_args[] = {
};

static struct argdesc const yDEC_args[] = {
};

static struct argdesc const yDIV_args[] = {
};

static struct argdesc const yDPOKE_args[] = {
};

static struct argdesc const yDIM_args[] = {
};

static struct argdesc const yDMASOUND_args[] = {
};

static struct argdesc const yDMACONTROL_args[] = {
};

static struct argdesc const yDOUBLE_args[] = {
};

static struct argdesc const yDIR_args[] = {
};

static struct argdesc const yDELETE_args[] = {
};

static struct argdesc const yDRAW_args[] = {
};

static struct argdesc const yDELAY_args[] = {
};

static struct argdesc const yDEFINT_args[] = {
};

static struct argdesc const yDEFBYT_args[] = {
};

static struct argdesc const yDEFWRD_args[] = {
};

static struct argdesc const yDEFBIT_args[] = {
};

static struct argdesc const yDEFSTR_args[] = {
};

static struct argdesc const yDEFSNG_args[] = {
};

static struct argdesc const yDEFDBL_args[] = {
};

static struct argdesc const yDEFFLT_args[] = {
};

static struct argdesc const yDUMP_args[] = {
};

static struct argdesc const yELSE_args[] = {
};

static struct argdesc const yENDIF_args[] = {
};

static struct argdesc const yENDFUNC_args[] = {
};

static struct argdesc const yENDSWITCH_args[] = {
};

static struct argdesc const yENDSELECT_args[] = {
};

static struct argdesc const yENDWHILE_args[] = {
};

static struct argdesc const yENDDO_args[] = {
};

static struct argdesc const yENDREPEAT_args[] = {
};

static struct argdesc const yENDFOR_args[] = {
};

static struct argdesc const yENDPROC_args[] = {
};

static struct argdesc const yENDSUB_args[] = {
};

static struct argdesc const yEXIT_IF_args[] = {
};

static struct argdesc const yELLIPSE_args[] = {
};

static struct argdesc const yERROR_args[] = {
};

static struct argdesc const yEDIT_args[] = {
};

static struct argdesc const yERASE_args[] = {
};

static struct argdesc const yEXEC_args[] = {
};

static struct argdesc const yEVERY_args[] = {
};

static struct argdesc const yENDSEEK_args[] = {
};

static struct argdesc const yENVIRON_args[] = {
};

static struct argdesc const yFOR_args[] = {
};

static struct argdesc const yFUNCTION_args[] = {
};

static struct argdesc const yFLOAT_args[] = {
};

static struct argdesc const yFILL_args[] = {
};

static struct argdesc const yFIELD_args[] = {
};

static struct argdesc const yFILES_args[] = {
};

static struct argdesc const yFILESELECT_args[] = {
};

static struct argdesc const yFULLW_args[] = {
};

static struct argdesc const yGOTO_args[] = {
};

static struct argdesc const yGEMSYS_args[] = {
};

static struct argdesc const yGINTIN_args[] = {
};

static struct argdesc const yGINTOUT_args[] = {
};

static struct argdesc const yGCONTRL_args[] = {
};

static struct argdesc const yGET_args[] = {
};

static struct argdesc const yGRAPHMODE_args[] = {
};

static struct argdesc const yGSTICK_args[] = {
};

static struct argdesc const yGHIDEM_args[] = {
};

static struct argdesc const yGSHOWM_args[] = {
};

static struct argdesc const yGMOUSE_args[] = {
};

static struct argdesc const yHARDCOPY_args[] = {
};

static struct argdesc const yHIDEM_args[] = {
};

static struct argdesc const yHLINE_args[] = {
};

static struct argdesc const yHTAB_args[] = {
};

static struct argdesc const yIF_args[] = {
};

static struct argdesc const yINC_args[] = {
};

static struct argdesc const yINTIN_args[] = {
};

static struct argdesc const yINTOUT_args[] = {
};

static struct argdesc const yINT_args[] = {
};

static struct argdesc const yINFOW_args[] = {
};

static struct argdesc const yINSERT_args[] = {
};

static struct argdesc const yINPUT_args[] = {
};

static struct argdesc const yINLINE_args[] = {
};

static struct argdesc const yIKBD_args[] = {
};

static struct argdesc const yICONBLK_args[] = {
};

static struct argdesc const yIB_PMASK_args[] = {
};

static struct argdesc const yIB_PDATA_args[] = {
};

static struct argdesc const yIB_PTEXT_args[] = {
};

static struct argdesc const yIB_CHAR_args[] = {
};

static struct argdesc const yIB_XCHAR_args[] = {
};

static struct argdesc const yIB_YCHAR_args[] = {
};

static struct argdesc const yIB_XICON_args[] = {
};

static struct argdesc const yIB_YICON_args[] = {
};

static struct argdesc const yIB_WICON_args[] = {
};

static struct argdesc const yIB_HICON_args[] = {
};

static struct argdesc const yIB_XTEXT_args[] = {
};

static struct argdesc const yIB_YTEXT_args[] = {
};

static struct argdesc const yIB_WTEXT_args[] = {
};

static struct argdesc const yIB_HTEXT_args[] = {
};

static struct argdesc const yIB_FCOLOR_args[] = {
};

static struct argdesc const yIB_BCOLOR_args[] = {
};

static struct argdesc const yIB_LETTER_args[] = {
};

static struct argdesc const yJOYPAD_args[] = {
};

static struct argdesc const yKEYPAD_args[] = {
};

static struct argdesc const yKEYTEST_args[] = {
};

static struct argdesc const yKEYGET_args[] = {
};

static struct argdesc const yKEYLOOK_args[] = {
};

static struct argdesc const yKEYPRESS_args[] = {
};

static struct argdesc const yKEYDEF_args[] = {
};

static struct argdesc const yKILL_args[] = {
};

static struct argdesc const yLOOP_args[] = {
};

static struct argdesc const yLET_args[] = {
};

static struct argdesc const yLINE_args[] = {
};

static struct argdesc const yLPOKE_args[] = {
};

static struct argdesc const yLONG_args[] = {
};

static struct argdesc const yLOCAL_args[] = {
};

static struct argdesc const yLPRINT_args[] = {
};

static struct argdesc const yLSET_args[] = {
};

static struct argdesc const yLOCATE_args[] = {
};

static struct argdesc const yLIST_args[] = {
};

static struct argdesc const yLLIST_args[] = {
};

static struct argdesc const yLOAD_args[] = {
};

static struct argdesc const yLOG_MSG_args[] = {
};

static struct argdesc const yLOG_SET_args[] = {
};

static struct argdesc const yLOG_FILE_args[] = {
};

static struct argdesc const yLOG_KILL_args[] = {
};

static struct argdesc const yMAT_args[] = {
};

static struct argdesc const yMONITOR_args[] = {
};

static struct argdesc const yMUL_args[] = {
};

static struct argdesc const yMENU_args[] = {
};

static struct argdesc const yMIDs_args[] = {
};

static struct argdesc const yMKDIR_args[] = {
};

static struct argdesc const yMOUSE_args[] = {
};

static struct argdesc const yMODE_args[] = {
};

static struct argdesc const yMW_OUT_args[] = {
};

static struct argdesc const yMEMEXG_args[] = {
};

static struct argdesc const yMEMBSET_args[] = {
};

static struct argdesc const yMEMBCLR_args[] = {
};

static struct argdesc const yMEMBCHG_args[] = {
};

static struct argdesc const yMEMOR_args[] = {
};

static struct argdesc const yMEMAND_args[] = {
};

static struct argdesc const yMEMXOR_args[] = {
};

static struct argdesc const yMEMSWAP_args[] = {
};

static struct argdesc const yMEMFILL_args[] = {
};

static struct argdesc const yMEMZERO_args[] = {
};

static struct argdesc const yMEMREPLACE_args[] = {
};

static struct argdesc const yMEMMIRROR_args[] = {
};

static struct argdesc const yMEMMIRROR3_args[] = {
};

static struct argdesc const yMDPOKE_args[] = {
};

static struct argdesc const yMLPOKE_args[] = {
};

static struct argdesc const yMNAM_args[] = {
};

static struct argdesc const yNEXT_args[] = {
};

static struct argdesc const yNAME_args[] = {
};

static struct argdesc const yNEW_args[] = {
};

static struct argdesc const yOPEN_args[] = {
};

static struct argdesc const yON_args[] = {
};

static struct argdesc const yOB_NEXT_args[] = {
};

static struct argdesc const yOB_HEAD_args[] = {
};

static struct argdesc const yOB_TAIL_args[] = {
};

static struct argdesc const yOB_TYPE_args[] = {
};

static struct argdesc const yOB_FLAGS_args[] = {
};

static struct argdesc const yOB_STATE_args[] = {
};

static struct argdesc const yOB_SPEC_args[] = {
};

static struct argdesc const yOB_X_args[] = {
};

static struct argdesc const yOB_Y_args[] = {
};

static struct argdesc const yOB_W_args[] = {
};

static struct argdesc const yOB_H_args[] = {
};

static struct argdesc const yOUT_args[] = {
};

static struct argdesc const yOPTION_args[] = {
};

static struct argdesc const yOB_dot_STATE_args[] = {
};

static struct argdesc const yOB_dot_FLAGS_args[] = {
};

static struct argdesc const yOB_RADIO_args[] = {
};

static struct argdesc const yOB_TEXTs_args[] = {
};

static struct argdesc const yOB_SELECTED_args[] = {
};

static struct argdesc const yOB_CROSSED_args[] = {
};

static struct argdesc const yOB_CHECKED_args[] = {
};

static struct argdesc const yOB_DISABLED_args[] = {
};

static struct argdesc const yOB_OUTLINED_args[] = {
};

static struct argdesc const yOB_SHADOWED_args[] = {
};

static struct argdesc const yOB_WHITEBAK_args[] = {
};

static struct argdesc const yOB_SELECTABLE_args[] = {
};

static struct argdesc const yOB_DEFAULT_args[] = {
};

static struct argdesc const yOB_EXIT_args[] = {
};

static struct argdesc const yOB_EDITABLE_args[] = {
};

static struct argdesc const yOB_RBUTTON_args[] = {
};

static struct argdesc const yOB_LASTOB_args[] = {
};

static struct argdesc const yOB_TOUCHEXIT_args[] = {
};

static struct argdesc const yOB_HIDETREE_args[] = {
};

static struct argdesc const yOB_INDIRECT_args[] = {
};

static struct argdesc const yOB_FL3DIND_args[] = {
};

static struct argdesc const yOB_FL3DACT_args[] = {
};

static struct argdesc const yOB_SUBMENU_args[] = {
};

static struct argdesc const yOB_FL3DBAK_args[] = {
};

static struct argdesc const yPLOT_args[] = {
};

static struct argdesc const yPSET_args[] = {
};

static struct argdesc const yPOKE_args[] = {
};

static struct argdesc const yPTSIN_args[] = {
};

static struct argdesc const yPTSOUT_args[] = {
};

static struct argdesc const yPROCEDURE_args[] = {
};

static struct argdesc const yPUT_args[] = {
};

static struct argdesc const yPBOX_args[] = {
};

static struct argdesc const yPRBOX_args[] = {
};

static struct argdesc const yPCIRCLE_args[] = {
};

static struct argdesc const yPELLIPSE_args[] = {
};

static struct argdesc const yPAUSE_args[] = {
};

static struct argdesc const yPOLYLINE_args[] = {
};

static struct argdesc const yPOLYFILL_args[] = {
};

static struct argdesc const yPOLYMARK_args[] = {
};

static struct argdesc const yPSAVE_args[] = {
};

static struct argdesc const yPALGET_args[] = {
};

static struct argdesc const yPALSET_args[] = {
};

static struct argdesc const yPIXEL32_args[] = {
};

static struct argdesc const yPIXEL24_args[] = {
};

static struct argdesc const yPIXEL16_args[] = {
};

static struct argdesc const yPIXEL15_args[] = {
};

static struct argdesc const yPIXEL8C_args[] = {
};

static struct argdesc const yPIXEL8P_args[] = {
};

static struct argdesc const yPIXEL4P_args[] = {
};

static struct argdesc const yPIXEL2P_args[] = {
};

static struct argdesc const yPIXEL1M_args[] = {
};

static struct argdesc const yPBAR_args[] = {
};

static struct argdesc const yPRBAR_args[] = {
};

static struct argdesc const yQUIT_args[] = {
};

static struct argdesc const yQSORT_args[] = {
};

static struct argdesc const yREPEAT_args[] = {
};

static struct argdesc const yRESTORE_args[] = {
};

static struct argdesc const yRETURN_args[] = {
};

static struct argdesc const yRELSEEK_args[] = {
};

static struct argdesc const yRESERVE_args[] = {
};

static struct argdesc const yRANDOMIZE_args[] = {
};

static struct argdesc const yRBOX_args[] = {
};

static struct argdesc const yRMDIR_args[] = {
};

static struct argdesc const yRSET_args[] = {
};

static struct argdesc const yRENAME_args[] = {
};

static struct argdesc const yRCALL_args[] = {
};

static struct argdesc const yRESUME_args[] = {
};

static struct argdesc const yREAD_args[] = {
};

static struct argdesc const yRECORD_args[] = {
};

static struct argdesc const yRUN_args[] = {
};

static struct argdesc const yRECALL_args[] = {
};

static struct argdesc const yRC_COPY_args[] = {
};

static struct argdesc const yRC_REDRAW_args[] = {
};

static struct argdesc const yRGB_args[] = {
};

static struct argdesc const yRBAR_args[] = {
};

static struct argdesc const ySWITCH_args[] = {
};

static struct argdesc const ySWAP_args[] = {
};

static struct argdesc const ySUB_args[] = {
};

static struct argdesc const ySPOKE_args[] = {
};

static struct argdesc const ySDPOKE_args[] = {
};

static struct argdesc const ySLPOKE_args[] = {
};

static struct argdesc const ySETCOLOR_args[] = {
};

static struct argdesc const ySEEK_args[] = {
};

static struct argdesc const ySETTIME_args[] = {
};

static struct argdesc const ySGET_args[] = {
};

static struct argdesc const ySPUT_args[] = {
};

static struct argdesc const ySHOWM_args[] = {
};

static struct argdesc const ySTOP_args[] = {
};

static struct argdesc const ySYSTEM_args[] = {
};

static struct argdesc const ySSORT_args[] = {
};

static struct argdesc const ySTICK_args[] = {
};

static struct argdesc const ySOUND_args[] = {
};

static struct argdesc const ySINGLE_args[] = {
};

static struct argdesc const ySETMOUSE_args[] = {
};

static struct argdesc const ySAVE_args[] = {
};

static struct argdesc const ySETDRAW_args[] = {
};

static struct argdesc const ySTORE_args[] = {
};

static struct argdesc const ySPRITE_args[] = {
};

static struct argdesc const ySFILL_args[] = {
};

static struct argdesc const ySTRUCT_args[] = {
};

static struct argdesc const ySTRUCTs_args[] = {
};

static struct argdesc const ySUPER_args[] = {
};

static struct argdesc const ySLEEP_args[] = {
};

static struct argdesc const ySBYTE_args[] = {
};

static struct argdesc const ySCREEN_args[] = {
};

static struct argdesc const ySNDH_args[] = {
};

static struct argdesc const ySCALL_args[] = {
};

static struct argdesc const ySET_MFDB_args[] = {
};

static struct argdesc const ySET_MENU_args[] = {
};

static struct argdesc const ySET_SXYXY_args[] = {
};

static struct argdesc const ySET_DXYXY_args[] = {
};

static struct argdesc const ySET_SXYWH_args[] = {
};

static struct argdesc const ySET_DXYWH_args[] = {
};

static struct argdesc const ySET_PXYWH_args[] = {
};

static struct argdesc const ySET_RXYWH_args[] = {
};

static struct argdesc const ySET_PXYXY_args[] = {
};

static struct argdesc const ySET_GCBITMAP_args[] = {
};

static struct argdesc const ySET_SOCKADDR_IN_args[] = {
};

static struct argdesc const ySTRARRAYFILL_args[] = {
};

static struct argdesc const yTEXT_args[] = {
};

static struct argdesc const yTRON_args[] = {
};

static struct argdesc const yTROFF_args[] = {
};

static struct argdesc const yTOPW_args[] = {
};

static struct argdesc const yTITLEW_args[] = {
};

static struct argdesc const yTOUCH_args[] = {
};

static struct argdesc const yTEDINFO_args[] = {
};

static struct argdesc const yTPUT_args[] = {
};

static struct argdesc const yTBITBLT_args[] = {
};

static struct argdesc const yTE_PTEXT_args[] = {
};

static struct argdesc const yTE_PTMPLT_args[] = {
};

static struct argdesc const yTE_PVALID_args[] = {
};

static struct argdesc const yTE_FONT_args[] = {
};

static struct argdesc const yTE_FONTID_args[] = {
};

static struct argdesc const yTE_JUST_args[] = {
};

static struct argdesc const yTE_COLOR_args[] = {
};

static struct argdesc const yTE_FONTSIZE_args[] = {
};

static struct argdesc const yTE_THICKNESS_args[] = {
};

static struct argdesc const yTE_TXTLEN_args[] = {
};

static struct argdesc const yTE_TMPLEN_args[] = {
};

static struct argdesc const yTE_FRAMECOL_args[] = {
};

static struct argdesc const yTE_TEXTCOL_args[] = {
};

static struct argdesc const yTE_TEXTMODE_args[] = {
};

static struct argdesc const yTE_FILLPATTERN_args[] = {
};

static struct argdesc const yTE_INTERIORCOL_args[] = {
};

static struct argdesc const yTMOUSE_args[] = {
};

static struct argdesc const yUNTIL_args[] = {
};

static struct argdesc const yUSERBLK_args[] = {
};

static struct argdesc const yUB_CODE_args[] = {
};

static struct argdesc const yUB_PARM_args[] = {
};

static struct argdesc const yUSERDEF_args[] = {
};

static struct argdesc const yVDISYS_args[] = {
};

static struct argdesc const yVOID_args[] = {
};

static struct argdesc const yVSYNC_args[] = {
};

static struct argdesc const yVTAB_args[] = {
};

static struct argdesc const yV_H_args[] = {
};

static struct argdesc const yVSETCOLOR_args[] = {
};

static struct argdesc const yVRC_COPY_args[] = {
};

static struct argdesc const yVCURVE_args[] = {
};

static struct argdesc const yVCLS_args[] = {
};

static struct argdesc const yVGET_args[] = {
};

static struct argdesc const yVPUT_args[] = {
};

static struct argdesc const yVSGET_args[] = {
};

static struct argdesc const yVSPUT_args[] = {
};

static struct argdesc const yVPLOT_args[] = {
};

static struct argdesc const yVLINE_args[] = {
};

static struct argdesc const yVBOX_args[] = {
};

static struct argdesc const yVPALGET_args[] = {
};

static struct argdesc const yVPALSET_args[] = {
};

static struct argdesc const yVPBAR_args[] = {
};

static struct argdesc const yVER2STR_args[] = {
};

static struct argdesc const yWHILE_args[] = {
};

static struct argdesc const yWEND_args[] = {
};

static struct argdesc const yWAVE_args[] = {
};

static struct argdesc const yWINDTAB_args[] = {
};

static struct argdesc const yWRITE_args[] = {
};

static struct argdesc const yWORD_args[] = {
};

static struct argdesc const yWAITVBL_args[] = {
};

static struct argdesc const yWARMBOOT_args[] = {
};

static struct argdesc const y_GLOBAL_args[] = {
};

static struct argdesc const y_DATA_args[] = {
};

static struct argdesc const yspecvar_args[] = {
};

static struct argdesc const yFORM_INPUT_args[] = {
};

static struct argdesc const yLINE_INPUT_args[] = {
};

static struct argdesc const yEND_args[] = {
};

static struct argdesc const yDO_WHILE_args[] = {
};

static struct argdesc const yDO_UNTIL_args[] = {
};

static struct argdesc const yLOOP_WHILE_args[] = {
};

static struct argdesc const yLOOP_UNTIL_args[] = {
};

static struct argdesc const yON_ERROR_args[] = {
};

static struct argdesc const yON_ERROR_GOSUB_args[] = {
};

static struct argdesc const yON_BREAK_args[] = {
};

static struct argdesc const yON_BREAK_CONT_args[] = {
};

static struct argdesc const yON_BREAK_GOSUB_args[] = {
};

static struct argdesc const yON_MENU_GOSUB_args[] = {
};

static struct argdesc const yON_MENU_MESSAGE_GOSUB_args[] = {
};

static struct argdesc const yON_MENU_KEY_GOSUB_args[] = {
};

static struct argdesc const yON_MENU_BUTTON_args[] = {
};

static struct argdesc const yON_MENU_args[] = {
};

static struct argdesc const yON_MENU_IBOX_args[] = {
};

static struct argdesc const yON_MENU_OBOX_args[] = {
};

static struct argdesc const yMENU_OFF_args[] = {
};

static struct argdesc const yMENU_KILL_args[] = {
};

static struct argdesc const yOPENW_args[] = {
};

static struct argdesc const yCLOSEW_args[] = {
};

static struct argdesc const yCLEARW_args[] = {
};

static struct argdesc const yPROCEDURE_flapped_args[] = {
};

static struct argdesc const yFUNCTION_flapped_args[] = {
};

static struct argdesc const ySELECT_args[] = {
};


struct cmdname const cmdtable[] = {
	{ 0, "!", 115, REM_args, TARGET_VER36, 0 },
	{ 1, "//", 115, REM_args, TARGET_VER36, 0 },
	{ 1, "/*", 115, REM_args, TARGET_VER36, 0 },
	{ 0, "'", 115, REM_args, TARGET_VER36, 0 },
	{ 0, "*", 121, star_args, TARGET_VER36, 0 },
	{ 0, ".", 254, REM_args, TARGET_VER36, 0 },
	{ 2, "==>", 116, REM_args, TARGET_VER36, 0 },
	{ 0, "?", 147, yPRINT_args, TARGET_VER36, 0 },
	{ 0, "$", 411, REM_args, TARGET_VER36, 0 },
	{ 0, "@", 62, yGOSUB_args, TARGET_VER36, 0 },
	{ 4, "ALERT", 256, yALERT_args, TARGET_VER36, 0 },
	{ 2, "ADD", 176, yADD_args, TARGET_VER36, 0 },
	{ 4, "ALINE", 90, yALINE_args, TARGET_VER36, 0 },
	{ 4, "ARECT", 92, yARECT_args, TARGET_VER36, 0 },
	{ 4, "APOLY", 93, yAPOLY_args, TARGET_VER36, 0 },
	{ 4, "ACHAR", 94, yACHAR_args, TARGET_VER36, 0 },
	{ 4, "ACLIP", 95, yACLIP_args, TARGET_VER36, 0 },
	{ 6, "ADDRIN(", 224, yADDRIN_args, TARGET_VER36, 0 },
	{ 7, "ADDROUT(", 225, yADDROUT_args, TARGET_VER36, 0 },
	{ 7, "ABSOLUTE", 253, yABSOLUTE_args, TARGET_VER36, 0 },
	{ 4, "AFTER", 365, yAFTER_args, TARGET_VER36, 0 },
	{ 4, "ATEXT", 113, yATEXT_args, TARGET_VER36, 0 },
	{ 8, "ARRAYFILL", 397, yARRAYFILL_args, TARGET_VER36, 0 },
	{ 6, "ARRAY!(", 680, yARRAY_args, TARGET_VER373, 0 },
	{ 6, "ARRAY|(", 681, yARRAY_args, TARGET_VER373, 0 },
	{ 6, "ARRAY&(", 682, yARRAY_args, TARGET_VER373, 0 },
	{ 6, "ARRAY%(", 683, yARRAY_args, TARGET_VER373, 0 },
	{ 5, "ARRAY(", 684, yARRAY_args, TARGET_VER373, 0 },
	{ 5, "AMOUSE", 474, yAMOUSE_args, TARGET_VER370, 0 },
	{ 10, "AVERAGE_RGB", 473, yAVERAGE_RGB_args, TARGET_VER370, 0 },
	{ 4, "BMOVE", 213, yBMOVE_args, TARGET_VER36, 0 },
	{ 4, "BYTE{", 234, yBYTE_args, TARGET_VER36, 0 },
	{ 2, "BOX", 287, yBOX_args, TARGET_VER36, 0 },
	{ 3, "BGET", 111, yBGET_args, TARGET_VER36, 0 },
	{ 3, "BPUT", 112, yBPUT_args, TARGET_VER36, 0 },
	{ 7, "BOUNDARY", 387, yBOUNDARY_args, TARGET_VER36, 0 },
	{ 5, "BITBLT", 399, yBITBLT_args, TARGET_VER36, 0 },
	{ 4, "BSAVE", 404, yBSAVE_args, TARGET_VER36, 0 },
	{ 4, "BLOAD", 405, yBLOAD_args, TARGET_VER36, 0 },
	{ 6, "BITBLK(", 545, yBITBLK_args, TARGET_VER370, TARGET_VER371 },
	{ 8, "BFOBSPEC(", 544, yBFOBSPEC_args, TARGET_VER370, TARGET_VER371 },
	{ 3, "BEXG", 638, yBEXG_args, TARGET_VER372, 0 },
	{ 6, "BMIRROR", 544, yBMIRROR_args, TARGET_VER372, 0 },
	{ 4, "BZERO", 462, yBZERO_args, TARGET_VER36, 0 },
	{ 5, "BCLEAR", 462, yBZERO_args, TARGET_VER370, 0 },
	{ 4, "BFILL", 463, yBFILL_args, TARGET_VER370, 0 },
	{ 3, "BEEP", 465, yBEEP_args, TARGET_VER370, 0 },
	{ 5, "BCRYPT", 477, yBCRYPT_args, TARGET_VER370, 0 },
	{ 5, "BXLATE", 464, yBXLATE_args, TARGET_VER370, 0 },
	{ 7, "BREPLACE", 535, yBREPLACE_args, TARGET_VER370, 0 },
	{ 9, "BF_OBSPEC(", 582, yBF_OBSPEC_args, TARGET_VER372, 0 },
	{ 12, "BF_CHARACTER(", 583, yBF_CHARACTER_args, TARGET_VER372, 0 },
	{ 12, "BF_FRAMESIZE(", 584, yBF_FRAMESIZE_args, TARGET_VER372, 0 },
	{ 11, "BF_FRAMECOL(", 585, yBF_FRAMECOL_args, TARGET_VER372, 0 },
	{ 10, "BF_TEXTCOL(", 586, yBF_TEXTCOL_args, TARGET_VER372, 0 },
	{ 11, "BF_TEXTMODE(", 587, yBF_TEXTMODE_args, TARGET_VER372, 0 },
	{ 14, "BF_FILLPATTERN(", 588, yBF_FILLPATTERN_args, TARGET_VER372, 0 },
	{ 14, "BF_INTERIORCOL(", 589, yBF_INTERIORCOL_args, TARGET_VER372, 0 },
	{ 8, "BI_PDATA(", 590, yBI_PDATA_args, TARGET_VER372, 0 },
	{ 5, "BI_WB(", 591, yBI_WB_args, TARGET_VER372, 0 },
	{ 5, "BI_HL(", 592, yBI_HL_args, TARGET_VER372, 0 },
	{ 4, "BI_X(", 593, yBI_X_args, TARGET_VER372, 0 },
	{ 4, "BI_Y(", 594, yBI_Y_args, TARGET_VER372, 0 },
	{ 8, "BI_COLOR(", 595, yBI_COLOR_args, TARGET_VER372, 0 },
	{ 2, "BAR", 648, yBAR_args, TARGET_VER373, 0 },
	{ 4, "COLOR", 96, yCOLOR_args, TARGET_VER36, 0 },
	{ 3, "CASE", 56, yCASE_args, TARGET_VER36, 0 },
	{ 3, "CONT", 317, yCONT_args, TARGET_VER36, 0 },
	{ 6, "CONTRL(", 228, yCONTRL_args, TARGET_VER36, 0 },
	{ 4, "CARD{", 233, yCARD_args, TARGET_VER36, 0 },
	{ 4, "CHAR{", 235, yCHAR_args, TARGET_VER36, 0 },
	{ 4, "CHAR$", 494, ySTRPOKE_args, TARGET_VER370, 0 },
	{ 4, "CLOSE", 268, yCLOSE_args, TARGET_VER36, 0 },
	{ 4, "CLEAR", 271, yCLEAR_args, TARGET_VER36, 0 },
	{ 5, "CIRCLE", 291, yCIRCLE_args, TARGET_VER36, 0 },
	{ 4, "CHDIR", 311, yCHDIR_args, TARGET_VER36, 0 },
	{ 6, "CHDRIVE", 312, yCHDRIVE_args, TARGET_VER36, 0 },
	{ 2, "CLR", 314, yCLR_args, TARGET_VER36, 0 },
	{ 2, "CLS", 315, yCLS_args, TARGET_VER36, 0 },
	{ 3, "CLIP", 356, yCLIP_args, TARGET_VER36, 0 },
	{ 4, "CHAIN", 392, yCHAIN_args, TARGET_VER36, 0 },
	{ 3, "CALL", 152, yCALL_args, TARGET_VER36, 0 },
	{ 4, "CURVE", 422, yCURVE_args, TARGET_VER36, 0 },
	{ 8, "CICONBLK(", 548, yCICONBLK_args, TARGET_VER370, TARGET_VER371 },
	{ 2, "C2P", 507, yC2P_args, TARGET_VER372, 0 },
	{ 6, "CRASTER", 675, yCRASTER_args, TARGET_VER373, 0 },
	{ 7, "CPUFLUSH", 476, yCPUFLUSH_args, TARGET_VER370, 0 },
	{ 7, "COLDBOOT", 543, yCOLDBOOT_args, TARGET_VER370, 0 },
	{ 11, "CI_MAINLIST(", 631, yCI_MAINLIST_args, TARGET_VER372, 0 },
	{ 13, "CI_NUM_PLANES(", 632, yCI_NUM_PLANES_args, TARGET_VER372, 0 },
	{ 11, "CI_COL_DATA(", 633, yCI_COL_DATA_args, TARGET_VER372, 0 },
	{ 11, "CI_COL_MASK(", 634, yCI_COL_MASK_args, TARGET_VER372, 0 },
	{ 11, "CI_SEL_DATA(", 635, yCI_SEL_DATA_args, TARGET_VER372, 0 },
	{ 11, "CI_SEL_MASK(", 636, yCI_SEL_MASK_args, TARGET_VER372, 0 },
	{ 11, "CI_NEXT_RES(", 637, yCI_NEXT_RES_args, TARGET_VER372, 0 },
	{ 3, "DATA", 117, yDATA_args, TARGET_VER36, 0 },
	{ 1, "DO", 0, yDO_args, TARGET_VER36, 0 },
	{ 6, "DEFLINE", 277, yDEFLINE_args, TARGET_VER36, 0 },
	{ 7, "DEFMOUSE", 279, yDEFMOUSE_args, TARGET_VER36, 0 },
	{ 6, "DEFLIST", 281, yDEFLIST_args, TARGET_VER36, 0 },
	{ 6, "DEFMARK", 282, yDEFMARK_args, TARGET_VER36, 0 },
	{ 5, "DEFNUM", 283, yDEFNUM_args, TARGET_VER36, 0 },
	{ 6, "DEFTEXT", 284, yDEFTEXT_args, TARGET_VER36, 0 },
	{ 6, "DEFFILL", 285, yDEFFILL_args, TARGET_VER36, 0 },
	{ 4, "DEFFN", 57, yDEFFN_args, TARGET_VER36, 0 },
	{ 6, "DEFAULT", 15, yDEFAULT_args, TARGET_VER36, 0 },
	{ 2, "DEC", 168, yDEC_args, TARGET_VER36, 0 },
	{ 2, "DIV", 200, yDIV_args, TARGET_VER36, 0 },
	{ 4, "DPOKE", 98, yDPOKE_args, TARGET_VER36, 0 },
	{ 2, "DIM", 210, yDIM_args, TARGET_VER36, 0 },
	{ 7, "DMASOUND", 450, yDMASOUND_args, TARGET_VER36, 0 },
	{ 9, "DMACONTROL", 451, yDMACONTROL_args, TARGET_VER36, 0 },
	{ 6, "DOUBLE{", 237, yDOUBLE_args, TARGET_VER36, 0 },
	{ 2, "DIR", 319, yDIR_args, TARGET_VER36, 0 },
	{ 5, "DELETE", 351, yDELETE_args, TARGET_VER36, 0 },
	{ 3, "DRAW", 370, yDRAW_args, TARGET_VER36, 0 },
	{ 4, "DELAY", 110, yDELAY_args, TARGET_VER36, 0 },
	{ 5, "DEFINT", 381, yDEFINT_args, TARGET_VER36, 0 },
	{ 5, "DEFBYT", 383, yDEFBYT_args, TARGET_VER36, 0 },
	{ 5, "DEFWRD", 384, yDEFWRD_args, TARGET_VER36, 0 },
	{ 5, "DEFBIT", 385, yDEFBIT_args, TARGET_VER36, 0 },
	{ 5, "DEFSTR", 386, yDEFSTR_args, TARGET_VER36, 0 },
	{ 5, "DEFSNG", 382, yDEFSNG_args, TARGET_VER36, 0 },
	{ 5, "DEFDBL", 382, yDEFDBL_args, TARGET_VER36, 0 },
	{ 5, "DEFFLT", 382, yDEFFLT_args, TARGET_VER36, 0 },
	{ 3, "DUMP", 398, yDUMP_args, TARGET_VER36, 0 },
	{ 5, "DATE$=", 408, yCHDIR_args, TARGET_VER36, 0 },
	{ 3, "ELSE", 14, yELSE_args, TARGET_VER36, 0 },
	{ 4, "ENDIF", 9, yENDIF_args, TARGET_VER36, 0 },
	{ 6, "ENDFUNC", 11, yENDFUNC_args, TARGET_VER36, 0 },
	{ 8, "ENDSWITCH", 13, yENDSWITCH_args, TARGET_VER36, 0 },
	{ 8, "ENDSELECT", 13, yENDSELECT_args, TARGET_VER36, 0 },
	{ 7, "ENDWHILE", 5, yENDWHILE_args, TARGET_VER36, 0 },
	{ 4, "ENDDO", 1, yENDDO_args, TARGET_VER36, 0 },
	{ 8, "ENDREPEAT", 3, yENDREPEAT_args, TARGET_VER36, 0 },
	{ 5, "ENDFOR", 31, yENDFOR_args, TARGET_VER36, 0 },
	{ 6, "ENDPROC", 7, yENDPROC_args, TARGET_VER36, 0 },
	{ 5, "ENDSUB", 7, yENDSUB_args, TARGET_VER36, 0 },
	{ 6, "EXIT IF", 43, yEXIT_IF_args, TARGET_VER36, 0 },
	{ 6, "EXIT IF", 55, yEXIT_IF_args, TARGET_VER36, 0 },
	{ 6, "ELLIPSE", 295, yELLIPSE_args, TARGET_VER36, 0 },
	{ 4, "ERROR", 299, yERROR_args, TARGET_VER36, 0 },
	{ 3, "EDIT", 328, yEDIT_args, TARGET_VER36, 0 },
	{ 4, "ERASE", 322, yERASE_args, TARGET_VER36, 0 },
	{ 3, "EXEC", 323, yEXEC_args, TARGET_VER36, 0 },
	{ 4, "EVERY", 362, yEVERY_args, TARGET_VER36, 0 },
	{ 6, "ENDSEEK", 520, yENDSEEK_args, TARGET_VER370, 0 },
	{ 6, "ENVIRON", 538, yENVIRON_args, TARGET_VER370, 0 },
	{ 2, "FOR", 19, yFOR_args, TARGET_VER36, 0 },
	{ 7, "FUNCTION", 10, yFUNCTION_args, TARGET_VER36, 0 },
	{ 5, "FLOAT{", 236, yFLOAT_args, TARGET_VER36, 0 },
	{ 3, "FILL", 300, yFILL_args, TARGET_VER36, 0 },
	{ 4, "FIELD", 324, yFIELD_args, TARGET_VER36, 0 },
	{ 4, "FILES", 325, yFILES_args, TARGET_VER36, 0 },
	{ 9, "FILESELECT", 329, yFILESELECT_args, TARGET_VER36, 0 },
	{ 4, "FULLW", 361, yFULLW_args, TARGET_VER36, 0 },
	{ 4, "GOSUB", 61, yGOSUB_args, TARGET_VER36, 0 },
	{ 3, "GOTO", 58, yGOTO_args, TARGET_VER36, 0 },
	{ 5, "GEMSYS", 218, yGEMSYS_args, TARGET_VER36, 0 },
	{ 6, "GINTIN(", 226, yGINTIN_args, TARGET_VER36, 0 },
	{ 7, "GINTOUT(", 227, yGINTOUT_args, TARGET_VER36, 0 },
	{ 7, "GCONTRL(", 229, yGCONTRL_args, TARGET_VER36, 0 },
	{ 2, "GET", 257, yGET_args, TARGET_VER36, 0 },
	{ 8, "GRAPHMODE", 278, yGRAPHMODE_args, TARGET_VER36, 0 },
	{ 5, "GSTICK", 478, yGSTICK_args, TARGET_VER370, 0 },
	{ 5, "GHIDEM", 466, yGHIDEM_args, TARGET_VER370, 0 },
	{ 5, "GSHOWM", 467, yGSHOWM_args, TARGET_VER370, 0 },
	{ 5, "GMOUSE", 468, yGMOUSE_args, TARGET_VER370, 0 },
	{ 7, "HARDCOPY", 343, yHARDCOPY_args, TARGET_VER36, 0 },
	{ 4, "HIDEM", 302, yHIDEM_args, TARGET_VER36, 0 },
	{ 4, "HLINE", 91, yHLINE_args, TARGET_VER36, 0 },
	{ 3, "HTAB", 320, yHTAB_args, TARGET_VER36, 0 },
	{ 1, "IF", 8, yIF_args, TARGET_VER36, 0 },
	{ 2, "INC", 160, yINC_args, TARGET_VER36, 0 },
	{ 5, "INTIN(", 222, yINTIN_args, TARGET_VER36, 0 },
	{ 6, "INTOUT(", 223, yINTOUT_args, TARGET_VER36, 0 },
	{ 3, "INT{", 232, yINT_args, TARGET_VER36, 0 },
	{ 4, "INFOW", 276, yINFOW_args, TARGET_VER36, 0 },
	{ 6, "INFOW #", 276, yINFOW_args, TARGET_VER36, 0 },
	{ 5, "INSERT", 350, yINSERT_args, TARGET_VER36, 0 },
	{ 4, "INPUT", 368, yINPUT_args, TARGET_VER36, 0 },
	{ 5, "INLINE", 417, yINLINE_args, TARGET_VER36, 0 },
	{ 3, "IKBD", 668, yIKBD_args, TARGET_VER373, 0 },
	{ 7, "ICONBLK(", 547, yICONBLK_args, TARGET_VER370, TARGET_VER371 },
	{ 8, "IB_PMASK(", 614, yIB_PMASK_args, TARGET_VER372, 0 },
	{ 8, "IB_PDATA(", 615, yIB_PDATA_args, TARGET_VER372, 0 },
	{ 8, "IB_PTEXT(", 616, yIB_PTEXT_args, TARGET_VER372, 0 },
	{ 7, "IB_CHAR(", 617, yIB_CHAR_args, TARGET_VER372, 0 },
	{ 8, "IB_XCHAR(", 618, yIB_XCHAR_args, TARGET_VER372, 0 },
	{ 8, "IB_YCHAR(", 619, yIB_YCHAR_args, TARGET_VER372, 0 },
	{ 8, "IB_XICON(", 620, yIB_XICON_args, TARGET_VER372, 0 },
	{ 8, "IB_YICON(", 621, yIB_YICON_args, TARGET_VER372, 0 },
	{ 8, "IB_WICON(", 622, yIB_WICON_args, TARGET_VER372, 0 },
	{ 8, "IB_HICON(", 623, yIB_HICON_args, TARGET_VER372, 0 },
	{ 8, "IB_XTEXT(", 624, yIB_XTEXT_args, TARGET_VER372, 0 },
	{ 8, "IB_YTEXT(", 625, yIB_YTEXT_args, TARGET_VER372, 0 },
	{ 8, "IB_WTEXT(", 626, yIB_WTEXT_args, TARGET_VER372, 0 },
	{ 8, "IB_HTEXT(", 627, yIB_HTEXT_args, TARGET_VER372, 0 },
	{ 9, "IB_FCOLOR(", 628, yIB_FCOLOR_args, TARGET_VER372, 0 },
	{ 9, "IB_BCOLOR(", 629, yIB_BCOLOR_args, TARGET_VER372, 0 },
	{ 9, "IB_LETTER(", 630, yIB_LETTER_args, TARGET_VER372, 0 },
	{ 5, "JOYPAD", 513, yJOYPAD_args, TARGET_VER370, 0 },
	{ 5, "KEYPAD", 375, yKEYPAD_args, TARGET_VER36, 0 },
	{ 6, "KEYTEST", 376, yKEYTEST_args, TARGET_VER36, 0 },
	{ 5, "KEYGET", 377, yKEYGET_args, TARGET_VER36, 0 },
	{ 6, "KEYLOOK", 378, yKEYLOOK_args, TARGET_VER36, 0 },
	{ 7, "KEYPRESS", 379, yKEYPRESS_args, TARGET_VER36, 0 },
	{ 5, "KEYDEF", 380, yKEYDEF_args, TARGET_VER36, 0 },
	{ 3, "KILL", 333, yKILL_args, TARGET_VER36, 0 },
	{ 3, "LOOP", 1, yLOOP_args, TARGET_VER36, 0 },
	{ 2, "LET", 64, yLET_args, TARGET_VER36, 0 },
	{ 3, "LINE", 155, yLINE_args, TARGET_VER36, 0 },
	{ 4, "LPOKE", 99, yLPOKE_args, TARGET_VER36, 0 },
	{ 4, "LONG{", 231, yLONG_args, TARGET_VER36, 0 },
	{ 4, "LOCAL", 53, yLOCAL_args, TARGET_VER36, 0 },
	{ 5, "LPRINT", 303, yLPRINT_args, TARGET_VER36, 0 },
	{ 3, "LSET", 304, yLSET_args, TARGET_VER36, 0 },
	{ 5, "LOCATE", 125, yLOCATE_args, TARGET_VER36, 0 },
	{ 3, "LIST", 388, yLIST_args, TARGET_VER36, 0 },
	{ 4, "LLIST", 389, yLLIST_args, TARGET_VER36, 0 },
	{ 3, "LOAD", 395, yLOAD_args, TARGET_VER36, 0 },
	{ 6, "LOG_MSG", 484, yLOG_MSG_args, TARGET_VER370, 0 },
	{ 6, "LOG_SET", 485, yLOG_SET_args, TARGET_VER370, 0 },
	{ 7, "LOG_FILE", 486, yLOG_FILE_args, TARGET_VER370, 0 },
	{ 7, "LOG_KILL", 487, yLOG_KILL_args, TARGET_VER370, 0 },
	{ 2, "MAT", 424, yMAT_args, TARGET_VER36, 0 },
	{ 6, "MONITOR", 48, yMONITOR_args, TARGET_VER36, 0 },
	{ 2, "MUL", 192, yMUL_args, TARGET_VER36, 0 },
	{ 3, "MENU", 139, yMENU_args, TARGET_VER36, 0 },
	{ 4, "MID$(", 305, yMIDs_args, TARGET_VER36, 0 },
	{ 4, "MKDIR", 331, yMKDIR_args, TARGET_VER36, 0 },
	{ 4, "MOUSE", 332, yMOUSE_args, TARGET_VER36, 0 },
	{ 3, "MODE", 414, yMODE_args, TARGET_VER36, 0 },
	{ 5, "MW_OUT", 452, yMW_OUT_args, TARGET_VER36, 0 },
	{ 6, "MEMEXG&", 548, yMEMEXG_args, TARGET_VER372, 0 },
	{ 6, "MEMEXG%", 549, yMEMEXG_args, TARGET_VER372, 0 },
	{ 7, "MEMBSET|", 525, yMEMBSET_args, TARGET_VER370, 0 },
	{ 7, "MEMBSET&", 526, yMEMBSET_args, TARGET_VER370, 0 },
	{ 7, "MEMBSET%", 527, yMEMBSET_args, TARGET_VER370, 0 },
	{ 7, "MEMBCLR|", 528, yMEMBCLR_args, TARGET_VER370, 0 },
	{ 7, "MEMBCLR&", 529, yMEMBCLR_args, TARGET_VER370, 0 },
	{ 7, "MEMBCLR%", 530, yMEMBCLR_args, TARGET_VER370, 0 },
	{ 7, "MEMBCHG|", 531, yMEMBCHG_args, TARGET_VER370, 0 },
	{ 7, "MEMBCHG&", 532, yMEMBCHG_args, TARGET_VER370, 0 },
	{ 7, "MEMBCHG%", 533, yMEMBCHG_args, TARGET_VER370, 0 },
	{ 4, "MEMOR", 523, yMEMOR_args, TARGET_VER370, 0 },
	{ 5, "MEMAND", 522, yMEMAND_args, TARGET_VER370, 0 },
	{ 5, "MEMXOR", 524, yMEMXOR_args, TARGET_VER370, 0 },
	{ 7, "MEMSWAP&", 498, yMEMSWAP_args, TARGET_VER370, 0 },
	{ 7, "MEMSWAP%", 499, yMEMSWAP_args, TARGET_VER370, 0 },
	{ 7, "MEMFILL&", 500, yMEMFILL_args, TARGET_VER370, 0 },
	{ 7, "MEMFILL%", 501, yMEMFILL_args, TARGET_VER370, 0 },
	{ 7, "MEMZERO&", 515, yMEMZERO_args, TARGET_VER370, 0 },
	{ 7, "MEMZERO%", 516, yMEMZERO_args, TARGET_VER370, 0 },
	{ 10, "MEMREPLACE&", 539, yMEMREPLACE_args, TARGET_VER370, 0 },
	{ 10, "MEMREPLACE%", 540, yMEMREPLACE_args, TARGET_VER370, 0 },
	{ 9, "MEMMIRROR&", 545, yMEMMIRROR_args, TARGET_VER372, 0 },
	{ 9, "MEMMIRROR%", 546, yMEMMIRROR_args, TARGET_VER372, 0 },
	{ 9, "MEMMIRROR3", 547, yMEMMIRROR3_args, TARGET_VER372, 0 },
	{ 5, "MDPOKE", 664, yMDPOKE_args, TARGET_VER373, 0 },
	{ 5, "MLPOKE", 665, yMLPOKE_args, TARGET_VER373, 0 },
	{ 3, "MNAM", 666, yMNAM_args, TARGET_VER373, 0 },
 	{ 3, "NEXT", 31, yNEXT_args, TARGET_VER36, 0 },
 	{ 3, "NAME", 330, yNAME_args, TARGET_VER36, 0 },
 	{ 2, "NEW", 306, yNEW_args, TARGET_VER36, 0 },
 	{ 3, "OPEN", 265, yOPEN_args, TARGET_VER36, 0 },
 	{ 1, "ON", 126, yON_args, TARGET_VER36, 0 },
 	{ 7, "OB_NEXT(", 242, yOB_NEXT_args, TARGET_VER36, 0 },
 	{ 7, "OB_HEAD(", 243, yOB_HEAD_args, TARGET_VER36, 0 },
 	{ 7, "OB_TAIL(", 244, yOB_TAIL_args, TARGET_VER36, 0 },
 	{ 7, "OB_TYPE(", 245, yOB_TYPE_args, TARGET_VER36, 0 },
 	{ 8, "OB_FLAGS(", 246, yOB_FLAGS_args, TARGET_VER36, 0 },
 	{ 8, "OB_STATE(", 247, yOB_STATE_args, TARGET_VER36, 0 },
 	{ 7, "OB_SPEC(", 248, yOB_SPEC_args, TARGET_VER36, 0 },
 	{ 4, "OB_X(", 249, yOB_X_args, TARGET_VER36, 0 },
 	{ 4, "OB_Y(", 250, yOB_Y_args, TARGET_VER36, 0 },
 	{ 4, "OB_W(", 251, yOB_W_args, TARGET_VER36, 0 },
 	{ 4, "OB_H(", 252, yOB_H_args, TARGET_VER36, 0 },
 	{ 2, "OUT", 307, yOUT_args, TARGET_VER36, 0 },
 	{ 3, "OUT%", 421, yOUT_args, TARGET_VER36, 0 },
 	{ 3, "OUT&", 420, yOUT_args, TARGET_VER36, 0 },
 	{ 8, "OTHERWISE", 15, yDEFAULT_args, TARGET_VER36, 0 },
 	{ 5, "OPTION", 410, yOPTION_args, TARGET_VER36, 0 },
 	{ 8, "OB.STATE(", 504, yOB_dot_STATE_args, TARGET_VER370, 0 },
 	{ 8, "OB.FLAGS(", 505, yOB_dot_FLAGS_args, TARGET_VER370, 0 },
 	{ 8, "OB_RADIO(", 510, yOB_RADIO_args, TARGET_VER370, 0 },
 	{ 8, "OB_TEXT$(", 511, yOB_TEXTs_args, TARGET_VER370, 0 },
 	{ 11, "OB_SELECTED(", 560, yOB_SELECTED_args, TARGET_VER372, 0 },
 	{ 10, "OB_CROSSED(", 561, yOB_CROSSED_args, TARGET_VER372, 0 },
 	{ 10, "OB_CHECKED(", 562, yOB_CHECKED_args, TARGET_VER372, 0 },
 	{ 11, "OB_DISABLED(", 563, yOB_DISABLED_args, TARGET_VER372, 0 },
 	{ 11, "OB_OUTLINED(", 564, yOB_OUTLINED_args, TARGET_VER372, 0 },
 	{ 11, "OB_SHADOWED(", 565, yOB_SHADOWED_args, TARGET_VER372, 0 },
 	{ 11, "OB_WHITEBAK(", 566, yOB_WHITEBAK_args, TARGET_VER372, 0 },
 	{ 13, "OB_SELECTABLE(", 568, yOB_SELECTABLE_args, TARGET_VER372, 0 },
 	{ 10, "OB_DEFAULT(", 569, yOB_DEFAULT_args, TARGET_VER372, 0 },
 	{ 7, "OB_EXIT(", 570, yOB_EXIT_args, TARGET_VER372, 0 },
 	{ 11, "OB_EDITABLE(", 571, yOB_EDITABLE_args, TARGET_VER372, 0 },
 	{ 10, "OB_RBUTTON(", 572, yOB_RBUTTON_args, TARGET_VER372, 0 },
 	{ 9, "OB_LASTOB(", 573, yOB_LASTOB_args, TARGET_VER372, 0 },
 	{ 12, "OB_TOUCHEXIT(", 574, yOB_TOUCHEXIT_args, TARGET_VER372, 0 },
 	{ 11, "OB_HIDETREE(", 575, yOB_HIDETREE_args, TARGET_VER372, 0 },
 	{ 11, "OB_INDIRECT(", 576, yOB_INDIRECT_args, TARGET_VER372, 0 },
 	{ 10, "OB_FL3DIND(", 577, yOB_FL3DIND_args, TARGET_VER372, 0 },
 	{ 10, "OB_FL3DACT(", 578, yOB_FL3DACT_args, TARGET_VER372, 0 },
 	{ 10, "OB_SUBMENU(", 579, yOB_SUBMENU_args, TARGET_VER372, 0 },
 	{ 10, "OB_FL3DBAK(", 581, yOB_FL3DBAK_args, TARGET_VER372, 0 },
 	{ 4, "PRINT", 147, yPRINT_args, TARGET_VER36, 0 },
 	{ 3, "PLOT", 88, yPLOT_args, TARGET_VER36, 0 },
 	{ 3, "PSET", 89, yPSET_args, TARGET_VER36, 0 },
 	{ 3, "POKE", 97, yPOKE_args, TARGET_VER36, 0 },
 	{ 5, "PTSIN(", 220, yPTSIN_args, TARGET_VER36, 0 },
 	{ 6, "PTSOUT(", 221, yPTSOUT_args, TARGET_VER36, 0 },
 	{ 8, "PROCEDURE", 6, yPROCEDURE_args, TARGET_VER36, 0 },
 	{ 2, "PUT", 260, yPUT_args, TARGET_VER36, 0 },
 	{ 3, "PBOX", 288, yPBOX_args, TARGET_VER36, 0 },
 	{ 4, "PRBOX", 290, yPRBOX_args, TARGET_VER36, 0 },
 	{ 6, "PCIRCLE", 293, yPCIRCLE_args, TARGET_VER36, 0 },
 	{ 7, "PELLIPSE", 297, yPELLIPSE_args, TARGET_VER36, 0 },
 	{ 4, "PAUSE", 344, yPAUSE_args, TARGET_VER36, 0 },
 	{ 7, "POLYLINE", 347, yPOLYLINE_args, TARGET_VER36, 0 },
 	{ 7, "POLYFILL", 348, yPOLYFILL_args, TARGET_VER36, 0 },
 	{ 7, "POLYMARK", 349, yPOLYMARK_args, TARGET_VER36, 0 },
 	{ 4, "PSAVE", 391, yPSAVE_args, TARGET_VER36, 0 },
 	{ 5, "PALGET", 502, yPALGET_args, TARGET_VER370, 0 },
 	{ 5, "PALSET", 503, yPALSET_args, TARGET_VER370, 0 },
 	{ 6, "PIXEL32", 642, yPIXEL32_args, TARGET_VER372, 0 },
 	{ 6, "PIXEL24", 640, yPIXEL24_args, TARGET_VER372, 0 },
 	{ 6, "PIXEL16", 644, yPIXEL16_args, TARGET_VER372, 0 },
 	{ 6, "PIXEL15", 646, yPIXEL15_args, TARGET_VER372, 0 },
 	{ 6, "PIXEL8C", 655, yPIXEL8C_args, TARGET_VER372, 0 },
 	{ 6, "PIXEL8P", 653, yPIXEL8P_args, TARGET_VER372, 0 },
 	{ 6, "PIXEL4P", 662, yPIXEL4P_args, TARGET_VER372, 0 },
 	{ 6, "PIXEL2P", 663, yPIXEL2P_args, TARGET_VER372, 0 },
 	{ 6, "PIXEL1M", 654, yPIXEL1M_args, TARGET_VER372, 0 },
 	{ 3, "PBAR", 649, yPBAR_args, TARGET_VER373, 0 },
 	{ 4, "PRBAR", 651, yPRBAR_args, TARGET_VER373, 0 },
 	{ 3, "QUIT", 309, yQUIT_args, TARGET_VER36, 0 },
 	{ 4, "QSORT", 345, yQSORT_args, TARGET_VER36, 0 },
 	{ 2, "REM", 114, REM_args, TARGET_VER36, 0 },
 	{ 5, "REPEAT", 2, yREPEAT_args, TARGET_VER36, 0 },
 	{ 6, "RESTORE", 59, yRESTORE_args, TARGET_VER36, 0 },
 	{ 5, "RETURN", 7, yRETURN_args, TARGET_VER36, 0 },
 	{ 5, "RETURN", 17, yRETURN_args, TARGET_VER36, 0 },
 	{ 6, "RELSEEK", 209, yRELSEEK_args, TARGET_VER36, 0 },
 	{ 6, "RESERVE", 103, yRESERVE_args, TARGET_VER36, 0 },
 	{ 8, "RANDOMIZE", 255, yRANDOMIZE_args, TARGET_VER36, 0 },
 	{ 3, "RBOX", 289, yRBOX_args, TARGET_VER36, 0 },
 	{ 4, "RMDIR", 334, yRMDIR_args, TARGET_VER36, 0 },
 	{ 3, "RSET", 335, yRSET_args, TARGET_VER36, 0 },
 	{ 5, "RENAME", 352, yRENAME_args, TARGET_VER36, 0 },
 	{ 4, "RCALL", 151, yRCALL_args, TARGET_VER36, 0 },
 	{ 5, "RESUME", 105, yRESUME_args, TARGET_VER36, 0 },
 	{ 3, "READ", 372, yREAD_args, TARGET_VER36, 0 },
 	{ 5, "RECORD", 109, yRECORD_args, TARGET_VER36, 0 },
 	{ 2, "RUN", 393, yRUN_args, TARGET_VER36, 0 },
 	{ 5, "RECALL", 403, yRECALL_args, TARGET_VER36, 0 },
 	{ 6, "RC_COPY", 413, yRC_COPY_args, TARGET_VER36, 0 },
 	{ 8, "RC_REDRAW", 676, yRC_REDRAW_args, TARGET_VER373, 0 },
 	{ 2, "RGB", 536, yRGB_args, TARGET_VER370, 0 },
 	{ 3, "RBAR", 650, yRBAR_args, TARGET_VER373, 0 },
 	{ 5, "SWITCH", 12, ySWITCH_args, TARGET_VER36, 0 },
 	{ 5, "SELECT", 12, ySWITCH_args, TARGET_VER36, 0 },
 	{ 3, "SWAP", 118, ySWAP_args, TARGET_VER36, 0 },
 	{ 2, "SUB", 184, ySUB_args, TARGET_VER36, 0 },
 	{ 4, "SPOKE", 100, ySPOKE_args, TARGET_VER36, 0 },
 	{ 5, "SDPOKE", 101, ySDPOKE_args, TARGET_VER36, 0 },
 	{ 5, "SLPOKE", 102, ySLPOKE_args, TARGET_VER36, 0 },
 	{ 7, "SETCOLOR", 211, ySETCOLOR_args, TARGET_VER36, 0 },
 	{ 3, "SEEK", 208, ySEEK_args, TARGET_VER36, 0 },
 	{ 6, "SETTIME", 336, ySETTIME_args, TARGET_VER36, 0 },
 	{ 3, "SGET", 337, ySGET_args, TARGET_VER36, 0 },
 	{ 3, "SPUT", 339, ySPUT_args, TARGET_VER36, 0 },
 	{ 4, "SHOWM", 338, ySHOWM_args, TARGET_VER36, 0 },
 	{ 3, "STOP", 340, ySTOP_args, TARGET_VER36, 0 },
 	{ 5, "SYSTEM", 341, ySYSTEM_args, TARGET_VER36, 0 },
 	{ 4, "SSORT", 346, ySSORT_args, TARGET_VER36, 0 },
 	{ 4, "STICK", 353, ySTICK_args, TARGET_VER36, 0 },
 	{ 4, "SOUND", 354, ySOUND_args, TARGET_VER36, 0 },
 	{ 6, "SINGLE{", 123, ySINGLE_args, TARGET_VER36, 0 },
 	{ 7, "SETMOUSE", 374, ySETMOUSE_args, TARGET_VER36, 0 },
 	{ 3, "SAVE", 390, ySAVE_args, TARGET_VER36, 0 },
 	{ 6, "SETDRAW", 396, ySETDRAW_args, TARGET_VER36, 0 },
 	{ 4, "STORE", 402, ySTORE_args, TARGET_VER36, 0 },
 	{ 5, "SPRITE", 409, ySPRITE_args, TARGET_VER36, 0 },
 	{ 4, "SFILL", 670, ySFILL_args, TARGET_VER373, 0 },
 	{ 6, "STRUCT(", 661, ySTRUCT_args, TARGET_VER373, 0 },
 	{ 7, "STRUCT!(", 657, ySTRUCT_args, TARGET_VER373, 0 },
 	{ 7, "STRUCT|(", 658, ySTRUCT_args, TARGET_VER373, 0 },
 	{ 7, "STRUCT&(", 659, ySTRUCT_args, TARGET_VER373, 0 },
 	{ 7, "STRUCT%(", 660, ySTRUCT_args, TARGET_VER373, 0 },
 	{ 7, "STRUCT$(", 656, ySTRUCTs_args, TARGET_VER373, 0 },
 	{ 4, "SUPER", 639, ySUPER_args, TARGET_VER373, 0 },
 	{ 4, "SLEEP", 514, ySLEEP_args, TARGET_VER370, 0 },
 	{ 5, "SBYTE{", 506, ySBYTE_args, TARGET_VER370, 0 },
 	{ 5, "SCREEN", 534, ySCREEN_args, TARGET_VER370, 0 },
 	{ 3, "SNDH", 497, ySNDH_args, TARGET_VER370, 0 },
 	{ 4, "SCALL", 491, ySCALL_args, TARGET_VER370, 0 },
 	{ 6, "STRPOKE", 494, ySTRPOKE_args, TARGET_VER370, 0 },
 	{ 7, "SET.MFDB", 460, ySET_MFDB_args, TARGET_VER370, 0 },
 	{ 7, "SET.MENU", 541, ySET_MENU_args, TARGET_VER370, 0 },
 	{ 8, "SET.SXYXY", 517, ySET_SXYXY_args, TARGET_VER372, 0 },
 	{ 8, "SET.DXYXY", 518, ySET_DXYXY_args, TARGET_VER372, 0 },
 	{ 8, "SET.SXYWH", 508, ySET_SXYWH_args, TARGET_VER372, 0 },
 	{ 8, "SET.DXYWH", 509, ySET_DXYWH_args, TARGET_VER372, 0 },
 	{ 8, "SET.PXYWH", 461, ySET_PXYWH_args, TARGET_VER370, 0 },
 	{ 8, "SET.RXYWH", 519, ySET_RXYWH_args, TARGET_VER372, 0 },
 	{ 8, "SET.PXYXY", 488, ySET_PXYXY_args, TARGET_VER370, 0 },
 	{ 11, "SET.GCBITMAP", 521, ySET_GCBITMAP_args, TARGET_VER370, 0 },
 	{ 14, "SET.SOCKADDR_IN", 495, ySET_SOCKADDR_IN_args, TARGET_VER370, 0 },
 	{ 11, "SET.SOCKADDR", 495, ySET_SOCKADDR_IN_args, TARGET_VER370, 0 },
 	{ 11, "STRARRAYFILL", 537, ySTRARRAYFILL_args, TARGET_VER36, 0 },
 	{ 3, "TEXT", 149, yTEXT_args, TARGET_VER36, 0 },
 	{ 3, "TRON", 143, yTRON_args, TARGET_VER36, 0 },
 	{ 4, "TROFF", 146, yTROFF_args, TARGET_VER36, 0 },
 	{ 3, "TOPW", 274, yTOPW_args, TARGET_VER36, 0 },
 	{ 5, "TITLEW", 275, yTITLEW_args, TARGET_VER36, 0 },
 	{ 4, "TOUCH", 326, yTOUCH_args, TARGET_VER36, 0 },
 	{ 5, "TIME$=", 407, yCHDIR_args, TARGET_VER36, 0 },
 	{ 7, "TEDINFO(", 546, yTEDINFO_args, TARGET_VER36, TARGET_VER371 },
 	{ 3, "TPUT", 496, yTPUT_args, TARGET_VER370, 0 },
 	{ 6, "TBITBLT", 490, yTBITBLT_args, TARGET_VER370, 0 },
 	{ 6, "VBITBLT", 490, yTBITBLT_args, TARGET_VER370, 0 },
 	{ 8, "TE_PTEXT(", 598, yTE_PTEXT_args, TARGET_VER372, 0 },
 	{ 9, "TE_PTMPLT(", 599, yTE_PTMPLT_args, TARGET_VER372, 0 },
 	{ 9, "TE_PVALID(", 600, yTE_PVALID_args, TARGET_VER372, 0 },
 	{ 7, "TE_FONT(", 601, yTE_FONT_args, TARGET_VER372, 0 },
 	{ 9, "TE_FONTID(", 602, yTE_FONTID_args, TARGET_VER372, 0 },
 	{ 7, "TE_JUST(", 603, yTE_JUST_args, TARGET_VER372, 0 },
 	{ 8, "TE_COLOR(", 604, yTE_COLOR_args, TARGET_VER372, 0 },
 	{ 11, "TE_FONTSIZE(", 605, yTE_FONTSIZE_args, TARGET_VER372, 0 },
 	{ 12, "TE_THICKNESS(", 606, yTE_THICKNESS_args, TARGET_VER372, 0 },
 	{ 9, "TE_TXTLEN(", 607, yTE_TXTLEN_args, TARGET_VER372, 0 },
 	{ 9, "TE_TMPLEN(", 608, yTE_TMPLEN_args, TARGET_VER372, 0 },
 	{ 11, "TE_FRAMECOL(", 609, yTE_FRAMECOL_args, TARGET_VER372, 0 },
 	{ 10, "TE_TEXTCOL(", 610, yTE_TEXTCOL_args, TARGET_VER372, 0 },
 	{ 11, "TE_TEXTMODE(", 611, yTE_TEXTMODE_args, TARGET_VER372, 0 },
 	{ 14, "TE_FILLPATTERN(", 612, yTE_FILLPATTERN_args, TARGET_VER372, 0 },
 	{ 14, "TE_INTERIORCOL(", 613, yTE_INTERIORCOL_args, TARGET_VER372, 0 },
 	{ 5, "TMOUSE", 474, yTMOUSE_args, TARGET_VER373, 0 },
 	{ 4, "UNTIL", 3, yUNTIL_args, TARGET_VER36, 0 },
 	{ 7, "USERBLK(", 549, yUSERBLK_args, TARGET_VER370, TARGET_VER371 },
 	{ 7, "UB_CODE(", 596, yUB_CODE_args, TARGET_VER372, 0 },
 	{ 7, "UB_PARM(", 597, yUB_PARM_args, TARGET_VER372, 0 },
 	{ 8, "USERDEF!(", 671, yUSERDEF_args, TARGET_VER373, 0 },
 	{ 8, "USERDEF|(", 672, yUSERDEF_args, TARGET_VER373, 0 },
 	{ 8, "USERDEF&(", 673, yUSERDEF_args, TARGET_VER373, 0 },
 	{ 8, "USERDEF%(", 674, yUSERDEF_args, TARGET_VER373, 0 },
 	{ 5, "VDISYS", 214, yVDISYS_args, TARGET_VER36, 0 },
 	{ 3, "VOID", 240, yVOID_args, TARGET_VER36, 0 },
 	{ 4, "VSYNC", 342, yVSYNC_args, TARGET_VER36, 0 },
 	{ 3, "VTAB", 321, yVTAB_args, TARGET_VER36, 0 },
 	{ 3, "V~H=", 406, yV_H_args, TARGET_VER36, 0 },
 	{ 8, "VSETCOLOR", 419, yVSETCOLOR_args, TARGET_VER36, 0 },
 	{ 7, "VRC_COPY", 470, yVRC_COPY_args, TARGET_VER370, 0 },
 	{ 5, "VCURVE", 469, yVCURVE_args, TARGET_VER370, 0 },
 	{ 3, "VCLS", 481, yVCLS_args, TARGET_VER370, 0 },
 	{ 3, "VGET", 471, yVGET_args, TARGET_VER370, 0 },
 	{ 3, "VPUT", 492, yVPUT_args, TARGET_VER370, 0 },
 	{ 4, "VSGET", 479, yVSGET_args, TARGET_VER370, 0 },
 	{ 4, "VSPUT", 480, yVSPUT_args, TARGET_VER370, 0 },
 	{ 4, "VPLOT", 472, yVPLOT_args, TARGET_VER370, 0 },
 	{ 4, "VLINE", 475, yVLINE_args, TARGET_VER370, 0 },
 	{ 3, "VBOX", 489, yVBOX_args, TARGET_VER370, 0 },
 	{ 6, "VPALGET", 482, yVPALGET_args, TARGET_VER370, 0 },
 	{ 6, "VPALSET", 483, yVPALSET_args, TARGET_VER370, 0 },
 	{ 4, "VPBAR", 652, yVPBAR_args, TARGET_VER373, 0 },
 	{ 6, "VER2STR", 667, yVER2STR_args, TARGET_VER373, 0 },
 	{ 4, "WHILE", 4, yWHILE_args, TARGET_VER36, 0 },
 	{ 3, "WEND", 5, yWEND_args, TARGET_VER36, 0 },
 	{ 3, "WAVE", 355, yWAVE_args, TARGET_VER36, 0 },
 	{ 7, "WINDTAB(", 412, yWINDTAB_args, TARGET_VER36, 0 },
 	{ 4, "WRITE", 416, yWRITE_args, TARGET_VER36, 0 },
 	{ 4, "WORD{", 418, yWORD_args, TARGET_VER36, 0 },
 	{ 6, "WAITVBL", 542, yWAITVBL_args, TARGET_VER370, 0 },
 	{ 7, "WARMBOOT", 512, yWARMBOOT_args, TARGET_VER370, 0 },
 	{ 7, "_GLOBAL=", 669, y_GLOBAL_args, TARGET_VER373, 0 },
 	{ 5, "_DATA=", 423, y_DATA_args, TARGET_VER36, 0 },
 	{ 2, "_0=", 550, yspecvar_args, TARGET_VER371, 0 },
 	{ 2, "_1=", 551, yspecvar_args, TARGET_VER371, 0 },
 	{ 2, "_2=", 552, yspecvar_args, TARGET_VER371, 0 },
 	{ 2, "_3=", 553, yspecvar_args, TARGET_VER371, 0 },
 	{ 2, "_4=", 554, yspecvar_args, TARGET_VER371, 0 },
 	{ 2, "_5=", 555, yspecvar_args, TARGET_VER371, 0 },
 	{ 2, "_6=", 556, yspecvar_args, TARGET_VER371, 0 },
 	{ 2, "_7=", 557, yspecvar_args, TARGET_VER371, 0 },
 	{ 2, "_8=", 558, yspecvar_args, TARGET_VER371, 0 },
 	{ 2, "_9=", 559, yspecvar_args, TARGET_VER371, 0 },
 	{ 0, "{", 230, yWORD_args, TARGET_VER36, 0 },
 	{ 0, "~", 241, yBOUNDARY_args, TARGET_VER36, 0 },
 	{ 9, "FORM INPUT", 153, yFORM_INPUT_args, TARGET_VER36, 0 },
 	{ 9, "LINE INPUT", 154, yLINE_INPUT_args, TARGET_VER36, 0 },
 	{ 6, "ELSE IF", 16, yELSE_args, TARGET_VER36, 0 },
 	{ 2, "END", 124, yEND_args, TARGET_VER36, 0 },
 	{ 7, "DO WHILE", 49, yDO_WHILE_args, TARGET_VER36, 0 },
 	{ 7, "DO UNTIL", 50, yDO_UNTIL_args, TARGET_VER36, 0 },
 	{ 9, "LOOP WHILE", 51, yLOOP_WHILE_args, TARGET_VER36, 0 },
 	{ 9, "LOOP UNTIL", 52, yLOOP_UNTIL_args, TARGET_VER36, 0 },
 	{ 7, "ON ERROR", 128, yON_ERROR_args, TARGET_VER36, 0 },
 	{ 13, "ON ERROR GOSUB", 129, yON_ERROR_GOSUB_args, TARGET_VER36, 0 },
 	{ 7, "ON BREAK", 130, yON_BREAK_args, TARGET_VER36, 0 },
 	{ 12, "ON BREAK CONT", 131, yON_BREAK_CONT_args, TARGET_VER36, 0 },
 	{ 13, "ON BREAK GOSUB", 132, yON_BREAK_GOSUB_args, TARGET_VER36, 0 },
 	{ 12, "ON MENU GOSUB", 133, yON_MENU_GOSUB_args, TARGET_VER36, 0 },
 	{ 20, "ON MENU MESSAGE GOSUB", 134, yON_MENU_MESSAGE_GOSUB_args, TARGET_VER36, 0 },
 	{ 16, "ON MENU KEY GOSUB", 135, yON_MENU_KEY_GOSUB_args, TARGET_VER36, 0 },
 	{ 13, "ON MENU BUTTON", 136, yON_MENU_BUTTON_args, TARGET_VER36, 0 },
 	{ 6, "ON MENU", 137, yON_MENU_args, TARGET_VER36, 0 },
 	{ 11, "ON MENU IBOX", 238, yON_MENU_IBOX_args, TARGET_VER36, 0 },
 	{ 11, "ON MENU OBOX", 239, yON_MENU_OBOX_args, TARGET_VER36, 0 },
 	{ 7, "MENU OFF", 140, yMENU_OFF_args, TARGET_VER36, 0 },
 	{ 8, "MENU KILL", 141, yMENU_KILL_args, TARGET_VER36, 0 },
 	{ 3, "MENU", 142, yMENU_args, TARGET_VER36, 0 },
 	{ 4, "OPENW", 266, yOPENW_args, TARGET_VER36, 0 },
 	{ 6, "OPENW #", 267, yOPENW_args, TARGET_VER36, 0 },
 	{ 5, "CLOSEW", 269, yCLOSEW_args, TARGET_VER36, 0 },
 	{ 7, "CLOSEW #", 270, yCLOSEW_args, TARGET_VER36, 0 },
 	{ 5, "CLEARW", 272, yCLEARW_args, TARGET_VER36, 0 },
 	{ 7, "CLEARW #", 273, yCLEARW_args, TARGET_VER36, 0 },
 	{ 10, "> PROCEDURE", 54, yPROCEDURE_flapped_args, TARGET_VER36, 0 },
 	{ 9, "> FUNCTION", 449, yFUNCTION_flapped_args, TARGET_VER36, 0 },
 	{ 8, "RELSEEK #", 209, yRELSEEK_args, TARGET_VER36, 0 },
 	{ 5, "SEEK #", 208, ySEEK_args, TARGET_VER36, 0 },
 	{ 5, "TOPW #", 274, yTOPW_args, TARGET_VER36, 0 },
 	{ 7, "TITLEW #", 275, yTITLEW_args, TARGET_VER36, 0 },
 	{ 6, "TOUCH #", 326, yTOUCH_args, TARGET_VER36, 0 },
 	{ 8, "ENDSEEK #", 520, yENDSEEK_args, TARGET_VER370, 0 },
 	{ 6, "DEFAULT", 15, yDEFAULT_args, TARGET_VER36, 0 },
 	{ 5, "SELECT", 44, ySELECT_args, TARGET_VER36, 0 },
 	{ 6, "MAT ADD", 424, yMAT_args, TARGET_VER36, 0 },
 	{ 6, "MAT SUB", 426, yMAT_args, TARGET_VER36, 0 },
 	{ 6, "MAT CPY", 428, yMAT_args, TARGET_VER36, 0 },
 	{ 7, "MAT XCPY", 429, yMAT_args, TARGET_VER36, 0 },
 	{ 6, "MAT DET", 430, yMAT_args, TARGET_VER36, 0 },
 	{ 6, "MAT NEG", 431, yMAT_args, TARGET_VER36, 0 },
 	{ 6, "MAT ABS", 432, yMAT_args, TARGET_VER36, 0 },
 	{ 7, "MAT NORM", 433, yMAT_args, TARGET_VER36, 0 },
 	{ 7, "MAT READ", 434, yMAT_args, TARGET_VER36, 0 },
 	{ 8, "MAT PRINT", 435, yMAT_args, TARGET_VER36, 0 },
 	{ 8, "MAT TRANS", 436, yMAT_args, TARGET_VER36, 0 },
 	{ 6, "MAT CLR", 437, yMAT_args, TARGET_VER36, 0 },
 	{ 6, "MAT SET", 438, yMAT_args, TARGET_VER36, 0 },
 	{ 6, "MAT ONE", 439, yMAT_args, TARGET_VER36, 0 },
 	{ 7, "MAT BASE", 440, yMAT_args, TARGET_VER36, 0 },
 	{ 7, "MAT QDET", 441, yMAT_args, TARGET_VER36, 0 },
 	{ 8, "MAT INPUT", 442, yMAT_args, TARGET_VER36, 0 },
 	{ 7, "MAT RANG", 443, yMAT_args, TARGET_VER36, 0 },
 	{ 6, "MAT MUL", 444, yMAT_args, TARGET_VER36, 0 },
 	{ 6, "MAT INV", 448, yMAT_args, TARGET_VER36, 0 }
};

struct funcname const functable[] = {
	{ 0, "#", TOK_CHANNEL },
	{ 0, "'", TOK_PRINTSPACE },
	{ 0, "x0d", TOK_LINE_COMMENT },
	{ 0, "(", TOK_LPAREN },
	{ 0, ")", TOK_RPAREN },
	{ 0, "*", TOK_MUL },
	{ 0, "+", TOK_ADD },
	{ 0, "-", TOK_SUB },
	{ 0, "-", TOK_UMINUS },
	{ 0, ",", TOK_COMMA },
	{ 0, ";", TOK_SEMI },
	{ 1, "==", TOK_APPROX_EQ },
	{ 1, "><", TOK_NE },
	{ 1, "<>", TOK_NE },
	{ 1, "<=", TOK_LE },
	{ 1, "=<", TOK_LE2 },
	{ 1, "=>", TOK_GE2 },
	{ 1, ">=", TOK_GE },
	{ 0, "<", TOK_LT },
	{ 0, "=", TOK_EQ },
	{ 0, ">", TOK_GT },
	{ 0, ":", TOK_LABEL },
	{ 0, "@", TOK_GOSUB },
	{ 0, "(", TOK_RES_46 },
	{ 0, "(", TOK_LPAREN2 },
	{ 0, ",", TOK_COMMA2 },
	{ 0, "+", TOK_PLUS_STR },
	{ 0, ",", TOK_RES_64 },
	{ 0, "<", TOK_LT_STR },
	{ 1, "<=", TOK_LE_STR },
	{ 1, "<>", TOK_NE_STR },
	{ 0, "=", TOK_EQ_STR },
	{ 0, "=", TOK_ASSIGN },
	{ 1, "=<", TOK_LE2_STR },
	{ 1, "=>", TOK_GE2_STR },
	{ 0, ">", TOK_GT_STR },
	{ 1, ">=", TOK_GE_STR },
	{ 0, "*", (TOK_SUBFUNC_208<<8)+189 },
	{ 0, "0", TOK_CONST_ZERO },
	{ 0, "1", TOK_CONST_ONE },
	{ 0, "2", TOK_CONST_TWO },
	{ 0, "3", TOK_CONST_THREE },
	{ 1, ")=", TOK_ARRAY_ASS },
	{ 1, "}=", TOK_REFEND },
	{ 1, "]=", TOK_RES_68 },
	{ 0, ")", TOK_RPAREN2 },
	{ 2, "AND", TOK_AND },
	{ 3, "AND(", (TOK_SUBFUNC_208<<8)+5 },
	{ 3, "ABS(", TOK_ABS },
	{ 3, "ATN(", TOK_ATAN },
	{ 3, "ASC(", (TOK_SUBFUNC_208<<8)+67 },
	{ 2, "AT(", TOK_AT },
	{ 4, "ASIN(", TOK_ASIN },
	{ 4, "ACOS(", TOK_ACOS },
	{ 1, "AS", TOK_AS },
	{ 6, "ARRPTR(", (TOK_SUBFUNC_208<<8)+188 },
	{ 3, "ADD(", (TOK_SUBFUNC_208<<8)+2 },
	{ 6, "ADDRIN(", (TOK_SUBFUNC_208<<8)+18 },
	{ 5, "ADDRIN", (TOK_SUBFUNC_208<<8)+19 },
	{ 7, "ADDROUT(", (TOK_SUBFUNC_208<<8)+20 },
	{ 6, "ADDROUT", (TOK_SUBFUNC_208<<8)+21 },
	{ 10, "APPL_INIT()", (TOK_SUBFUNC_208<<8)+135 },
	{ 9, "APPL_READ(", (TOK_SUBFUNC_208<<8)+136 },
	{ 10, "APPL_WRITE(", (TOK_SUBFUNC_208<<8)+137 },
	{ 9, "APPL_FIND(", (TOK_SUBFUNC_208<<8)+138 },
	{ 10, "APPL_TPLAY(", (TOK_SUBFUNC_208<<8)+139 },
	{ 12, "APPL_TRECORD(", (TOK_SUBFUNC_208<<8)+140 },
	{ 10, "APPL_EXIT()", (TOK_SUBFUNC_208<<8)+141 },
	{ 6, "ARRAY!(", (TOK_SUBFUNC_211<<8)+246 },
	{ 6, "ARRAY|(", (TOK_SUBFUNC_211<<8)+247 },
	{ 6, "ARRAY&(", (TOK_SUBFUNC_211<<8)+248 },
	{ 6, "ARRAY%(", (TOK_SUBFUNC_211<<8)+249 },
	{ 5, "ARRAY(", (TOK_SUBFUNC_211<<8)+250 },
	{ 9, "ARRAYSIZE(", (TOK_SUBFUNC_210<<8)+32 },
	{ 5, "ALLOC(", (TOK_SUBFUNC_209<<8)+66 },
	{ 9, "APPL.FIND(", (TOK_SUBFUNC_210<<8)+120 },
	{ 12, "APPL_CONTROL(", (TOK_SUBFUNC_209<<8)+23 },
	{ 11, "APPL_SEARCH(", (TOK_SUBFUNC_209<<8)+167 },
	{ 12, "APPL_GETINFO(", (TOK_SUBFUNC_209<<8)+22 },
	{ 11, "APPL_YIELD()", (TOK_SUBFUNC_209<<8)+86 },
	{ 3, "ACC?", (TOK_SUBFUNC_210<<8)+249 },
	{ 4, "AUTO?", (TOK_SUBFUNC_210<<8)+250 },
	{ 5, "ALIGN(", (TOK_SUBFUNC_210<<8)+9 },
	{ 2, "A~I", (TOK_SUBFUNC_208<<8)+244 },
	{ 5, "ALERT(", (TOK_SUBFUNC_209<<8)+250 },
	{ 7, "AP_SEND(", (TOK_SUBFUNC_209<<8)+252 },
	{ 8, "AV_INIT()", (TOK_SUBFUNC_210<<8)+93 },
	{ 12, "AV_PROTOKOLL(", (TOK_SUBFUNC_210<<8)+94 },
	{ 10, "AV_SENDKEY(", (TOK_SUBFUNC_210<<8)+97 },
	{ 11, "AV_OPENWIND(", (TOK_SUBFUNC_210<<8)+100 },
	{ 12, "AV_STARTPROG(", (TOK_SUBFUNC_210<<8)+101 },
	{ 14, "AV_ACCWINDOPEN(", (TOK_SUBFUNC_210<<8)+102 },
	{ 16, "AV_ACCWINDCLOSED(", (TOK_SUBFUNC_210<<8)+103 },
	{ 14, "AV_PATH_UPDATE(", (TOK_SUBFUNC_210<<8)+105 },
	{ 12, "AV_WHAT_IZIT(", (TOK_SUBFUNC_210<<8)+106 },
	{ 8, "AV_EXIT()", (TOK_SUBFUNC_210<<8)+108 },
	{ 10, "AV_STARTED(", (TOK_SUBFUNC_210<<8)+109 },
	{ 8, "AV_XWIND(", (TOK_SUBFUNC_210<<8)+110 },
	{ 11, "AV_FILEINFO(", (TOK_SUBFUNC_210<<8)+112 },
	{ 11, "AV_COPYFILE(", (TOK_SUBFUNC_210<<8)+113 },
	{ 10, "AV_DELFILE(", (TOK_SUBFUNC_210<<8)+114 },
	{ 4, "BIN$(", TOK_BIN1 },
	{ 7, "BASEPAGE", (TOK_SUBFUNC_208<<8)+31 },
	{ 4, "BIOS(", (TOK_SUBFUNC_208<<8)+85 },
	{ 4, "BREAK", TOK_BREAK },
	{ 5, "BUTTON", TOK_BUTTON },
	{ 3, "BASE", TOK_BASE },
	{ 4, "BYTE(", (TOK_SUBFUNC_208<<8)+16 },
	{ 4, "BTST(", (TOK_SUBFUNC_208<<8)+44 },
	{ 4, "BSET(", (TOK_SUBFUNC_208<<8)+45 },
	{ 4, "BCLR(", (TOK_SUBFUNC_208<<8)+46 },
	{ 4, "BCHG(", (TOK_SUBFUNC_208<<8)+47 },
	{ 4, "BYTE{", (TOK_SUBFUNC_208<<8)+116 },
	{ 7, "BMPSIZE(", (TOK_SUBFUNC_210<<8)+244 },
	{ 8, "BFOBSPEC(", (TOK_SUBFUNC_210<<8)+206 },
	{ 6, "BITBLK(", (TOK_SUBFUNC_210<<8)+207 },
	{ 5, "BFIND(", (TOK_SUBFUNC_209<<8)+96 },
	{ 6, "BFIND&(", (TOK_SUBFUNC_210<<8)+174 },
	{ 6, "BFIND%(", (TOK_SUBFUNC_210<<8)+175 },
	{ 6, "BINSTR(", (TOK_SUBFUNC_209<<8)+95 },
	{ 7, "BCONOUT(", (TOK_SUBFUNC_209<<8)+152 },
	{ 8, "BCONSTAT(", (TOK_SUBFUNC_209<<8)+154 },
	{ 7, "BCOSTAT(", (TOK_SUBFUNC_209<<8)+153 },
	{ 6, "BCONIN(", (TOK_SUBFUNC_209<<8)+151 },
	{ 8, "BUFFOPER(", (TOK_SUBFUNC_209<<8)+35 },
	{ 7, "BUFFPTR(", (TOK_SUBFUNC_209<<8)+40 },
	{ 6, "BSWAP&(", (TOK_SUBFUNC_209<<8)+99 },
	{ 5, "BSWAP(", (TOK_SUBFUNC_209<<8)+100 },
	{ 6, "BSWAP3(", (TOK_SUBFUNC_210<<8)+10 },
	{ 8, "BLITMODE(", (TOK_SUBFUNC_209<<8)+76 },
	{ 7, "BCONMAP(", (TOK_SUBFUNC_209<<8)+206 },
	{ 6, "BCOUNT(", (TOK_SUBFUNC_209<<8)+97 },
	{ 7, "BCOUNT&(", (TOK_SUBFUNC_210<<8)+23 },
	{ 7, "BCOUNT%(", (TOK_SUBFUNC_210<<8)+24 },
	{ 9, "BIOSKEYS()", (TOK_SUBFUNC_209<<8)+222 },
	{ 5, "BOUND(", (TOK_SUBFUNC_210<<8)+131 },
	{ 8, "BCOMPARE(", (TOK_SUBFUNC_210<<8)+132 },
	{ 9, "BCOMPARE&(", (TOK_SUBFUNC_210<<8)+180 },
	{ 9, "BCOMPARE%(", (TOK_SUBFUNC_210<<8)+181 },
	{ 9, "BF_OBSPEC(", (TOK_SUBFUNC_211<<8)+110 },
	{ 12, "BF_CHARACTER(", (TOK_SUBFUNC_211<<8)+111 },
	{ 12, "BF_FRAMESIZE(", (TOK_SUBFUNC_211<<8)+112 },
	{ 11, "BF_FRAMECOL(", (TOK_SUBFUNC_211<<8)+113 },
	{ 10, "BF_TEXTCOL(", (TOK_SUBFUNC_211<<8)+114 },
	{ 11, "BF_TEXTMODE(", (TOK_SUBFUNC_211<<8)+115 },
	{ 14, "BF_FILLPATTERN(", (TOK_SUBFUNC_211<<8)+116 },
	{ 14, "BF_INTERIORCOL(", (TOK_SUBFUNC_211<<8)+117 },
	{ 8, "BI_PDATA(", (TOK_SUBFUNC_211<<8)+118 },
	{ 5, "BI_WB(", (TOK_SUBFUNC_211<<8)+119 },
	{ 5, "BI_HL(", (TOK_SUBFUNC_211<<8)+120 },
	{ 4, "BI_X(", (TOK_SUBFUNC_211<<8)+121 },
	{ 4, "BI_Y(", (TOK_SUBFUNC_211<<8)+122 },
	{ 8, "BI_COLOR(", (TOK_SUBFUNC_211<<8)+123 },
	{ 3, "COS(", TOK_COS },
	{ 4, "COSQ(", TOK_COSQ },
	{ 4, "CHR$(", TOK_CHR },
	{ 3, "CVI(", (TOK_SUBFUNC_208<<8)+75 },
	{ 3, "CVL(", (TOK_SUBFUNC_208<<8)+76 },
	{ 3, "CVS(", TOK_CVS },
	{ 3, "CVF(", TOK_CVF },
	{ 3, "CVD(", TOK_CVD },
	{ 7, "CONTERM(", (TOK_SUBFUNC_210<<8)+16 },
	{ 6, "CONTRL(", (TOK_SUBFUNC_208<<8)+22 },
	{ 5, "CONTRL", (TOK_SUBFUNC_208<<8)+23 },
	{ 3, "CONT", TOK_CONT },
	{ 1, "C:", (TOK_SUBFUNC_208<<8)+117 },
	{ 5, "CRSLIN", (TOK_SUBFUNC_208<<8)+56 },
	{ 5, "CRSCOL", (TOK_SUBFUNC_208<<8)+57 },
	{ 4, "CARD(", (TOK_SUBFUNC_208<<8)+15 },
	{ 4, "CARD{", (TOK_SUBFUNC_208<<8)+115 },
	{ 4, "CHAR{", TOK_CHAR_REF },
	{ 5, "CHAR$(", TOK_CHAR },
	{ 4, "CINT(", (TOK_SUBFUNC_208<<8)+103 },
	{ 6, "CFLOAT(", TOK_CFLOAT },
	{ 6, "COMBIN(", TOK_COMBIN },
	{ 6, "CCONRS(", (TOK_SUBFUNC_212<<8)+24 },
	{ 7, "CCONIS()", (TOK_SUBFUNC_212<<8)+19 },
	{ 7, "CCONOS()", (TOK_SUBFUNC_212<<8)+20 },
	{ 7, "CAUXIS()", (TOK_SUBFUNC_212<<8)+21 },
	{ 7, "CAUXOS()", (TOK_SUBFUNC_212<<8)+22 },
	{ 7, "CPRNOS()", (TOK_SUBFUNC_212<<8)+23 },
	{ 6, "CRAWIO(", (TOK_SUBFUNC_212<<8)+16 },
	{ 8, "CRAWCIN()", (TOK_SUBFUNC_212<<8)+17 },
	{ 7, "CNECIN()", (TOK_SUBFUNC_212<<8)+18 },
	{ 7, "CCONIN()", (TOK_SUBFUNC_212<<8)+11 },
	{ 7, "CCONOUT(", (TOK_SUBFUNC_212<<8)+12 },
	{ 7, "CAUXIN()", (TOK_SUBFUNC_212<<8)+13 },
	{ 7, "CAUXOUT(", (TOK_SUBFUNC_212<<8)+14 },
	{ 7, "CPRNOUT(", (TOK_SUBFUNC_212<<8)+15 },
	{ 5, "CREAD(", (TOK_SUBFUNC_211<<8)+187 },
	{ 6, "CWRITE(", (TOK_SUBFUNC_211<<8)+186 },
	{ 9, "CONSTRAIN(", (TOK_SUBFUNC_210<<8)+138 },
	{ 6, "C_VDI(#", (TOK_SUBFUNC_210<<8)+25 },
	{ 8, "C_XBIOS(#", (TOK_SUBFUNC_210<<8)+26 },
	{ 6, "CALLOC(", (TOK_SUBFUNC_210<<8)+31 },
	{ 8, "CICONBLK(", (TOK_SUBFUNC_210<<8)+210 },
	{ 6, "CRYPT$(", TOK_CRYPT },
	{ 6, "CURDIR$", TOK_CURDIR },
	{ 7, "CMDLINE$", TOK_CMDLINE },
	{ 8, "CHECKSUM(", (TOK_SUBFUNC_210<<8)+34 },
	{ 7, "CPU020()", (TOK_SUBFUNC_208<<8)+245 },
	{ 6, "CCONWS(", (TOK_SUBFUNC_209<<8)+101 },
	{ 5, "CRC16(", (TOK_SUBFUNC_209<<8)+246 },
	{ 5, "CRC32(", (TOK_SUBFUNC_209<<8)+247 },
	{ 8, "CURSCONF(", (TOK_SUBFUNC_209<<8)+205 },
	{ 9, "CACHECTRL(", (TOK_SUBFUNC_209<<8)+77 },
	{ 10, "CT60_CACHE(", (TOK_SUBFUNC_209<<8)+78 },
	{ 17, "CT60_FLUSH_CACHE()", (TOK_SUBFUNC_209<<8)+79 },
	{ 26, "CT60_READ_CORE_TEMPERATURE(", (TOK_SUBFUNC_209<<8)+80 },
	{ 17, "CT60_RW_PARAMETER(", (TOK_SUBFUNC_209<<8)+81 },
	{ 12, "CT60_VMALLOC(", (TOK_SUBFUNC_209<<8)+82 },
	{ 8, "COMPILED?", (TOK_SUBFUNC_210<<8)+225 },
	{ 6, "CPU020?", (TOK_SUBFUNC_210<<8)+252 },
	{ 11, "CI_MAINLIST(", (TOK_SUBFUNC_211<<8)+159 },
	{ 13, "CI_NUM_PLANES(", (TOK_SUBFUNC_211<<8)+160 },
	{ 11, "CI_COL_DATA(", (TOK_SUBFUNC_211<<8)+161 },
	{ 11, "CI_COL_MASK(", (TOK_SUBFUNC_211<<8)+162 },
	{ 11, "CI_SEL_DATA(", (TOK_SUBFUNC_211<<8)+163 },
	{ 11, "CI_SEL_MASK(", (TOK_SUBFUNC_211<<8)+164 },
	{ 11, "CI_NEXT_RES(", (TOK_SUBFUNC_211<<8)+165 },
	{ 2, "DIV", TOK_DIV },
	{ 3, "DIV(", (TOK_SUBFUNC_208<<8)+1 },
	{ 5, "DOWNTO", TOK_DOWNTO },
	{ 5, "DPEEK(", (TOK_SUBFUNC_208<<8)+64 },
	{ 4, "DIM?(", (TOK_SUBFUNC_208<<8)+81 },
	{ 5, "DATE$(", TOK_DATE1 },
	{ 4, "DATE$", TOK_DATE },
	{ 4, "DIR$(", TOK_DIR },
	{ 5, "DFREE(", (TOK_SUBFUNC_208<<8)+83 },
	{ 6, "DOUBLE{", TOK_DOUBLE_REF },
	{ 3, "DEG(", TOK_DEG },
	{ 4, "DRAW(", TOK_DRAW },
	{ 7, "DCHROOT(", (TOK_SUBFUNC_212<<8)+46 },
	{ 5, "DCNTL(", (TOK_SUBFUNC_212<<8)+10 },
	{ 5, "DBMSG(", (TOK_SUBFUNC_212<<8)+6 },
	{ 5, "DAYNO(", (TOK_SUBFUNC_210<<8)+254 },
	{ 4, "DATE(", (TOK_SUBFUNC_210<<8)+214 },
	{ 3, "DAY(", (TOK_SUBFUNC_210<<8)+217 },
	{ 9, "DELCOOKIE(", (TOK_SUBFUNC_210<<8)+204 },
	{ 10, "DHST_INIT()", (TOK_SUBFUNC_210<<8)+187 },
	{ 8, "DHST_ADD(", (TOK_SUBFUNC_210<<8)+188 },
	{ 5, "DLOCK(", (TOK_SUBFUNC_210<<8)+148 },
	{ 8, "DIGITAL$(", TOK_DIGITAL },
	{ 7, "DCREATE(", (TOK_SUBFUNC_209<<8)+103 },
	{ 7, "DDELETE(", (TOK_SUBFUNC_209<<8)+104 },
	{ 8, "DSETPATH(", (TOK_SUBFUNC_209<<8)+108 },
	{ 7, "DOSOUND(", (TOK_SUBFUNC_209<<8)+8 },
	{ 10, "DEVCONNECT(", (TOK_SUBFUNC_209<<8)+38 },
	{ 11, "DSPTRISTATE(", (TOK_SUBFUNC_209<<8)+36 },
	{ 8, "DGETDRV()", (TOK_SUBFUNC_209<<8)+11 },
	{ 7, "DSETDRV(", (TOK_SUBFUNC_209<<8)+102 },
	{ 9, "DPATHCONF(", (TOK_SUBFUNC_209<<8)+114 },
	{ 7, "DRVMAP()", (TOK_SUBFUNC_209<<8)+112 },
	{ 7, "DMAREAD(", (TOK_SUBFUNC_209<<8)+218 },
	{ 8, "DMAWRITE(", (TOK_SUBFUNC_209<<8)+219 },
	{ 6, "DFREE%(", (TOK_SUBFUNC_209<<8)+116 },
	{ 8, "DGETPATH(", (TOK_SUBFUNC_209<<8)+107 },
	{ 2, "DTA", (TOK_SUBFUNC_209<<8)+56 },
	{ 11, "DWRITELABEL(", (TOK_SUBFUNC_210<<8)+163 },
	{ 10, "DREADLABEL(", (TOK_SUBFUNC_210<<8)+164 },
	{ 7, "DGETCWD(", (TOK_SUBFUNC_210<<8)+165 },
	{ 9, "DCLOSEDIR(", (TOK_SUBFUNC_210<<8)+166 },
	{ 10, "DREWINDDIR(", (TOK_SUBFUNC_210<<8)+167 },
	{ 8, "DOPENDIR(", (TOK_SUBFUNC_210<<8)+168 },
	{ 8, "DREADDIR(", (TOK_SUBFUNC_210<<8)+169 },
	{ 9, "DXREADDIR(", (TOK_SUBFUNC_210<<8)+170 },
	{ 6, "DMASND?", (TOK_SUBFUNC_210<<8)+253 },
	{ 11, "DSP_DOBLOCK(", (TOK_SUBFUNC_211<<8)+12 },
	{ 16, "DSP_BLKHANDSHAKE(", (TOK_SUBFUNC_211<<8)+13 },
	{ 15, "DSP_BLKUNPACKED(", (TOK_SUBFUNC_211<<8)+14 },
	{ 12, "DSP_INSTREAM(", (TOK_SUBFUNC_211<<8)+15 },
	{ 13, "DSP_OUTSTREAM(", (TOK_SUBFUNC_211<<8)+16 },
	{ 12, "DSP_IOSTREAM(", (TOK_SUBFUNC_211<<8)+17 },
	{ 20, "DSP_REMOVEINTERRUPTS(", (TOK_SUBFUNC_211<<8)+18 },
	{ 16, "DSP_GETWORDSIZE()", (TOK_SUBFUNC_211<<8)+19 },
	{ 9, "DSP_LOCK()", (TOK_SUBFUNC_211<<8)+20 },
	{ 11, "DSP_UNLOCK()", (TOK_SUBFUNC_211<<8)+21 },
	{ 13, "DSP_AVAILABLE(", (TOK_SUBFUNC_211<<8)+22 },
	{ 11, "DSP_RESERVE(", (TOK_SUBFUNC_211<<8)+23 },
	{ 12, "DSP_LOADPROG(", (TOK_SUBFUNC_211<<8)+24 },
	{ 12, "DSP_EXECPROG(", (TOK_SUBFUNC_211<<8)+25 },
	{ 12, "DSP_EXECBOOT(", (TOK_SUBFUNC_211<<8)+26 },
	{ 15, "DSP_LODTOBINARY(", (TOK_SUBFUNC_211<<8)+27 },
	{ 13, "DSP_TRIGGERHC(", (TOK_SUBFUNC_211<<8)+28 },
	{ 25, "DSP_REQUESTUNIQUEABILITY()", (TOK_SUBFUNC_211<<8)+29 },
	{ 19, "DSP_GETPROGABILITY()", (TOK_SUBFUNC_211<<8)+30 },
	{ 21, "DSP_FLUSHSUBROUTINES()", (TOK_SUBFUNC_211<<8)+31 },
	{ 18, "DSP_LOADSUBROUTINE(", (TOK_SUBFUNC_211<<8)+32 },
	{ 18, "DSP_INQSUBRABILITY(", (TOK_SUBFUNC_211<<8)+33 },
	{ 17, "DSP_RUNSUBROUTINE(", (TOK_SUBFUNC_211<<8)+34 },
	{ 7, "DSP_HF0(", (TOK_SUBFUNC_211<<8)+35 },
	{ 7, "DSP_HF1(", (TOK_SUBFUNC_211<<8)+36 },
	{ 8, "DSP_HF2()", (TOK_SUBFUNC_211<<8)+37 },
	{ 8, "DSP_HF3()", (TOK_SUBFUNC_211<<8)+38 },
	{ 12, "DSP_BLKWORDS(", (TOK_SUBFUNC_211<<8)+39 },
	{ 12, "DSP_BLKBYTES(", (TOK_SUBFUNC_211<<8)+40 },
	{ 10, "DSP_HSTAT()", (TOK_SUBFUNC_211<<8)+41 },
	{ 14, "DSP_SETVECTORS(", (TOK_SUBFUNC_211<<8)+42 },
	{ 14, "DSP_MULTBLOCKS(", (TOK_SUBFUNC_211<<8)+43 },
	{ 4, "EOF(#", (TOK_SUBFUNC_208<<8)+78 },
	{ 3, "EOF(", (TOK_SUBFUNC_208<<8)+78 },
	{ 2, "EQV", TOK_EQV },
	{ 3, "EQV(", (TOK_SUBFUNC_208<<8)+8 },
	{ 4, "ERROR", TOK_ERROR },
	{ 4, "ERR$(", TOK_ERRSTR },
	{ 2, "ERR", (TOK_SUBFUNC_208<<8)+88 },
	{ 4, "EVEN(", (TOK_SUBFUNC_208<<8)+101 },
	{ 4, "EXEC(", (TOK_SUBFUNC_208<<8)+95 },
	{ 5, "EXIST(", (TOK_SUBFUNC_208<<8)+84 },
	{ 3, "EXP(", TOK_EXP },
	{ 11, "EVNT_KEYBD()", (TOK_SUBFUNC_208<<8)+118 },
	{ 11, "EVNT_BUTTON(", (TOK_SUBFUNC_208<<8)+119 },
	{ 10, "EVNT_MOUSE(", (TOK_SUBFUNC_208<<8)+120 },
	{ 10, "EVNT_MESAG(", (TOK_SUBFUNC_208<<8)+121 },
	{ 10, "EVNT_TIMER(", (TOK_SUBFUNC_208<<8)+122 },
	{ 10, "EVNT_MULTI(", (TOK_SUBFUNC_208<<8)+123 },
	{ 11, "EVNT_DCLICK(", (TOK_SUBFUNC_208<<8)+142 },
	{ 2, "ERL", (TOK_SUBFUNC_210<<8)+2 },
	{ 8, "ENVIRON$(", TOK_ENVIRON },
	{ 6, "ENVIRON", (TOK_SUBFUNC_210<<8)+121 },
	{ 10, "EGETSHIFT()", (TOK_SUBFUNC_209<<8)+238 },
	{ 9, "ESETSHIFT(", (TOK_SUBFUNC_209<<8)+239 },
	{ 8, "ESETBANK(", (TOK_SUBFUNC_209<<8)+240 },
	{ 9, "ESETCOLOR(", (TOK_SUBFUNC_209<<8)+241 },
	{ 8, "ESETGRAY(", (TOK_SUBFUNC_209<<8)+242 },
	{ 9, "ESETSMEAR(", (TOK_SUBFUNC_209<<8)+243 },
	{ 11, "EGETPALETTE(", (TOK_SUBFUNC_209<<8)+244 },
	{ 11, "ESETPALETTE(", (TOK_SUBFUNC_209<<8)+245 },
	{ 3, "EJP?", (TOK_SUBFUNC_208<<8)+254 },
	{ 4, "FRAC(", TOK_FRAC },
	{ 3, "FRE(", (TOK_SUBFUNC_208<<8)+71 },
	{ 4, "FALSE", TOK_FALSE },
	{ 4, "FATAL", (TOK_SUBFUNC_208<<8)+89 },
	{ 3, "FIX(", TOK_FIX },
	{ 1, "FN", TOK_FNCALL },
	{ 5, "FLOAT{", TOK_FLOAT_REF },
	{ 7, "FORM_DO(", (TOK_SUBFUNC_208<<8)+157 },
	{ 9, "FORM_DIAL(", (TOK_SUBFUNC_208<<8)+158 },
	{ 10, "FORM_ALERT(", (TOK_SUBFUNC_208<<8)+159 },
	{ 10, "FORM_ERROR(", (TOK_SUBFUNC_208<<8)+160 },
	{ 11, "FORM_CENTER(", (TOK_SUBFUNC_208<<8)+161 },
	{ 10, "FORM_KEYBD(", (TOK_SUBFUNC_208<<8)+204 },
	{ 11, "FORM_BUTTON(", (TOK_SUBFUNC_208<<8)+205 },
	{ 10, "FSEL_INPUT(", (TOK_SUBFUNC_208<<8)+174 },
	{ 7, "FSFIRST(", (TOK_SUBFUNC_208<<8)+218 },
	{ 7, "FSNEXT()", (TOK_SUBFUNC_208<<8)+219 },
	{ 7, "FSETDTA(", (TOK_SUBFUNC_208<<8)+220 },
	{ 8, "FGETDTA()", (TOK_SUBFUNC_208<<8)+221 },
	{ 4, "FACT(", TOK_FACT },
	{ 6, "FCHDIR(", (TOK_SUBFUNC_212<<8)+50 },
	{ 10, "FFDOPENDIR(", (TOK_SUBFUNC_212<<8)+51 },
	{ 6, "FDIRFD(", (TOK_SUBFUNC_212<<8)+52 },
	{ 8, "FCHOWN16(", (TOK_SUBFUNC_212<<8)+49 },
	{ 8, "FFSTAT64(", (TOK_SUBFUNC_212<<8)+48 },
	{ 7, "FSTAT64(", (TOK_SUBFUNC_212<<8)+47 },
	{ 6, "FREADV(", (TOK_SUBFUNC_212<<8)+44 },
	{ 7, "FWRITEV(", (TOK_SUBFUNC_212<<8)+45 },
	{ 7, "FFCHMOD(", (TOK_SUBFUNC_212<<8)+7 },
	{ 7, "FFCHOWN(", (TOK_SUBFUNC_212<<8)+8 },
	{ 5, "FSYNC(", (TOK_SUBFUNC_211<<8)+234 },
	{ 8, "FSYMLINK(", (TOK_SUBFUNC_211<<8)+199 },
	{ 5, "FLINK(", (TOK_SUBFUNC_211<<8)+198 },
	{ 6, "FEXIST(", (TOK_SUBFUNC_210<<8)+176 },
	{ 5, "FILES(", (TOK_SUBFUNC_210<<8)+192 },
	{ 8, "FILECOPY(", (TOK_SUBFUNC_210<<8)+152 },
	{ 7, "FPU882()", (TOK_SUBFUNC_208<<8)+246 },
	{ 6, "FXATTR(", (TOK_SUBFUNC_210<<8)+171 },
	{ 5, "FPIPE(", (TOK_SUBFUNC_210<<8)+134 },
	{ 5, "FPOLL(", (TOK_SUBFUNC_210<<8)+126 },
	{ 7, "FRENAME(", (TOK_SUBFUNC_209<<8)+111 },
	{ 7, "FDELETE(", (TOK_SUBFUNC_209<<8)+49 },
	{ 7, "FCREATE(", (TOK_SUBFUNC_209<<8)+47 },
	{ 6, "FCLOSE(", (TOK_SUBFUNC_209<<8)+44 },
	{ 6, "FWRITE(", (TOK_SUBFUNC_209<<8)+46 },
	{ 5, "FOPEN(", (TOK_SUBFUNC_209<<8)+43 },
	{ 5, "FREAD(", (TOK_SUBFUNC_209<<8)+45 },
	{ 5, "FSEEK(", (TOK_SUBFUNC_209<<8)+48 },
	{ 10, "FORM.KEYBD(", (TOK_SUBFUNC_210<<8)+205 },
	{ 10, "FORM_POPUP(", (TOK_SUBFUNC_209<<8)+160 },
	{ 12, "FSEL_EXINPUT(", (TOK_SUBFUNC_209<<8)+25 },
	{ 7, "FINSTAT(", (TOK_SUBFUNC_209<<8)+175 },
	{ 5, "FCNTL(", (TOK_SUBFUNC_209<<8)+177 },
	{ 7, "FSELECT(", (TOK_SUBFUNC_209<<8)+178 },
	{ 8, "FGETCHAR(", (TOK_SUBFUNC_209<<8)+83 },
	{ 8, "FPUTCHAR(", (TOK_SUBFUNC_209<<8)+84 },
	{ 7, "FDATIME(", (TOK_SUBFUNC_209<<8)+113 },
	{ 8, "FOUTSTAT(", (TOK_SUBFUNC_209<<8)+176 },
	{ 7, "FATTRIB(", (TOK_SUBFUNC_209<<8)+115 },
	{ 4, "FDUP(", (TOK_SUBFUNC_209<<8)+171 },
	{ 6, "FFORCE(", (TOK_SUBFUNC_209<<8)+172 },
	{ 6, "FCHMOD(", (TOK_SUBFUNC_209<<8)+254 },
	{ 6, "FCHOWN(", (TOK_SUBFUNC_210<<8)+144 },
	{ 6, "FLOPRD(", (TOK_SUBFUNC_209<<8)+213 },
	{ 6, "FLOPWR(", (TOK_SUBFUNC_209<<8)+214 },
	{ 7, "FLOPFMT(", (TOK_SUBFUNC_209<<8)+215 },
	{ 7, "FLOPVER(", (TOK_SUBFUNC_209<<8)+216 },
	{ 8, "FLOPRATE(", (TOK_SUBFUNC_209<<8)+217 },
	{ 5, "FLOCK(", (TOK_SUBFUNC_209<<8)+173 },
	{ 5, "F_INP(", (TOK_SUBFUNC_209<<8)+63 },
	{ 6, "F_INP&(", (TOK_SUBFUNC_209<<8)+64 },
	{ 6, "F_INP%(", (TOK_SUBFUNC_209<<8)+65 },
	{ 5, "F_OUT(", (TOK_SUBFUNC_209<<8)+60 },
	{ 6, "F_OUT&(", (TOK_SUBFUNC_209<<8)+61 },
	{ 6, "F_OUT%(", (TOK_SUBFUNC_209<<8)+62 },
	{ 6, "F_BGET(", (TOK_SUBFUNC_209<<8)+51 },
	{ 6, "F_BPUT(", (TOK_SUBFUNC_209<<8)+52 },
	{ 6, "F_OPEN(", (TOK_SUBFUNC_209<<8)+59 },
	{ 12, "F_LINE_INPUT(", (TOK_SUBFUNC_209<<8)+68 },
	{ 13, "F_LINE_OUTPUT(", (TOK_SUBFUNC_209<<8)+67 },
	{ 7, "F_INPUT(", (TOK_SUBFUNC_209<<8)+90 },
	{ 8, "F_OUTPUT(", (TOK_SUBFUNC_209<<8)+89 },
	{ 5, "F_LOF(", (TOK_SUBFUNC_209<<8)+55 },
	{ 5, "F_LOC(", (TOK_SUBFUNC_209<<8)+54 },
	{ 5, "F_EOF(", (TOK_SUBFUNC_209<<8)+53 },
	{ 7, "F_BLOAD(", (TOK_SUBFUNC_209<<8)+69 },
	{ 7, "F_BSAVE(", (TOK_SUBFUNC_209<<8)+70 },
	{ 6, "F_SEEK(", (TOK_SUBFUNC_209<<8)+71 },
	{ 9, "F_RELSEEK(", (TOK_SUBFUNC_209<<8)+72 },
	{ 7, "F_CLOSE(", (TOK_SUBFUNC_210<<8)+119 },
	{ 9, "F_ENDSEEK(", (TOK_SUBFUNC_210<<8)+124 },
	{ 7, "FILELEN(", (TOK_SUBFUNC_210<<8)+127 },
	{ 7, "FSOCKET(", (TOK_SUBFUNC_210<<8)+35 },
	{ 11, "FSOCKETPAIR(", (TOK_SUBFUNC_210<<8)+36 },
	{ 7, "FACCEPT(", (TOK_SUBFUNC_210<<8)+37 },
	{ 8, "FCONNECT(", (TOK_SUBFUNC_210<<8)+38 },
	{ 5, "FBIND(", (TOK_SUBFUNC_210<<8)+39 },
	{ 7, "FLISTEN(", (TOK_SUBFUNC_210<<8)+40 },
	{ 8, "FRECVMSG(", (TOK_SUBFUNC_210<<8)+41 },
	{ 8, "FSENDMSG(", (TOK_SUBFUNC_210<<8)+42 },
	{ 9, "FRECVFROM(", (TOK_SUBFUNC_210<<8)+43 },
	{ 7, "FSENDTO(", (TOK_SUBFUNC_210<<8)+44 },
	{ 11, "FSETSOCKOPT(", (TOK_SUBFUNC_210<<8)+45 },
	{ 11, "FGETSOCKOPT(", (TOK_SUBFUNC_210<<8)+46 },
	{ 12, "FGETPEERNAME(", (TOK_SUBFUNC_210<<8)+47 },
	{ 12, "FGETSOCKNAME(", (TOK_SUBFUNC_210<<8)+48 },
	{ 9, "FSHUTDOWN(", (TOK_SUBFUNC_210<<8)+49 },
	{ 10, "FONT_INIT()", (TOK_SUBFUNC_210<<8)+89 },
	{ 11, "FONT_SELECT(", (TOK_SUBFUNC_210<<8)+90 },
	{ 9, "FREEFILE()", (TOK_SUBFUNC_210<<8)+5 },
	{ 9, "FMIDIPIPE(", (TOK_SUBFUNC_210<<8)+137 },
	{ 9, "FREADLINK(", (TOK_SUBFUNC_211<<8)+183 },
	{ 3, "FPU?", (TOK_SUBFUNC_210<<8)+251 },
	{ 4, "GOSUB", TOK_GOSUB_FUNC },
	{ 3, "GOTO", TOK_GOTO_FUNC },
	{ 1, "GB", (TOK_SUBFUNC_208<<8)+61 },
	{ 7, "GCONTRL(", (TOK_SUBFUNC_208<<8)+24 },
	{ 6, "GCONTRL", (TOK_SUBFUNC_208<<8)+25 },
	{ 6, "GEMDOS(", (TOK_SUBFUNC_208<<8)+87 },
	{ 6, "GINTIN(", (TOK_SUBFUNC_208<<8)+26 },
	{ 5, "GINTIN", (TOK_SUBFUNC_208<<8)+27 },
	{ 7, "GINTOUT(", (TOK_SUBFUNC_208<<8)+28 },
	{ 6, "GINTOUT", (TOK_SUBFUNC_208<<8)+29 },
	{ 6, "GLOBAL(", (TOK_SUBFUNC_208<<8)+250 },
	{ 5, "GLOBAL", (TOK_SUBFUNC_208<<8)+251 },
	{ 14, "GRAF_RUBBERBOX(", (TOK_SUBFUNC_208<<8)+162 },
	{ 12, "GRAF_DRAGBOX(", (TOK_SUBFUNC_208<<8)+163 },
	{ 12, "GRAF_MOVEBOX(", (TOK_SUBFUNC_208<<8)+164 },
	{ 12, "GRAF_GROWBOX(", (TOK_SUBFUNC_208<<8)+165 },
	{ 14, "GRAF_SHRINKBOX(", (TOK_SUBFUNC_208<<8)+166 },
	{ 13, "GRAF_WATCHBOX(", (TOK_SUBFUNC_208<<8)+167 },
	{ 13, "GRAF_SLIDEBOX(", (TOK_SUBFUNC_208<<8)+168 },
	{ 11, "GRAF_HANDLE(", (TOK_SUBFUNC_208<<8)+169 },
	{ 10, "GRAF_MOUSE(", (TOK_SUBFUNC_208<<8)+170 },
	{ 12, "GRAF_MKSTATE(", (TOK_SUBFUNC_208<<8)+171 },
	{ 4, "GDOS?", (TOK_SUBFUNC_208<<8)+104 },
	{ 7, "GETSIZE(", (TOK_SUBFUNC_208<<8)+239 },
	{ 2, "G~H", (TOK_SUBFUNC_210<<8)+242 },
	{ 2, "G~R", (TOK_SUBFUNC_210<<8)+243 },
	{ 9, "GETCOOKIE(", (TOK_SUBFUNC_208<<8)+252 },
	{ 6, "GMOUSEK", (TOK_SUBFUNC_208<<8)+247 },
	{ 6, "GMOUSEX", (TOK_SUBFUNC_208<<8)+248 },
	{ 6, "GMOUSEY", (TOK_SUBFUNC_208<<8)+249 },
	{ 16, "GRAF_MULTIRUBBER(", (TOK_SUBFUNC_209<<8)+168 },
	{ 4, "GPIO(", (TOK_SUBFUNC_209<<8)+37 },
	{ 7, "GETREZ()", (TOK_SUBFUNC_209<<8)+118 },
	{ 8, "GETTIME()", (TOK_SUBFUNC_209<<8)+109 },
	{ 6, "GETBPB(", (TOK_SUBFUNC_209<<8)+158 },
	{ 8, "GIACCESS(", (TOK_SUBFUNC_209<<8)+212 },
	{ 7, "GSTICK()", (TOK_SUBFUNC_209<<8)+74 },
	{ 7, "GSTRIG()", (TOK_SUBFUNC_209<<8)+75 },
	{ 6, "GETSTR(", (TOK_SUBFUNC_210<<8)+179 },
	{ 9, "GRAYSCALE(", (TOK_SUBFUNC_210<<8)+213 },
	{ 6, "GETMPB(", (TOK_SUBFUNC_212<<8)+0 },
	{ 4, "HEX$(", TOK_HEX1 },
	{ 4, "HIMEM", (TOK_SUBFUNC_208<<8)+30 },
	{ 7, "HINYBLE(", (TOK_SUBFUNC_210<<8)+195 },
	{ 6, "HIBYTE(", (TOK_SUBFUNC_210<<8)+196 },
	{ 6, "HIWORD(", (TOK_SUBFUNC_210<<8)+197 },
	{ 6, "HICARD(", (TOK_SUBFUNC_210<<8)+198 },
	{ 6, "HOUR24(", (TOK_SUBFUNC_210<<8)+218 },
	{ 6, "HOUR12(", (TOK_SUBFUNC_211<<8)+3 },
	{ 1, "IF", TOK_IF },
	{ 2, "IMP", TOK_IMP },
	{ 3, "IMP(", (TOK_SUBFUNC_208<<8)+9 },
	{ 5, "INKEY$", TOK_INKEY },
	{ 6, "INPUT$(", TOK_INPUT1 },
	{ 8, "INPUTBOX(", (TOK_SUBFUNC_210<<8)+22 },
	{ 10, "INPUTRADIO(", (TOK_SUBFUNC_211<<8)+184 },
	{ 4, "INP(#", (TOK_SUBFUNC_208<<8)+77 },
	{ 3, "INP(", (TOK_SUBFUNC_208<<8)+74 },
	{ 5, "INP&(#", (TOK_SUBFUNC_208<<8)+224 },
	{ 4, "INP&(", (TOK_SUBFUNC_208<<8)+223 },
	{ 5, "INP%(#", (TOK_SUBFUNC_208<<8)+226 },
	{ 4, "INP%(", (TOK_SUBFUNC_208<<8)+225 },
	{ 4, "INP?(", (TOK_SUBFUNC_208<<8)+93 },
	{ 4, "INPUT", TOK_INPUT3 },
	{ 5, "INSTR(", (TOK_SUBFUNC_208<<8)+68 },
	{ 3, "INT(", TOK_INT },
	{ 3, "IBOX", TOK_IBOX },
	{ 5, "INTIN(", (TOK_SUBFUNC_208<<8)+32 },
	{ 4, "INTIN", (TOK_SUBFUNC_208<<8)+33 },
	{ 6, "INTOUT(", (TOK_SUBFUNC_208<<8)+34 },
	{ 5, "INTOUT", (TOK_SUBFUNC_208<<8)+35 },
	{ 3, "INT{", (TOK_SUBFUNC_208<<8)+114 },
	{ 6, "INPAUX$", TOK_INPAUX },
	{ 6, "INPMID$", TOK_INPMID },
	{ 10, "INDEXCOUNT(", (TOK_SUBFUNC_210<<8)+30 },
	{ 7, "ICONBLK(", (TOK_SUBFUNC_210<<8)+209 },
	{ 8, "INITMOUS(", (TOK_SUBFUNC_211<<8)+182 },
	{ 5, "IOREC(", (TOK_SUBFUNC_209<<8)+209 },
	{ 6, "IKBDWS(", (TOK_SUBFUNC_209<<8)+210 },
	{ 7, "ISASCII(", (TOK_SUBFUNC_209<<8)+98 },
	{ 7, "ISBLANK(", (TOK_SUBFUNC_210<<8)+153 },
	{ 7, "ISCNTRL(", (TOK_SUBFUNC_210<<8)+154 },
	{ 7, "ISPRINT(", (TOK_SUBFUNC_210<<8)+155 },
	{ 7, "ISSPACE(", (TOK_SUBFUNC_210<<8)+156 },
	{ 8, "IB_PMASK(", (TOK_SUBFUNC_211<<8)+142 },
	{ 8, "IB_PDATA(", (TOK_SUBFUNC_211<<8)+143 },
	{ 8, "IB_PTEXT(", (TOK_SUBFUNC_211<<8)+144 },
	{ 7, "IB_CHAR(", (TOK_SUBFUNC_211<<8)+145 },
	{ 8, "IB_XCHAR(", (TOK_SUBFUNC_211<<8)+146 },
	{ 8, "IB_YCHAR(", (TOK_SUBFUNC_211<<8)+147 },
	{ 8, "IB_XICON(", (TOK_SUBFUNC_211<<8)+148 },
	{ 8, "IB_YICON(", (TOK_SUBFUNC_211<<8)+149 },
	{ 8, "IB_WICON(", (TOK_SUBFUNC_211<<8)+150 },
	{ 8, "IB_HICON(", (TOK_SUBFUNC_211<<8)+151 },
	{ 8, "IB_XTEXT(", (TOK_SUBFUNC_211<<8)+152 },
	{ 8, "IB_YTEXT(", (TOK_SUBFUNC_211<<8)+153 },
	{ 8, "IB_WTEXT(", (TOK_SUBFUNC_211<<8)+154 },
	{ 8, "IB_HTEXT(", (TOK_SUBFUNC_211<<8)+155 },
	{ 9, "IB_FCOLOR(", (TOK_SUBFUNC_211<<8)+156 },
	{ 9, "IB_BCOLOR(", (TOK_SUBFUNC_211<<8)+157 },
	{ 9, "IB_LETTER(", (TOK_SUBFUNC_211<<8)+158 },
	{ 4, "JOIN(", (TOK_SUBFUNC_210<<8)+178 },
	{ 6, "JOYPAD(", (TOK_SUBFUNC_209<<8)+93 },
	{ 7, "JDISINT(", (TOK_SUBFUNC_209<<8)+224 },
	{ 8, "JENABINT(", (TOK_SUBFUNC_209<<8)+225 },
	{ 11, "JPEGD_INIT()", (TOK_SUBFUNC_211<<8)+5 },
	{ 16, "JPEGD_OPENDRIVER(", (TOK_SUBFUNC_211<<8)+6 },
	{ 17, "JPEGD_CLOSEDRIVER(", (TOK_SUBFUNC_211<<8)+7 },
	{ 20, "JPEGD_GETSTRUCTSIZE()", (TOK_SUBFUNC_211<<8)+8 },
	{ 18, "JPEGD_GETIMAGEINFO(", (TOK_SUBFUNC_211<<8)+9 },
	{ 18, "JPEGD_GETIMAGESIZE(", (TOK_SUBFUNC_211<<8)+10 },
	{ 17, "JPEGD_DECODEIMAGE(", (TOK_SUBFUNC_211<<8)+11 },
	{ 6, "KEYTBL(", (TOK_SUBFUNC_209<<8)+26 },
	{ 7, "KBSHIFT(", (TOK_SUBFUNC_209<<8)+10 },
	{ 2, "KEY", TOK_KEY },
	{ 3, "KILL", TOK_KILL },
	{ 6, "KBRATE(", (TOK_SUBFUNC_209<<8)+203 },
	{ 9, "KBDVBASE()", (TOK_SUBFUNC_209<<8)+207 },
	{ 5, "LEFT$(", TOK_LEFT1 },
	{ 3, "LEN(", (TOK_SUBFUNC_208<<8)+66 },
	{ 4, "LOC(#", (TOK_SUBFUNC_208<<8)+80 },
	{ 3, "LOC(", (TOK_SUBFUNC_208<<8)+80 },
	{ 4, "LOF(#", (TOK_SUBFUNC_208<<8)+79 },
	{ 3, "LOF(", (TOK_SUBFUNC_208<<8)+79 },
	{ 3, "LOG(", TOK_LOG },
	{ 5, "LOG10(", TOK_LOG10 },
	{ 5, "LPEEK(", (TOK_SUBFUNC_208<<8)+65 },
	{ 1, "L:", TOK_LONGARG },
	{ 4, "LPOS(", (TOK_SUBFUNC_208<<8)+91 },
	{ 4, "LONG{", (TOK_SUBFUNC_208<<8)+113 },
	{ 2, "L~A", (TOK_SUBFUNC_208<<8)+212 },
	{ 4, "LPENX", (TOK_SUBFUNC_208<<8)+231 },
	{ 4, "LPENY", (TOK_SUBFUNC_208<<8)+232 },
	{ 4, "LEAP(", (TOK_SUBFUNC_211<<8)+0 },
	{ 7, "LOADSTR(", (TOK_SUBFUNC_210<<8)+191 },
	{ 7, "LOADMEM(", (TOK_SUBFUNC_210<<8)+18 },
	{ 6, "LCASE$(", TOK_LCASE },
	{ 6, "LTRIM$(", TOK_LTRIM },
	{ 6, "LOWER$(", TOK_LOWER },
	{ 8, "LOCKSND()", (TOK_SUBFUNC_209<<8)+27 },
	{ 8, "LOGBASE()", (TOK_SUBFUNC_209<<8)+119 },
	{ 6, "LRWABS(", (TOK_SUBFUNC_209<<8)+251 },
	{ 9, "LDG_INIT()", (TOK_SUBFUNC_210<<8)+50 },
	{ 8, "LDG_OPEN(", (TOK_SUBFUNC_210<<8)+51 },
	{ 8, "LDG_FIND(", (TOK_SUBFUNC_210<<8)+52 },
	{ 9, "LDG_CLOSE(", (TOK_SUBFUNC_210<<8)+53 },
	{ 11, "LDG_LIBPATH(", (TOK_SUBFUNC_210<<8)+54 },
	{ 10, "LDG_ERROR()", (TOK_SUBFUNC_210<<8)+55 },
	{ 3, "MAX(", TOK_MAX },
	{ 4, "MID$(", TOK_MID2 },
	{ 3, "MIN(", TOK_MIN },
	{ 4, "MKD$(", TOK_MKD },
	{ 4, "MKF$(", TOK_MKF },
	{ 4, "MKI$(", TOK_MKI },
	{ 4, "MKL$(", TOK_MKL },
	{ 4, "MKS$(", TOK_MKS },
	{ 2, "MOD", TOK_MOD },
	{ 3, "MOD(", (TOK_SUBFUNC_208<<8)+4 },
	{ 8, "MENU_BAR(", (TOK_SUBFUNC_208<<8)+143 },
	{ 11, "MENU_ICHECK(", (TOK_SUBFUNC_208<<8)+144 },
	{ 12, "MENU_IENABLE(", (TOK_SUBFUNC_208<<8)+145 },
	{ 12, "MENU_TNORMAL(", (TOK_SUBFUNC_208<<8)+146 },
	{ 9, "MENU_TEXT(", (TOK_SUBFUNC_208<<8)+147 },
	{ 13, "MENU_REGISTER(", (TOK_SUBFUNC_208<<8)+148 },
	{ 9, "MENU.TEXT(", (TOK_SUBFUNC_210<<8)+6 },
	{ 10, "MENU_POPUP(", (TOK_SUBFUNC_209<<8)+163 },
	{ 11, "MENU_ISTART(", (TOK_SUBFUNC_209<<8)+162 },
	{ 11, "MENU_ATTACH(", (TOK_SUBFUNC_209<<8)+161 },
	{ 13, "MENU_SETTINGS(", (TOK_SUBFUNC_209<<8)+164 },
	{ 5, "MOUSEK", (TOK_SUBFUNC_208<<8)+60 },
	{ 5, "MOUSEX", (TOK_SUBFUNC_208<<8)+58 },
	{ 5, "MOUSEY", (TOK_SUBFUNC_208<<8)+59 },
	{ 4, "MENU(", (TOK_SUBFUNC_208<<8)+92 },
	{ 3, "MENU", TOK_MENU },
	{ 6, "MESSAGE", TOK_MESSAGE },
	{ 3, "MUL(", (TOK_SUBFUNC_208<<8)+0 },
	{ 6, "MALLOC(", (TOK_SUBFUNC_208<<8)+184 },
	{ 5, "MFREE(", (TOK_SUBFUNC_208<<8)+185 },
	{ 7, "MSHRINK(", (TOK_SUBFUNC_208<<8)+186 },
	{ 6, "MFPINT(", (TOK_SUBFUNC_212<<8)+2 },
	{ 7, "MADDALT(", (TOK_SUBFUNC_212<<8)+1 },
	{ 6, "MDPEEK(", (TOK_SUBFUNC_211<<8)+211 },
	{ 6, "MLPEEK(", (TOK_SUBFUNC_211<<8)+212 },
	{ 8, "MERIDIEM(", (TOK_SUBFUNC_211<<8)+4 },
	{ 6, "MINUTE(", (TOK_SUBFUNC_210<<8)+219 },
	{ 5, "MONTH(", (TOK_SUBFUNC_210<<8)+216 },
	{ 8, "MEMBTST|(", (TOK_SUBFUNC_210<<8)+141 },
	{ 8, "MEMBTST&(", (TOK_SUBFUNC_210<<8)+142 },
	{ 8, "MEMBTST%(", (TOK_SUBFUNC_210<<8)+143 },
	{ 7, "MXALLOC(", (TOK_SUBFUNC_209<<8)+9 },
	{ 7, "MEDIACH(", (TOK_SUBFUNC_209<<8)+157 },
	{ 6, "MIDIWS(", (TOK_SUBFUNC_209<<8)+211 },
	{ 7, "MIRROR|(", (TOK_SUBFUNC_210<<8)+11 },
	{ 7, "MIRROR&(", (TOK_SUBFUNC_210<<8)+12 },
	{ 6, "MIRROR(", (TOK_SUBFUNC_210<<8)+13 },
	{ 7, "MIRROR3(", (TOK_SUBFUNC_210<<8)+14 },
	{ 7, "MIRROR$(", TOK_MIRROR },
	{ 4, "MAKE(", (TOK_SUBFUNC_210<<8)+140 },
	{ 5, "MAKE|(", (TOK_SUBFUNC_210<<8)+118 },
	{ 5, "MAKE&(", (TOK_SUBFUNC_210<<8)+116 },
	{ 5, "MAKE%(", (TOK_SUBFUNC_210<<8)+117 },
	{ 7, "MACCESS(", (TOK_SUBFUNC_210<<8)+172 },
	{ 9, "MVALIDATE(", (TOK_SUBFUNC_210<<8)+173 },
	{ 6, "MROUND(", (TOK_SUBFUNC_210<<8)+9 },
	{ 3, "MSG(", (TOK_SUBFUNC_210<<8)+193 },
	{ 2, "MSG", (TOK_SUBFUNC_210<<8)+194 },
	{ 4, "M68K?", (TOK_SUBFUNC_210<<8)+226 },
	{ 9, "MULTITASK?", (TOK_SUBFUNC_211<<8)+214 },
	{ 3, "NEXT", TOK_NEXT },
	{ 2, "NOT", TOK_UNOT },
	{ 3, "NULL", TOK_NULL },
	{ 5, "NYBLE(", (TOK_SUBFUNC_210<<8)+139 },
	{ 7, "NETWORK?", (TOK_SUBFUNC_210<<8)+27 },
	{ 9, "NVMACCESS(", (TOK_SUBFUNC_209<<8)+208 },
	{ 11, "NEAREST_RGB(", (TOK_SUBFUNC_210<<8)+212 },
	{ 3, "OBOX", TOK_OBOX },
	{ 4, "OCT$(", TOK_OCT1 },
	{ 3, "ODD(", (TOK_SUBFUNC_208<<8)+102 },
	{ 8, "OFFGIBIT(", (TOK_SUBFUNC_209<<8)+221 },
	{ 5, "OFFSET", TOK_OFFSET },
	{ 2, "OFF", TOK_OFF },
	{ 1, "OR", TOK_OR },
	{ 2, "OR(", (TOK_SUBFUNC_208<<8)+6 },
	{ 4, "OUT?(", (TOK_SUBFUNC_208<<8)+94 },
	{ 8, "OBJC_ADD(", (TOK_SUBFUNC_208<<8)+149 },
	{ 11, "OBJC_DELETE(", (TOK_SUBFUNC_208<<8)+150 },
	{ 9, "OBJC_DRAW(", (TOK_SUBFUNC_208<<8)+151 },
	{ 9, "OBJC_FIND(", (TOK_SUBFUNC_208<<8)+152 },
	{ 11, "OBJC_OFFSET(", (TOK_SUBFUNC_208<<8)+153 },
	{ 10, "OBJC_ORDER(", (TOK_SUBFUNC_208<<8)+154 },
	{ 9, "OBJC_EDIT(", (TOK_SUBFUNC_208<<8)+155 },
	{ 11, "OBJC_CHANGE(", (TOK_SUBFUNC_208<<8)+156 },
	{ 10, "OBJC_XFIND(", (TOK_SUBFUNC_209<<8)+165 },
	{ 11, "OBJC_SYSVAR(", (TOK_SUBFUNC_209<<8)+24 },
	{ 6, "OB_ADR(", (TOK_SUBFUNC_208<<8)+191 },
	{ 7, "OB_NEXT(", (TOK_SUBFUNC_208<<8)+192 },
	{ 7, "OB_HEAD(", (TOK_SUBFUNC_208<<8)+193 },
	{ 7, "OB_TAIL(", (TOK_SUBFUNC_208<<8)+194 },
	{ 7, "OB_TYPE(", (TOK_SUBFUNC_208<<8)+195 },
	{ 8, "OB_FLAGS(", (TOK_SUBFUNC_208<<8)+196 },
	{ 8, "OB_STATE(", (TOK_SUBFUNC_208<<8)+197 },
	{ 7, "OB_SPEC(", (TOK_SUBFUNC_208<<8)+198 },
	{ 4, "OB_X(", (TOK_SUBFUNC_208<<8)+199 },
	{ 4, "OB_Y(", (TOK_SUBFUNC_208<<8)+200 },
	{ 4, "OB_W(", (TOK_SUBFUNC_208<<8)+201 },
	{ 4, "OB_H(", (TOK_SUBFUNC_208<<8)+202 },
	{ 8, "OB.STATE(", (TOK_SUBFUNC_210<<8)+19 },
	{ 8, "OB.FLAGS(", (TOK_SUBFUNC_210<<8)+20 },
	{ 8, "OB_RADIO(", (TOK_SUBFUNC_210<<8)+33 },
	{ 8, "OB_TEXT$(", TOK_OB_TEXT },
	{ 7, "ONGIBIT(", (TOK_SUBFUNC_209<<8)+220 },
	{ 11, "OB_SELECTED(", (TOK_SUBFUNC_211<<8)+88 },
	{ 10, "OB_CROSSED(", (TOK_SUBFUNC_211<<8)+89 },
	{ 10, "OB_CHECKED(", (TOK_SUBFUNC_211<<8)+90 },
	{ 11, "OB_DISABLED(", (TOK_SUBFUNC_211<<8)+91 },
	{ 11, "OB_OUTLINED(", (TOK_SUBFUNC_211<<8)+92 },
	{ 11, "OB_SHADOWED(", (TOK_SUBFUNC_211<<8)+93 },
	{ 11, "OB_WHITEBAK(", (TOK_SUBFUNC_211<<8)+94 },
	{ 13, "OB_SELECTABLE(", (TOK_SUBFUNC_211<<8)+96 },
	{ 10, "OB_DEFAULT(", (TOK_SUBFUNC_211<<8)+97 },
	{ 7, "OB_EXIT(", (TOK_SUBFUNC_211<<8)+98 },
	{ 11, "OB_EDITABLE(", (TOK_SUBFUNC_211<<8)+99 },
	{ 10, "OB_RBUTTON(", (TOK_SUBFUNC_211<<8)+100 },
	{ 9, "OB_LASTOB(", (TOK_SUBFUNC_211<<8)+101 },
	{ 12, "OB_TOUCHEXIT(", (TOK_SUBFUNC_211<<8)+102 },
	{ 11, "OB_HIDETREE(", (TOK_SUBFUNC_211<<8)+103 },
	{ 11, "OB_INDIRECT(", (TOK_SUBFUNC_211<<8)+104 },
	{ 10, "OB_FL3DIND(", (TOK_SUBFUNC_211<<8)+105 },
	{ 10, "OB_FL3DACT(", (TOK_SUBFUNC_211<<8)+106 },
	{ 10, "OB_SUBMENU(", (TOK_SUBFUNC_211<<8)+107 },
	{ 10, "OB_FL3DBAK(", (TOK_SUBFUNC_211<<8)+109 },
	{ 7, "OB_XYWH(", (TOK_SUBFUNC_211<<8)+195 },
	{ 4, "PEEK(", (TOK_SUBFUNC_208<<8)+63 },
	{ 7, "PIXEL32(", (TOK_SUBFUNC_211<<8)+189 },
	{ 7, "PIXEL24(", (TOK_SUBFUNC_211<<8)+185 },
	{ 7, "PIXEL16(", (TOK_SUBFUNC_211<<8)+190 },
	{ 7, "PIXEL15(", (TOK_SUBFUNC_211<<8)+196 },
	{ 7, "PIXEL8C(", (TOK_SUBFUNC_211<<8)+206 },
	{ 7, "PIXEL8P(", (TOK_SUBFUNC_211<<8)+208 },
	{ 7, "PIXEL4P(", (TOK_SUBFUNC_211<<8)+209 },
	{ 7, "PIXEL2P(", (TOK_SUBFUNC_211<<8)+210 },
	{ 7, "PIXEL1M(", (TOK_SUBFUNC_211<<8)+207 },
	{ 1, "PI", TOK_PI },
	{ 5, "POINT(", (TOK_SUBFUNC_208<<8)+72 },
	{ 3, "POS(", (TOK_SUBFUNC_208<<8)+90 },
	{ 5, "PTSIN(", (TOK_SUBFUNC_208<<8)+36 },
	{ 4, "PTSIN", (TOK_SUBFUNC_208<<8)+37 },
	{ 6, "PTSOUT(", (TOK_SUBFUNC_208<<8)+38 },
	{ 5, "PTSOUT", (TOK_SUBFUNC_208<<8)+39 },
	{ 4, "PTST(", (TOK_SUBFUNC_208<<8)+43 },
	{ 4, "PRED(", (TOK_SUBFUNC_208<<8)+97 },
	{ 4, "PADX(", (TOK_SUBFUNC_208<<8)+228 },
	{ 4, "PADY(", (TOK_SUBFUNC_208<<8)+229 },
	{ 4, "PADT(", (TOK_SUBFUNC_208<<8)+230 },
	{ 5, "PTERM(", (TOK_SUBFUNC_212<<8)+43 },
	{ 7, "PTERM0()", (TOK_SUBFUNC_212<<8)+42 },
	{ 10, "PSEMAPHORE(", (TOK_SUBFUNC_212<<8)+37 },
	{ 9, "PSETREUID(", (TOK_SUBFUNC_212<<8)+35 },
	{ 9, "PSETREGID(", (TOK_SUBFUNC_212<<8)+36 },
	{ 9, "PGETEGID()", (TOK_SUBFUNC_212<<8)+33 },
	{ 8, "PSETEGID(", (TOK_SUBFUNC_212<<8)+34 },
	{ 9, "PGETEUID()", (TOK_SUBFUNC_212<<8)+31 },
	{ 8, "PSETEUID(", (TOK_SUBFUNC_212<<8)+32 },
	{ 9, "PGETAUID()", (TOK_SUBFUNC_212<<8)+29 },
	{ 8, "PSETAUID(", (TOK_SUBFUNC_212<<8)+30 },
	{ 10, "PGETGROUPS(", (TOK_SUBFUNC_212<<8)+27 },
	{ 10, "PSETGROUPS(", (TOK_SUBFUNC_212<<8)+28 },
	{ 9, "PGETPGRP()", (TOK_SUBFUNC_212<<8)+25 },
	{ 8, "PSETPGRP(", (TOK_SUBFUNC_212<<8)+26 },
	{ 8, "PUNTAES()", (TOK_SUBFUNC_212<<8)+4 },
	{ 9, "PSIGPAUSE(", (TOK_SUBFUNC_211<<8)+230 },
	{ 10, "PSIGACTION(", (TOK_SUBFUNC_211<<8)+231 },
	{ 6, "PAUSE()", (TOK_SUBFUNC_211<<8)+228 },
	{ 12, "PSIGPENDING()", (TOK_SUBFUNC_211<<8)+229 },
	{ 9, "PSIGBLOCK(", (TOK_SUBFUNC_211<<8)+224 },
	{ 11, "PSIGSETMASK(", (TOK_SUBFUNC_211<<8)+225 },
	{ 5, "POPUP(", (TOK_SUBFUNC_210<<8)+125 },
	{ 7, "PSIGNAL(", (TOK_SUBFUNC_210<<8)+190 },
	{ 5, "PKILL(", (TOK_SUBFUNC_210<<8)+186 },
	{ 5, "PREAD(", (TOK_SUBFUNC_209<<8)+92 },
	{ 6, "PWRITE(", (TOK_SUBFUNC_209<<8)+91 },
	{ 5, "PNICE(", (TOK_SUBFUNC_210<<8)+145 },
	{ 7, "PRENICE(", (TOK_SUBFUNC_210<<8)+146 },
	{ 9, "PGETPPID()", (TOK_SUBFUNC_210<<8)+147 },
	{ 7, "PRUSAGE(", (TOK_SUBFUNC_210<<8)+135 },
	{ 8, "PGETPID()", (TOK_SUBFUNC_210<<8)+128 },
	{ 7, "PSYSCTL(", (TOK_SUBFUNC_209<<8)+180 },
	{ 7, "PDOMAIN(", (TOK_SUBFUNC_209<<8)+17 },
	{ 5, "PEXEC(", (TOK_SUBFUNC_209<<8)+16 },
	{ 9, "PHYSBASE()", (TOK_SUBFUNC_209<<8)+120 },
	{ 7, "PROTOBT(", (TOK_SUBFUNC_209<<8)+226 },
	{ 6, "PRTBLK(", (TOK_SUBFUNC_209<<8)+228 },
	{ 8, "PTERMRES(", (TOK_SUBFUNC_209<<8)+255 },
	{ 3, "PCR?", (TOK_SUBFUNC_210<<8)+15 },
	{ 3, "PCR(", (TOK_SUBFUNC_210<<8)+17 },
	{ 12, "PGETPRIORITY(", (TOK_SUBFUNC_210<<8)+149 },
	{ 12, "PSETPRIORITY(", (TOK_SUBFUNC_210<<8)+150 },
	{ 9, "PSETLIMIT(", (TOK_SUBFUNC_210<<8)+162 },
	{ 7, "PUSRVAL(", (TOK_SUBFUNC_210<<8)+161 },
	{ 6, "PUMASK(", (TOK_SUBFUNC_211<<8)+197 },
	{ 8, "PGETUID()", (TOK_SUBFUNC_211<<8)+244 },
	{ 7, "PSETUID(", (TOK_SUBFUNC_211<<8)+245 },
	{ 8, "PGETGID()", (TOK_SUBFUNC_211<<8)+242 },
	{ 7, "PSETGID(", (TOK_SUBFUNC_211<<8)+243 },
	{ 6, "PTRACE(", (TOK_SUBFUNC_211<<8)+232 },
	{ 6, "PWAIT()", (TOK_SUBFUNC_211<<8)+239 },
	{ 6, "PWAIT3(", (TOK_SUBFUNC_211<<8)+240 },
	{ 8, "PWAITPID(", (TOK_SUBFUNC_211<<8)+241 },
	{ 4, "PMSG(", (TOK_SUBFUNC_211<<8)+236 },
	{ 6, "PFORK()", (TOK_SUBFUNC_211<<8)+237 },
	{ 7, "PVFORK()", (TOK_SUBFUNC_211<<8)+238 },
	{ 2, "P~I", (TOK_SUBFUNC_210<<8)+129 },
	{ 6, "RANDOM(", TOK_RANDOM },
	{ 4, "RAND(", (TOK_SUBFUNC_208<<8)+82 },
	{ 6, "RIGHT$(", TOK_RIGHT1 },
	{ 6, "RTRIM$(", TOK_RTRIM },
	{ 3, "RND(", TOK_RND1 },
	{ 2, "RND", TOK_RND },
	{ 3, "ROL(", (TOK_SUBFUNC_208<<8)+12 },
	{ 3, "ROR(", (TOK_SUBFUNC_208<<8)+13 },
	{ 4, "ROL&(", (TOK_SUBFUNC_208<<8)+50 },
	{ 4, "ROR&(", (TOK_SUBFUNC_208<<8)+51 },
	{ 4, "ROL|(", (TOK_SUBFUNC_208<<8)+54 },
	{ 4, "ROR|(", (TOK_SUBFUNC_208<<8)+55 },
	{ 9, "RSRC_LOAD(", (TOK_SUBFUNC_208<<8)+124 },
	{ 10, "RSRC_FREE()", (TOK_SUBFUNC_208<<8)+125 },
	{ 10, "RSRC_GADDR(", (TOK_SUBFUNC_208<<8)+126 },
	{ 10, "RSRC_SADDR(", (TOK_SUBFUNC_208<<8)+127 },
	{ 10, "RSRC_OBFIX(", (TOK_SUBFUNC_208<<8)+128 },
	{ 10, "RSRC_RCFIX(", (TOK_SUBFUNC_209<<8)+166 },
	{ 3, "RAD(", TOK_RAD },
	{ 5, "ROUND(", TOK_ROUND1 },
	{ 6, "RINSTR(", (TOK_SUBFUNC_208<<8)+209 },
	{ 12, "RC_INTERSECT(", (TOK_SUBFUNC_208<<8)+217 },
	{ 7, "REALLOC(", (TOK_SUBFUNC_212<<8)+53 },
	{ 3, "RGB(", (TOK_SUBFUNC_210<<8)+157 },
	{ 6, "RGB256(", (TOK_SUBFUNC_210<<8)+158 },
	{ 7, "RGB1000(", (TOK_SUBFUNC_210<<8)+159 },
	{ 6, "RSCONF(", (TOK_SUBFUNC_209<<8)+204 },
	{ 8, "RANDOM%()", (TOK_SUBFUNC_209<<8)+117 },
	{ 5, "RWABS(", (TOK_SUBFUNC_209<<8)+159 },
	{ 8, "REPLACE$(", TOK_REPLACE },
	{ 8, "RC_EQUAL(", (TOK_SUBFUNC_211<<8)+194 },
	{ 3, "SGN(", (TOK_SUBFUNC_208<<8)+100 },
	{ 3, "SIN(", TOK_SIN },
	{ 4, "SINQ(", TOK_SINQ },
	{ 6, "SPACE$(", TOK_SPACE },
	{ 3, "SPC(", TOK_SPC },
	{ 3, "SQR(", TOK_SQR },
	{ 3, "STEP", TOK_STEP },
	{ 4, "STR$(", TOK_STR1 },
	{ 7, "STRING$(", TOK_STRING_CODE },
	{ 3, "SHL(", (TOK_SUBFUNC_208<<8)+10 },
	{ 3, "SHR(", (TOK_SUBFUNC_208<<8)+11 },
	{ 4, "SHL&(", (TOK_SUBFUNC_208<<8)+48 },
	{ 4, "SHR&(", (TOK_SUBFUNC_208<<8)+49 },
	{ 4, "SHL|(", (TOK_SUBFUNC_208<<8)+52 },
	{ 4, "SHR|(", (TOK_SUBFUNC_208<<8)+53 },
	{ 4, "SWAP(", (TOK_SUBFUNC_208<<8)+17 },
	{ 9, "SHEL_READ(", (TOK_SUBFUNC_208<<8)+129 },
	{ 10, "SHEL_WRITE(", (TOK_SUBFUNC_208<<8)+130 },
	{ 8, "SHEL_GET(", (TOK_SUBFUNC_208<<8)+131 },
	{ 8, "SHEL_PUT(", (TOK_SUBFUNC_208<<8)+132 },
	{ 9, "SHEL_FIND(", (TOK_SUBFUNC_208<<8)+133 },
	{ 10, "SHEL_ENVRN(", (TOK_SUBFUNC_208<<8)+134 },
	{ 9, "SCRP_READ(", (TOK_SUBFUNC_208<<8)+172 },
	{ 10, "SCRP_WRITE(", (TOK_SUBFUNC_208<<8)+173 },
	{ 4, "SUCC(", (TOK_SUBFUNC_208<<8)+96 },
	{ 3, "SUB(", (TOK_SUBFUNC_208<<8)+3 },
	{ 5, "STICK(", (TOK_SUBFUNC_208<<8)+206 },
	{ 5, "STRIG(", (TOK_SUBFUNC_208<<8)+207 },
	{ 3, "STOP", TOK_STOP },
	{ 6, "SINGLE{", TOK_SINGLE_REF },
	{ 3, "STE?", (TOK_SUBFUNC_208<<8)+233 },
	{ 5, "SCALE(", (TOK_SUBFUNC_208<<8)+235 },
	{ 9, "SVERSION()", (TOK_SUBFUNC_212<<8)+9 },
	{ 5, "SSBRK(", (TOK_SUBFUNC_212<<8)+5 },
	{ 5, "SYNC()", (TOK_SUBFUNC_211<<8)+233 },
	{ 8, "SREALLOC(", (TOK_SUBFUNC_211<<8)+235 },
	{ 6, "STRUCT(", (TOK_SUBFUNC_211<<8)+205 },
	{ 7, "STRUCT!(", (TOK_SUBFUNC_211<<8)+201 },
	{ 7, "STRUCT|(", (TOK_SUBFUNC_211<<8)+202 },
	{ 7, "STRUCT&(", (TOK_SUBFUNC_211<<8)+203 },
	{ 7, "STRUCT%(", (TOK_SUBFUNC_211<<8)+204 },
	{ 7, "STRUCT$(", 181 },
	{ 5, "SUPER?", (TOK_SUBFUNC_211<<8)+188 },
	{ 11, "SUPERSCALAR(", (TOK_SUBFUNC_211<<8)+86 },
	{ 6, "SECOND(", (TOK_SUBFUNC_210<<8)+220 },
	{ 6, "SETSTR(", (TOK_SUBFUNC_210<<8)+21 },
	{ 5, "SBYTE(", (TOK_SUBFUNC_210<<8)+28 },
	{ 5, "SBYTE{", (TOK_SUBFUNC_210<<8)+29 },
	{ 9, "SETCOOKIE(", (TOK_SUBFUNC_210<<8)+203 },
	{ 9, "SHEL_RDEF(", (TOK_SUBFUNC_210<<8)+185 },
	{ 9, "SHEL_WDEF(", (TOK_SUBFUNC_210<<8)+184 },
	{ 9, "SHEL_HELP(", (TOK_SUBFUNC_210<<8)+183 },
	{ 5, "SPLIT(", (TOK_SUBFUNC_210<<8)+177 },
	{ 7, "SUPTIME(", (TOK_SUBFUNC_210<<8)+136 },
	{ 7, "SCRDMP()", (TOK_SUBFUNC_210<<8)+133 },
	{ 8, "STRPEEK$(", TOK_CHAR },
	{ 5, "SWAP|(", (TOK_SUBFUNC_210<<8)+130 },
	{ 7, "SLBOPEN(", (TOK_SUBFUNC_210<<8)+122 },
	{ 8, "SLBCLOSE(", (TOK_SUBFUNC_210<<8)+123 },
	{ 10, "SHEL.WRITE(", (TOK_SUBFUNC_210<<8)+7 },
	{ 1, "S:", (TOK_SUBFUNC_210<<8)+1 },
	{ 6, "SUBPTR(", (TOK_SUBFUNC_210<<8)+0 },
	{ 7, "SSYSTEM(", (TOK_SUBFUNC_209<<8)+13 },
	{ 7, "SYSCONF(", (TOK_SUBFUNC_209<<8)+12 },
	{ 9, "SETBUFFER(", (TOK_SUBFUNC_209<<8)+30 },
	{ 7, "SETMODE(", (TOK_SUBFUNC_209<<8)+31 },
	{ 12, "SETMONTRACKS(", (TOK_SUBFUNC_209<<8)+33 },
	{ 9, "SETTRACKS(", (TOK_SUBFUNC_209<<8)+32 },
	{ 9, "SNDSTATUS(", (TOK_SUBFUNC_209<<8)+39 },
	{ 8, "SOUNDCMD(", (TOK_SUBFUNC_209<<8)+29 },
	{ 12, "SETINTERRUPT(", (TOK_SUBFUNC_209<<8)+34 },
	{ 5, "SUPER(", (TOK_SUBFUNC_209<<8)+50 },
	{ 7, "SUPEXEC(", (TOK_SUBFUNC_209<<8)+202 },
	{ 6, "SETEXC(", (TOK_SUBFUNC_209<<8)+155 },
	{ 9, "SETSCREEN(", (TOK_SUBFUNC_209<<8)+200 },
	{ 10, "SETPALETTE(", (TOK_SUBFUNC_209<<8)+201 },
	{ 7, "SYIELD()", (TOK_SUBFUNC_209<<8)+174 },
	{ 8, "SHUTDOWN(", (TOK_SUBFUNC_209<<8)+179 },
	{ 7, "SETTIME(", (TOK_SUBFUNC_209<<8)+110 },
	{ 6, "SETPRT(", (TOK_SUBFUNC_209<<8)+223 },
	{ 8, "SETCOLOR(", (TOK_SUBFUNC_209<<8)+199 },
	{ 3, "SND?", (TOK_SUBFUNC_209<<8)+58 },
	{ 6, "SALERT(", (TOK_SUBFUNC_209<<8)+253 },
	{ 6, "SYSTAB?", (TOK_SUBFUNC_210<<8)+8 },
	{ 6, "SYSTAB(", (TOK_SUBFUNC_210<<8)+3 },
	{ 5, "SYSTAB", (TOK_SUBFUNC_210<<8)+4 },
	{ 9, "STIK_INIT(", (TOK_SUBFUNC_210<<8)+56 },
	{ 11, "STIK_KRFREE(", (TOK_SUBFUNC_210<<8)+58 },
	{ 14, "STIK_KRGETFREE(", (TOK_SUBFUNC_210<<8)+59 },
	{ 17, "STIK_GET_ERR_TEXT(", (TOK_SUBFUNC_210<<8)+61 },
	{ 12, "STIK_GETVSTR(", (TOK_SUBFUNC_210<<8)+62 },
	{ 13, "STIK_TCP_OPEN(", (TOK_SUBFUNC_210<<8)+64 },
	{ 14, "STIK_TCP_CLOSE(", (TOK_SUBFUNC_210<<8)+65 },
	{ 13, "STIK_TCP_SEND(", (TOK_SUBFUNC_210<<8)+66 },
	{ 19, "STIK_TCP_WAIT_STATE(", (TOK_SUBFUNC_210<<8)+67 },
	{ 11, "STIK_CNKICK(", (TOK_SUBFUNC_210<<8)+72 },
	{ 17, "STIK_CNBYTE_COUNT(", (TOK_SUBFUNC_210<<8)+73 },
	{ 15, "STIK_CNGET_CHAR(", (TOK_SUBFUNC_210<<8)+74 },
	{ 16, "STIK_CNGET_BLOCK(", (TOK_SUBFUNC_210<<8)+76 },
	{ 12, "STIK_RESOLVE(", (TOK_SUBFUNC_210<<8)+78 },
	{ 14, "STIK_CNGETINFO(", (TOK_SUBFUNC_210<<8)+83 },
	{ 3, "TAB(", TOK_TAB },
	{ 3, "TAN(", TOK_TAN },
	{ 3, "THEN", TOK_THEN },
	{ 5, "TIME$(", TOK_TIME1 },
	{ 4, "TIME$", TOK_TIME },
	{ 4, "TIMER", (TOK_SUBFUNC_208<<8)+62 },
	{ 10, "TIMESTAMP$(", TOK_TIMESTAMP },
	{ 1, "TO", TOK_TO },
	{ 3, "TRUE", TOK_TRUE },
	{ 5, "TRUNC(", TOK_TRUNC },
	{ 4, "TYPE(", (TOK_SUBFUNC_208<<8)+190 },
	{ 5, "TRACE$", TOK_TRACE },
	{ 5, "TRIM$(", TOK_TRIM },
	{ 2, "TT?", (TOK_SUBFUNC_208<<8)+234 },
	{ 8, "TADJTIME(", (TOK_SUBFUNC_212<<8)+39 },
	{ 13, "TGETTIMEOFDAY(", (TOK_SUBFUNC_212<<8)+40 },
	{ 13, "TSETTIMEOFDAY(", (TOK_SUBFUNC_212<<8)+41 },
	{ 10, "TSETITIMER(", (TOK_SUBFUNC_212<<8)+38 },
	{ 4, "TIME(", (TOK_SUBFUNC_210<<8)+221 },
	{ 6, "TALARM(", (TOK_SUBFUNC_211<<8)+226 },
	{ 7, "TMALARM(", (TOK_SUBFUNC_211<<8)+227 },
	{ 7, "TEDINFO(", (TOK_SUBFUNC_210<<8)+208 },
	{ 9, "TGETDATE()", (TOK_SUBFUNC_209<<8)+19 },
	{ 9, "TGETTIME()", (TOK_SUBFUNC_209<<8)+20 },
	{ 8, "TSETDATE(", (TOK_SUBFUNC_209<<8)+105 },
	{ 8, "TSETTIME(", (TOK_SUBFUNC_209<<8)+106 },
	{ 8, "TICKCAL()", (TOK_SUBFUNC_209<<8)+156 },
	{ 8, "TE_PTEXT(", (TOK_SUBFUNC_211<<8)+126 },
	{ 9, "TE_PTMPLT(", (TOK_SUBFUNC_211<<8)+127 },
	{ 9, "TE_PVALID(", (TOK_SUBFUNC_211<<8)+128 },
	{ 7, "TE_FONT(", (TOK_SUBFUNC_211<<8)+129 },
	{ 9, "TE_FONTID(", (TOK_SUBFUNC_211<<8)+130 },
	{ 7, "TE_JUST(", (TOK_SUBFUNC_211<<8)+131 },
	{ 8, "TE_COLOR(", (TOK_SUBFUNC_211<<8)+132 },
	{ 11, "TE_FONTSIZE(", (TOK_SUBFUNC_211<<8)+133 },
	{ 12, "TE_THICKNESS(", (TOK_SUBFUNC_211<<8)+134 },
	{ 9, "TE_TXTLEN(", (TOK_SUBFUNC_211<<8)+135 },
	{ 9, "TE_TMPLEN(", (TOK_SUBFUNC_211<<8)+136 },
	{ 11, "TE_FRAMECOL(", (TOK_SUBFUNC_211<<8)+137 },
	{ 10, "TE_TEXTCOL(", (TOK_SUBFUNC_211<<8)+138 },
	{ 11, "TE_TEXTMODE(", (TOK_SUBFUNC_211<<8)+139 },
	{ 14, "TE_FILLPATTERN(", (TOK_SUBFUNC_211<<8)+140 },
	{ 14, "TE_INTERIORCOL(", (TOK_SUBFUNC_211<<8)+141 },
	{ 6, "UPPER$(", TOK_UPPER },
	{ 4, "USING", TOK_USING },
	{ 8, "USERDEF!(", (TOK_SUBFUNC_211<<8)+221 },
	{ 9, "USERDEFBIT", (TOK_SUBFUNC_211<<8)+222 },
	{ 8, "USERDEF|(", (TOK_SUBFUNC_211<<8)+215 },
	{ 9, "USERDEFBYT", (TOK_SUBFUNC_211<<8)+216 },
	{ 8, "USERDEF&(", (TOK_SUBFUNC_211<<8)+217 },
	{ 9, "USERDEFWRD", (TOK_SUBFUNC_211<<8)+218 },
	{ 8, "USERDEF%(", (TOK_SUBFUNC_211<<8)+219 },
	{ 9, "USERDEFLNG", (TOK_SUBFUNC_211<<8)+220 },
	{ 6, "UCASE$(", TOK_RCASE },
	{ 10, "UNLOCKSND()", (TOK_SUBFUNC_209<<8)+28 },
	{ 6, "UNPACK(", (TOK_SUBFUNC_209<<8)+94 },
	{ 7, "UB_CODE(", (TOK_SUBFUNC_211<<8)+124 },
	{ 7, "UB_PARM(", (TOK_SUBFUNC_211<<8)+125 },
	{ 3, "VAL(", TOK_VAL },
	{ 4, "VAL?(", (TOK_SUBFUNC_208<<8)+73 },
	{ 6, "VARPTR(", (TOK_SUBFUNC_208<<8)+187 },
	{ 6, "VARIAT(", TOK_VARIAT },
	{ 2, "VAR", TOK_VAR },
	{ 6, "VDIBASE", (TOK_SUBFUNC_208<<8)+40 },
	{ 1, "V:", (TOK_SUBFUNC_208<<8)+203 },
	{ 2, "V~H", (TOK_SUBFUNC_208<<8)+213 },
	{ 7, "V_OPNWK(", (TOK_SUBFUNC_208<<8)+105 },
	{ 8, "V_CLSWK()", (TOK_SUBFUNC_208<<8)+106 },
	{ 8, "V_OPNVWK(", (TOK_SUBFUNC_208<<8)+107 },
	{ 9, "V_CLSVWK()", (TOK_SUBFUNC_208<<8)+108 },
	{ 8, "V_UPDWK()", (TOK_SUBFUNC_208<<8)+109 },
	{ 14, "VST_LOAD_FONTS(", (TOK_SUBFUNC_208<<8)+110 },
	{ 16, "VST_UNLOAD_FONTS(", (TOK_SUBFUNC_208<<8)+111 },
	{ 8, "V_CLRWK()", (TOK_SUBFUNC_208<<8)+214 },
	{ 8, "VQT_NAME(", (TOK_SUBFUNC_208<<8)+215 },
	{ 10, "VQT_EXTENT(", (TOK_SUBFUNC_208<<8)+216 },
	{ 13, "VQ_TABSTATUS()", (TOK_SUBFUNC_212<<8)+65 },
	{ 7, "V_EEOL()", (TOK_SUBFUNC_212<<8)+66 },
	{ 7, "V_EEOS()", (TOK_SUBFUNC_212<<8)+67 },
	{ 8, "V_RMCUR()", (TOK_SUBFUNC_212<<8)+68 },
	{ 8, "V_DSPCUR(", (TOK_SUBFUNC_212<<8)+69 },
	{ 8, "V_CURUP()", (TOK_SUBFUNC_212<<8)+60 },
	{ 10, "V_CURDOWN()", (TOK_SUBFUNC_212<<8)+61 },
	{ 11, "V_CURRIGHT()", (TOK_SUBFUNC_212<<8)+62 },
	{ 10, "V_CURLEFT()", (TOK_SUBFUNC_212<<8)+63 },
	{ 10, "V_CURHOME()", (TOK_SUBFUNC_212<<8)+64 },
	{ 7, "V_RVON()", (TOK_SUBFUNC_212<<8)+56 },
	{ 8, "V_RVOFF()", (TOK_SUBFUNC_212<<8)+57 },
	{ 11, "V_EXIT_CUR()", (TOK_SUBFUNC_212<<8)+58 },
	{ 12, "V_ENTER_CUR()", (TOK_SUBFUNC_212<<8)+59 },
	{ 13, "VQ_CURADDRESS(", (TOK_SUBFUNC_212<<8)+54 },
	{ 12, "V_CURADDRESS(", (TOK_SUBFUNC_212<<8)+55 },
	{ 10, "VQ_CHCELLS(", (TOK_SUBFUNC_211<<8)+193 },
	{ 9, "V_BEZ_ON()", (TOK_SUBFUNC_211<<8)+191 },
	{ 10, "V_BEZ_OFF()", (TOK_SUBFUNC_211<<8)+192 },
	{ 11, "V_HARDCOPY()", (TOK_SUBFUNC_211<<8)+54 },
	{ 9, "VQ_VGDOS()", (TOK_SUBFUNC_209<<8)+14 },
	{ 7, "V_OPNBM(", (TOK_SUBFUNC_209<<8)+6 },
	{ 8, "VQ_COLOR(", (TOK_SUBFUNC_209<<8)+0 },
	{ 9, "VST_POINT(", (TOK_SUBFUNC_209<<8)+21 },
	{ 12, "VGETMONITOR()", (TOK_SUBFUNC_209<<8)+229 },
	{ 8, "VGETSIZE(", (TOK_SUBFUNC_209<<8)+230 },
	{ 8, "VSETMODE(", (TOK_SUBFUNC_209<<8)+231 },
	{ 10, "VCHECKMODE(", (TOK_SUBFUNC_209<<8)+232 },
	{ 10, "VSETSCREEN(", (TOK_SUBFUNC_209<<8)+233 },
	{ 11, "V_GET_PIXEL(", (TOK_SUBFUNC_209<<8)+73 },
	{ 10, "V_BEZ_QUAL(", (TOK_SUBFUNC_209<<8)+135 },
	{ 9, "V_HIDE_C()", (TOK_SUBFUNC_209<<8)+88 },
	{ 9, "V_SHOW_C()", (TOK_SUBFUNC_209<<8)+87 },
	{ 15, "VQF_ATTRIBUTES()", (TOK_SUBFUNC_209<<8)+127 },
	{ 15, "VQL_ATTRIBUTES()", (TOK_SUBFUNC_209<<8)+128 },
	{ 15, "VQM_ATTRIBUTES()", (TOK_SUBFUNC_209<<8)+129 },
	{ 15, "VQT_ATTRIBUTES()", (TOK_SUBFUNC_209<<8)+130 },
	{ 12, "VQT_FONTINFO(", (TOK_SUBFUNC_209<<8)+42 },
	{ 9, "VQT_WIDTH(", (TOK_SUBFUNC_209<<8)+41 },
	{ 9, "VRO_CPYFM(", (TOK_SUBFUNC_209<<8)+4 },
	{ 9, "VRT_CPYFM(", (TOK_SUBFUNC_209<<8)+5 },
	{ 8, "VR_TRNFM(", (TOK_SUBFUNC_209<<8)+131 },
	{ 8, "VQ_EXTND(", (TOK_SUBFUNC_209<<8)+132 },
	{ 11, "VQ_SCRNINFO(", (TOK_SUBFUNC_209<<8)+133 },
	{ 8, "V_CLSBM()", (TOK_SUBFUNC_209<<8)+7 },
	{ 8, "VQ_MOUSE(", (TOK_SUBFUNC_209<<8)+136 },
	{ 13, "VST_ALIGNMENT(", (TOK_SUBFUNC_209<<8)+15 },
	{ 8, "VS_COLOR(", (TOK_SUBFUNC_208<<8)+253 },
	{ 5, "V_BEZ(", (TOK_SUBFUNC_209<<8)+134 },
	{ 7, "VGETRGB(", (TOK_SUBFUNC_209<<8)+234 },
	{ 7, "VSETRGB(", (TOK_SUBFUNC_209<<8)+235 },
	{ 8, "VSETMASK(", (TOK_SUBFUNC_209<<8)+236 },
	{ 8, "VSETSYNC(", (TOK_SUBFUNC_209<<8)+237 },
	{ 9, "V_CURTEXT(", (TOK_SUBFUNC_209<<8)+121 },
	{ 9, "VST_COLOR(", (TOK_SUBFUNC_209<<8)+122 },
	{ 11, "VST_EFFECTS(", (TOK_SUBFUNC_209<<8)+123 },
	{ 12, "VST_ROTATION(", (TOK_SUBFUNC_209<<8)+124 },
	{ 10, "VST_HEIGHT(", (TOK_SUBFUNC_209<<8)+125 },
	{ 8, "VST_FONT(", (TOK_SUBFUNC_209<<8)+126 },
	{ 8, "VSL_TYPE(", (TOK_SUBFUNC_209<<8)+137 },
	{ 9, "VSL_WIDTH(", (TOK_SUBFUNC_209<<8)+138 },
	{ 8, "VSL_ENDS(", (TOK_SUBFUNC_209<<8)+139 },
	{ 9, "VSL_UDSTY(", (TOK_SUBFUNC_209<<8)+140 },
	{ 9, "VSL_COLOR(", (TOK_SUBFUNC_209<<8)+141 },
	{ 9, "VSM_COLOR(", (TOK_SUBFUNC_209<<8)+142 },
	{ 10, "VSM_HEIGHT(", (TOK_SUBFUNC_209<<8)+143 },
	{ 8, "VSM_TYPE(", (TOK_SUBFUNC_209<<8)+144 },
	{ 9, "VSWR_MODE(", (TOK_SUBFUNC_209<<8)+145 },
	{ 9, "VSF_COLOR(", (TOK_SUBFUNC_209<<8)+146 },
	{ 12, "VSF_INTERIOR(", (TOK_SUBFUNC_209<<8)+147 },
	{ 13, "VSF_PERIMETER(", (TOK_SUBFUNC_209<<8)+148 },
	{ 9, "VSF_STYLE(", (TOK_SUBFUNC_209<<8)+149 },
	{ 9, "VSF_UDPAT(", (TOK_SUBFUNC_209<<8)+150 },
	{ 7, "VS_CLIP(", (TOK_SUBFUNC_209<<8)+169 },
	{ 9, "VSC_FORM()", (TOK_SUBFUNC_209<<8)+170 },
	{ 5, "V_BAR(", (TOK_SUBFUNC_209<<8)+181 },
	{ 6, "V_RBOX(", (TOK_SUBFUNC_209<<8)+182 },
	{ 7, "V_RFBOX(", (TOK_SUBFUNC_209<<8)+183 },
	{ 8, "VR_RECFL(", (TOK_SUBFUNC_209<<8)+184 },
	{ 5, "V_ARC(", (TOK_SUBFUNC_209<<8)+185 },
	{ 8, "V_CIRCLE(", (TOK_SUBFUNC_209<<8)+186 },
	{ 8, "V_ELLARC(", (TOK_SUBFUNC_209<<8)+187 },
	{ 8, "V_ELLPIE(", (TOK_SUBFUNC_209<<8)+188 },
	{ 9, "V_ELLIPSE(", (TOK_SUBFUNC_209<<8)+189 },
	{ 10, "V_PIESLICE(", (TOK_SUBFUNC_209<<8)+190 },
	{ 13, "V_CONTOURFILL(", (TOK_SUBFUNC_209<<8)+191 },
	{ 7, "V_GTEXT(", (TOK_SUBFUNC_209<<8)+192 },
	{ 7, "V_PLINE(", (TOK_SUBFUNC_209<<8)+193 },
	{ 9, "V_PMARKER(", (TOK_SUBFUNC_209<<8)+194 },
	{ 10, "V_FILLAREA(", (TOK_SUBFUNC_209<<8)+195 },
	{ 11, "V_JUSTIFIED(", (TOK_SUBFUNC_209<<8)+196 },
	{ 8, "VQ_KEY_S(", (TOK_SUBFUNC_209<<8)+197 },
	{ 10, "V_BEZ_FILL(", (TOK_SUBFUNC_209<<8)+198 },
	{ 8, "VA_START(", (TOK_SUBFUNC_210<<8)+115 },
	{ 6, "VSYNC()", (TOK_SUBFUNC_210<<8)+151 },
	{ 16, "VR_TRANSFER_BITS(", (TOK_SUBFUNC_211<<8)+44 },
	{ 13, "V_CREATE_CTAB(", (TOK_SUBFUNC_211<<8)+45 },
	{ 13, "V_DELETE_CTAB(", (TOK_SUBFUNC_211<<8)+46 },
	{ 13, "V_CREATE_ITAB(", (TOK_SUBFUNC_211<<8)+47 },
	{ 13, "V_DELETE_ITAB(", (TOK_SUBFUNC_211<<8)+48 },
	{ 12, "VQ_PX_FORMAT(", (TOK_SUBFUNC_211<<8)+49 },
	{ 14, "V_GET_CTAB_ID()", (TOK_SUBFUNC_211<<8)+50 },
	{ 12, "VQT_EXT_NAME(", (TOK_SUBFUNC_211<<8)+51 },
	{ 9, "V_OPEN_BM(", (TOK_SUBFUNC_211<<8)+52 },
	{ 11, "V_RESIZE_BM(", (TOK_SUBFUNC_211<<8)+53 },
	{ 8, "VST_NAME(", (TOK_SUBFUNC_211<<8)+55 },
	{ 15, "VQT_NAME_AND_ID(", (TOK_SUBFUNC_211<<8)+56 },
	{ 12, "VST_FG_COLOR(", (TOK_SUBFUNC_211<<8)+57 },
	{ 12, "VSF_FG_COLOR(", (TOK_SUBFUNC_211<<8)+58 },
	{ 12, "VSL_FG_COLOR(", (TOK_SUBFUNC_211<<8)+59 },
	{ 12, "VSM_FG_COLOR(", (TOK_SUBFUNC_211<<8)+60 },
	{ 12, "VSR_FG_COLOR(", (TOK_SUBFUNC_211<<8)+61 },
	{ 12, "VQT_FG_COLOR(", (TOK_SUBFUNC_211<<8)+62 },
	{ 12, "VQF_FG_COLOR(", (TOK_SUBFUNC_211<<8)+63 },
	{ 12, "VQL_FG_COLOR(", (TOK_SUBFUNC_211<<8)+64 },
	{ 12, "VQM_FG_COLOR(", (TOK_SUBFUNC_211<<8)+65 },
	{ 12, "VQR_FG_COLOR(", (TOK_SUBFUNC_211<<8)+66 },
	{ 12, "VST_BG_COLOR(", (TOK_SUBFUNC_211<<8)+67 },
	{ 12, "VSF_BG_COLOR(", (TOK_SUBFUNC_211<<8)+68 },
	{ 12, "VSL_BG_COLOR(", (TOK_SUBFUNC_211<<8)+69 },
	{ 12, "VSM_BG_COLOR(", (TOK_SUBFUNC_211<<8)+70 },
	{ 12, "VSR_BG_COLOR(", (TOK_SUBFUNC_211<<8)+71 },
	{ 12, "VQT_BG_COLOR(", (TOK_SUBFUNC_211<<8)+72 },
	{ 12, "VQF_BG_COLOR(", (TOK_SUBFUNC_211<<8)+73 },
	{ 12, "VQL_BG_COLOR(", (TOK_SUBFUNC_211<<8)+74 },
	{ 12, "VQM_BG_COLOR(", (TOK_SUBFUNC_211<<8)+75 },
	{ 12, "VQR_BG_COLOR(", (TOK_SUBFUNC_211<<8)+76 },
	{ 15, "VS_HILITE_COLOR(", (TOK_SUBFUNC_211<<8)+77 },
	{ 12, "VS_MIN_COLOR(", (TOK_SUBFUNC_211<<8)+78 },
	{ 12, "VS_MAX_COLOR(", (TOK_SUBFUNC_211<<8)+79 },
	{ 15, "VS_WEIGHT_COLOR(", (TOK_SUBFUNC_211<<8)+80 },
	{ 15, "VQ_HILITE_COLOR(", (TOK_SUBFUNC_211<<8)+81 },
	{ 12, "VQ_MIN_COLOR(", (TOK_SUBFUNC_211<<8)+82 },
	{ 12, "VQ_MAX_COLOR(", (TOK_SUBFUNC_211<<8)+83 },
	{ 15, "VQ_WEIGHT_COLOR(", (TOK_SUBFUNC_211<<8)+84 },
	{ 8, "V_SETRGB(", (TOK_SUBFUNC_211<<8)+85 },
	{ 12, "VQT_XFNTINFO(", (TOK_SUBFUNC_211<<8)+87 },
	{ 13, "V_COLOR2VALUE(", (TOK_SUBFUNC_210<<8)+211 },
	{ 13, "V_VALUE2COLOR(", (TOK_SUBFUNC_210<<8)+210 },
	{ 15, "V_COLOR2NEAREST(", (TOK_SUBFUNC_210<<8)+209 },
	{ 12, "VQ_DFLT_CTAB(", (TOK_SUBFUNC_210<<8)+208 },
	{ 16, "V_CTAB_IDX2VALUE(", (TOK_SUBFUNC_210<<8)+207 },
	{ 14, "V_CTAB_VDI2IDX(", (TOK_SUBFUNC_210<<8)+206 },
	{ 14, "V_CTAB_IDX2VDI(", (TOK_SUBFUNC_211<<8)+166 },
	{ 11, "VQ_CTAB_ID()", (TOK_SUBFUNC_211<<8)+167 },
	{ 13, "VQ_CTAB_ENTRY(", (TOK_SUBFUNC_211<<8)+168 },
	{ 7, "VQ_CTAB(", (TOK_SUBFUNC_211<<8)+169 },
	{ 13, "VS_DFLT_CTAB()", (TOK_SUBFUNC_211<<8)+170 },
	{ 13, "VS_CTAB_ENTRY(", (TOK_SUBFUNC_211<<8)+171 },
	{ 7, "VS_CTAB(", (TOK_SUBFUNC_211<<8)+172 },
	{ 21, "VR_CLIP_RECTS_BY_DST()", (TOK_SUBFUNC_211<<8)+173 },
	{ 21, "VR_CLIP_RECTS_BY_SRC()", (TOK_SUBFUNC_211<<8)+174 },
	{ 14, "VQT_FONTHEADER(", (TOK_SUBFUNC_211<<8)+175 },
	{ 9, "VST_WIDTH(", (TOK_SUBFUNC_211<<8)+176 },
	{ 18, "V_CLEAR_DISP_LIST()", (TOK_SUBFUNC_211<<8)+177 },
	{ 8, "VEX_TIMV(", (TOK_SUBFUNC_211<<8)+178 },
	{ 8, "VEX_BUTV(", (TOK_SUBFUNC_211<<8)+179 },
	{ 8, "VEX_MOTV(", (TOK_SUBFUNC_211<<8)+180 },
	{ 8, "VEX_CURV(", (TOK_SUBFUNC_211<<8)+181 },
	{ 1, "W:", TOK_WORDARG },
	{ 7, "WINDTAB(", (TOK_SUBFUNC_208<<8)+41 },
	{ 6, "WINDTAB", (TOK_SUBFUNC_208<<8)+42 },
	{ 4, "WORD(", (TOK_SUBFUNC_208<<8)+14 },
	{ 11, "WIND_CREATE(", (TOK_SUBFUNC_208<<8)+175 },
	{ 9, "WIND_OPEN(", (TOK_SUBFUNC_208<<8)+176 },
	{ 10, "WIND_CLOSE(", (TOK_SUBFUNC_208<<8)+177 },
	{ 11, "WIND_DELETE(", (TOK_SUBFUNC_208<<8)+178 },
	{ 8, "WIND_GET(", (TOK_SUBFUNC_208<<8)+179 },
	{ 8, "WIND_SET(", (TOK_SUBFUNC_208<<8)+180 },
	{ 9, "WIND_FIND(", (TOK_SUBFUNC_208<<8)+181 },
	{ 11, "WIND_UPDATE(", (TOK_SUBFUNC_208<<8)+182 },
	{ 9, "WIND_CALC(", (TOK_SUBFUNC_208<<8)+183 },
	{ 7, "W_HAND(#", (TOK_SUBFUNC_208<<8)+98 },
	{ 8, "W_INDEX(#", (TOK_SUBFUNC_208<<8)+99 },
	{ 8, "WORK_OUT(", (TOK_SUBFUNC_208<<8)+208 },
	{ 3, "WITH", TOK_WITH },
	{ 4, "WORD{", (TOK_SUBFUNC_208<<8)+222 },
	{ 9, "WIND_SGET(", (TOK_SUBFUNC_210<<8)+182 },
	{ 9, "WIND_NEW()", (TOK_SUBFUNC_209<<8)+85 },
	{ 8, "WAKETIME(", (TOK_SUBFUNC_209<<8)+227 },
	{ 7, "WF_NAME(", (TOK_SUBFUNC_209<<8)+248 },
	{ 7, "WF_INFO(", (TOK_SUBFUNC_209<<8)+249 },
	{ 7, "WEEKDAY(", (TOK_SUBFUNC_210<<8)+91 },
	{ 6, "WF_TOP(", (TOK_SUBFUNC_210<<8)+160 },
	{ 4, "WEEK(", (TOK_SUBFUNC_211<<8)+1 },
	{ 5, "XBIOS(", (TOK_SUBFUNC_208<<8)+86 },
	{ 2, "XOR", TOK_XOR },
	{ 3, "XOR(", (TOK_SUBFUNC_208<<8)+7 },
	{ 7, "XBTIMER(", (TOK_SUBFUNC_212<<8)+3 },
	{ 6, "XLATE$(", TOK_XLATE },
	{ 4, "YEAR(", (TOK_SUBFUNC_210<<8)+215 },
	{ 6, "ZTRIM$(", TOK_ZTRIM },
	{ 0, "\\", TOK_INTDIV },
	{ 0, "[", TOK_LBRACKET },
	{ 0, "]", TOK_RBRACKET },
	{ 4, "_DATA", (TOK_SUBFUNC_208<<8)+227 },
	{ 9, "_BUILDINFO", (TOK_SUBFUNC_210<<8)+240 },
	{ 7, "_BMPSIZE", (TOK_SUBFUNC_211<<8)+223 },
	{ 7, "_BOOTDEV", (TOK_SUBFUNC_211<<8)+200 },
	{ 7, "_VERSION", (TOK_SUBFUNC_210<<8)+227 },
	{ 6, "_GEMDOS", (TOK_SUBFUNC_209<<8)+18 },
	{ 6, "_GLOBAL", (TOK_SUBFUNC_211<<8)+213 },
	{ 5, "_CPUID", (TOK_SUBFUNC_210<<8)+224 },
	{ 4, "_MINT", (TOK_SUBFUNC_209<<8)+1 },
	{ 3, "_PID", (TOK_SUBFUNC_210<<8)+129 },
	{ 3, "_AES", (TOK_SUBFUNC_208<<8)+242 },
	{ 3, "_CPU", (TOK_SUBFUNC_209<<8)+57 },
	{ 3, "_FPU", (TOK_SUBFUNC_210<<8)+222 },
	{ 3, "_MCH", (TOK_SUBFUNC_210<<8)+223 },
	{ 3, "_TOS", (TOK_SUBFUNC_208<<8)+243 },
	{ 3, "_CF_", (TOK_SUBFUNC_210<<8)+241 },
	{ 2, "_CW", (TOK_SUBFUNC_210<<8)+228 },
	{ 2, "_CH", (TOK_SUBFUNC_210<<8)+229 },
	{ 2, "_SW", (TOK_SUBFUNC_209<<8)+2 },
	{ 2, "_SH", (TOK_SUBFUNC_209<<8)+3 },
	{ 2, "_DX", (TOK_SUBFUNC_210<<8)+245 },
	{ 2, "_DY", (TOK_SUBFUNC_210<<8)+246 },
	{ 2, "_DW", (TOK_SUBFUNC_210<<8)+247 },
	{ 2, "_DH", (TOK_SUBFUNC_210<<8)+248 },
	{ 2, "_A3", (TOK_SUBFUNC_211<<8)+251 },
	{ 2, "_A4", (TOK_SUBFUNC_211<<8)+252 },
	{ 2, "_A5", (TOK_SUBFUNC_211<<8)+253 },
	{ 2, "_A6", (TOK_SUBFUNC_211<<8)+254 },
	{ 2, "_A7", (TOK_SUBFUNC_211<<8)+255 },
	{ 1, "_X", (TOK_SUBFUNC_208<<8)+236 },
	{ 1, "_Y", (TOK_SUBFUNC_208<<8)+237 },
	{ 1, "_P", (TOK_SUBFUNC_208<<8)+255 },
	{ 1, "_C", (TOK_SUBFUNC_208<<8)+238 },
	{ 1, "_B", (TOK_SUBFUNC_208<<8)+241 },
	{ 1, "_0", (TOK_SUBFUNC_210<<8)+230 },
	{ 1, "_1", (TOK_SUBFUNC_210<<8)+231 },
	{ 1, "_2", (TOK_SUBFUNC_210<<8)+232 },
	{ 1, "_3", (TOK_SUBFUNC_210<<8)+233 },
	{ 1, "_4", (TOK_SUBFUNC_210<<8)+234 },
	{ 1, "_5", (TOK_SUBFUNC_210<<8)+235 },
	{ 1, "_6", (TOK_SUBFUNC_210<<8)+236 },
	{ 1, "_7", (TOK_SUBFUNC_210<<8)+237 },
	{ 1, "_8", (TOK_SUBFUNC_210<<8)+238 },
	{ 1, "_9", (TOK_SUBFUNC_210<<8)+239 },
	{ 0, "^", TOK_POWER },
	{ 0, "{", (TOK_SUBFUNC_208<<8)+112 },
	{ 0, "}", TOK_RBRACE },
	{ 4, "EOF(#", (TOK_SUBFUNC_208<<8)+78 },
	{ 4, "LOF(#", (TOK_SUBFUNC_208<<8)+79 },
	{ 4, "LOC(#", (TOK_SUBFUNC_208<<8)+80 },
	{ 3, " AT(", TOK_AT2 },
	{ 4, "SUCC(", TOK_SUCC },
	{ 4, "PRED(", TOK_PRED },
	{ 0, "/", TOK_DIVIDE }
};

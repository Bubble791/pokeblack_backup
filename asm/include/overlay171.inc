#include <nitro/fs/overlay.h>
#pragma once
.public GFL_HeapCreateChild
.public GFL_ProcInitSubsystem
.public MI_CpuFill8
.public sub_0203349C
.public sub_0204B794
.public GFL_ProcReleaseSubsystem
.public GFL_HeapDelete
.public GFL_BGSysSetEnabledBGsA
.public GFL_BGSysSetEnabledBGsB
.public sub_02046DF8
.public sub_021DDD2C
.public sub_02042BA8
.public GFL_BGSysSetBGEnabledA
.public sub_021DDD1C
.public sub_021DDEFC
.public GFL_BGSysSetBGEnabledA
.public sub_021DEAE0
.public GFL_FadeScreenIsFinished
.public PrintSystem_IsTextPrintActiveEnd
.public sub_0203346C
.public sub_0203346C
.public sub_0203346C
.public sub_0203346C
.public GFL_SndSEPlay
.public sub_02033548
.public GFL_SndSEPlay
.public sub_021DDD1C
.public sub_02033548
.public GFL_SndSEPlay
.public sub_021DDD1C
.public GFL_FadeScreenSet
.public GFL_FadeScreenSet
.public GFL_BGSysCreate
.public GFL_BGSysSetLCDConfig
.public sub_0204476C
.public sub_02045738
.public sub_020450CC
.public sub_0204476C
.public sub_0204476C
.public sub_02044B84
.public sub_02044B84
.public sub_02044B84
.public sub_02044528
.public GFL_ArcSysCreateFileHandle
.public sub_0204ADA8
.public sub_0204AF50
.public GFL_G2DIOLoadArcNCLRDefault
.public sub_0204AF50
.public GFL_ArcToolFree
.public sub_02045350
.public GFL_MsgSysLoadData
.public GFL_FontCreate
.public GFL_FontCreate
.public GFL_WordSetSystemCreateDefault
.public sub_020219A8
.public GFL_MsgDataFree
.public sub_02022DA8
.public sub_02022DA8
.public GFL_WordSetSystemFree
.public sub_02021A18
.public GFL_VBlankTCBAdd
.public sub_02045A5C
.public sub_0204B7C8
.public sub_0201FDF8
.public sub_0201FF08
.public sub_0201FDF8
.public sub_0201FF08
.public BmpWin_InitAllocator
.public BmpWin_CreateDynamic
.public BmpWin_GetBitmap
.public BmpWin_BitmapFill
.public BmpWin_FlushChar
.public BmpWin_Free
.public sub_020480A8
.public sub_02021A3C
.public BmpWin_GetBitmap
.public sub_02021C1C
.public BmpWin_FlushChar
.public GFL_StrBufCreate
.public sub_0204898C
.public sub_02024464
.public GFL_WordSetFormatStrbuf
.public BmpWin_GetBitmap
.public sub_02021C7C
.public GFL_StrBufFree
.public GFL_StrBufFree
.public sub_0201CCF8
.public sub_0201CCF8
.public sub_0201CEB4
.public sub_0204898C
.public sub_020484D8
.public GFL_FontGetBlockWidth
.public BmpWin_GetBitmap
.public sub_02021C7C
.public GFL_StrBufFree
.public sub_0204898C
.public sub_020484D8
.public GFL_FontGetBlockWidth
.public BmpWin_GetBitmap
.public sub_02021C7C
.public GFL_StrBufFree
.public GFL_StrBufCreate
.public sub_0204898C
.public sub_0201CCF8
.public StringSetNumber
.public GFL_WordSetFormatStrbuf
.public BmpWin_GetBitmap
.public sub_02021C7C
.public GFL_StrBufFree
.public GFL_StrBufFree
.public GFL_StrBufCreate
.public sub_0204898C
.public GFL_FontGetBlockWidth
.public BmpWin_GetBitmap
.public sub_02021C7C
.public GFL_StrBufFree
.public sub_0204898C
.public sub_0201CCF8
.public StringSetNumber
.public GFL_WordSetFormatStrbuf
.public GFL_FontGetBlockWidth
.public BmpWin_GetBitmap
.public sub_02021C7C
.public GFL_StrBufFree
.public sub_0204898C
.public sub_0201CCF8
.public StringSetNumber
.public GFL_WordSetFormatStrbuf
.public BmpWin_GetBitmap
.public sub_02021C7C
.public GFL_StrBufFree
.public GFL_StrBufFree
.public BmpWin_GetBitmap
.public sub_020470F8
.public BmpWin_GetBitmap
.public sub_020470F8
.public sub_021DE480
.public Oam_CreateSystem
.public GFL_ArcSysCreateFileHandle
.public sub_0201D624
.public sub_02020F40
.public sub_02020F94
.public Oam_LoadNCGRFile
.public sub_02021114
.public sub_0204BC48
.public sub_02021154
.public sub_020211C8
.public Oam_LoadNCERFile
.public GFL_ArcToolFree
.public GetDefaultUINarcIdx
.public GFL_ArcSysCreateFileHandle
.public Oam_LoadNCGRFile
.public sub_0204BBA0
.public Oam_LoadNCERFile
.public Oam_LoadNCGRFile
.public sub_0204BBA0
.public Oam_LoadNCERFile
.public sub_0202D958
.public Oam_LoadNCGRFile
.public sub_0202D954
.public sub_0204BBA0
.public sub_0202D95C
.public sub_0202D960
.public Oam_LoadNCERFile
.public GFL_ArcToolFree
.public sub_0204B98C
.public sub_0204BCD0
.public sub_0204BE64
.public sub_0204BF1C
.public Oam_CreateSprite
.public sub_0204C124
.public sub_0204C124
.public sub_0204C124
.public Oam_EnableOamAnim
.public sub_0201D624
.public sub_020210C0
.public sub_0204C378
.public sub_0201CCF8
.public Item_IsMail
.public sub_0204C4D4
.public sub_0204C4D4
.public Oam_SetOamAnimIndex
.public sub_0204C124
.public Oam_RemoveOam
.public sub_0204BF98
.public Oam_GetSpritePosData
.public Oam_SetSpritePosData
.public sub_020330C8
.public sub_02033150
.public sub_02033150
.public sub_020335C4
.public sub_02045814
.public GFL_HeapAllocate
.public MIi_CpuCopy16
.public sub_020331D4
.public MIi_CpuCopy16
.public sub_020331D4
.public GFL_HeapFree
.public sub_02045738
.public sub_02033558
.public sub_02033558
.public sub_02033254
.public sub_02033254
.public sub_02033254
.public sub_02033254
.public sub_02033254
.public sub_02033254
.public sub_02033254
.public sub_02033254
.public sub_02033254
.public sub_02033254
.public sub_02033254
.public sub_02033254
.public sub_02033254
.public sub_02033254
.public sub_02033254
.public sub_02033254
.public sub_02033254
.public sub_02033254
.public sub_02033254
.public sub_02033254
.public sub_02033254
.public sub_02033254
.public sub_02033254
.public sub_02033254

.public GFL_BGSysSetVRAMBanks
.public GFL_TCBRemove
.public sub_0204B758
.public sub_02033120
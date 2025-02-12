#include <nitro/fs/overlay.h>
#pragma once
.public NNS_FndCreateExpHeapEx
.public NNS_FndDestroyExpHeap
.public NNS_FndAllocFromExpHeapEx
.public NNS_FndResizeForMBlockExpHeap
.public NNS_FndFreeToExpHeap
.public NNS_FndGetTotalFreeSizeForExpHeap
.public NNS_FndSetGroupIDForExpHeap
.public NNS_FndGetSizeForMBlockExpHeap
.public NNS_FndGetGroupIDForMBlockExpHeap
.public NNS_FndAllocFromAllocator
.public NNS_FndInitAllocatorForExpHeap
.public NNS_GfdInitFrmTexVramManager
.public NNS_GfdResetFrmTexVramState
.public NNS_GfdGetFrmTexVramState
.public NNS_GfdSetFrmTexVramState
.public NNS_GfdInitFrmPlttVramManager
.public NNS_GfdGetFrmPlttVramState
.public NNS_GfdSetFrmPlttVramState
.public NNS_GfdResetFrmPlttVramState
.public NNS_GfdInitVramTransferManager
.public NNS_GfdDoVramTransfer
.public NNS_GfdRegisterNewVramTransferTask
.public NNS_GfdGetLnkTexVramManagerWorkSize
.public NNS_GfdInitLnkTexVramManager
.public NNS_GfdFreeLnkTexVram
.public NNS_GfdResetLnkTexVramState
.public NNS_GfdGetLnkPlttVramManagerWorkSize
.public NNS_GfdInitLnkPlttVramManager
.public NNS_GfdFreeLnkPlttVram
.public NNS_GfdResetLnkPlttVramState
.public NNS_G2dGetUnpackedAnimBank
.public NNS_G2dGetUnpackedMCAnimBank
.public NNS_G2dGetAnimSequenceByIdx
.public NNS_G2dGetUnpackedCellBank
.public NNS_G2dGetUnpackedMultiCellBank
.public NNS_G2dGetUnpackedCharacterData
.public NNS_G2dGetUnpackedBGCharacterData
.public NNS_G2dGetUnpackedPaletteData
.public NNS_G2dGetUnpackedPaletteCompressInfo
.public NNS_G2dGetUnpackedScreenData
.public NNS_G2dSetupSoftwareSpriteCamera
.public NNS_G2dDrawSpriteFast
.public NNS_G2dGetAnimCtrlCurrentElement
.public NNS_G2dGetAnimCtrlCurrentFrame
.public NNS_G2dResetAnimCtrlState
.public NNS_G2dInitOamManagerModule
.public NNS_G2dGetNewOamManagerInstance
.public NNS_G2dEntryOamManagerOamWithAffineIdx
.public NNS_G2dEntryOamManagerAffine
.public NNS_G2dApplyAndResetOamManagerBuffer
.public NNS_G2dInitImageProxy
.public NNS_G2dSetImageLocation
.public NNS_G2dGetImageLocation
.public NNS_G2dInitImagePaletteProxy
.public NNS_G2dSetImagePaletteLocation
.public NNS_G2dGetImagePaletteLocation
.public NNS_G2dLoadImage1DMapping
.public NNS_G2dLoadImage2DMapping
.public NNS_G2dLoadImageVramTransfer
.public NNS_G2dLoadPalette
.public NNS_G2dLoadPaletteEx
.public NNS_G2dInitCellAnimation
.public NNS_G2dInitCellAnimationVramTransfered
.public NNS_G2dSetCellAnimationSequence
.public NNS_G2dTickCellAnimation
.public NNS_G2dSetCellAnimationCurrentFrame
.public NNS_G2dSetAnimSequenceToMCAnimation
.public NNS_G2dGetMCBankNumNodesRequired
.public NNS_G2dTickMCAnimation
.public NNS_G2dSetMCAnimationCurrentFrame
.public NNS_G2dInitMCAnimation
.public NNS_G2dInitRenderer
.public NNS_G2dAddRendererTargetSurface
.public NNS_G2dInitRenderSurface
.public NNS_G2dBeginRendering
.public NNS_G2dEndRendering
.public NNS_G2dDrawCellAnimation
.public NNS_G2dDrawMultiCell
.public NNS_G2dDrawMultiCellAnimation
.public NNS_G2dPushMtx
.public NNS_G2dPopMtx
.public NNS_G2dTranslate
.public NNS_G2dScale
.public NNS_G2dRotZ
.public NNS_G2dSetRendererImageProxy
.public NNS_G2dInitCellTransferStateManager
.public NNS_G2dUpdateCellTransferStateManager
.public NNS_G2dGetNewCellTransferStateHandle
.public NNS_G2dFreeCellTransferStateHandle
.public NNS_G2dSetRndCoreAffineOverwriteMode
.public NNS_G2dSetRndCoreFlipMode
.public NNS_G2dFontInitUTF16
.public NNS_G2dFontFindGlyphIndex
.public NNS_G2dFontGetCharWidthsFromIndex
.public ClearChar
.public NNS_G2dCharCanvasDrawChar
.public NNS_G2dCharCanvasInitForBG
.public NNS_G2dCharCanvasInitForOBJ1D
.public NNS_G2dMapScrToCharText
.public NNSi_G2dCalcRequiredOBJ
.public NNS_G2dArrangeOBJ1D
.public NNSi_G2dTextCanvasDrawText
.public NNSi_G2dTextCanvasDrawTextRect
.public NNS_G3dAnmObjInit
.public NNS_G3dAnmObjEnableID
.public NNS_G3dAnmObjDisableID
.public NNS_G3dRenderObjInit
.public NNS_G3dRenderObjAddAnmObj
.public NNS_G3dRenderObjRemoveAnmObj
.public NNS_G3dTexGetRequiredSize
.public NNS_G3dTex4x4GetRequiredSize
.public NNS_G3dTexSetTexKey
.public NNS_G3dTexLoad
.public NNS_G3dTexReleaseTexKey
.public NNS_G3dPlttGetRequiredSize
.public NNS_G3dPlttSetPlttKey
.public NNS_G3dPlttLoad
.public NNS_G3dPlttReleasePlttKey
.public NNS_G3dForceBindMdlTex
.public NNS_G3dReleaseMdlTex
.public NNS_G3dForceBindMdlPltt
.public NNS_G3dReleaseMdlPltt
.public NNS_G3dBindMdlSet
.public NNS_G3dReleaseMdlSet
.public NNS_G3dGlbFlushP
.public NNS_G3dGlbSetBaseTrans
.public NNS_G3dGlbSetBaseScale
.public NNS_G3dGlbLightVector
.public NNS_G3dGlbLightColor
.public NNS_G3dGlbMaterialColorDiffAmb
.public NNS_G3dGlbMaterialColorSpecEmi
.public NNS_G3dGlbPolygonAttr
.public NNS_G3dDraw
.public NNS_G3dDraw1Mat1Shp
.public NNS_G3dGeFlushBuffer
.public NNS_G3dGeBufferOP_N
.public NNS_G3dInit
.public NNS_G3dResDefaultSetup
.public NNS_G3dScrPosToWorldLine
.public NNS_G3dAllocAnmObj
.public NNS_G3dFreeAnmObj
.public NNSi_G3dModifyMatFlag
.public NNSi_G3dModifyPolygonAttrMask
.public NNS_G3dMdlSetMdlDiff
.public NNS_G3dMdlSetMdlAmb
.public NNS_G3dMdlSetMdlSpec
.public NNS_G3dMdlSetMdlEmi
.public NNS_G3dMdlSetMdlLightEnableFlag
.public NNS_G3dMdlSetMdlPolygonMode
.public NNS_G3dMdlSetMdlCullMode
.public NNS_G3dMdlSetMdlPolygonID
.public NNS_G3dMdlSetMdlAlpha
.public NNS_G3dMdlSetMdlFogEnableFlag
.public NNS_G3dMdlSetMdlDepthTestCond
.public NNS_G3dMdlSetMdl1Dot
.public NNS_G3dMdlSetMdlFarClip
.public NNS_G3dMdlSetMdlXLDepthUpdate
.public NNS_G3dMdlGetMdlLightEnableFlag
.public NNS_G3dMdlGetMdlFogEnableFlag
.public NNS_G3dMdlSetMdlDiffAll
.public NNS_G3dMdlSetMdlAmbAll
.public NNS_G3dMdlSetMdlSpecAll
.public NNS_G3dMdlSetMdlEmiAll
.public NNS_G3dMdlSetMdlLightEnableFlagAll
.public NNS_G3dMdlSetMdlPolygonModeAll
.public NNS_G3dMdlSetMdlCullModeAll
.public NNS_G3dMdlSetMdlPolygonIDAll
.public NNS_G3dMdlSetMdlAlphaAll
.public NNS_G3dMdlSetMdlFogEnableFlagAll
.public NNS_G3dMdlSetMdlDepthTestCondAll
.public NNS_G3dMdlSetMdl1DotAll
.public NNS_G3dMdlSetMdlFarClipAll
.public NNS_G3dMdlSetMdlXLDepthUpdateAll
.public NNS_G3dGetResDataByName
.public NNS_G3dGetResDictIdxByName
.public NNS_G3dGetMdlSet
.public NNS_G3dGetTex
.public NNS_G3dGetAnmByIdx
.public NNS_SndInit
.public NNS_SndMain
.public NNS_SndSetMasterVolume
.public NNS_SndSetMonoFlag
.public NNS_SndUpdateDriverInfo
.public NNS_SndReadDriverChannelInfo
.public NNS_SndWaveOutAllocChannel
.public NNS_SndWaveOutFreeChannel
.public NNS_SndWaveOutStart
.public NNS_SndWaveOutStop
.public NNS_SndWaveOutSetVolume
.public NNS_SndWaveOutSetSpeed
.public NNS_SndWaveOutSetPan
.public NNS_SndWaveOutIsPlaying
.public NNS_SndPlayerSetPlayerVolume
.public NNS_SndPlayerSetPlayableSeqCount
.public NNS_SndPlayerSetAllocatableChannel
.public NNS_SndPlayerCreateHeap
.public NNS_SndPlayerStopSeq
.public NNS_SndPlayerStopSeqByPlayerNo
.public NNS_SndPlayerStopSeqBySeqNo
.public NNS_SndPlayerStopSeqAll
.public NNS_SndPlayerPause
.public NNS_SndPlayerPauseByPlayerNo
.public NNS_SndHandleInit
.public NNS_SndHandleReleaseSeq
.public NNS_SndPlayerCountPlayingSeqByPlayerNo
.public NNS_SndPlayerSetVolume
.public NNS_SndPlayerSetInitialVolume
.public NNS_SndPlayerMoveVolume
.public NNS_SndPlayerSetTrackPitch
.public NNS_SndPlayerSetTrackPan
.public NNS_SndPlayerSetTrackAllocatableChannel
.public NNS_SndPlayerSetTempoRatio
.public NNS_SndPlayerGetSeqNo
.public NNS_SndPlayerReadVariable
.public NNS_SndPlayerReadDriverTrackInfo
.public NNS_SndStrmInit
.public NNS_SndStrmAllocChannel
.public NNS_SndStrmFreeChannel
.public NNS_SndStrmSetup
.public NNS_SndStrmStart
.public NNS_SndStrmStop
.public NNS_SndStrmSetVolume
.public NNS_SndCaptureStopReverb
.public NNS_SndCaptureIsActive
.public NNS_SndCaptureGetCaptureType
.public NNS_SndArcInit
.public NNS_SndArcInitOnMemory
.public NNS_SndArcGetSeqParam
.public NNS_SndArcGetBankInfo
.public NNS_SndArcGetWaveArcInfo
.public NNS_SndArcGetFileSize
.public NNS_SndArcReadFile
.public NNS_SndHeapCreate
.public NNS_SndHeapSaveState
.public NNS_SndHeapLoadState
.public NNS_SndHeapGetSize
.public NNS_SndHeapGetFreeSize
.public InitHeap
.public NNS_SndArcLoadGroup
.public NNS_SndArcLoadSeq
.public NNS_SndArcLoadBank
.public NNS_SndArcLoadWaveArc
.public NNS_SndArcLoadSeqEx
.public LoadSeq
.public LoadBank
.public LoadWaveArc
.public NNS_SndArcPlayerSetup
.public NNS_SndArcPlayerStartSeqEx
.public NNS_SndArcPlayerStartSeqArc
.public StartSeq
.public StartSeqArc
.public FreeChannel
.public MTX_Identity33_
.public MTX_Identity43_
.public MTX_Copy43To44_
.public MTX_ScaleApply43
.public MTX_Inverse43
.public MTX_Concat43
.public MTX_Identity44_
.public MTX_Copy44To43_
.public MTX_Concat44
.public FX_Div
.public FX_Inv
.public FX_InvFx64c
.public FX_GetDivResultFx64c
.public FX_GetDivResult
.public FX_InvAsync
.public FX_DivAsync
.public VEC_CrossProduct
.public VEC_Mag
.public VEC_Normalize
.public G3_LoadMtx43
.public G3_MultMtx43
.public G3_MultMtx33
.public G3X_Init
.public G3X_GetClipMtx
.public G3X_GetVectorMtx
.public G3i_OrthoW_
.public G3i_LookAt_
.public GX_LoadBGPltt
.public GXS_LoadBGPltt
.public GX_LoadOBJPltt
.public GXS_LoadOBJPltt
.public GX_LoadOAM
.public GXS_LoadOAM
.public GX_LoadOBJ
.public GXS_LoadOBJ
.public GX_LoadBG0Scr
.public GXS_LoadBG0Scr
.public GX_LoadBG1Scr
.public GXS_LoadBG1Scr
.public GX_LoadBG2Scr
.public GXS_LoadBG2Scr
.public GX_LoadBG3Scr
.public GXS_LoadBG3Scr
.public GX_LoadBG0Char
.public GXS_LoadBG0Char
.public GX_LoadBG1Char
.public GXS_LoadBG1Char
.public GX_LoadBG2Char
.public GXS_LoadBG2Char
.public GX_LoadBG3Char
.public GXS_LoadBG3Char
.public GX_BeginLoadBGExtPltt
.public GX_LoadBGExtPltt
.public GX_EndLoadBGExtPltt
.public GX_BeginLoadOBJExtPltt
.public GX_LoadOBJExtPltt
.public GX_EndLoadOBJExtPltt
.public GXS_BeginLoadBGExtPltt
.public GXS_LoadBGExtPltt
.public GXS_EndLoadBGExtPltt
.public GXS_BeginLoadOBJExtPltt
.public GXS_LoadOBJExtPltt
.public GXS_EndLoadOBJExtPltt
.public GX_BeginLoadTex
.public GX_LoadTex
.public GX_EndLoadTex
.public GX_BeginLoadTexPltt
.public GX_LoadTexPltt
.public GX_EndLoadTexPltt
.public GX_BeginLoadClearImage
.public GX_LoadClearImageColor
.public GX_LoadClearImageDepth
.public GX_EndLoadClearImage
.public OS_ReceiveMessage
.public OS_LockMutex
.public OS_UnlockMutex
.public DC_InvalidateRange
.public DC_StoreRange
.public DC_FlushRange
.public OS_AllocFromHeap
.public OS_FreeToHeap
.public OS_DisableInterrupts
.public OS_RestoreInterrupts
.public OS_Terminate
.public MIi_DmaFill32
.public MI_SendGXCommandAsync
.public MI_SendGXCommandAsyncFast
.public MIi_CpuClear16
.public MIi_CpuCopy16
.public MIi_CpuClear32
.public MIi_CpuCopy32
.public MIi_CpuSend32
.public MIi_CpuClearFast
.public MIi_CpuCopyFast
.public MI_Copy64B
.public MI_CpuFill8
.public MI_CpuCopy8
.public SND_StopSeq
.public SND_PrepareSeq
.public SND_StartPreparedSeq
.public SND_PauseSeq
.public SND_SetPlayerTempoRatio
.public SND_SetPlayerVolume
.public SND_SetPlayerChannelPriority
.public SND_SetTrackPitch
.public SND_SetTrackPan
.public SND_SetTrackAllocatableChannel
.public SND_StartTimer
.public SND_StopTimer
.public SND_SetupAlarm
.public SND_LockChannel
.public SND_UnlockChannel
.public SND_SetChannelTimer
.public SND_SetChannelVolume
.public SND_SetChannelPan
.public SND_SetupChannelPcm
.public SND_InvalidateSeqData
.public SND_InvalidateBankData
.public SND_InvalidateWaveData
.public SND_SetMasterVolume
.public SND_SetOutputSelector
.public SND_SetMasterPan
.public SND_ResetMasterPan
.public SND_ReadDriverInfo
.public SND_Init
.public SND_RecvCommandReply
.public SND_FlushCommand
.public SND_WaitForCommandProc
.public SND_GetCurrentCommandTag
.public SND_IsFinishedCommandTag
.public SND_GetPlayerStatus
.public SND_GetChannelStatus
.public SND_GetPlayerLocalVariable
.public SND_ReadChannelInfo
.public SND_ReadTrackInfo
.public SND_CalcChannelVolume
.public SND_AssignWaveArc
.public SND_DestroyBank
.public SND_DestroyWaveArc
.public SND_GetFirstInstDataPos
.public SND_GetNextInstData
.public SND_GetWaveDataCount
.public SND_SetWaveDataAddress
.public SND_GetWaveDataAddress
.public FS_InitFile
.public FS_ConvertPathToFileID
.public FS_OpenFileFast
.public FS_ReadFile
.public FS_SeekFile
.public PM_PrependPreSleepCallback
.public PM_AppendPostSleepCallback
.public PM_DeletePreSleepCallback
.public PM_DeletePostSleepCallback
.public abs
.public _ll_udiv
.public _s32_div_f
.public _u32_div_f
.public FX_SinCosTable_
.public _0210D750
.public NNS_GfdDefaultFuncAllocTexVram
.public NNS_GfdDefaultFuncFreeTexVram
.public NNS_GfdDefaultFuncAllocPlttVram
.public NNS_GfdDefaultFuncFreePlttVram
.public _02110A0C
.public sIsDispOn
.public GXi_DmaId
.public NNS_G3dGlb

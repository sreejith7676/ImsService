.class public Lcom/mediatek/ims/internal/ImsVTProvider;
.super Landroid/telephony/ims/ImsVideoCallProvider;
.source "ImsVTProvider.java"

# interfaces
.implements Lcom/mediatek/ims/internal/VTSource$EventCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/internal/ImsVTProvider$ImsVTProviderTelephonyCallback;,
        Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;,
        Lcom/mediatek/ims/internal/ImsVTProvider$ConnectionEx;
    }
.end annotation


# static fields
.field public static final EARLY_MEDIA_START:I = 0x1

.field public static final EARLY_MEDIA_STOP:I = 0x0

.field public static final MODE_PAUSE_BY_HOLD:I = 0x2

.field public static final MODE_PAUSE_BY_NORMAL:I = 0x1

.field protected static final MSG_RECEIVE_CALL_SESSION_EVENT:I = 0x2c2

.field protected static final MSG_REQTIMEOUT_AUTOREJECT:I = 0x2c4

.field protected static final MSG_REQUEST_CALL_DATA_USAGE:I = 0xa

.field protected static final MSG_REQUEST_CAMERA_CAPABILITIES:I = 0x9

.field protected static final MSG_RESET_WRAPPER:I = 0x2c0

.field protected static final MSG_SEND_SESSION_MODIFY_REQUEST:I = 0x7

.field protected static final MSG_SEND_SESSION_MODIFY_RESPONSE:I = 0x8

.field protected static final MSG_SET_CALLBACK:I = 0x1

.field protected static final MSG_SET_CAMERA:I = 0x2

.field protected static final MSG_SET_DEVICE_ORIENTATION:I = 0x5

.field protected static final MSG_SET_DISPLAY_SURFACE:I = 0x4

.field protected static final MSG_SET_PAUSE_IMAGE:I = 0xb

.field protected static final MSG_SET_PREVIEW_SURFACE:I = 0x3

.field protected static final MSG_SET_UI_MODE:I = 0x2bd

.field protected static final MSG_SET_ZOOM:I = 0x6

.field protected static final MSG_SWITCH_FEATURE:I = 0x2be

.field protected static final MSG_SWITCH_ROAMING:I = 0x2bf

.field protected static final MSG_UPDATE_CALL_RAT:I = 0x2c3

.field protected static final MSG_UPDATE_PROFILE:I = 0x2c1

.field public static final MTK_VILTE_ROTATE_DELAY:Ljava/lang/String; = "persist.vendor.vt.rotate_delay"

.field public static final REPLACE_PICTURE_PATH:Landroid/net/Uri;

.field public static final SESSION_EVENT_BAD_DATA_BITRATE:I = 0xfa8

.field public static final SESSION_EVENT_CALL_ABNORMAL_END:I = 0x3f1

.field public static final SESSION_EVENT_CALL_END:I = 0x3f0

.field public static final SESSION_EVENT_CAM_CAP_CHANGED:I = 0xfa7

.field public static final SESSION_EVENT_DATA_BITRATE_RECOVER:I = 0xfa9

.field public static final SESSION_EVENT_DATA_PATH_PAUSE:I = 0xfab

.field public static final SESSION_EVENT_DATA_PATH_RESUME:I = 0xfac

.field public static final SESSION_EVENT_DATA_USAGE_CHANGED:I = 0xfa6

.field public static final SESSION_EVENT_DEFAULT_LOCAL_SIZE:I = 0xfad

.field public static final SESSION_EVENT_DOWNGRADE_TO_VOICE:I = 0xfb9

.field public static final SESSION_EVENT_ERROR_BIND_PORT:I = 0x1f47

.field public static final SESSION_EVENT_ERROR_CAMERA_CRASHED:I = 0x1f43

.field public static final SESSION_EVENT_ERROR_CAMERA_SET_IGNORED:I = 0x1f46

.field public static final SESSION_EVENT_ERROR_CODEC:I = 0x1f44

.field public static final SESSION_EVENT_ERROR_REC:I = 0x1f45

.field public static final SESSION_EVENT_ERROR_SERVER_DIED:I = 0x1f42

.field public static final SESSION_EVENT_ERROR_SERVICE:I = 0x1f41

.field public static final SESSION_EVENT_GET_CAP:I = 0xfae

.field public static final SESSION_EVENT_GET_CAP_WITH_SIM:I = 0xfb3

.field public static final SESSION_EVENT_GET_SENSOR_INFO:I = 0xfb2

.field public static final SESSION_EVENT_HANDLE_CALL_SESSION_EVT:I = 0xfa3

.field public static final SESSION_EVENT_LOCAL_BUFFER:I = 0xfaf

.field public static final SESSION_EVENT_LOCAL_BW_READY_IND:I = 0x3f5

.field public static final SESSION_EVENT_LOCAL_SIZE_CHANGED:I = 0xfa5

.field public static final SESSION_EVENT_MAX_FPS:I = 0xfbb

.field public static final SESSION_EVENT_PACKET_LOSS_RATE:I = 0xfb4

.field public static final SESSION_EVENT_PACKET_LOSS_RATE_HIGH:I = 0xfb5

.field public static final SESSION_EVENT_PACKET_LOSS_RATE_LOW:I = 0xfb7

.field public static final SESSION_EVENT_PACKET_LOSS_RATE_MEDIUM:I = 0xfb6

.field public static final SESSION_EVENT_PAUSE_IMAGE_BUFFER:I = 0xfb8

.field public static final SESSION_EVENT_PEER_CAMERA_CLOSE:I = 0x3f4

.field public static final SESSION_EVENT_PEER_CAMERA_OPEN:I = 0x3f3

.field public static final SESSION_EVENT_PEER_SIZE_CHANGED:I = 0xfa4

.field public static final SESSION_EVENT_RECEIVE_FIRSTFRAME:I = 0x3e9

.field public static final SESSION_EVENT_RECORDER_EVENT_INFO_COMPLETE:I = 0x3ef

.field public static final SESSION_EVENT_RECORDER_EVENT_INFO_NO_I_FRAME:I = 0x3ee

.field public static final SESSION_EVENT_RECORDER_EVENT_INFO_REACH_MAX_DURATION:I = 0x3ec

.field public static final SESSION_EVENT_RECORDER_EVENT_INFO_REACH_MAX_FILESIZE:I = 0x3ed

.field public static final SESSION_EVENT_RECORDER_EVENT_INFO_UNKNOWN:I = 0x3eb

.field public static final SESSION_EVENT_RECV_ENHANCE_SESSION_IND:I = 0xfaa

.field public static final SESSION_EVENT_RECV_SESSION_CONFIG_REQ:I = 0xfa1

.field public static final SESSION_EVENT_RECV_SESSION_CONFIG_RSP:I = 0xfa2

.field public static final SESSION_EVENT_RESTART_CAMERA:I = 0xfb1

.field public static final SESSION_EVENT_SCREEN_RECORDING_BUFFER:I = 0xfba

.field public static final SESSION_EVENT_SNAPSHOT_DONE:I = 0x3ea

.field public static final SESSION_EVENT_START_COUNTER:I = 0x3f2

.field public static final SESSION_EVENT_UPLINK_STATE_CHANGE:I = 0xfb0

.field public static final SESSION_EVENT_WARNING_SERVICE_NOT_READY:I = 0x2329

.field public static final SESSION_INDICATION_CANCEL:I = 0x0

.field public static final SESSION_INDICATION_EARLY_MEDIA:I = 0x1

.field public static final SESSION_MODIFICATION_OVERLAP_ACTION_APP:I = 0x0

.field public static final SESSION_MODIFICATION_OVERLAP_ACTION_BAD_BITRATE:I = 0x4

.field public static final SESSION_MODIFICATION_OVERLAP_ACTION_DATA_OFF:I = 0x1

.field public static final SESSION_MODIFICATION_OVERLAP_ACTION_DO_IMMEDIATELY:I = 0x4

.field public static final SESSION_MODIFICATION_OVERLAP_ACTION_MA_CRASH:I = 0x3

.field public static final SESSION_MODIFICATION_OVERLAP_ACTION_REJECT:I = 0x1

.field public static final SESSION_MODIFICATION_OVERLAP_ACTION_REJECT_PREVIOUS:I = 0x2

.field public static final SESSION_MODIFICATION_OVERLAP_ACTION_ROAMINGG:I = 0x2

.field public static final SESSION_MODIFICATION_OVERLAP_ACTION_SKIP:I = 0x3

.field public static final SESSION_MODIFICATION_OVERLAP_ACTION_WAIT:I = 0x0

.field public static final SESSION_MODIFY_CANCELED:I = 0xb

.field public static final SESSION_MODIFY_CANCEL_FAILED_BW:I = 0x7

.field public static final SESSION_MODIFY_CANCEL_FAILED_DISABLE:I = 0x3

.field public static final SESSION_MODIFY_CANCEL_FAILED_DOWNGRADE:I = 0x1

.field public static final SESSION_MODIFY_CANCEL_FAILED_INTERNAL:I = 0x5

.field public static final SESSION_MODIFY_CANCEL_FAILED_LOCAL:I = 0x6

.field public static final SESSION_MODIFY_CANCEL_FAILED_NORMAL:I = 0x2

.field public static final SESSION_MODIFY_CANCEL_FAILED_REMOTE:I = 0x4

.field public static final SESSION_MODIFY_CANCEL_FAILED_TIMEOUT:I = 0x8

.field public static final SESSION_MODIFY_CANCEL_OK:I = 0x0

.field public static final SESSION_MODIFY_INTERNALERROR:I = 0x2

.field public static final SESSION_MODIFY_INVALIDPARA:I = 0x8

.field public static final SESSION_MODIFY_INVIDEOACTION:I = 0xc

.field public static final SESSION_MODIFY_ISHOLD:I = 0x6

.field public static final SESSION_MODIFY_ISREINVITE:I = 0xd

.field public static final SESSION_MODIFY_LOCALREL:I = 0x5

.field public static final SESSION_MODIFY_NOACTIVESTATE:I = 0x4

.field public static final SESSION_MODIFY_NONEED:I = 0x7

.field public static final SESSION_MODIFY_OK:I = 0x0

.field public static final SESSION_MODIFY_REJECTBYREMOTE:I = 0xa

.field public static final SESSION_MODIFY_REQTIMEOUT:I = 0x9

.field public static final SESSION_MODIFY_RESULT_BW_MODIFYFAILED:I = 0x3

.field public static final SESSION_MODIFY_WRONGVIDEODIR:I = 0x1

.field static final TAG:Ljava/lang/String; = "ImsVT"

.field public static final UPLINK_STATE_PAUSE_RECORDING:I = 0x2

.field public static final UPLINK_STATE_RESUME_RECORDING:I = 0x3

.field public static final UPLINK_STATE_START_RECORDING:I = 0x1

.field public static final UPLINK_STATE_STOP_RECORDING:I = 0x0

.field public static final UPLINK_STATE_STOP_RECORDING_PREVIEW:I = 0x4

.field public static final VTP_STATE_DATA_OFF:I = 0x1

.field public static final VTP_STATE_MA_CRASH:I = 0x4

.field public static final VTP_STATE_NORMAL:I = 0x0

.field public static final VTP_STATE_ROAMING:I = 0x2

.field public static final VT_PROVIDER_INVALIDE_ID:I = -0x2710

.field protected static mDefaultId:I

.field public static mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;


# instance fields
.field private mCallConnected:Z

.field protected mCallRat:I

.field protected mCallbackHandlerThread:Landroid/os/HandlerThread;

.field protected mCameraId:Ljava/lang/String;

.field protected mCurrentProfile:Landroid/telecom/VideoProfile;

.field protected mDefaultPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

.field public mDummySource:Lcom/mediatek/ims/internal/VTDummySource;

.field protected mDuringEarlyMedia:Z

.field protected mDuringSessionRemoteRequestOperation:Z

.field protected mDuringSessionRequestOperation:Z

.field public mHasRequestCamCap:Z

.field protected mId:I

.field protected mInUsedPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

.field public mInitComplete:Z

.field protected mIsAudioCall:Z

.field protected mIsDataOff:Z

.field private mIsDestroying:Z

.field protected mIsDuringResetMode:Z

.field protected mIsMaCrashed:Z

.field protected mIsRoaming:Z

.field protected mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

.field protected final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;",
            ">;"
        }
    .end annotation
.end field

.field public mMode:I

.field private mModificationCause:I

.field protected mOrientation:I

.field protected mOrientationRunnable:Ljava/lang/Runnable;

.field private mOriginalDisplaySurface:Landroid/view/Surface;

.field private mOriginalPreviewSurface:Landroid/view/Surface;

.field protected mPauseMode:I

.field protected mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

.field protected final mProviderHandler:Landroid/os/Handler;

.field protected mProviderHandlerThread:Landroid/os/HandlerThread;

.field protected mSessionOperationFlagLock:Ljava/lang/Object;

.field private mSignalLevel:I

.field protected mSimId:I

.field public mSource:Lcom/mediatek/ims/internal/VTSource;

.field protected mState:I

.field protected mTelephonyCallback:Lcom/mediatek/ims/internal/ImsVTProvider$ImsVTProviderTelephonyCallback;

.field protected mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUplinkSource:I

.field protected mUplinkState:I

.field public mUsager:Lcom/mediatek/ims/internal/ImsVTUsageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 114
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->isVideoCallOnByPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    const-string v0, "mtk_vt_wrapper"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 272
    :cond_0
    const-string v0, "content://PATH"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->REPLACE_PICTURE_PATH:Landroid/net/Uri;

    .line 314
    const/16 v0, -0x2710

    sput v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDefaultId:I

    .line 317
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getInstance()Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 441
    invoke-direct {p0}, Landroid/telephony/ims/ImsVideoCallProvider;-><init>()V

    .line 311
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    .line 312
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSimId:I

    .line 313
    iput v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    .line 315
    iput-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mInitComplete:Z

    .line 323
    iput-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDuringSessionRequestOperation:Z

    .line 324
    iput-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDuringSessionRemoteRequestOperation:Z

    .line 325
    iput-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDuringEarlyMedia:Z

    .line 326
    iput-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsDuringResetMode:Z

    .line 327
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSessionOperationFlagLock:Ljava/lang/Object;

    .line 331
    iput-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsMaCrashed:Z

    .line 334
    iput-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsRoaming:Z

    .line 337
    iput-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsDataOff:Z

    .line 340
    iput-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsAudioCall:Z

    .line 343
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    .line 344
    new-instance v3, Lcom/mediatek/ims/internal/VTDummySource;

    invoke-direct {v3}, Lcom/mediatek/ims/internal/VTDummySource;-><init>()V

    iput-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDummySource:Lcom/mediatek/ims/internal/VTDummySource;

    .line 345
    iput-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCameraId:Ljava/lang/String;

    .line 346
    iput-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mHasRequestCamCap:Z

    .line 349
    iput v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mUplinkState:I

    .line 350
    iput v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPauseMode:I

    .line 352
    new-instance v3, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    const/16 v4, 0x140

    const/16 v5, 0xf0

    invoke-direct {v3, v4, v5}, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;-><init>(II)V

    iput-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    .line 353
    new-instance v3, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    invoke-direct {v3, v4, v5}, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;-><init>(II)V

    iput-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDefaultPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    .line 354
    new-instance v3, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    invoke-direct {v3, v4, v5}, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;-><init>(II)V

    iput-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mInUsedPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    .line 356
    iput-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCallConnected:Z

    .line 362
    iput-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCurrentProfile:Landroid/telecom/VideoProfile;

    .line 365
    iput-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsDestroying:Z

    .line 368
    iput v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mUplinkSource:I

    .line 370
    iput-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mOriginalDisplaySurface:Landroid/view/Surface;

    .line 371
    iput-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mOriginalPreviewSurface:Landroid/view/Surface;

    .line 375
    iput v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSignalLevel:I

    .line 377
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v4, 0x8

    const v5, 0x3f666666    # 0.9f

    invoke-direct {v3, v4, v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v3}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mListeners:Ljava/util/Set;

    .line 433
    iput v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mOrientation:I

    .line 434
    iput-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mOrientationRunnable:Ljava/lang/Runnable;

    .line 436
    iput v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCallRat:I

    .line 438
    iput v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mModificationCause:I

    .line 442
    const-string v0, "ImsVT"

    const-string v2, "New ImsVTProvider without id"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const/16 v0, -0x2710

    iput v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    .line 444
    iput-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mInitComplete:Z

    .line 446
    iput v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    .line 448
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget-object v0, v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/ims/ext/OpImsServiceCustomizationUtils;->getOpFactory(Landroid/content/Context;)Lcom/mediatek/ims/ext/OpImsServiceCustomizationFactoryBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/ext/OpImsServiceCustomizationFactoryBase;->makeImsVTUsageManager()Lcom/mediatek/ims/internal/ImsVTUsageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mUsager:Lcom/mediatek/ims/internal/ImsVTUsageManager;

    .line 450
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ProviderHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandlerThread:Landroid/os/HandlerThread;

    .line 451
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 453
    new-instance v0, Lcom/mediatek/ims/internal/ImsVTProvider$1;

    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider$1;-><init>(Lcom/mediatek/ims/internal/ImsVTProvider;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    .line 571
    new-instance v0, Lcom/mediatek/ims/internal/ImsVTProvider$2;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/internal/ImsVTProvider$2;-><init>(Lcom/mediatek/ims/internal/ImsVTProvider;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mOrientationRunnable:Ljava/lang/Runnable;

    .line 580
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CallbackHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCallbackHandlerThread:Landroid/os/HandlerThread;

    .line 581
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 582
    return-void
.end method

.method private IsCallModeChanged(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)Z
    .locals 2
    .param p1, "fromProfile"    # Landroid/telecom/VideoProfile;
    .param p2, "toProfile"    # Landroid/telecom/VideoProfile;

    .line 2195
    const/4 v0, 0x0

    .line 2196
    .local v0, "callModeChanged":Z
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    invoke-static {v1}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2197
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    invoke-static {v1}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2198
    const/4 v0, 0x1

    goto :goto_0

    .line 2199
    :cond_0
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    invoke-static {v1}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2200
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    invoke-static {v1}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2201
    const/4 v0, 0x1

    .line 2203
    :cond_1
    :goto_0
    return v0
.end method

.method static synthetic access$000(Lcom/mediatek/ims/internal/ImsVTProvider;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/ImsVTProvider;

    .line 110
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSignalLevel:I

    return v0
.end method

.method static synthetic access$002(Lcom/mediatek/ims/internal/ImsVTProvider;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/ImsVTProvider;
    .param p1, "x1"    # I

    .line 110
    iput p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSignalLevel:I

    return p1
.end method

.method private isOP07()Z
    .locals 2

    .line 2224
    sget-object v0, Lcom/mediatek/ims/OperatorUtils$OPID;->OP07:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSimId:I

    invoke-static {v0, v1}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v0

    return v0
.end method

.method private isOP08()Z
    .locals 2

    .line 2220
    sget-object v0, Lcom/mediatek/ims/OperatorUtils$OPID;->OP08:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSimId:I

    invoke-static {v0, v1}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v0

    return v0
.end method

.method public static native nFinalization(I)I
.end method

.method public static native nInitRefVTP()I
.end method

.method public static native nInitialization(II)I
.end method

.method public static native nRequestPeerConfig(ILjava/lang/String;)I
.end method

.method public static native nResponseLocalConfig(ILjava/lang/String;)I
.end method

.method public static native nSetCamera(II)I
.end method

.method public static native nSetCameraParameters(I[Lcom/mediatek/ims/internal/VTSource$Resolution;)I
.end method

.method public static native nSetCameraParametersOnly([Lcom/mediatek/ims/internal/VTSource$Resolution;)I
.end method

.method public static native nSetCameraParametersWithSim(II[Lcom/mediatek/ims/internal/VTSource$Resolution;)I
.end method

.method public static native nSetDeviceOrientation(II)I
.end method

.method public static native nSetDisplaySurface(ILandroid/view/Surface;)I
.end method

.method public static native nSetPreviewSurface(ILandroid/view/Surface;)I
.end method

.method public static native nSetSignalLevel(II)I
.end method

.method public static native nSetUIMode(II)I
.end method

.method public static native nSnapshot(IILjava/lang/String;)I
.end method

.method public static native nStartRecording(IILjava/lang/String;J)I
.end method

.method public static native nStopRecording(I)I
.end method

.method public static native nSwitchFeature(III)I
.end method

.method public static native nTagSocketWithUid(I)I
.end method

.method public static native nTriggerGetOperatorId()I
.end method

.method public static native nUpdateNetworkTable(ZILjava/lang/String;)I
.end method

.method public static postEventFromNative(IIIIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 16
    .param p0, "msg"    # I
    .param p1, "id"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I
    .param p5, "obj1"    # Ljava/lang/Object;
    .param p6, "obj2"    # Ljava/lang/Object;
    .param p7, "obj3"    # Ljava/lang/Object;

    .line 2248
    move/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->recordGet(I)Lcom/mediatek/ims/internal/ImsVTProvider;

    move-result-object v5

    .line 2250
    .local v5, "vp":Lcom/mediatek/ims/internal/ImsVTProvider;
    const-string v6, "ImsVT"

    if-nez v5, :cond_0

    const/16 v0, 0x1f42

    if-eq v1, v0, :cond_0

    const/16 v0, 0xfae

    if-eq v1, v0, :cond_0

    const/16 v0, 0xfb3

    if-eq v1, v0, :cond_0

    .line 2254
    const-string v0, "Error: post event to Call is already release or has happen error before!"

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2255
    return-void

    .line 2258
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[ID="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "] [postEventFromNative]: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2259
    const/4 v0, 0x3

    const/high16 v8, 0x10000

    const-string v9, "Error: sensor resolution = NULL"

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/16 v12, 0x2c4

    const/4 v13, 0x0

    const/4 v14, 0x2

    const/4 v15, 0x1

    sparse-switch v1, :sswitch_data_0

    .line 3032
    const-string v0, "postEventFromNative : msg = UNKNOWB"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 2962
    :sswitch_0
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_ERROR_BIND_PORT"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2964
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleMaErrorProcess()V

    .line 2965
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2966
    goto/16 :goto_e

    .line 2981
    :sswitch_1
    const-string v0, "postEventFromNative : msg = MSG_ERROR_CAMERA_SET_IGNORED"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2983
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2984
    goto/16 :goto_e

    .line 2975
    :sswitch_2
    const-string v0, "postEventFromNative : msg = MSG_ERROR_REC"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2977
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2978
    goto/16 :goto_e

    .line 2969
    :sswitch_3
    const-string v0, "postEventFromNative : msg = MSG_ERROR_CODEC"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2971
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2972
    goto/16 :goto_e

    .line 2955
    :sswitch_4
    const-string v0, "postEventFromNative : msg = MSG_ERROR_CAMERA_CRASHED"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2957
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleMaErrorProcess()V

    .line 2958
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2959
    goto/16 :goto_e

    .line 2943
    :sswitch_5
    const-string v0, "postEventFromNative : msg = MSG_ERROR_SERVER_DIED"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2945
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->releaseVTSourceAll()V

    .line 2947
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->quitAllThread()V

    .line 2948
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->recordRemoveAll()V

    .line 2949
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProvider;->updateDefaultId()V

    .line 2951
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getInstance()Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->reInitRefVTP()V

    .line 2952
    goto/16 :goto_e

    .line 2931
    :sswitch_6
    const-string v0, "postEventFromNative : msg = MSG_ERROR_SERVICE"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2934
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/VTSource;->release()V

    .line 2936
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->recordRemove(I)V

    .line 2937
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProvider;->updateDefaultId()V

    .line 2939
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2940
    goto/16 :goto_e

    .line 3029
    :sswitch_7
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/mediatek/ims/internal/VTSource;->setMaxFps(I)V

    .line 3030
    goto/16 :goto_e

    .line 3026
    :sswitch_8
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v0

    move-object/from16 v6, p7

    check-cast v6, Landroid/view/Surface;

    invoke-virtual {v0, v6}, Lcom/mediatek/ims/internal/VTSource;->setScreenRecordingSurface(Landroid/view/Surface;)V

    .line 3027
    goto/16 :goto_e

    .line 3022
    :sswitch_9
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v0

    move-object/from16 v6, p7

    check-cast v6, Landroid/view/Surface;

    invoke-virtual {v0, v6}, Lcom/mediatek/ims/internal/VTSource;->setPauseImageSurface(Landroid/view/Surface;)V

    .line 3023
    goto/16 :goto_e

    .line 2690
    :sswitch_a
    const-string v7, "postEventFromNative : msg = SESSION_EVENT_PACKET_LOSS_RATE"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2695
    move/from16 v7, p2

    .line 2696
    .local v7, "lossRate":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Packet loss rate = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2698
    const/4 v8, 0x5

    if-ltz v7, :cond_1

    if-gt v7, v8, :cond_1

    .line 2699
    const-string v0, "Packet loss rate low, notify: 4023"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2702
    invoke-virtual {v5, v15}, Lcom/mediatek/ims/internal/ImsVTProvider;->changeVideoQuality(I)V

    goto/16 :goto_e

    .line 2705
    :cond_1
    const/16 v9, 0xf

    if-ge v8, v7, :cond_2

    if-gt v7, v9, :cond_2

    .line 2707
    const-string v0, "Packet loss rate medium, notify: 4022"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2709
    invoke-virtual {v5, v14}, Lcom/mediatek/ims/internal/ImsVTProvider;->changeVideoQuality(I)V

    goto/16 :goto_e

    .line 2712
    :cond_2
    if-ge v9, v7, :cond_3

    .line 2713
    const-string v8, "Packet loss rate high, notify: 4021"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2716
    invoke-virtual {v5, v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->changeVideoQuality(I)V

    goto/16 :goto_e

    .line 2720
    :cond_3
    const-string v0, "Packet loss rate incorrect"

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2733
    goto/16 :goto_e

    .line 2761
    .end local v7    # "lossRate":I
    :sswitch_b
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_GET_CAP_WITH_SIM"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2764
    sget-boolean v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->sIsNoCameraMode:Z

    if-eqz v0, :cond_4

    .line 2765
    invoke-static {}, Lcom/mediatek/ims/internal/VTDummySource;->getAllCameraResolutions()[Lcom/mediatek/ims/internal/VTSource$Resolution;

    move-result-object v0

    move-object v7, v0

    .local v0, "cams_info":[Lcom/mediatek/ims/internal/VTSource$Resolution;
    goto :goto_0

    .line 2767
    .end local v0    # "cams_info":[Lcom/mediatek/ims/internal/VTSource$Resolution;
    :cond_4
    invoke-static {}, Lcom/mediatek/ims/internal/VTSource;->getAllCameraResolutions()[Lcom/mediatek/ims/internal/VTSource$Resolution;

    move-result-object v0

    move-object v7, v0

    .line 2769
    .local v7, "cams_info":[Lcom/mediatek/ims/internal/VTSource$Resolution;
    :goto_0
    if-nez v7, :cond_5

    .line 2770
    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2773
    :cond_5
    const/4 v8, 0x0

    .line 2774
    .local v8, "major_sim_id":I
    const/4 v0, 0x1

    .line 2776
    .local v0, "ImsCount":I
    sget-object v9, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget-object v9, v9, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/mediatek/ims/ImsService;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/ImsService;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mediatek/ims/ImsService;->getModemMultiImsCount()I

    move-result v9

    .line 2778
    .end local v0    # "ImsCount":I
    .local v9, "ImsCount":I
    const-wide/16 v10, 0xc8

    if-gt v9, v15, :cond_7

    .line 2780
    :goto_1
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getImsExtCallUtil()Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;->isCapabilitySwitching()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2782
    :try_start_0
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2784
    :goto_2
    goto :goto_1

    .line 2783
    :catch_0
    move-exception v0

    goto :goto_2

    .line 2787
    :cond_6
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->getMainCapabilityPhoneId()I

    move-result v0

    move v8, v0

    .end local v8    # "major_sim_id":I
    .local v0, "major_sim_id":I
    goto :goto_3

    .line 2790
    .end local v0    # "major_sim_id":I
    .restart local v8    # "major_sim_id":I
    :cond_7
    move/from16 v0, p1

    move v8, v0

    .line 2793
    :goto_3
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v0, v8}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->waitSimStateStable(I)V

    .line 2795
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v0, v8}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getSimCardState(I)I

    move-result v0

    const/16 v12, 0xb

    if-eq v0, v12, :cond_f

    .line 2800
    const/4 v0, 0x0

    .line 2801
    .local v0, "subMgr":Landroid/telephony/SubscriptionManager;
    const/4 v12, 0x0

    .line 2802
    .local v12, "mySubInfo":Landroid/telephony/SubscriptionInfo;
    const-string v13, ""

    .line 2803
    .local v13, "iccid":Ljava/lang/String;
    const/4 v14, 0x0

    move v15, v14

    move-object v14, v13

    move-object v13, v12

    move-object v12, v0

    .line 2806
    .end local v0    # "subMgr":Landroid/telephony/SubscriptionManager;
    .local v12, "subMgr":Landroid/telephony/SubscriptionManager;
    .local v13, "mySubInfo":Landroid/telephony/SubscriptionInfo;
    .local v14, "iccid":Ljava/lang/String;
    .local v15, "count":I
    :goto_4
    if-lez v15, :cond_8

    .line 2808
    :try_start_1
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2810
    goto :goto_5

    .line 2809
    :catch_1
    move-exception v0

    .line 2813
    :cond_8
    :goto_5
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget-object v0, v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v12

    .line 2814
    if-nez v12, :cond_9

    .line 2815
    const-string v0, "Cannot get SubscriptionManager"

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2816
    add-int/lit8 v15, v15, 0x1

    .line 2817
    goto :goto_6

    .line 2820
    :cond_9
    add-int/lit8 v0, v8, 0x1

    invoke-virtual {v12, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 2821
    .end local v13    # "mySubInfo":Landroid/telephony/SubscriptionInfo;
    .local v0, "mySubInfo":Landroid/telephony/SubscriptionInfo;
    if-nez v0, :cond_a

    .line 2822
    const-string v13, "Cannot get mySubInfo"

    invoke-static {v6, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2823
    add-int/lit8 v15, v15, 0x1

    .line 2824
    move-object v13, v0

    goto :goto_6

    .line 2827
    :cond_a
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v13

    .line 2828
    .end local v14    # "iccid":Ljava/lang/String;
    .local v13, "iccid":Ljava/lang/String;
    add-int/lit8 v15, v15, 0x1

    move-object v14, v13

    move-object v13, v0

    .line 2830
    .end local v0    # "mySubInfo":Landroid/telephony/SubscriptionInfo;
    .local v13, "mySubInfo":Landroid/telephony/SubscriptionInfo;
    .restart local v14    # "iccid":Ljava/lang/String;
    :goto_6
    const-string v0, ""

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v10, 0x32

    if-eqz v0, :cond_c

    if-lt v15, v10, :cond_b

    goto :goto_7

    :cond_b
    const-wide/16 v10, 0xc8

    goto :goto_4

    .line 2832
    :cond_c
    :goto_7
    const-string v0, "N/A"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    if-lt v15, v10, :cond_d

    goto :goto_8

    .line 2836
    :cond_d
    const-string v0, "SIM state READY"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 2833
    :cond_e
    :goto_8
    const-string v0, "SIM state ABSENT"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2834
    const/4 v8, -0x1

    .line 2840
    .end local v12    # "subMgr":Landroid/telephony/SubscriptionManager;
    .end local v13    # "mySubInfo":Landroid/telephony/SubscriptionInfo;
    .end local v14    # "iccid":Ljava/lang/String;
    .end local v15    # "count":I
    :cond_f
    :goto_9
    invoke-static {v2, v8, v7}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSetCameraParametersWithSim(II[Lcom/mediatek/ims/internal/VTSource$Resolution;)I

    .line 2841
    goto/16 :goto_e

    .line 3005
    .end local v7    # "cams_info":[Lcom/mediatek/ims/internal/VTSource$Resolution;
    .end local v8    # "major_sim_id":I
    .end local v9    # "ImsCount":I
    :sswitch_c
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_GET_SENSOR_INFO"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3007
    invoke-static {}, Lcom/mediatek/ims/internal/VTSource;->getAllCameraResolutions()[Lcom/mediatek/ims/internal/VTSource$Resolution;

    move-result-object v0

    .line 3008
    .local v0, "cams_info":[Lcom/mediatek/ims/internal/VTSource$Resolution;
    if-nez v0, :cond_10

    .line 3009
    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3012
    :cond_10
    invoke-static {v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSetCameraParametersOnly([Lcom/mediatek/ims/internal/VTSource$Resolution;)I

    .line 3013
    goto/16 :goto_e

    .line 3017
    .end local v0    # "cams_info":[Lcom/mediatek/ims/internal/VTSource$Resolution;
    :sswitch_d
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_RESTART_CAMERA"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3018
    const-string v0, "don\'t restart camera anymore"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3019
    goto/16 :goto_e

    .line 2872
    :sswitch_e
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_UPLINK_STATE_CHANGE"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2873
    iput v3, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mUplinkState:I

    .line 2875
    packed-switch v3, :pswitch_data_0

    .line 2915
    goto/16 :goto_e

    .line 2908
    :pswitch_0
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2909
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/VTSource;->stopRecordingAndPreview()V

    .line 2911
    :cond_11
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->clearPauseMode()V

    .line 2912
    goto/16 :goto_e

    .line 2899
    :pswitch_1
    invoke-virtual {v5, v4}, Lcom/mediatek/ims/internal/ImsVTProvider;->resetPauseMode(I)V

    .line 2902
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->hasPauseMode()Z

    move-result v0

    if-nez v0, :cond_34

    .line 2903
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/VTSource;->startRecording()V

    goto/16 :goto_e

    .line 2890
    :pswitch_2
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->hasPauseMode()Z

    move-result v0

    if-nez v0, :cond_12

    .line 2892
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/mediatek/ims/internal/VTSource;->stopRecording(Z)V

    .line 2895
    :cond_12
    invoke-virtual {v5, v4}, Lcom/mediatek/ims/internal/ImsVTProvider;->setPauseMode(I)V

    .line 2896
    goto/16 :goto_e

    .line 2887
    :pswitch_3
    goto/16 :goto_e

    .line 2877
    :pswitch_4
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2880
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/mediatek/ims/internal/VTSource;->stopRecording(Z)V

    .line 2881
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/mediatek/ims/internal/VTSource;->setRecordSurface(Landroid/view/Surface;)V

    .line 2883
    :cond_13
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->clearPauseMode()V

    .line 2884
    goto/16 :goto_e

    .line 2862
    :sswitch_f
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_LOCAL_BUFFER"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2865
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/mediatek/ims/internal/VTSource;->stopRecording(Z)V

    .line 2866
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v0

    move-object/from16 v6, p7

    check-cast v6, Landroid/view/Surface;

    invoke-virtual {v0, v6}, Lcom/mediatek/ims/internal/VTSource;->setRecordSurface(Landroid/view/Surface;)V

    .line 2867
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/VTSource;->startRecording()V

    .line 2868
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->clearPauseMode()V

    .line 2869
    goto/16 :goto_e

    .line 2845
    :sswitch_10
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_GET_CAP"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2848
    sget-boolean v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->sIsNoCameraMode:Z

    if-eqz v0, :cond_14

    .line 2849
    invoke-static {}, Lcom/mediatek/ims/internal/VTDummySource;->getAllCameraResolutions()[Lcom/mediatek/ims/internal/VTSource$Resolution;

    move-result-object v0

    .restart local v0    # "cams_info":[Lcom/mediatek/ims/internal/VTSource$Resolution;
    goto :goto_a

    .line 2851
    .end local v0    # "cams_info":[Lcom/mediatek/ims/internal/VTSource$Resolution;
    :cond_14
    invoke-static {}, Lcom/mediatek/ims/internal/VTSource;->getAllCameraResolutions()[Lcom/mediatek/ims/internal/VTSource$Resolution;

    move-result-object v0

    .line 2853
    .restart local v0    # "cams_info":[Lcom/mediatek/ims/internal/VTSource$Resolution;
    :goto_a
    if-nez v0, :cond_15

    .line 2854
    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2857
    :cond_15
    invoke-static {v2, v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSetCameraParameters(I[Lcom/mediatek/ims/internal/VTSource$Resolution;)I

    .line 2858
    goto/16 :goto_e

    .line 2921
    .end local v0    # "cams_info":[Lcom/mediatek/ims/internal/VTSource$Resolution;
    :sswitch_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "postEventFromNative : msg = SESSION_EVENT_DEFAULT_LOCAL_SIZE, W="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", H="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2922
    iget-object v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mDefaultPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iput v3, v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->width:I

    .line 2923
    iget-object v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mDefaultPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iput v4, v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->height:I

    .line 2924
    iget-object v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iput v3, v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->width:I

    .line 2925
    iget-object v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iput v4, v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->height:I

    .line 2926
    iget-object v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v0, v3, v4}, Lcom/mediatek/ims/internal/VTSource;->setPauseImageSize(II)V

    .line 2927
    iget-object v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v0, v3, v4}, Lcom/mediatek/ims/internal/VTSource;->setScreenShareSize(II)V

    .line 2928
    goto/16 :goto_e

    .line 2997
    :sswitch_12
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_DATA_PATH_RESUME"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2999
    sget-boolean v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->sIsNoCameraMode:Z

    if-nez v0, :cond_34

    .line 3000
    invoke-virtual {v5, v14}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    goto/16 :goto_e

    .line 2988
    :sswitch_13
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_DATA_PATH_PAUSE"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2990
    sget-boolean v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->sIsNoCameraMode:Z

    if-nez v0, :cond_34

    .line 2991
    invoke-virtual {v5, v15}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    goto/16 :goto_e

    .line 2476
    :sswitch_14
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_RECV_ENHANCE_SESSION_IND"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2478
    if-nez v3, :cond_16

    .line 2479
    const-string v0, "SESSION_INDICATION_CANCEL"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2480
    invoke-virtual {v5, v13}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDuringSessionRemoteRequest(Z)V

    .line 2482
    iget-object v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    invoke-virtual {v0, v12}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_c

    .line 2484
    :cond_16
    if-ne v15, v3, :cond_19

    .line 2485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SESSION_INDICATION_EARLY_MEDIA, early media="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2487
    if-nez v4, :cond_17

    .line 2488
    iput-boolean v13, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mDuringEarlyMedia:Z

    goto :goto_b

    .line 2489
    :cond_17
    if-ne v4, v15, :cond_18

    .line 2490
    iput-boolean v15, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mDuringEarlyMedia:Z

    .line 2495
    :cond_18
    :goto_b
    return-void

    .line 2498
    :cond_19
    :goto_c
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    move-object/from16 v7, p5

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->unPackToVdoProfile(Ljava/lang/String;)Landroid/telecom/VideoProfile;

    move-result-object v0

    .line 2500
    .local v0, "IndicationProfile":Landroid/telecom/VideoProfile;
    sget-object v7, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v7}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getImsOemCallUtil()Lcom/mediatek/ims/plugin/ImsCallOemPlugin;

    move-result-object v7

    invoke-interface {v7}, Lcom/mediatek/ims/plugin/ImsCallOemPlugin;->handleCancelUpgradeAsResponse()Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 2501
    const-string v7, "postEventFromNative, change cancel request to response for GMS dialer"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2502
    invoke-virtual {v5, v10, v0, v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->receiveSessionModifyResponseInternal(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    goto/16 :goto_e

    .line 2507
    :cond_1a
    invoke-virtual {v5, v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    .line 2510
    goto/16 :goto_e

    .line 2736
    .end local v0    # "IndicationProfile":Landroid/telecom/VideoProfile;
    :sswitch_15
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_BAD_DATA_BITRATE"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2737
    iget-boolean v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mCallConnected:Z

    if-nez v0, :cond_1b

    .line 2738
    const-string v0, "call not connected, ignore"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2739
    goto/16 :goto_e

    .line 2741
    :cond_1b
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getImsOemCallUtil()Lcom/mediatek/ims/plugin/ImsCallOemPlugin;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/ims/plugin/ImsCallOemPlugin;->needNotifyBadBitRate()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2742
    sget-boolean v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->sIsNoCameraMode:Z

    if-nez v0, :cond_34

    .line 2743
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    goto/16 :goto_e

    .line 2746
    :cond_1c
    const-string v0, "handle BAD_DATA_BITRATE in FW"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2748
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getInstance()Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    move-result-object v0

    const-string v7, "mtk_key_vt_downgrade_in_bad_bitrate"

    iget v8, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mSimId:I

    invoke-virtual {v0, v7, v8}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getBooleanFromCarrierConfig(Ljava/lang/String;I)Z

    move-result v0

    .line 2751
    .local v0, "isNeedDowngrade":Z
    if-eqz v0, :cond_1d

    .line 2752
    const-string v7, "downgrade if bad bitrate"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2753
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/mediatek/ims/internal/ImsVTProvider;->setModificationCause(I)V

    .line 2754
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleBadBitrateProcess()V

    .line 2758
    .end local v0    # "isNeedDowngrade":Z
    :cond_1d
    goto/16 :goto_e

    .line 2686
    :sswitch_16
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_DATA_USAGE_CHANGED"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2687
    goto/16 :goto_e

    .line 2652
    :sswitch_17
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_LOCAL_SIZE_CHANGED"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2654
    iget v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mUplinkSource:I

    if-ne v0, v15, :cond_1e

    .line 2655
    const-string v0, "setPauseImageSize in pause image mode only, don\'t change preview size"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2656
    iget-object v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v0, v3, v4}, Lcom/mediatek/ims/internal/VTSource;->setPauseImageSize(II)V

    .line 2657
    goto/16 :goto_e

    .line 2660
    :cond_1e
    iget-object v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v0, v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->width:I

    if-ne v0, v3, :cond_1f

    iget-object v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v0, v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->height:I

    if-ne v0, v4, :cond_1f

    .line 2661
    const-string v0, "local size no change => Do not notify!"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2662
    goto/16 :goto_e

    .line 2665
    :cond_1f
    iget-object v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iput v3, v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->width:I

    .line 2666
    iget-object v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iput v4, v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->height:I

    .line 2667
    iget-object v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v0, v3, v4}, Lcom/mediatek/ims/internal/VTSource;->setScreenShareSize(II)V

    .line 2669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Update preview size, w="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v7, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v7, v7, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->width:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", h="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v7, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v7, v7, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->height:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2671
    iget-boolean v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mCallConnected:Z

    if-nez v0, :cond_20

    .line 2672
    const-string v0, "not connected, only update preview size, not reconfig camera session"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2673
    goto/16 :goto_e

    .line 2677
    :cond_20
    iget-boolean v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mHasRequestCamCap:Z

    if-ne v15, v0, :cond_21

    .line 2678
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->onRequestCameraCapabilities()V

    goto/16 :goto_e

    .line 2680
    :cond_21
    const-string v0, "Not request yet, just only update default w/h"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2682
    goto/16 :goto_e

    .line 2647
    :sswitch_18
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_PEER_SIZE_CHANGED"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2648
    invoke-virtual {v5, v3, v4}, Lcom/mediatek/ims/internal/ImsVTProvider;->changePeerDimensions(II)V

    .line 2649
    goto/16 :goto_e

    .line 2641
    :sswitch_19
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_HANDLE_CALL_SESSION_EVT"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2643
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2644
    goto/16 :goto_e

    .line 2513
    :sswitch_1a
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_RECV_SESSION_CONFIG_RSP"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2515
    iget v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    if-ne v0, v8, :cond_22

    .line 2516
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_RECV_SESSION_CONFIG_RSP (call end)"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2517
    return-void

    .line 2520
    :cond_22
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    move-object/from16 v8, p6

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v0, v8}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->unPackToVdoProfile(Ljava/lang/String;)Landroid/telecom/VideoProfile;

    move-result-object v0

    .line 2521
    .local v0, "responseProfile":Landroid/telecom/VideoProfile;
    const/4 v8, 0x2

    .line 2524
    .local v8, "state":I
    invoke-virtual {v0}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v9

    sget-object v11, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v11}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getImsExtCallUtil()Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;

    move-result-object v11

    invoke-virtual {v11}, Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;->getUpgradeCancelFlag()I

    move-result v11

    if-ne v9, v11, :cond_23

    .line 2526
    const/16 v6, 0xc8

    .line 2528
    .end local v8    # "state":I
    .local v6, "state":I
    packed-switch v3, :pswitch_data_1

    .line 2541
    :pswitch_5
    const/16 v6, 0xc8

    .line 2543
    goto/16 :goto_d

    .line 2537
    :pswitch_6
    const/16 v6, 0xca

    .line 2539
    goto/16 :goto_d

    .line 2533
    :pswitch_7
    const/16 v6, 0xc9

    .line 2535
    goto/16 :goto_d

    .line 2530
    :pswitch_8
    const/4 v6, 0x1

    .line 2531
    goto/16 :goto_d

    .line 2548
    .end local v6    # "state":I
    .restart local v8    # "state":I
    :cond_23
    packed-switch v3, :pswitch_data_2

    .line 2627
    :pswitch_9
    const/4 v6, 0x2

    .end local v8    # "state":I
    .restart local v6    # "state":I
    goto/16 :goto_d

    .line 2622
    .end local v6    # "state":I
    .restart local v8    # "state":I
    :pswitch_a
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->reSendLastSessionModify()V

    .line 2623
    return-void

    .line 2610
    :pswitch_b
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->isDuringNotAppDowngrade()Z

    move-result v6

    if-eqz v6, :cond_24

    .line 2611
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->reSendLastSessionModify()V

    .line 2612
    return-void

    .line 2615
    :cond_24
    const/4 v6, 0x5

    .line 2617
    .end local v8    # "state":I
    .restart local v6    # "state":I
    goto/16 :goto_d

    .line 2605
    .end local v6    # "state":I
    .restart local v8    # "state":I
    :pswitch_c
    const/4 v6, 0x4

    .line 2606
    .end local v8    # "state":I
    .restart local v6    # "state":I
    goto/16 :goto_d

    .line 2602
    .end local v6    # "state":I
    .restart local v8    # "state":I
    :pswitch_d
    const/4 v6, 0x3

    .line 2603
    .end local v8    # "state":I
    .restart local v6    # "state":I
    goto/16 :goto_d

    .line 2599
    .end local v6    # "state":I
    .restart local v8    # "state":I
    :pswitch_e
    const/4 v6, 0x1

    .line 2600
    .end local v8    # "state":I
    .restart local v6    # "state":I
    goto/16 :goto_d

    .line 2581
    .end local v6    # "state":I
    .restart local v8    # "state":I
    :pswitch_f
    iget-boolean v7, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mDuringEarlyMedia:Z

    if-eqz v7, :cond_25

    .line 2582
    const-string v7, "postEventFromNative : msg = SESSION_EVENT_RECV_SESSION_CONFIG_RSP (during early media)"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2584
    const/4 v6, 0x1

    .line 2585
    .end local v8    # "state":I
    .restart local v6    # "state":I
    sget-object v7, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    move-object/from16 v8, p5

    check-cast v8, Ljava/lang/String;

    .line 2587
    invoke-virtual {v7, v8}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->unPackToVdoProfile(Ljava/lang/String;)Landroid/telecom/VideoProfile;

    move-result-object v7

    sget-object v8, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    move-object/from16 v9, p5

    check-cast v9, Ljava/lang/String;

    .line 2588
    invoke-virtual {v8, v9}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->unPackToVdoProfile(Ljava/lang/String;)Landroid/telecom/VideoProfile;

    move-result-object v8

    .line 2585
    invoke-virtual {v5, v6, v7, v8}, Lcom/mediatek/ims/internal/ImsVTProvider;->receiveSessionModifyResponseInternal(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 2589
    return-void

    .line 2593
    .end local v6    # "state":I
    .restart local v8    # "state":I
    :cond_25
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->reSendLastSessionModify()V

    .line 2594
    return-void

    .line 2551
    :pswitch_10
    invoke-virtual {v0}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v9

    invoke-static {v9}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v9

    if-eqz v9, :cond_29

    .line 2552
    iget v9, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    invoke-virtual {v5, v9, v10}, Lcom/mediatek/ims/internal/ImsVTProvider;->hasState(II)Z

    move-result v9

    if-eqz v9, :cond_26

    .line 2554
    new-instance v9, Landroid/telecom/VideoProfile;

    invoke-direct {v9, v13, v14}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 2555
    .local v9, "audioProfile":Landroid/telecom/VideoProfile;
    iput-object v9, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    .line 2556
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->reSendLastSessionModify()V

    .line 2558
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getId()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "] [reSendLastSessionModify] by have MA CRASH:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v10, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2559
    return-void

    .line 2560
    .end local v9    # "audioProfile":Landroid/telecom/VideoProfile;
    :cond_26
    sget-object v9, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget v10, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mSimId:I

    invoke-virtual {v9, v10}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->isVideoCallOn(I)Z

    move-result v9

    if-eqz v9, :cond_27

    iget v9, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    .line 2561
    invoke-virtual {v5, v9, v15}, Lcom/mediatek/ims/internal/ImsVTProvider;->hasState(II)Z

    move-result v9

    if-nez v9, :cond_27

    iget v9, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    .line 2562
    invoke-virtual {v5, v9, v14}, Lcom/mediatek/ims/internal/ImsVTProvider;->hasState(II)Z

    move-result v9

    if-eqz v9, :cond_29

    .line 2565
    :cond_27
    iget v9, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mCallRat:I

    if-ne v9, v15, :cond_28

    sget-object v9, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget v10, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mSimId:I

    invoke-virtual {v9, v10}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->isViWifiOn(I)Z

    move-result v9

    if-nez v9, :cond_29

    .line 2566
    :cond_28
    new-instance v9, Landroid/telecom/VideoProfile;

    invoke-direct {v9, v13, v14}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 2567
    .restart local v9    # "audioProfile":Landroid/telecom/VideoProfile;
    iput-object v9, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    .line 2568
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->reSendLastSessionModify()V

    .line 2570
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getId()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "] [reSendLastSessionModify] not viwifi call, downgrade by state:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v10, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2571
    return-void

    .line 2576
    .end local v9    # "audioProfile":Landroid/telecom/VideoProfile;
    :cond_29
    const/4 v6, 0x1

    .line 2577
    .end local v8    # "state":I
    .restart local v6    # "state":I
    nop

    .line 2632
    :goto_d
    sget-object v7, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    move-object/from16 v8, p5

    check-cast v8, Ljava/lang/String;

    .line 2634
    invoke-virtual {v7, v8}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->unPackToVdoProfile(Ljava/lang/String;)Landroid/telecom/VideoProfile;

    move-result-object v7

    sget-object v8, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    move-object/from16 v9, p6

    check-cast v9, Ljava/lang/String;

    .line 2635
    invoke-virtual {v8, v9}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->unPackToVdoProfile(Ljava/lang/String;)Landroid/telecom/VideoProfile;

    move-result-object v8

    .line 2632
    invoke-virtual {v5, v6, v7, v8}, Lcom/mediatek/ims/internal/ImsVTProvider;->receiveSessionModifyResponseInternal(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 2637
    goto/16 :goto_e

    .line 2355
    .end local v0    # "responseProfile":Landroid/telecom/VideoProfile;
    .end local v6    # "state":I
    :sswitch_1b
    const-string v8, "postEventFromNative : msg = SESSION_EVENT_RECV_SESSION_CONFIG_REQ"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2358
    new-instance v8, Landroid/telecom/VideoProfile;

    invoke-direct {v8, v0, v14}, Landroid/telecom/VideoProfile;-><init>(II)V

    move-object v0, v8

    .line 2359
    .local v0, "currentProfile":Landroid/telecom/VideoProfile;
    sget-object v8, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    move-object/from16 v9, p5

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->unPackToVdoProfile(Ljava/lang/String;)Landroid/telecom/VideoProfile;

    move-result-object v8

    .line 2361
    .local v8, "requestProfile":Landroid/telecom/VideoProfile;
    invoke-virtual {v8}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v9

    invoke-static {v9}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v9

    if-eqz v9, :cond_2d

    .line 2362
    iget v9, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    invoke-virtual {v5, v9, v10}, Lcom/mediatek/ims/internal/ImsVTProvider;->hasState(II)Z

    move-result v9

    if-eqz v9, :cond_2a

    .line 2364
    new-instance v9, Landroid/telecom/VideoProfile;

    invoke-direct {v9, v13, v14}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 2365
    .restart local v9    # "audioProfile":Landroid/telecom/VideoProfile;
    iput-object v9, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    .line 2366
    invoke-virtual {v5, v15}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDuringSessionRemoteRequest(Z)V

    .line 2367
    iget-object v10, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {v5, v10}, Lcom/mediatek/ims/internal/ImsVTProvider;->onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    .line 2368
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getId()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "] [onSendSessionModifyResponse] Reject it by have MA CRASH:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v10, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2369
    return-void

    .line 2371
    .end local v9    # "audioProfile":Landroid/telecom/VideoProfile;
    :cond_2a
    sget-object v9, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget v10, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mSimId:I

    invoke-virtual {v9, v10}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->isVideoCallOn(I)Z

    move-result v9

    if-eqz v9, :cond_2b

    iget v9, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    .line 2372
    invoke-virtual {v5, v9, v15}, Lcom/mediatek/ims/internal/ImsVTProvider;->hasState(II)Z

    move-result v9

    if-nez v9, :cond_2b

    iget v9, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    .line 2373
    invoke-virtual {v5, v9, v14}, Lcom/mediatek/ims/internal/ImsVTProvider;->hasState(II)Z

    move-result v9

    if-eqz v9, :cond_2d

    .line 2376
    :cond_2b
    iget v9, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mCallRat:I

    if-ne v9, v15, :cond_2c

    sget-object v9, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget v10, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mSimId:I

    invoke-virtual {v9, v10}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->isViWifiOn(I)Z

    move-result v9

    if-nez v9, :cond_2d

    .line 2377
    :cond_2c
    new-instance v9, Landroid/telecom/VideoProfile;

    invoke-direct {v9, v13, v14}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 2378
    .restart local v9    # "audioProfile":Landroid/telecom/VideoProfile;
    iput-object v9, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    .line 2380
    invoke-virtual {v5, v9}, Lcom/mediatek/ims/internal/ImsVTProvider;->onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    .line 2381
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getId()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "] [onSendSessionModifyResponse] Reject it by state:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v10, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2382
    return-void

    .line 2387
    .end local v9    # "audioProfile":Landroid/telecom/VideoProfile;
    :cond_2d
    invoke-virtual {v5, v13, v0, v8}, Lcom/mediatek/ims/internal/ImsVTProvider;->doSessionModifyDecision(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)I

    move-result v9

    .line 2389
    .local v9, "decision":I
    if-ne v15, v9, :cond_2e

    .line 2391
    invoke-virtual {v5, v15}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDuringSessionRemoteRequest(Z)V

    .line 2392
    iget-object v6, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {v5, v6}, Lcom/mediatek/ims/internal/ImsVTProvider;->onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    goto/16 :goto_e

    .line 2394
    :cond_2e
    if-nez v9, :cond_33

    .line 2396
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitSessionOperationComplete()V

    .line 2398
    invoke-virtual {v8}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v6

    const-wide/16 v10, 0x2ee0

    const-wide/16 v13, 0x4e20

    packed-switch v6, :pswitch_data_3

    .line 2459
    invoke-virtual {v5, v15}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDuringSessionRemoteRequest(Z)V

    .line 2460
    invoke-virtual {v5, v8}, Lcom/mediatek/ims/internal/ImsVTProvider;->onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    .line 2461
    goto/16 :goto_e

    .line 2443
    :pswitch_11
    invoke-virtual {v5, v15}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDuringSessionRemoteRequest(Z)V

    .line 2444
    invoke-virtual {v5, v8}, Lcom/mediatek/ims/internal/ImsVTProvider;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    .line 2447
    invoke-direct {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->isOP08()Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 2448
    iget-object v6, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    invoke-virtual {v6, v12, v13, v14}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_e

    .line 2451
    :cond_2f
    invoke-direct {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->isOP07()Z

    move-result v6

    if-eqz v6, :cond_34

    .line 2452
    iget-object v6, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    invoke-virtual {v6, v12, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_e

    .line 2427
    :pswitch_12
    invoke-virtual {v5, v15}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDuringSessionRemoteRequest(Z)V

    .line 2428
    invoke-virtual {v5, v8}, Lcom/mediatek/ims/internal/ImsVTProvider;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    .line 2431
    invoke-direct {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->isOP08()Z

    move-result v6

    if-eqz v6, :cond_30

    .line 2432
    iget-object v6, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    invoke-virtual {v6, v12, v13, v14}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_e

    .line 2435
    :cond_30
    invoke-direct {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->isOP07()Z

    move-result v6

    if-eqz v6, :cond_34

    .line 2436
    iget-object v6, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    invoke-virtual {v6, v12, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_e

    .line 2406
    :pswitch_13
    iget-object v6, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mCurrentProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {v6}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v6

    invoke-static {v6}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 2407
    invoke-virtual {v5, v15}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDuringSessionRemoteRequest(Z)V

    .line 2408
    invoke-virtual {v5, v8}, Lcom/mediatek/ims/internal/ImsVTProvider;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    .line 2411
    invoke-direct {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->isOP08()Z

    move-result v6

    if-eqz v6, :cond_31

    .line 2412
    iget-object v6, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    invoke-virtual {v6, v12, v13, v14}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_e

    .line 2415
    :cond_31
    invoke-direct {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->isOP07()Z

    move-result v6

    if-eqz v6, :cond_34

    .line 2416
    iget-object v6, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    invoke-virtual {v6, v12, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_e

    .line 2421
    :cond_32
    invoke-virtual {v5, v15}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDuringSessionRemoteRequest(Z)V

    .line 2422
    invoke-virtual {v5, v8}, Lcom/mediatek/ims/internal/ImsVTProvider;->onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    .line 2424
    goto/16 :goto_e

    .line 2400
    :pswitch_14
    invoke-virtual {v5, v15}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDuringSessionRemoteRequest(Z)V

    .line 2401
    invoke-virtual {v5, v8}, Lcom/mediatek/ims/internal/ImsVTProvider;->onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    .line 2402
    const/16 v6, 0xfb9

    invoke-virtual {v5, v6}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2403
    goto/16 :goto_e

    .line 2467
    :cond_33
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getId()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "] [onSendSessionModifyResponse] should not in this case"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2468
    invoke-virtual {v5, v15}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDuringSessionRemoteRequest(Z)V

    .line 2469
    invoke-virtual {v5, v8}, Lcom/mediatek/ims/internal/ImsVTProvider;->onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    .line 2472
    goto/16 :goto_e

    .line 2349
    .end local v0    # "currentProfile":Landroid/telecom/VideoProfile;
    .end local v8    # "requestProfile":Landroid/telecom/VideoProfile;
    .end local v9    # "decision":I
    :sswitch_1c
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_LOCAL_BW_READY_IND"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2351
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2352
    goto/16 :goto_e

    .line 2343
    :sswitch_1d
    const-string v0, "postEventFromNative : msg = MSG_PEER_CAMERA_CLOSE"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2345
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2346
    goto/16 :goto_e

    .line 2337
    :sswitch_1e
    const-string v0, "postEventFromNative : msg = MSG_PEER_CAMERA_OPEN"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2339
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2340
    goto/16 :goto_e

    .line 2331
    :sswitch_1f
    const-string v0, "postEventFromNative : msg = MSG_START_COUNTER"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2333
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2334
    goto :goto_e

    .line 2308
    :sswitch_20
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_CALL_END / SESSION_EVENT_CALL_ABNORMAL_END"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2312
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/VTSource;->release()V

    .line 2314
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->recordRemove(I)V

    .line 2315
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProvider;->updateDefaultId()V

    .line 2317
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2319
    iget-object v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 2321
    iput v8, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    .line 2323
    iget-object v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v6, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mTelephonyCallback:Lcom/mediatek/ims/internal/ImsVTProvider$ImsVTProviderTelephonyCallback;

    invoke-virtual {v0, v6}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    .line 2324
    iput-object v11, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 2325
    iput-object v11, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mTelephonyCallback:Lcom/mediatek/ims/internal/ImsVTProvider$ImsVTProviderTelephonyCallback;

    .line 2326
    iget-object v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mCallbackHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 2328
    goto :goto_e

    .line 2300
    :sswitch_21
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_RECORDER_EVENT_INFO_COMPLETE"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2303
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2304
    goto :goto_e

    .line 2293
    :sswitch_22
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_RECORDER_EVENT_INFO_NO_I_FRAME"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2296
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2297
    goto :goto_e

    .line 2286
    :sswitch_23
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_RECORDER_EVENT_INFO_REACH_MAX_FILESIZE"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2289
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2290
    goto :goto_e

    .line 2279
    :sswitch_24
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_RECORDER_EVENT_INFO_REACH_MAX_DURATION"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2282
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2283
    goto :goto_e

    .line 2273
    :sswitch_25
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_RECORDER_EVENT_INFO_UNKNOWN"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2275
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2276
    goto :goto_e

    .line 2267
    :sswitch_26
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_SNAPSHOT_DONE"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2269
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2270
    goto :goto_e

    .line 2261
    :sswitch_27
    const-string v0, "postEventFromNative : msg = SESSION_EVENT_RECEIVE_FIRSTFRAME"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2263
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2264
    nop

    .line 3035
    :cond_34
    :goto_e
    return-void

    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_27
        0x3ea -> :sswitch_26
        0x3eb -> :sswitch_25
        0x3ec -> :sswitch_24
        0x3ed -> :sswitch_23
        0x3ee -> :sswitch_22
        0x3ef -> :sswitch_21
        0x3f0 -> :sswitch_20
        0x3f1 -> :sswitch_20
        0x3f2 -> :sswitch_1f
        0x3f3 -> :sswitch_1e
        0x3f4 -> :sswitch_1d
        0x3f5 -> :sswitch_1c
        0xfa1 -> :sswitch_1b
        0xfa2 -> :sswitch_1a
        0xfa3 -> :sswitch_19
        0xfa4 -> :sswitch_18
        0xfa5 -> :sswitch_17
        0xfa6 -> :sswitch_16
        0xfa8 -> :sswitch_15
        0xfaa -> :sswitch_14
        0xfab -> :sswitch_13
        0xfac -> :sswitch_12
        0xfad -> :sswitch_11
        0xfae -> :sswitch_10
        0xfaf -> :sswitch_f
        0xfb0 -> :sswitch_e
        0xfb1 -> :sswitch_d
        0xfb2 -> :sswitch_c
        0xfb3 -> :sswitch_b
        0xfb4 -> :sswitch_a
        0xfb8 -> :sswitch_9
        0xfba -> :sswitch_8
        0xfbb -> :sswitch_7
        0x1f41 -> :sswitch_6
        0x1f42 -> :sswitch_5
        0x1f43 -> :sswitch_4
        0x1f44 -> :sswitch_3
        0x1f45 -> :sswitch_2
        0x1f46 -> :sswitch_1
        0x1f47 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_10
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_f
        :pswitch_9
        :pswitch_9
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_9
        :pswitch_a
        :pswitch_a
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
    .end packed-switch
.end method

.method protected static updateDefaultId()V
    .locals 2

    .line 862
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    sget v1, Lcom/mediatek/ims/internal/ImsVTProvider;->mDefaultId:I

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->recordContain(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 863
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->recordSize()I

    move-result v0

    if-eqz v0, :cond_0

    .line 864
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->recordPopId()I

    move-result v0

    sput v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDefaultId:I

    .line 865
    return-void

    .line 867
    :cond_0
    const/16 v0, -0x2710

    sput v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDefaultId:I

    .line 869
    :cond_1
    return-void
.end method


# virtual methods
.method public addVideoProviderStateListener(Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;

    .line 2119
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2120
    return-void
.end method

.method public clearPauseMode()V
    .locals 2

    .line 656
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPauseMode:I

    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearPauseMod mPauseMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPauseMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    return-void
.end method

.method public doSessionModifyDecision(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)I
    .locals 6
    .param p1, "new_action"    # I
    .param p2, "fromProfile"    # Landroid/telecom/VideoProfile;
    .param p3, "toProfile"    # Landroid/telecom/VideoProfile;

    .line 1865
    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "ImsVT"

    if-nez p1, :cond_7

    .line 1867
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getRoaming()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1869
    const-string v0, "doSessionModifyDecision : new_action : from APP, reject due to during roaming"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1871
    return v1

    .line 1873
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getMaCrash()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1875
    const-string v0, "doSessionModifyDecision : new_action : from APP, reject due to during MA crash"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    return v1

    .line 1879
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDataOff()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1881
    invoke-virtual {p3}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    invoke-static {v0}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1883
    const-string v0, "doSessionModifyDecision : new_action : from APP, reject due to during data off and not downgrade"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    return v1

    .line 1888
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->isDuringSessionModify()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1890
    const/4 v2, 0x0

    .line 1892
    .local v2, "isCancelUpgrade":Z
    invoke-virtual {p3}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v4

    sget-object v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getImsExtCallUtil()Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;->getUpgradeCancelFlag()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 1894
    const-string v4, "doSessionModifyDecision : new_action : from APP, isCancelUpgrade is true"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    const/4 v2, 0x1

    .line 1898
    :cond_3
    const-string v4, "doSessionModifyDecision : new_action : from APP, reject due to during App action"

    if-eqz v2, :cond_5

    .line 1900
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDuringSessionRemoteRequest()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1901
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    return v1

    .line 1905
    :cond_4
    const-string v1, "doSessionModifyDecision : new_action : from APP, send cancel request"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    return v0

    .line 1912
    :cond_5
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1913
    return v1

    .line 1917
    .end local v2    # "isCancelUpgrade":Z
    :cond_6
    const-string v0, "doSessionModifyDecision : new_action : from APP, wait"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    return v2

    .line 1921
    :cond_7
    const/4 v4, 0x2

    const/4 v5, 0x3

    if-ne v1, p1, :cond_d

    .line 1923
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1925
    const-string v0, "doSessionModifyDecision : new_action : Data off, skip due to during roaming"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1927
    return v5

    .line 1929
    :cond_8
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getMaCrash()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1931
    const-string v0, "doSessionModifyDecision : new_action : Data off, skip due to during MA crash"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    return v5

    .line 1935
    :cond_9
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDataOff()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1937
    const-string v0, "doSessionModifyDecision : new_action : Data off, reject due to data off"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1939
    return v5

    .line 1941
    :cond_a
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->isDuringSessionModify()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1943
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDuringSessionRequest()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1945
    const-string v0, "doSessionModifyDecision : new_action : Data off, wait for App action"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    return v2

    .line 1949
    :cond_b
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDuringSessionRemoteRequest()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1951
    const-string v0, "doSessionModifyDecision : new_action : Data off, reject previous due to data off downgrade"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1953
    return v4

    .line 1957
    :cond_c
    const-string v0, "doSessionModifyDecision : new_action : Data off, wait"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1959
    return v2

    .line 1961
    :cond_d
    if-ne v4, p1, :cond_13

    .line 1963
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1965
    const-string v0, "doSessionModifyDecision : new_action : Roaming, skip due to during roaming"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    return v5

    .line 1969
    :cond_e
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getMaCrash()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1971
    const-string v0, "doSessionModifyDecision : new_action : Roaming, skip due to during MA crash"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    return v5

    .line 1975
    :cond_f
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDataOff()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1977
    const-string v0, "doSessionModifyDecision : new_action : Roaming, skip due to during data off"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1979
    return v5

    .line 1981
    :cond_10
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->isDuringSessionModify()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1983
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDuringSessionRequest()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1985
    const-string v0, "doSessionModifyDecision : new_action : Roaming, wait for App action"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1987
    return v2

    .line 1989
    :cond_11
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDuringSessionRemoteRequest()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1991
    const-string v0, "doSessionModifyDecision : new_action : Roaming, reject previous due to roaming downgrade"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1993
    return v4

    .line 1997
    :cond_12
    const-string v0, "doSessionModifyDecision : new_action : Roaming, wait"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1999
    return v2

    .line 2001
    :cond_13
    if-ne v5, p1, :cond_19

    .line 2003
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2005
    const-string v0, "doSessionModifyDecision : new_action : MA crash, skip due to during roaming"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2007
    return v5

    .line 2009
    :cond_14
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getMaCrash()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2011
    const-string v0, "doSessionModifyDecision : new_action : MA crash, skip due to during MA crash"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    return v5

    .line 2015
    :cond_15
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDataOff()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2017
    const-string v0, "doSessionModifyDecision : new_action : MA crash, skip due to during data off"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2019
    return v5

    .line 2021
    :cond_16
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->isDuringSessionModify()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2023
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDuringSessionRequest()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2025
    const-string v0, "doSessionModifyDecision : new_action : MA crash, wait for App action"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    return v2

    .line 2029
    :cond_17
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDuringSessionRemoteRequest()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2031
    const-string v0, "doSessionModifyDecision : new_action : MA crash, reject previous due to MA crash"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2033
    return v4

    .line 2037
    :cond_18
    const-string v0, "doSessionModifyDecision : new_action : MA crash, wait"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    return v2

    .line 2041
    :cond_19
    if-ne v0, p1, :cond_1f

    .line 2043
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2045
    const-string v0, "doSessionModifyDecision : new_action : Bad bitrate, skip due to during roaming"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    return v5

    .line 2049
    :cond_1a
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getMaCrash()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2051
    const-string v0, "doSessionModifyDecision : new_action : Bad bitrate, skip due to during MA crash"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2053
    return v5

    .line 2055
    :cond_1b
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDataOff()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2057
    const-string v0, "doSessionModifyDecision : new_action : Bad bitrate, skip due to data off"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2059
    return v5

    .line 2061
    :cond_1c
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->isDuringSessionModify()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2063
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDuringSessionRequest()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2065
    const-string v0, "doSessionModifyDecision : new_action : Bad bitrate, wait for App action"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2067
    return v2

    .line 2069
    :cond_1d
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDuringSessionRemoteRequest()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2071
    const-string v0, "doSessionModifyDecision : new_action : Bad bitrate, reject previous due to data off downgrade"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2073
    return v4

    .line 2077
    :cond_1e
    const-string v0, "doSessionModifyDecision : new_action : Bad bitrate, wait"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2079
    return v2

    .line 2083
    :cond_1f
    const-string v0, "doSessionModifyDecision : new_action : wait"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2085
    return v2
.end method

.method public getDataOff()Z
    .locals 1

    .line 711
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsDataOff:Z

    return v0
.end method

.method public getDuringSessionRemoteRequest()Z
    .locals 1

    .line 689
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDuringSessionRemoteRequestOperation:Z

    return v0
.end method

.method public getDuringSessionRequest()Z
    .locals 1

    .line 677
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDuringSessionRequestOperation:Z

    return v0
.end method

.method public getId()I
    .locals 1

    .line 608
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    return v0
.end method

.method public getIsAudioCall()Z
    .locals 1

    .line 733
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsAudioCall:Z

    return v0
.end method

.method public getMaCrash()Z
    .locals 1

    .line 700
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsMaCrashed:Z

    return v0
.end method

.method public getModificationCause()I
    .locals 1

    .line 3039
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mModificationCause:I

    return v0
.end method

.method public getRoaming()Z
    .locals 1

    .line 722
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsRoaming:Z

    return v0
.end method

.method protected getSessionModifyAction(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)I
    .locals 3
    .param p1, "fromProfile"    # Landroid/telecom/VideoProfile;
    .param p2, "toProfile"    # Landroid/telecom/VideoProfile;

    .line 2182
    const/4 v0, -0x1

    .line 2186
    .local v0, "result":I
    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    invoke-static {v1}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2187
    const/4 v0, 0x1

    goto :goto_0

    .line 2188
    :cond_0
    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    if-ne v1, v2, :cond_1

    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    invoke-static {v1}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2189
    const/4 v0, 0x0

    .line 2191
    :cond_1
    :goto_0
    return v0
.end method

.method public getSimId()I
    .locals 1

    .line 619
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSimId:I

    return v0
.end method

.method public getSource()Lcom/mediatek/ims/internal/VTSource;
    .locals 2

    .line 842
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    if-eqz v0, :cond_0

    .line 843
    return-object v0

    .line 845
    :cond_0
    const-string v0, "ImsVT"

    const-string v1, "Get dummy vtsource"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDummySource:Lcom/mediatek/ims/internal/VTDummySource;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 623
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    return v0
.end method

.method public handleBadBitrateProcess()V
    .locals 9

    .line 787
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] [handleBadBitrateProcess] start"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v3, 0x10000

    if-ne v0, v3, :cond_0

    .line 790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [handleBadBitrateProcess] call end"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    return-void

    .line 794
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCurrentProfile:Landroid/telecom/VideoProfile;

    .line 795
    .local v0, "currentProfile":Landroid/telecom/VideoProfile;
    new-instance v3, Landroid/telecom/VideoProfile;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 797
    .local v3, "reqestProfile":Landroid/telecom/VideoProfile;
    const/4 v6, 0x4

    invoke-virtual {p0, v6, v0, v3}, Lcom/mediatek/ims/internal/ImsVTProvider;->doSessionModifyDecision(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)I

    move-result v6

    .line 799
    .local v6, "decision":I
    if-ne v5, v6, :cond_1

    .line 802
    new-instance v7, Landroid/telecom/VideoProfile;

    invoke-direct {v7, v4, v5}, Landroid/telecom/VideoProfile;-><init>(II)V

    move-object v5, v7

    .line 804
    .local v5, "audioResponseProfile":Landroid/telecom/VideoProfile;
    iget v7, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sget-object v8, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    .line 805
    invoke-virtual {v8, v5}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v8

    .line 804
    invoke-static {v7, v8}, Lcom/mediatek/ims/internal/ImsVTProvider;->nResponseLocalConfig(ILjava/lang/String;)I

    .line 806
    invoke-virtual {p0, v4}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDuringSessionRemoteRequest(Z)V

    .line 808
    iput-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    .line 809
    iget v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sget-object v7, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v7, v3}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/mediatek/ims/internal/ImsVTProvider;->nRequestPeerConfig(ILjava/lang/String;)I

    .line 811
    .end local v5    # "audioResponseProfile":Landroid/telecom/VideoProfile;
    goto :goto_0

    :cond_1
    const/4 v4, 0x3

    if-ne v4, v6, :cond_2

    .line 813
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] [handleBadBitrateProcess] skip"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 815
    :cond_2
    if-nez v6, :cond_3

    .line 817
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitSessionOperationComplete()V

    .line 819
    iput-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    .line 820
    iget v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sget-object v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v5, v3}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->nRequestPeerConfig(ILjava/lang/String;)I

    .line 823
    :cond_3
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "] [handleBadBitrateProcess] Finish"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    return-void
.end method

.method public handleMaErrorProcess()V
    .locals 10

    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] [handleMaErrorProcess] start"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v3, 0x10000

    if-ne v0, v3, :cond_0

    .line 741
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [handleMaErrorProcess] call end"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    return-void

    .line 746
    :cond_0
    new-instance v0, Landroid/telecom/VideoProfile;

    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 747
    .local v0, "currentProfile":Landroid/telecom/VideoProfile;
    new-instance v5, Landroid/telecom/VideoProfile;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v4}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 749
    .local v5, "reqestProfile":Landroid/telecom/VideoProfile;
    invoke-virtual {p0, v3, v0, v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->doSessionModifyDecision(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)I

    move-result v7

    .line 751
    .local v7, "decision":I
    const/4 v8, 0x1

    if-ne v8, v7, :cond_1

    .line 753
    const-string v3, "[handleMaErrorProcess] : should not in this case"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 755
    :cond_1
    if-ne v4, v7, :cond_2

    .line 758
    new-instance v3, Landroid/telecom/VideoProfile;

    invoke-direct {v3, v6, v4}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 760
    .local v3, "audioResponseProfile":Landroid/telecom/VideoProfile;
    iget v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sget-object v9, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    .line 761
    invoke-virtual {v9, v3}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v9

    .line 760
    invoke-static {v4, v9}, Lcom/mediatek/ims/internal/ImsVTProvider;->nResponseLocalConfig(ILjava/lang/String;)I

    .line 762
    invoke-virtual {p0, v6}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDuringSessionRemoteRequest(Z)V

    .line 764
    invoke-virtual {p0, v8}, Lcom/mediatek/ims/internal/ImsVTProvider;->setMaCrash(Z)V

    .line 765
    iput-object v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    .line 766
    iget v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sget-object v6, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v6, v5}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/mediatek/ims/internal/ImsVTProvider;->nRequestPeerConfig(ILjava/lang/String;)I

    .line 768
    .end local v3    # "audioResponseProfile":Landroid/telecom/VideoProfile;
    goto :goto_0

    :cond_2
    if-ne v3, v7, :cond_3

    .line 770
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] [sendSessionModifyRequestByImsInternal] skip"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 772
    :cond_3
    if-nez v7, :cond_4

    .line 774
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitSessionOperationComplete()V

    .line 776
    invoke-virtual {p0, v8}, Lcom/mediatek/ims/internal/ImsVTProvider;->setMaCrash(Z)V

    .line 777
    iput-object v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    .line 778
    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sget-object v4, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v4, v5}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/ims/internal/ImsVTProvider;->nRequestPeerConfig(ILjava/lang/String;)I

    .line 781
    :cond_4
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] [handleMaErrorProcess] Finish"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    return-void
.end method

.method public hasPauseMode()Z
    .locals 1

    .line 665
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPauseMode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPauseMode(I)Z
    .locals 1
    .param p1, "mode"    # I

    .line 661
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPauseMode:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasState(II)Z
    .locals 1
    .param p1, "state"    # I
    .param p2, "vtp_state"    # I

    .line 632
    and-int v0, p1, p2

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isDuringNotAppDowngrade()Z
    .locals 1

    .line 2172
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getMaCrash()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2173
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDataOff()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {v0}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    invoke-static {v0}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2174
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2177
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 2175
    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method protected isDuringSessionModify()Z
    .locals 1

    .line 2164
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDuringSessionRequest()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDuringSessionRemoteRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2167
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 2165
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public notifyResume()V
    .locals 0

    .line 1831
    return-void
.end method

.method public notifyVideoPauseStateChange()V
    .locals 7

    .line 2128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] [notifyVideoPauseStateChange] Start"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2130
    const/4 v0, 0x0

    .line 2132
    .local v0, "isVideoStatePause":Z
    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    if-nez v3, :cond_0

    .line 2133
    const/4 v0, 0x0

    goto :goto_0

    .line 2134
    :cond_0
    const/4 v4, 0x1

    if-ne v4, v3, :cond_1

    .line 2135
    const/4 v0, 0x1

    .line 2138
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;

    .line 2139
    .local v4, "listener":Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;
    if-eqz v4, :cond_2

    .line 2140
    invoke-interface {v4, v0}, Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;->onReceivePauseState(Z)V

    .line 2141
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] [notifyVideoPauseStateChange] isVideoStatePause: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2143
    .end local v4    # "listener":Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;
    :cond_2
    goto :goto_1

    .line 2145
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] [notifyVideoPauseStateChange] Finish"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2147
    return-void
.end method

.method public notifyWifiUsageChange(J)V
    .locals 4
    .param p1, "usage"    # J

    .line 2151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] [notifyWifiUsageChange] Start, usage : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2153
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;

    .line 2154
    .local v3, "listener":Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;
    if-eqz v3, :cond_0

    .line 2155
    invoke-interface {v3, p1, p2}, Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;->onReceiveWiFiUsage(J)V

    .line 2157
    .end local v3    # "listener":Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;
    :cond_0
    goto :goto_0

    .line 2159
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [notifyWifiUsageChange] Finish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2161
    return-void
.end method

.method public onError()V
    .locals 3

    .line 2091
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] [onError] Start"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2093
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleMaErrorProcess()V

    .line 2094
    const/16 v0, 0x1f43

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2096
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [onError] Finish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    return-void
.end method

.method public onOpenFail()V
    .locals 3

    .line 2111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] [onOpenFail] Start"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2113
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [onOpenFail] Finish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2116
    return-void
.end method

.method public onOpenSuccess()V
    .locals 3

    .line 2102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] [onOpenSuccess] Start"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2104
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [onOpenSuccess] Finish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2107
    return-void
.end method

.method public onReceiveCallSessionEvent(I)V
    .locals 3
    .param p1, "event"    # I

    .line 1007
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1008
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1009
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/16 v2, 0x2c2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1010
    return-void
.end method

.method public onRequestCallDataUsage()V
    .locals 2

    .line 957
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_0

    .line 958
    return-void

    .line 960
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 961
    return-void
.end method

.method public onRequestCameraCapabilities()V
    .locals 2

    .line 950
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_0

    .line 951
    return-void

    .line 953
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 954
    return-void
.end method

.method public onResetWrapper()V
    .locals 2

    .line 991
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/16 v1, 0x2c0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 992
    return-void
.end method

.method public onSendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 3
    .param p1, "fromProfile"    # Landroid/telecom/VideoProfile;
    .param p2, "toProfile"    # Landroid/telecom/VideoProfile;

    .line 930
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_0

    .line 931
    return-void

    .line 933
    :cond_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 934
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 935
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 936
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 937
    return-void
.end method

.method public onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    .locals 2
    .param p1, "responseProfile"    # Landroid/telecom/VideoProfile;

    .line 940
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_0

    .line 941
    return-void

    .line 944
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/16 v1, 0x2c4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 945
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 946
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 947
    return-void
.end method

.method public onSetCamera(Ljava/lang/String;)V
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 895
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_0

    .line 896
    return-void

    .line 898
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 899
    return-void
.end method

.method public onSetDeviceOrientation(I)V
    .locals 3
    .param p1, "rotation"    # I

    .line 916
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_0

    .line 917
    return-void

    .line 919
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 920
    return-void
.end method

.method public onSetDisplaySurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .line 909
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_0

    .line 910
    return-void

    .line 912
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 913
    return-void
.end method

.method public onSetPauseImage(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 964
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_0

    .line 965
    return-void

    .line 967
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 968
    return-void
.end method

.method public onSetPreviewSurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .line 902
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_0

    .line 903
    return-void

    .line 905
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 906
    return-void
.end method

.method public onSetUIMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 971
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/16 v1, 0x2bd

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 972
    const/high16 v0, 0x10000

    if-ne p1, v0, :cond_0

    .line 973
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsDestroying:Z

    .line 975
    :cond_0
    return-void
.end method

.method public onSetZoom(F)V
    .locals 3
    .param p1, "value"    # F

    .line 923
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_0

    .line 924
    return-void

    .line 926
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 927
    return-void
.end method

.method public onSwitchFeature(IZ)V
    .locals 3
    .param p1, "feature"    # I
    .param p2, "on"    # Z

    .line 978
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 979
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 980
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 981
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/16 v2, 0x2be

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 982
    return-void
.end method

.method public onSwitchRoaming(Z)V
    .locals 3
    .param p1, "isRoaming"    # Z

    .line 985
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 986
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 987
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/16 v2, 0x2bf

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 988
    return-void
.end method

.method public onUpdateCallRat(I)V
    .locals 3
    .param p1, "rat"    # I

    .line 1001
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1002
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1003
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/16 v2, 0x2c3

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1004
    return-void
.end method

.method public onUpdateProfile(I)V
    .locals 3
    .param p1, "state"    # I

    .line 995
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 996
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 997
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/16 v2, 0x2c1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 998
    return-void
.end method

.method public quitThread()V
    .locals 1

    .line 838
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 839
    return-void
.end method

.method protected reSendLastSessionModify()V
    .locals 3

    .line 2208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [reSendLastSessionModify] Profile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {v1}, Landroid/telecom/VideoProfile;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2211
    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2213
    goto :goto_0

    .line 2212
    :catch_0
    move-exception v0

    .line 2215
    :goto_0
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sget-object v1, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->nRequestPeerConfig(ILjava/lang/String;)I

    .line 2216
    return-void
.end method

.method public receiveCallSessionEventInternal(I)V
    .locals 5
    .param p1, "event"    # I

    .line 1804
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] [receiveCallSessionEventInternal] Start, event="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1806
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 1808
    :sswitch_0
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->notifyResume()V

    .line 1809
    goto :goto_0

    .line 1812
    :sswitch_1
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mInUsedPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v0, v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->width:I

    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v3, v3, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->width:I

    const/4 v4, 0x1

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mInUsedPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v0, v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->height:I

    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v3, v3, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->height:I

    if-eq v0, v3, :cond_1

    .line 1814
    :cond_0
    const-string v0, "mCallConnected, and preview size changed, notify camera cap with new size"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1815
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mHasRequestCamCap:Z

    if-ne v4, v0, :cond_1

    .line 1816
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->onRequestCameraCapabilities()V

    .line 1819
    :cond_1
    iput-boolean v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCallConnected:Z

    .line 1820
    nop

    .line 1826
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [receiveCallSessionEventInternal] Finish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_1
        0x84 -> :sswitch_0
    .end sparse-switch
.end method

.method public receiveSessionModifyResponseInternal(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 5
    .param p1, "status"    # I
    .param p2, "requestedProfile"    # Landroid/telecom/VideoProfile;
    .param p3, "responseProfile"    # Landroid/telecom/VideoProfile;

    .line 1397
    invoke-virtual {p0, p1, p2, p3}, Lcom/mediatek/ims/internal/ImsVTProvider;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 1399
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getMaCrash()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1400
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->setState(I)V

    .line 1401
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->setMaCrash(Z)V

    .line 1404
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDataOff()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 1405
    invoke-virtual {p3}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    .line 1406
    .local v0, "responseState":I
    invoke-static {v0}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    sget-object v3, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSimId:I

    .line 1407
    invoke-virtual {v3, v4}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->isVideoCallOn(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1408
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->setState(I)V

    goto :goto_0

    .line 1410
    :cond_2
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->resetState(I)V

    .line 1412
    :goto_0
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDataOff(Z)V

    .line 1415
    .end local v0    # "responseState":I
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1416
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->setState(I)V

    .line 1417
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->setRoaming(Z)V

    .line 1420
    :cond_4
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDuringSessionRequest()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1421
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDuringSessionRequest(Z)V

    .line 1425
    :cond_5
    if-ne p1, v2, :cond_7

    .line 1426
    invoke-virtual {p3}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    invoke-static {v0}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1427
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->setIsAudioCall(Z)V

    goto :goto_1

    .line 1429
    :cond_6
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->setIsAudioCall(Z)V

    .line 1432
    :cond_7
    :goto_1
    return-void
.end method

.method public rejectSessionModifyInternal(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "requestedProfile"    # Landroid/telecom/VideoProfile;
    .param p3, "responseProfile"    # Landroid/telecom/VideoProfile;

    .line 1436
    invoke-virtual {p0, p1, p2, p3}, Lcom/mediatek/ims/internal/ImsVTProvider;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 1437
    return-void
.end method

.method public removeVideoProviderStateListener(Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;

    .line 2123
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2124
    return-void
.end method

.method public requestCallDataUsageInternal()V
    .locals 3

    .line 1494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [onRequestCallDataUsage] Start"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitInitComplete()V

    .line 1498
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_0

    .line 1499
    return-void

    .line 1502
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mUsager:Lcom/mediatek/ims/internal/ImsVTUsageManager;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTUsageManager;->requestCallDataUsage()Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    move-result-object v0

    .line 1504
    .local v0, "usage":Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;
    if-eqz v0, :cond_1

    .line 1506
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getWifiUsage(I)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->notifyWifiUsageChange(J)V

    .line 1508
    :cond_1
    return-void
.end method

.method public requestCameraCapabilitiesInternal()V
    .locals 9

    .line 1441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] [onRequestCameraCapabilities] Start"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitInitComplete()V

    .line 1445
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v3, 0x10000

    if-ne v0, v3, :cond_0

    .line 1446
    return-void

    .line 1449
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCameraId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1450
    const-string v0, "onRequestCameraCapabilities: not set camera yet"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    return-void

    .line 1454
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1455
    .local v0, "zoom_max":F
    const/4 v3, 0x0

    .line 1457
    .local v3, "zoom_support":Z
    iget-object v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v4}, Lcom/mediatek/ims/internal/VTSource;->getCameraCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v4

    .line 1458
    .local v4, "camera_cs":Landroid/hardware/camera2/CameraCharacteristics;
    if-nez v4, :cond_2

    .line 1459
    const-string v5, "onRequestCameraCapabilities: camera_cs null! Use default value."

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1461
    :cond_2
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1463
    :goto_0
    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v0, v5

    const/4 v6, 0x1

    if-lez v5, :cond_3

    move v5, v6

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    move v3, v5

    .line 1465
    iget-boolean v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCallConnected:Z

    if-nez v5, :cond_4

    .line 1466
    iget-object v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mInUsedPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget-object v7, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDefaultPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v7, v7, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->width:I

    iput v7, v5, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->width:I

    .line 1467
    iget-object v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mInUsedPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget-object v7, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDefaultPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v7, v7, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->height:I

    iput v7, v5, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->height:I

    goto :goto_2

    .line 1469
    :cond_4
    iget-object v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mInUsedPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v5, v5, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->width:I

    iget-object v7, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v7, v7, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->width:I

    if-ne v5, v7, :cond_5

    iget-object v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mInUsedPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v5, v5, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->height:I

    iget-object v7, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v7, v7, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->height:I

    if-eq v5, v7, :cond_6

    .line 1471
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "] preview size changed, need update preview surface"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    iget-object v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v5, v6}, Lcom/mediatek/ims/internal/VTSource;->setForceUpdateSurface(Z)V

    .line 1474
    :cond_6
    iget-object v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mInUsedPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget-object v7, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v7, v7, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->width:I

    iput v7, v5, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->width:I

    .line 1475
    iget-object v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mInUsedPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget-object v7, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v7, v7, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->height:I

    iput v7, v5, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->height:I

    .line 1478
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "] [onRequestCameraCapabilities] Width: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mInUsedPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v7, v7, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->width:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " Height: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mInUsedPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v7, v7, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->height:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " zoom_support: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " zoom_max: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    new-instance v5, Landroid/telecom/VideoProfile$CameraCapabilities;

    iget-object v7, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mInUsedPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v7, v7, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->width:I

    iget-object v8, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mInUsedPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v8, v8, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->height:I

    invoke-direct {v5, v7, v8, v3, v0}, Landroid/telecom/VideoProfile$CameraCapabilities;-><init>(IIZF)V

    .line 1485
    .local v5, "camCap":Landroid/telecom/VideoProfile$CameraCapabilities;
    invoke-virtual {p0, v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V

    .line 1487
    iput-boolean v6, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mHasRequestCamCap:Z

    .line 1489
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v6, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "] [onRequestCameraCapabilities] Finish"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    return-void
.end method

.method public resetModificationCause()V
    .locals 1

    .line 3046
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mModificationCause:I

    .line 3047
    return-void
.end method

.method public resetPauseMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetPauseMode old mPauseMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPauseMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPauseMode:I

    not-int v2, p1

    and-int/2addr v0, v2

    iput v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPauseMode:I

    .line 652
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetPauseMode new mPauseMode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPauseMode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    return-void
.end method

.method public resetState(I)V
    .locals 3
    .param p1, "state"    # I

    .line 637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetState old mState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    not-int v2, p1

    and-int/2addr v0, v2

    iput v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    .line 641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetState new mState = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    return-void
.end method

.method public resetWrapperInternal()V
    .locals 4

    .line 1775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] [onResetWrapper] Start"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitInitComplete()V

    .line 1779
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v3, 0x10000

    if-ne v0, v3, :cond_0

    .line 1780
    return-void

    .line 1783
    :cond_0
    const/4 v3, 0x1

    if-ne v3, v0, :cond_1

    .line 1784
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/mediatek/ims/internal/ImsVTProvider;->setUIModeInternal(IZ)V

    .line 1787
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [onResetWrapper] Finish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1789
    return-void
.end method

.method protected sendFgBgSessionModifyRequestInternal(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;IZ)V
    .locals 0
    .param p1, "fromProfile"    # Landroid/telecom/VideoProfile;
    .param p2, "toProfile"    # Landroid/telecom/VideoProfile;
    .param p3, "mode"    # I
    .param p4, "needNotify"    # Z

    .line 1309
    invoke-virtual {p0, p3, p4}, Lcom/mediatek/ims/internal/ImsVTProvider;->setUIModeInternal(IZ)V

    .line 1310
    return-void
.end method

.method public sendRejectUpgradeResponseInternal()V
    .locals 2

    .line 2228
    const-string v0, "ImsVT"

    const-string v1, "auto reject the video upgrade request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2229
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCurrentProfile:Landroid/telecom/VideoProfile;

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    .line 2230
    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->sendSessionModifyResponseInternal(Landroid/telecom/VideoProfile;)V

    .line 2231
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {p0, v0, v1, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->receiveSessionModifyResponseInternal(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 2235
    return-void
.end method

.method public sendSessionModifyRequestByImsInternal(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 11
    .param p1, "fromProfile"    # Landroid/telecom/VideoProfile;
    .param p2, "toProfile"    # Landroid/telecom/VideoProfile;

    .line 1314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] [sendSessionModifyRequestByImsInternal] Start, fromProfile:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1315
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", toProfile:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1314
    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v3, 0x10000

    if-ne v0, v3, :cond_0

    .line 1318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [sendSessionModifyRequestByImsInternal] call end"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    return-void

    .line 1322
    :cond_0
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    .line 1323
    .local v0, "newState":I
    sget-object v3, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v3}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getImsExtCallUtil()Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;->getRealRequest(I)I

    move-result v3

    .line 1325
    .local v3, "realNewState":I
    new-instance v4, Landroid/telecom/VideoProfile;

    .line 1327
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getQuality()I

    move-result v5

    invoke-direct {v4, v3, v5}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 1329
    .local v4, "newToProfile":Landroid/telecom/VideoProfile;
    const/4 v5, 0x1

    invoke-virtual {p0, v5, p1, v4}, Lcom/mediatek/ims/internal/ImsVTProvider;->doSessionModifyDecision(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)I

    move-result v6

    .line 1331
    .local v6, "decision":I
    const/4 v7, 0x2

    if-ne v7, v6, :cond_1

    .line 1333
    new-instance v8, Landroid/telecom/VideoProfile;

    const/4 v9, 0x0

    invoke-direct {v8, v9, v7}, Landroid/telecom/VideoProfile;-><init>(II)V

    move-object v7, v8

    .line 1335
    .local v7, "audioResponseProfile":Landroid/telecom/VideoProfile;
    iget v8, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sget-object v10, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v10, v7}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/mediatek/ims/internal/ImsVTProvider;->nResponseLocalConfig(ILjava/lang/String;)I

    .line 1336
    invoke-virtual {p0, v9}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDuringSessionRemoteRequest(Z)V

    .line 1338
    invoke-virtual {p0, v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDataOff(Z)V

    .line 1339
    iput-object v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    .line 1340
    iget v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sget-object v8, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v8, v4}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/mediatek/ims/internal/ImsVTProvider;->nRequestPeerConfig(ILjava/lang/String;)I

    .line 1342
    .end local v7    # "audioResponseProfile":Landroid/telecom/VideoProfile;
    goto :goto_0

    :cond_1
    const/4 v7, 0x3

    if-ne v7, v6, :cond_2

    .line 1344
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "] [sendSessionModifyRequestByImsInternal] skip"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1346
    :cond_2
    if-nez v6, :cond_3

    .line 1348
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitSessionOperationComplete()V

    .line 1350
    invoke-virtual {p0, v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDataOff(Z)V

    .line 1351
    iput-object v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    .line 1352
    iget v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sget-object v7, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v7, v4}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/mediatek/ims/internal/ImsVTProvider;->nRequestPeerConfig(ILjava/lang/String;)I

    goto :goto_0

    .line 1356
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "] [sendSessionModifyRequestByImsInternal] should not in this case"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "] [onSendSessionModifyRequest] Finish"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    return-void
.end method

.method public sendSessionModifyRequestInternal(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 8
    .param p1, "fromProfile"    # Landroid/telecom/VideoProfile;
    .param p2, "toProfile"    # Landroid/telecom/VideoProfile;

    .line 1217
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getImsExtCallUtil()Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;

    move-result-object v0

    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;->isImsFwkRequest(I)Z

    move-result v0

    const-string v1, "[ID="

    const-string v2, "ImsVT"

    if-eqz v0, :cond_0

    .line 1219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [onSendSessionModifyRequest] requst from IMS FWK, swith handle function"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/ims/internal/ImsVTProvider;->sendSessionModifyRequestByImsInternal(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 1222
    return-void

    .line 1225
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "] [onSendSessionModifyRequest] Start, fromProfile:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1226
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", toProfile:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1225
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitInitComplete()V

    .line 1230
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v3, 0x10000

    if-ne v0, v3, :cond_1

    .line 1231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [onSendSessionModifyRequest] call end"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    return-void

    .line 1235
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSessionModifyAction(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)I

    move-result v0

    .line 1236
    .local v0, "mode":I
    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v0, v3, :cond_2

    .line 1237
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/internal/ImsVTProvider;->IsCallModeChanged(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1238
    invoke-virtual {p0, p1, p2, v0, v4}, Lcom/mediatek/ims/internal/ImsVTProvider;->sendFgBgSessionModifyRequestInternal(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;IZ)V

    .line 1239
    return-void

    .line 1242
    :cond_2
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v3

    invoke-static {v3}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v3

    const/4 v5, 0x4

    const/4 v6, 0x2

    if-eqz v3, :cond_6

    .line 1243
    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    invoke-virtual {p0, v3, v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->hasState(II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1246
    invoke-virtual {p0, v6, p2, p1}, Lcom/mediatek/ims/internal/ImsVTProvider;->rejectSessionModifyInternal(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 1250
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] [onSendSessionModifyRequest] Reject it by have MA CRASH:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    return-void

    .line 1253
    :cond_3
    sget-object v3, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget v7, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSimId:I

    invoke-virtual {v3, v7}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->isVideoCallOn(I)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    .line 1254
    invoke-virtual {p0, v3, v4}, Lcom/mediatek/ims/internal/ImsVTProvider;->hasState(II)Z

    move-result v3

    if-nez v3, :cond_4

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    .line 1255
    invoke-virtual {p0, v3, v6}, Lcom/mediatek/ims/internal/ImsVTProvider;->hasState(II)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1258
    :cond_4
    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCallRat:I

    if-ne v3, v4, :cond_5

    sget-object v3, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget v7, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSimId:I

    invoke-virtual {v3, v7}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->isViWifiOn(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1259
    :cond_5
    invoke-virtual {p0, v6, p2, p1}, Lcom/mediatek/ims/internal/ImsVTProvider;->rejectSessionModifyInternal(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 1263
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] [onSendSessionModifyRequest] Reject it by state:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    return-void

    .line 1269
    :cond_6
    const/4 v3, 0x0

    invoke-virtual {p0, v3, p1, p2}, Lcom/mediatek/ims/internal/ImsVTProvider;->doSessionModifyDecision(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)I

    move-result v3

    .line 1271
    .local v3, "decision":I
    if-ne v4, v3, :cond_7

    .line 1273
    invoke-virtual {p0, v6, p2, p1}, Lcom/mediatek/ims/internal/ImsVTProvider;->rejectSessionModifyInternal(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    goto :goto_0

    .line 1278
    :cond_7
    if-ne v5, v3, :cond_8

    .line 1280
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] [onSendSessionModifyRequest] send request immediately"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    invoke-virtual {p0, v4}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDuringSessionRequest(Z)V

    .line 1282
    iput-object p2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    .line 1283
    iget v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sget-object v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v5, p2}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->nRequestPeerConfig(ILjava/lang/String;)I

    goto :goto_0

    .line 1285
    :cond_8
    if-nez v3, :cond_9

    .line 1287
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitSessionOperationComplete()V

    .line 1289
    invoke-virtual {p0, v4}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDuringSessionRequest(Z)V

    .line 1290
    iput-object p2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    .line 1291
    iget v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sget-object v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v5, p2}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->nRequestPeerConfig(ILjava/lang/String;)I

    goto :goto_0

    .line 1295
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] [onSendSessionModifyRequest] should not in this case"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    invoke-virtual {p0, v6, p2, p1}, Lcom/mediatek/ims/internal/ImsVTProvider;->rejectSessionModifyInternal(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 1304
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "] [onSendSessionModifyRequest] Finish"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    return-void
.end method

.method public sendSessionModifyResponseInternal(Landroid/telecom/VideoProfile;)V
    .locals 5
    .param p1, "responseProfile"    # Landroid/telecom/VideoProfile;

    .line 1365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] [onSendSessionModifyResponse] Start, responseProfile:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1366
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1365
    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitInitComplete()V

    .line 1370
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v3, 0x10000

    if-ne v0, v3, :cond_0

    .line 1371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [onSendSessionModifyResponse] call end"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    return-void

    .line 1375
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDuringSessionRemoteRequest()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 1376
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sget-object v4, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v4, p1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/mediatek/ims/internal/ImsVTProvider;->nResponseLocalConfig(ILjava/lang/String;)I

    .line 1377
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    invoke-static {v0}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1378
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->setIsAudioCall(Z)V

    goto :goto_0

    .line 1380
    :cond_1
    invoke-virtual {p0, v3}, Lcom/mediatek/ims/internal/ImsVTProvider;->setIsAudioCall(Z)V

    goto :goto_0

    .line 1387
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "] [onSendSessionModifyResponse] Already response, skip it"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    :goto_0
    invoke-virtual {p0, v3}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDuringSessionRemoteRequest(Z)V

    .line 1392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [onSendSessionModifyResponse] Finish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    return-void
.end method

.method public setCameraInternal(Ljava/lang/String;)V
    .locals 7
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 1014
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] [onSetCamera] id : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitInitComplete()V

    .line 1018
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v3, 0x10000

    if-ne v0, v3, :cond_0

    .line 1019
    return-void

    .line 1023
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsDestroying:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 1024
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [onSetCamera] UI mode is destroying"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    return-void

    .line 1028
    :cond_1
    const/4 v0, 0x0

    .line 1030
    .local v0, "count":I
    const/4 v3, 0x0

    if-nez p1, :cond_2

    .line 1031
    iput-boolean v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mHasRequestCamCap:Z

    .line 1034
    :cond_2
    iget v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mUplinkSource:I

    const-string v5, "screen"

    const/4 v6, 0x1

    if-ne v4, v6, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1035
    iput v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mUplinkSource:I

    .line 1036
    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    const/4 v4, 0x5

    invoke-static {v3, v4}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSetUIMode(II)I

    .line 1037
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] exit pause image mode when set camera"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    :cond_3
    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    if-ne v3, v6, :cond_4

    .line 1041
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] [onSetCamera] onSetCamera, not set camera when in BG, only save id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1044
    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1045
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]switch screen share, close camera firstly"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v1}, Lcom/mediatek/ims/internal/VTSource;->close()V

    .line 1047
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCameraId:Ljava/lang/String;

    .line 1048
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->startScreenRecordingInternal()V

    .line 1049
    return-void

    .line 1051
    :cond_5
    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mUplinkSource:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    if-eqz p1, :cond_6

    .line 1052
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1053
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]in screen recording mode, stop recording"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    :cond_6
    if-eqz p1, :cond_b

    .line 1061
    :goto_0
    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mUplinkState:I

    if-ne v3, v4, :cond_8

    invoke-virtual {p0, v4}, Lcom/mediatek/ims/internal/ImsVTProvider;->hasPauseMode(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1063
    const/16 v3, 0xa

    if-ge v0, v3, :cond_7

    .line 1064
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] [onSetCamera] onSetCamera, Call hold or held, wait and retry"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    const-wide/16 v5, 0xc8

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1092
    goto :goto_1

    .line 1091
    :catch_0
    move-exception v3

    .line 1093
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1069
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] [onSetCamera] onSetCamera, Call hold or held, ignore setCamera"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    const/16 v1, 0x1f46

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 1071
    return-void

    .line 1074
    :cond_8
    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mUplinkState:I

    if-eqz v3, :cond_9

    const/4 v4, 0x4

    if-ne v3, v4, :cond_a

    :cond_9
    if-lez v0, :cond_a

    .line 1076
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] [onSetCamera] onSetCamera, recording stopped"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    return-void

    .line 1081
    :cond_a
    sget-object v3, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v3, v4}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->updateCameraUsage(I)V

    .line 1084
    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v3, p1}, Lcom/mediatek/ims/internal/VTSource;->open(Ljava/lang/String;)V

    .line 1085
    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSetCamera(II)I

    .line 1086
    goto :goto_2

    .line 1097
    :cond_b
    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v3}, Lcom/mediatek/ims/internal/VTSource;->close()V

    .line 1100
    :goto_2
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCameraId:Ljava/lang/String;

    .line 1102
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] [onSetCamera] Finish"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    return-void
.end method

.method public setDataOff(Z)V
    .locals 2
    .param p1, "b"    # Z

    .line 705
    iput-boolean p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsDataOff:Z

    .line 706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDataOff : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsDataOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    return-void
.end method

.method public setDeviceOrientationInternal(I)V
    .locals 6
    .param p1, "rotation"    # I

    .line 1174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] [onSetDeviceOrientation] Start, rotation: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v3, 0x10000

    if-ne v0, v3, :cond_0

    .line 1177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [onSetDeviceOrientation] call end"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    return-void

    .line 1181
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitInitComplete()V

    .line 1183
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mOrientation:I

    if-eq v0, p1, :cond_1

    .line 1185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "] [onSetDeviceOrientation] device orientation change from "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mOrientation:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    iput p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mOrientation:I

    .line 1189
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mOrientationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1191
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mOrientationRunnable:Ljava/lang/Runnable;

    .line 1192
    const-string v4, "persist.vendor.vt.rotate_delay"

    const/16 v5, 0x1f4

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    int-to-long v4, v4

    .line 1191
    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1195
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [onSetDeviceOrientation] Finish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    return-void
.end method

.method public setDisplaySurfaceInternal(Landroid/view/Surface;)V
    .locals 7
    .param p1, "surface"    # Landroid/view/Surface;

    .line 1135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] [onSetDisplaySurface] Start, surface: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitInitComplete()V

    .line 1139
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v3, 0x10000

    if-ne v0, v3, :cond_0

    .line 1140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [onSetDisplaySurface] call end"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    return-void

    .line 1144
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mOriginalDisplaySurface:Landroid/view/Surface;

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    .line 1145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [onSetDisplaySurface] mOriginalDisplaySurface and surface is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    return-void

    .line 1150
    :cond_1
    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 1151
    invoke-virtual {v0}, Landroid/view/Surface;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "@"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1152
    .local v0, "oriSurfaceToken":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/Surface;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1153
    .local v3, "newSurfaceToken":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] [onSetDisplaySurface] oriSurfaceToken[1]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v6, v0, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", newSurfaceToken[1]:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v6, v3, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    aget-object v4, v3, v5

    if-eqz v4, :cond_2

    aget-object v4, v0, v5

    if-eqz v4, :cond_2

    aget-object v4, v3, v5

    aget-object v5, v0, v5

    .line 1157
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1158
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "] [onSetDisplaySurface] surface not changed and no need to update, ignore!"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    return-void

    .line 1164
    .end local v0    # "oriSurfaceToken":[Ljava/lang/String;
    .end local v3    # "newSurfaceToken":[Ljava/lang/String;
    :cond_2
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mOriginalDisplaySurface:Landroid/view/Surface;

    .line 1166
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-static {v0, p1}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSetDisplaySurface(ILandroid/view/Surface;)I

    .line 1168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [onSetDisplaySurface] Finish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    return-void
.end method

.method public setDuringSessionRemoteRequest(Z)V
    .locals 4
    .param p1, "b"    # Z

    .line 682
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSessionOperationFlagLock:Ljava/lang/Object;

    monitor-enter v0

    .line 683
    :try_start_0
    iput-boolean p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDuringSessionRemoteRequestOperation:Z

    .line 684
    const-string v1, "ImsVT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDuringSessionRemoteRequest : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDuringSessionRemoteRequestOperation:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    monitor-exit v0

    .line 686
    return-void

    .line 685
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setDuringSessionRequest(Z)V
    .locals 4
    .param p1, "b"    # Z

    .line 670
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSessionOperationFlagLock:Ljava/lang/Object;

    monitor-enter v0

    .line 671
    :try_start_0
    iput-boolean p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDuringSessionRequestOperation:Z

    .line 672
    const-string v1, "ImsVT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDuringSessionRequest : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDuringSessionRequestOperation:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    monitor-exit v0

    .line 674
    return-void

    .line 673
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setId(I)V
    .locals 2
    .param p1, "id"    # I

    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setId id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    iput p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    .line 600
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mUsager:Lcom/mediatek/ims/internal/ImsVTUsageManager;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/internal/ImsVTUsageManager;->setId(I)V

    .line 602
    sget v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDefaultId:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_0

    .line 603
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sput v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDefaultId:I

    .line 605
    :cond_0
    return-void
.end method

.method public setIsAudioCall(Z)V
    .locals 2
    .param p1, "result"    # Z

    .line 727
    iput-boolean p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsAudioCall:Z

    .line 728
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIsAudioCall : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsAudioCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    return-void
.end method

.method public setMaCrash(Z)V
    .locals 2
    .param p1, "b"    # Z

    .line 694
    iput-boolean p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsMaCrashed:Z

    .line 695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMaCrash : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsMaCrashed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    return-void
.end method

.method public setModificationCause(I)V
    .locals 0
    .param p1, "cause"    # I

    .line 3043
    iput p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mModificationCause:I

    .line 3044
    return-void
.end method

.method public setPauseImageInternal(Landroid/net/Uri;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] [onSetPauseImage] Start, uri: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitInitComplete()V

    .line 1516
    if-nez p1, :cond_0

    .line 1517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [onSetPauseImage] uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", return"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    return-void

    .line 1521
    :cond_0
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v3, 0x10000

    if-ne v0, v3, :cond_1

    .line 1522
    return-void

    .line 1525
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCameraId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] camera not closed, return"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    return-void

    .line 1530
    :cond_2
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mUplinkSource:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 1531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "] enter image mode from screen mode, stop screen recording fistly"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/VTSource;->stopScreenRecording()V

    .line 1535
    :cond_3
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mUplinkSource:I

    .line 1537
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    const/4 v3, 0x4

    invoke-static {v0, v3}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSetUIMode(II)I

    .line 1538
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/internal/VTSource;->setPauseImage(Landroid/net/Uri;)V

    .line 1540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [onSetPauseImage] Finish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    return-void
.end method

.method public setPauseMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 645
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPauseMode:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPauseMode:I

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPauseMode mPauseMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPauseMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    return-void
.end method

.method public setPreviewSurfaceInternal(Landroid/view/Surface;)V
    .locals 4
    .param p1, "surface"    # Landroid/view/Surface;

    .line 1108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] [onSetPreviewSurface] Start, surface: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitInitComplete()V

    .line 1112
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v3, 0x10000

    if-ne v0, v3, :cond_0

    .line 1113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [onSetPreviewSurface] call end"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    return-void

    .line 1117
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mOriginalPreviewSurface:Landroid/view/Surface;

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    .line 1118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [onSetPreviewSurface] mOriginalPreviewSurface and surface is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    return-void

    .line 1123
    :cond_1
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mOriginalPreviewSurface:Landroid/view/Surface;

    .line 1125
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/internal/VTSource;->setPreviewSurface(Landroid/view/Surface;)V

    .line 1127
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-static {v0, p1}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSetPreviewSurface(ILandroid/view/Surface;)I

    .line 1129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [onSetPreviewSurface] Finish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    return-void
.end method

.method public setRoaming(Z)V
    .locals 2
    .param p1, "b"    # Z

    .line 716
    iput-boolean p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsRoaming:Z

    .line 717
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRoaming : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    return-void
.end method

.method public setSimId(I)V
    .locals 2
    .param p1, "simid"    # I

    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSimId mSimId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    iput p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSimId:I

    .line 615
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mUsager:Lcom/mediatek/ims/internal/ImsVTUsageManager;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/internal/ImsVTUsageManager;->setSimId(I)V

    .line 616
    return-void
.end method

.method public setState(I)V
    .locals 2
    .param p1, "state"    # I

    .line 627
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    .line 628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setState mState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    return-void
.end method

.method public setUIModeInternal(IZ)V
    .locals 6
    .param p1, "mode"    # I
    .param p2, "needNotify"    # Z

    .line 1588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] [onSetUIMode] Start, mode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v3, 0x10000

    if-ne v0, v3, :cond_0

    .line 1591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [onSetUIMode] call end"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    return-void

    .line 1595
    :cond_0
    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 1672
    :sswitch_0
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mInitComplete:Z

    if-ne v4, v0, :cond_1

    .line 1673
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->requestCallDataUsageInternal()V

    .line 1676
    :cond_1
    iput p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    .line 1677
    iput-boolean v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsDestroying:Z

    .line 1678
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-static {v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->nFinalization(I)I

    .line 1680
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->quitThread()V

    .line 1681
    goto/16 :goto_1

    .line 1640
    :sswitch_1
    if-eq v0, v3, :cond_2

    .line 1641
    iput v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    .line 1643
    iput v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mUplinkSource:I

    .line 1646
    :cond_2
    iput-boolean v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsDuringResetMode:Z

    .line 1647
    new-instance v0, Ljava/lang/Thread;

    new-instance v3, Lcom/mediatek/ims/internal/ImsVTProvider$3;

    invoke-direct {v3, p0}, Lcom/mediatek/ims/internal/ImsVTProvider$3;-><init>(Lcom/mediatek/ims/internal/ImsVTProvider;)V

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1660
    .local v0, "resetModeRecoverThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1662
    if-eqz p2, :cond_8

    .line 1663
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->notifyVideoPauseStateChange()V

    goto/16 :goto_1

    .line 1622
    .end local v0    # "resetModeRecoverThread":Ljava/lang/Thread;
    :sswitch_2
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsDuringResetMode:Z

    if-eqz v0, :cond_3

    .line 1623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "] [onSetUIMode] reset mode (voice call) should not recv BG, skip"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    goto :goto_1

    .line 1627
    :cond_3
    iput p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    .line 1628
    if-eqz p2, :cond_4

    .line 1629
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->notifyVideoPauseStateChange()V

    .line 1633
    :cond_4
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/VTSource;->close()V

    .line 1635
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-static {v0, p1}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSetUIMode(II)I

    .line 1636
    goto :goto_1

    .line 1597
    :sswitch_3
    iput p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    .line 1598
    if-eqz p2, :cond_5

    .line 1599
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->notifyVideoPauseStateChange()V

    .line 1602
    :cond_5
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCameraId:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 1603
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mUplinkSource:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_6

    .line 1604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "] in screen sharing, only setUIMode "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-static {v0, p1}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSetUIMode(II)I

    .line 1606
    goto :goto_1

    .line 1609
    :cond_6
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v3}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->updateCameraUsage(I)V

    .line 1612
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/mediatek/ims/internal/VTSource;->open(Ljava/lang/String;)V

    .line 1613
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCameraId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v0, v3}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSetCamera(II)I

    goto :goto_0

    .line 1615
    :cond_7
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/VTSource;->close()V

    .line 1618
    :goto_0
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-static {v0, p1}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSetUIMode(II)I

    .line 1619
    nop

    .line 1687
    :cond_8
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [onSetUIMode] Finish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_2
        0x8 -> :sswitch_1
        0x10000 -> :sswitch_0
    .end sparse-switch
.end method

.method public setZoomInternal(F)V
    .locals 4
    .param p1, "value"    # F

    .line 1201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] [onSetZoom] Start, value: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitInitComplete()V

    .line 1205
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v3, 0x10000

    if-ne v0, v3, :cond_0

    .line 1206
    return-void

    .line 1209
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/internal/VTSource;->setZoom(F)V

    .line 1211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [onSetZoom] Finish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    return-void
.end method

.method public startRegisterTelephonyCallback(I)V
    .locals 5
    .param p1, "simId"    # I

    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startRegisterTelephonyCallback simId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    new-instance v0, Lcom/mediatek/ims/internal/ImsVTProvider$ImsVTProviderTelephonyCallback;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/internal/ImsVTProvider$ImsVTProviderTelephonyCallback;-><init>(Lcom/mediatek/ims/internal/ImsVTProvider;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mTelephonyCallback:Lcom/mediatek/ims/internal/ImsVTProvider$ImsVTProviderTelephonyCallback;

    .line 588
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget-object v0, v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 590
    invoke-static {p1}, Lcom/mediatek/ims/common/SubscriptionManagerHelper;->getSubIdUsingPhoneId(I)I

    move-result v0

    .line 591
    .local v0, "subId":I
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 592
    .local v1, "stm":Landroid/telephony/TelephonyManager;
    new-instance v2, Landroid/os/HandlerExecutor;

    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCallbackHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v2, v3}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mTelephonyCallback:Lcom/mediatek/ims/internal/ImsVTProvider$ImsVTProviderTelephonyCallback;

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 593
    return-void
.end method

.method public startScreenRecordingInternal()V
    .locals 4

    .line 1545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] [startScreenRecording] Start"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitInitComplete()V

    .line 1549
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v3, 0x10000

    if-ne v0, v3, :cond_0

    .line 1550
    return-void

    .line 1553
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCameraId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] camera not closed, return"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    return-void

    .line 1558
    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mUplinkSource:I

    .line 1560
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    const/4 v3, 0x6

    invoke-static {v0, v3}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSetUIMode(II)I

    .line 1561
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/VTSource;->startScreenRecording()V

    .line 1563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [startScreenRecording] Finish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    return-void
.end method

.method public stopScreenRecordingInternal()V
    .locals 4

    .line 1568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] [stopScreenRecordingInternal] Start"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitInitComplete()V

    .line 1572
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v3, 0x10000

    if-ne v0, v3, :cond_0

    .line 1573
    return-void

    .line 1576
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mUplinkSource:I

    .line 1578
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/VTSource;->stopScreenRecording()V

    .line 1579
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    const/4 v3, 0x7

    invoke-static {v0, v3}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSetUIMode(II)I

    .line 1581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [stopScreenRecordingInternal] Finish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    return-void
.end method

.method public switchFeatureInternal(IZ)V
    .locals 4
    .param p1, "feature"    # I
    .param p2, "on"    # Z

    .line 1692
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] [onSwitchFeature] Start, feature: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", on: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitInitComplete()V

    .line 1696
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v3, 0x10000

    if-ne v0, v3, :cond_0

    .line 1697
    return-void

    .line 1700
    :cond_0
    if-eqz p2, :cond_1

    .line 1701
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    const/4 v3, 0x1

    invoke-static {v0, p1, v3}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSwitchFeature(III)I

    .line 1702
    invoke-virtual {p0, v3}, Lcom/mediatek/ims/internal/ImsVTProvider;->resetState(I)V

    goto :goto_0

    .line 1705
    :cond_1
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    const/4 v3, 0x0

    invoke-static {v0, p1, v3}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSwitchFeature(III)I

    .line 1708
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [onSwitchFeature] Finish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    return-void
.end method

.method public switchRoamingInternal(Z)V
    .locals 8
    .param p1, "isRoaming"    # Z

    .line 1713
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] [onSwitchRoaming] Start, phoneId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSimId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", on: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitInitComplete()V

    .line 1718
    const/4 v0, 0x2

    if-nez p1, :cond_0

    .line 1720
    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->resetState(I)V

    goto :goto_0

    .line 1724
    :cond_0
    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v4, 0x10000

    if-ne v3, v4, :cond_1

    .line 1725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [onSwitchRoaming] call end"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1726
    return-void

    .line 1730
    :cond_1
    new-instance v3, Landroid/telecom/VideoProfile;

    const/4 v4, 0x3

    invoke-direct {v3, v4, v0}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 1731
    .local v3, "currentProfile":Landroid/telecom/VideoProfile;
    new-instance v5, Landroid/telecom/VideoProfile;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v0}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 1733
    .local v5, "reqestProfile":Landroid/telecom/VideoProfile;
    invoke-virtual {p0, v0, v3, v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->doSessionModifyDecision(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)I

    move-result v6

    .line 1735
    .local v6, "decision":I
    const/4 v7, 0x1

    if-ne v7, v6, :cond_2

    .line 1737
    const-string v0, "onSwitchRoaming() : should not in this case"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    return-void

    .line 1740
    :cond_2
    if-ne v0, v6, :cond_3

    .line 1742
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {p0, v0, v1, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->receiveSessionModifyResponseInternal(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 1747
    invoke-virtual {p0, v7}, Lcom/mediatek/ims/internal/ImsVTProvider;->setRoaming(Z)V

    .line 1748
    iput-object v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    .line 1749
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sget-object v1, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v1, v5}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->nRequestPeerConfig(ILjava/lang/String;)I

    .line 1751
    return-void

    .line 1753
    :cond_3
    if-ne v4, v6, :cond_4

    .line 1755
    return-void

    .line 1757
    :cond_4
    if-nez v6, :cond_5

    .line 1759
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitSessionOperationComplete()V

    .line 1761
    invoke-virtual {p0, v7}, Lcom/mediatek/ims/internal/ImsVTProvider;->setRoaming(Z)V

    .line 1762
    iput-object v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    .line 1763
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sget-object v4, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v4, v5}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/mediatek/ims/internal/ImsVTProvider;->nRequestPeerConfig(ILjava/lang/String;)I

    .line 1765
    invoke-virtual {p0, v7}, Lcom/mediatek/ims/internal/ImsVTProvider;->setRoaming(Z)V

    .line 1769
    .end local v3    # "currentProfile":Landroid/telecom/VideoProfile;
    .end local v5    # "reqestProfile":Landroid/telecom/VideoProfile;
    .end local v6    # "decision":I
    :cond_5
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [onSwitchRoaming] Finish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    return-void
.end method

.method public updateCallRatInternal(I)V
    .locals 3
    .param p1, "callRat"    # I

    .line 1834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] [updateCallRatInternal] Start, callRat="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    iput p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCallRat:I

    .line 1836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [updateCallRatInternal] Finish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    return-void
.end method

.method public updateProfileInternal(I)V
    .locals 4
    .param p1, "state"    # I

    .line 1793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] [updateCurrentProfile] Start, state="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsVT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1795
    new-instance v0, Landroid/telecom/VideoProfile;

    const/4 v3, 0x2

    invoke-direct {v0, p1, v3}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 1796
    .local v0, "newVideoprofile":Landroid/telecom/VideoProfile;
    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCurrentProfile:Landroid/telecom/VideoProfile;

    .line 1798
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] [updateCurrentProfile] Finish"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1800
    return-void
.end method

.method public waitInitComplete()V
    .locals 2

    .line 851
    nop

    :goto_0
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mInitComplete:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v1, 0x10000

    if-eq v0, v1, :cond_0

    .line 853
    :try_start_0
    const-string v0, "ImsVT"

    const-string v1, "Wait for initialization complete!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 855
    :catch_0
    move-exception v0

    .line 856
    :goto_1
    goto :goto_0

    .line 858
    :cond_0
    return-void
.end method

.method public waitSessionOperationComplete()V
    .locals 2

    .line 828
    nop

    :goto_0
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDuringSessionRequestOperation:Z

    const/4 v1, 0x1

    if-eq v1, v0, :cond_1

    iget-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDuringSessionRemoteRequestOperation:Z

    if-ne v1, v0, :cond_0

    goto :goto_1

    .line 835
    :cond_0
    return-void

    .line 830
    :cond_1
    :goto_1
    :try_start_0
    const-string v0, "ImsVT"

    const-string v1, "Wait for Session operation complete!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 832
    :catch_0
    move-exception v0

    .line 833
    :goto_2
    goto :goto_0
.end method

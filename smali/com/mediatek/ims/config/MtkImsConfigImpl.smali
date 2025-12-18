.class public Lcom/mediatek/ims/config/MtkImsConfigImpl;
.super Landroid/telephony/ims/stub/ImsConfigImplBase;
.source "MtkImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;
    }
.end annotation


# static fields
.field public static final FAILED:I = 0x1

.field private static final MCC_MNC_ATT:[Ljava/lang/String;

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "[SR-IMS][MtkImsConfigImpl]"

.field public static final UNKNOWN:I = -0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mOldConfigInterface:Lcom/android/ims/internal/IImsConfig;

.field private mRcsEventCallback:Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;

.field private mRequestHandler:Landroid/os/Handler;

.field private mSlotId:I

.field private mUserSetting:Ljava/lang/Integer;

.field private mVolteProvisionFlag:I

.field private uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 64
    const-string v0, "310030"

    const-string v1, "310150"

    const-string v2, "310170"

    const-string v3, "310280"

    const-string v4, "310380"

    const-string v5, "310410"

    const-string v6, "310560"

    const-string v7, "310950"

    const-string v8, "311180"

    const-string v9, "312670"

    const-string v10, "313100"

    const-string v11, "313110"

    const-string v12, "313120"

    const-string v13, "313130"

    const-string v14, "313140"

    filled-new-array/range {v0 .. v14}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->MCC_MNC_ATT:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/ims/internal/IImsConfig;ILandroid/content/Context;)V
    .locals 3
    .param p1, "config"    # Lcom/android/ims/internal/IImsConfig;
    .param p2, "slotId"    # I
    .param p3, "context"    # Landroid/content/Context;

    .line 74
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase;-><init>()V

    .line 403
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mVolteProvisionFlag:I

    .line 404
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mUserSetting:Ljava/lang/Integer;

    .line 75
    iput-object p1, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mOldConfigInterface:Lcom/android/ims/internal/IImsConfig;

    .line 76
    iput p2, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mSlotId:I

    .line 77
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->rcsSingleRegistrationCapable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-static {}, Lcom/mediatek/ims/rcs/UaServiceManager;->getInstance()Lcom/mediatek/ims/rcs/UaServiceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;

    .line 79
    nop

    .line 84
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ImsConfigImplRequestHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 85
    .local v0, "reqeustHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 86
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mRequestHandler:Landroid/os/Handler;

    .line 89
    iput-object p3, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mContext:Landroid/content/Context;

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/config/MtkImsConfigImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/config/MtkImsConfigImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0, p1}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/ims/config/MtkImsConfigImpl;IZI)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/config/MtkImsConfigImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->updateConfiguration(IZI)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/ims/config/MtkImsConfigImpl;)Lcom/mediatek/ims/rcs/UaServiceManager;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/config/MtkImsConfigImpl;

    .line 45
    iget-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/ims/config/MtkImsConfigImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/config/MtkImsConfigImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0, p1}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/ims/config/MtkImsConfigImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/config/MtkImsConfigImpl;

    .line 45
    iget-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/ims/config/MtkImsConfigImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/config/MtkImsConfigImpl;

    .line 45
    iget v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mSlotId:I

    return v0
.end method

.method static synthetic access$600(Lcom/mediatek/ims/config/MtkImsConfigImpl;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/config/MtkImsConfigImpl;

    .line 45
    iget-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mUserSetting:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/ims/config/MtkImsConfigImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/config/MtkImsConfigImpl;

    .line 45
    iget v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mVolteProvisionFlag:I

    return v0
.end method

.method static synthetic access$702(Lcom/mediatek/ims/config/MtkImsConfigImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/config/MtkImsConfigImpl;
    .param p1, "x1"    # I

    .line 45
    iput p1, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mVolteProvisionFlag:I

    return p1
.end method

.method private getMccMncList(I)[Ljava/lang/String;
    .locals 3
    .param p1, "slotId"    # I

    .line 332
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 333
    .local v0, "subIds":[I
    if-nez v0, :cond_0

    .line 334
    const-string v1, "empty"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 336
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v0, v2

    .line 337
    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 336
    return-object v1
.end method

.method private declared-synchronized getUserSetting()Z
    .locals 7

    monitor-enter p0

    .line 504
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mSlotId:I

    invoke-static {v0, v1}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getActiveSubIdForPhoneId(Landroid/content/Context;I)I

    move-result v0

    .line 505
    .local v0, "subid":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 506
    const-string v1, "[SR-IMS][MtkImsConfigImpl]"

    const-string v3, "checkinVolteProvision: Invalid subscription ID"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    monitor-exit p0

    return v2

    .line 510
    .end local p0    # "this":Lcom/mediatek/ims/config/MtkImsConfigImpl;
    :cond_0
    :try_start_1
    invoke-static {v0}, Landroid/telephony/ims/ImsMmTelManager;->createForSubscriptionId(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v1

    .line 511
    .local v1, "imsMmTelManager":Landroid/telephony/ims/ImsMmTelManager;
    if-nez v1, :cond_1

    .line 512
    const-string v3, "[SR-IMS][MtkImsConfigImpl]"

    const-string v4, "checkinVolteProvision: mImsMmTelManager null"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 513
    monitor-exit p0

    return v2

    .line 523
    :cond_1
    :try_start_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mUserSetting:Ljava/lang/Integer;

    .line 524
    invoke-virtual {v1}, Landroid/telephony/ims/ImsMmTelManager;->isAdvancedCallingSettingEnabled()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 525
    iget-object v3, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mUserSetting:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    or-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mUserSetting:Ljava/lang/Integer;

    .line 527
    :cond_2
    invoke-virtual {v1}, Landroid/telephony/ims/ImsMmTelManager;->isVoWiFiSettingEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 528
    iget-object v3, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mUserSetting:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    or-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mUserSetting:Ljava/lang/Integer;

    .line 530
    :cond_3
    iget-object v3, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mUserSetting:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_4

    .line 531
    invoke-virtual {v1}, Landroid/telephony/ims/ImsMmTelManager;->isVtSettingEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 532
    iget-object v3, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mUserSetting:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    or-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mUserSetting:Ljava/lang/Integer;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 538
    :cond_4
    nop

    .line 540
    monitor-exit p0

    return v4

    .line 535
    :catch_0
    move-exception v3

    .line 536
    .local v3, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_3
    const-string v4, "[SR-IMS][MtkImsConfigImpl]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getUserSetting error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 537
    monitor-exit p0

    return v2

    .line 503
    .end local v0    # "subid":I
    .end local v1    # "imsMmTelManager":Landroid/telephony/ims/ImsMmTelManager;
    .end local v3    # "ex":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isAttSimCard(I)Z
    .locals 10
    .param p1, "slotId"    # I

    .line 320
    invoke-direct {p0, p1}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->getMccMncList(I)[Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, "mccMncList":[Ljava/lang/String;
    sget-object v1, Lcom/mediatek/ims/config/MtkImsConfigImpl;->MCC_MNC_ATT:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 322
    .local v5, "attMccMnc":Ljava/lang/String;
    array-length v6, v0

    move v7, v3

    :goto_1
    if-ge v7, v6, :cond_1

    aget-object v8, v0, v7

    .line 323
    .local v8, "simMccMnc":Ljava/lang/String;
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 324
    const/4 v1, 0x1

    return v1

    .line 322
    .end local v8    # "simMccMnc":Ljava/lang/String;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 321
    .end local v5    # "attMccMnc":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 328
    :cond_2
    return v3
.end method

.method private log(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SR-IMS][MtkImsConfigImpl]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    return-void
.end method

.method private logImsConfigChangedCheckin(ILjava/lang/String;I)V
    .locals 5
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "retVal"    # I

    .line 358
    const/4 v0, 0x0

    .line 359
    .local v0, "info":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 373
    :sswitch_0
    const-string v0, "vice_dm"

    .line 374
    goto :goto_0

    .line 370
    :sswitch_1
    const-string v0, "wfc_dm"

    .line 371
    goto :goto_0

    .line 367
    :sswitch_2
    const-string v0, "eab_dm"

    .line 368
    goto :goto_0

    .line 364
    :sswitch_3
    const-string v0, "vt_dm"

    .line 365
    goto :goto_0

    .line 361
    :sswitch_4
    const-string v0, "vlt_dm"

    .line 362
    nop

    .line 378
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mSlotId:I

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSimApplicationState(I)I

    move-result v1

    const/16 v2, 0xa

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 380
    .local v1, "simLoaded":Z
    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    if-nez v1, :cond_1

    goto :goto_2

    .line 384
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 385
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    if-eqz p3, :cond_2

    .line 389
    const-string v4, ", ret: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 392
    :cond_2
    nop

    .line 393
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 392
    invoke-virtual {p0, v3, v4}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->checkinVolteProvision(ILjava/lang/String;)V

    .line 394
    return-void

    .line 381
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_4
        0xb -> :sswitch_3
        0x19 -> :sswitch_2
        0x1c -> :sswitch_1
        0x41 -> :sswitch_0
    .end sparse-switch
.end method

.method private loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SR-IMS][MtkImsConfigImpl]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SR-IMS][MtkImsConfigImpl]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SR-IMS][MtkImsConfigImpl]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    return-void
.end method

.method private updateConfiguration(IZI)V
    .locals 7
    .param p1, "phoneId"    # I
    .param p2, "valid"    # Z
    .param p3, "version"    # I

    .line 254
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 255
    .local v0, "subIds":[I
    if-eqz v0, :cond_9

    const/4 v1, 0x0

    aget v2, v0, v1

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 256
    if-eqz p2, :cond_0

    if-lez p3, :cond_0

    .line 257
    invoke-direct {p0, p1}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->updateSipTransport(I)V

    .line 259
    :cond_0
    :try_start_0
    aget v2, v0, v1

    invoke-static {v2}, Landroid/telephony/ims/ProvisioningManager;->createForSubscriptionId(I)Landroid/telephony/ims/ProvisioningManager;

    move-result-object v2

    .line 260
    .local v2, "pm":Landroid/telephony/ims/ProvisioningManager;
    if-eqz v2, :cond_8

    .line 261
    invoke-direct {p0, p1}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->isAttSimCard(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 262
    if-eqz p2, :cond_1

    if-lez p3, :cond_1

    .line 263
    iget-object v3, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;

    const-string v4, "capInfoExpiry"

    invoke-virtual {v3, p1, v4}, Lcom/mediatek/ims/rcs/UaServiceManager;->getAcsConfigInt(ILjava/lang/String;)I

    move-result v3

    goto :goto_0

    :cond_1
    const/16 v3, 0x5460

    .line 264
    .local v3, "rcsExpiry":I
    :goto_0
    const/16 v4, 0x12

    .line 265
    .local v4, "key":I
    invoke-virtual {v2, v4}, Landroid/telephony/ims/ProvisioningManager;->getProvisioningIntValue(I)I

    move-result v5

    if-eq v5, v3, :cond_2

    .line 266
    invoke-virtual {v2, v4, v3}, Landroid/telephony/ims/ProvisioningManager;->setProvisioningIntValue(II)I

    .line 269
    :cond_2
    if-eqz p2, :cond_3

    if-lez p3, :cond_3

    .line 270
    iget-object v5, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;

    const-string v6, "source-throttlepublish"

    invoke-virtual {v5, p1, v6}, Lcom/mediatek/ims/rcs/UaServiceManager;->getAcsConfigInt(ILjava/lang/String;)I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    goto :goto_1

    :cond_3
    const/16 v5, 0x7530

    .line 271
    .local v5, "publishThrottle":I
    :goto_1
    const/16 v4, 0x15

    .line 272
    invoke-virtual {v2, v4}, Landroid/telephony/ims/ProvisioningManager;->getProvisioningIntValue(I)I

    move-result v6

    if-eq v6, v5, :cond_4

    .line 273
    invoke-virtual {v2, v4, v5}, Landroid/telephony/ims/ProvisioningManager;->setProvisioningIntValue(II)I

    .line 275
    .end local v3    # "rcsExpiry":I
    .end local v4    # "key":I
    .end local v5    # "publishThrottle":I
    :cond_4
    goto :goto_2

    .line 276
    :cond_5
    const-string v3, "not support sim, not change pm value"

    invoke-direct {p0, v3}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->logi(Ljava/lang/String;)V

    .line 279
    :goto_2
    iget-object v3, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-virtual {v3, p1}, Lcom/mediatek/ims/rcs/UaServiceManager;->getAcsConfiguration(I)Lcom/mediatek/ims/rcsua/AcsConfiguration;

    move-result-object v3

    .line 280
    .local v3, "config":Lcom/mediatek/ims/rcsua/AcsConfiguration;
    const/4 v4, 0x0

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/mediatek/ims/rcsua/AcsConfiguration;->readXmlData()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_6
    move-object v5, v4

    .line 281
    .local v5, "info":Ljava/lang/String;
    :goto_3
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 282
    .local v4, "infoByte":[B
    :cond_7
    if-eqz v4, :cond_8

    .line 283
    invoke-virtual {v2, v4, v1}, Landroid/telephony/ims/ProvisioningManager;->notifyRcsAutoConfigurationReceived([BZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 286
    .end local v2    # "pm":Landroid/telephony/ims/ProvisioningManager;
    .end local v3    # "config":Lcom/mediatek/ims/rcsua/AcsConfiguration;
    .end local v4    # "infoByte":[B
    .end local v5    # "info":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 287
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateConfiguration, excpetion happened! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 288
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_8
    :goto_4
    goto :goto_5

    .line 290
    :cond_9
    const-string v1, "updateConfiguration, invalid subId"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->log(Ljava/lang/String;)V

    .line 292
    :goto_5
    return-void
.end method

.method private updateSipTransport(I)V
    .locals 8
    .param p1, "slotId"    # I

    .line 295
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/ImsService;

    move-result-object v0

    .line 296
    .local v0, "imsService":Lcom/mediatek/ims/ImsService;
    if-nez v0, :cond_0

    .line 297
    const-string v1, "ImsService retrieval fail in updateSipTransport"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->logw(Ljava/lang/String;)V

    .line 298
    return-void

    .line 300
    :cond_0
    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsService;->getSipTransport(I)Lcom/mediatek/ims/rcs/MtkSipTransportImpl;

    move-result-object v1

    .line 301
    .local v1, "transport":Lcom/mediatek/ims/rcs/MtkSipTransportImpl;
    if-nez v1, :cond_1

    .line 302
    const-string v2, "SipTransport retrieval fail in updateSipTransport"

    invoke-direct {p0, v2}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->logw(Ljava/lang/String;)V

    .line 303
    return-void

    .line 305
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;

    const-string v3, "FtHttpServerAddr"

    invoke-virtual {v2, p1, v3}, Lcom/mediatek/ims/rcs/UaServiceManager;->getAcsConfigString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 306
    .local v2, "ftUri":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;

    const-string v4, "ChatAuth"

    invoke-virtual {v3, p1, v4}, Lcom/mediatek/ims/rcs/UaServiceManager;->getAcsConfigInt(ILjava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_2

    move v3, v5

    goto :goto_0

    :cond_2
    move v3, v4

    .line 307
    .local v3, "chatAuth":Z
    :goto_0
    iget-object v6, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;

    const-string v7, "GroupChatAuth"

    invoke-virtual {v6, p1, v7}, Lcom/mediatek/ims/rcs/UaServiceManager;->getAcsConfigInt(ILjava/lang/String;)I

    move-result v6

    if-ne v6, v5, :cond_3

    move v6, v5

    goto :goto_1

    :cond_3
    move v6, v4

    .line 308
    .local v6, "groupChatAuth":Z
    :goto_1
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "null"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    move v4, v5

    .line 311
    .local v4, "ftProvisioned":Z
    :cond_4
    if-nez v4, :cond_5

    if-nez v3, :cond_5

    if-nez v6, :cond_5

    .line 312
    const-string v5, "updateSipTransport-> bypass the case all RCS feature off"

    invoke-direct {p0, v5}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->logi(Ljava/lang/String;)V

    .line 313
    return-void

    .line 316
    :cond_5
    const-string v5, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.fthttp\""

    invoke-virtual {v1, v5, v4}, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->notifyProvisioningChanged(Ljava/lang/String;Z)V

    .line 317
    return-void
.end method


# virtual methods
.method public checkinVolteProvision(ILjava/lang/String;)V
    .locals 4
    .param p1, "event"    # I
    .param p2, "info"    # Ljava/lang/String;

    .line 406
    invoke-static {}, Lcom/mediatek/ims/config/CheckinEvent;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 407
    return-void

    .line 411
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->getUserSetting()Z

    move-result v0

    if-nez v0, :cond_1

    .line 412
    return-void

    .line 416
    :cond_1
    move v0, p1

    .line 417
    .local v0, "event_code":I
    move-object v1, p2

    .line 419
    .local v1, "event_info":Ljava/lang/String;
    new-instance v2, Lcom/mediatek/ims/config/MtkImsConfigImpl$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/mediatek/ims/config/MtkImsConfigImpl$1;-><init>(Lcom/mediatek/ims/config/MtkImsConfigImpl;ILjava/lang/String;)V

    .line 497
    .local v2, "r":Ljava/lang/Runnable;
    iget-object v3, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 498
    return-void
.end method

.method public getConfigInt(I)I
    .locals 4
    .param p1, "item"    # I

    .line 137
    const/4 v0, -0x1

    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mOldConfigInterface:Lcom/android/ims/internal/IImsConfig;

    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsConfig;->getProvisionedValue(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .local v1, "value":I
    if-eq v1, v0, :cond_0

    .line 139
    return v1

    .line 143
    .end local v1    # "value":I
    :cond_0
    goto :goto_0

    .line 141
    :catch_0
    move-exception v1

    .line 142
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConfigInt: item="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 144
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public getConfigString(I)Ljava/lang/String;
    .locals 3
    .param p1, "item"    # I

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mOldConfigInterface:Lcom/android/ims/internal/IImsConfig;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsConfig;->getProvisionedStringValue(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConfigInt: item="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 154
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public setConfig(II)I
    .locals 3
    .param p1, "item"    # I
    .param p2, "value"    # I

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mOldConfigInterface:Lcom/android/ims/internal/IImsConfig;

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsConfig;->setProvisionedValue(II)I

    move-result v0

    .line 98
    .local v0, "retVal":I
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1, v0}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->logImsConfigChangedCheckin(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    if-nez v0, :cond_0

    .line 101
    const/4 v1, 0x0

    return v1

    .line 106
    .end local v0    # "retVal":I
    :cond_0
    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setConfig: item="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 105
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-direct {p0, v1}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 107
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public setConfig(ILjava/lang/String;)I
    .locals 5
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mOldConfigInterface:Lcom/android/ims/internal/IImsConfig;

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsConfig;->setProvisionedStringValue(ILjava/lang/String;)I

    move-result v0

    .line 115
    .local v0, "retVal":I
    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->logImsConfigChangedCheckin(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    if-nez v0, :cond_0

    .line 118
    const/4 v1, 0x0

    return v1

    .line 130
    .end local v0    # "retVal":I
    :cond_0
    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Landroid/os/RemoteException;
    const/16 v1, 0x48

    const-string v2, "failed: "

    const-string v3, " value="

    const-string v4, "setConfig: item="

    if-ne p1, v1, :cond_1

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "[SR-IMS][MtkImsConfigImpl]"

    invoke-static {v3, p2}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 124
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-direct {p0, v1}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 127
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-direct {p0, v1}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 131
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public setRcsClientConfiguration(Landroid/telephony/ims/RcsClientConfiguration;)V
    .locals 3
    .param p1, "rcc"    # Landroid/telephony/ims/RcsClientConfiguration;

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRcsClientConfig with rcc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->logi(Ljava/lang/String;)V

    .line 160
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->rcsSingleRegistrationCapable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 161
    iget-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mediatek/ims/rcs/UaServiceManager;->getInstance()Lcom/mediatek/ims/rcs/UaServiceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;

    if-eqz v0, :cond_2

    .line 164
    :try_start_0
    iget v1, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mSlotId:I

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/rcs/UaServiceManager;->setRcsClientConfiguration(ILandroid/telephony/ims/RcsClientConfiguration;)V

    .line 165
    iget-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mRcsEventCallback:Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;

    if-nez v0, :cond_1

    .line 166
    new-instance v0, Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;-><init>(Lcom/mediatek/ims/config/MtkImsConfigImpl;)V

    iput-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mRcsEventCallback:Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 168
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;

    iget v2, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mSlotId:I

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->registerAcsCallback(ILcom/mediatek/ims/rcs/UaServiceManager$AcsEventCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 171
    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MtkImsConfigImpl register ACS fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 175
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    goto :goto_1

    .line 173
    :catch_1
    move-exception v0

    .line 174
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAcsonfiguration, excpetion happened! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 178
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return-void
.end method

.method public triggerAutoConfiguration()V
    .locals 3

    .line 182
    const-string v0, "triggerAutoConfiguration"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->logi(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mediatek/ims/rcs/UaServiceManager;->getInstance()Lcom/mediatek/ims/rcs/UaServiceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;

    if-eqz v0, :cond_2

    .line 186
    :try_start_0
    iget v1, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mSlotId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ims/rcs/UaServiceManager;->triggerAcsRequest(II)V

    .line 187
    iget-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mRcsEventCallback:Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;

    if-nez v0, :cond_1

    .line 188
    new-instance v0, Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;-><init>(Lcom/mediatek/ims/config/MtkImsConfigImpl;)V

    iput-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mRcsEventCallback:Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 190
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;

    iget v2, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl;->mSlotId:I

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->registerAcsCallback(ILcom/mediatek/ims/rcs/UaServiceManager$AcsEventCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 193
    goto :goto_0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MtkImsConfigImpl register ACS fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->loge(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 195
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 196
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "triggerAutoConfiguration error. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 197
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    goto :goto_1

    .line 199
    :cond_2
    const-string v0, "ua service is null"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 201
    :goto_1
    return-void
.end method

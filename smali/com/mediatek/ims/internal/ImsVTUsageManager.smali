.class public Lcom/mediatek/ims/internal/ImsVTUsageManager;
.super Ljava/lang/Object;
.source "ImsVTUsageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "ImsVT Usage"

.field public static final VILTE_UID:I = 0x3e9


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentUsage:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

.field private mDataUsageUpdateRegistrants:Landroid/os/RegistrantList;

.field public mId:I

.field private mInitialUsage:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

.field private mNeedReportDataUsage:Z

.field private mPreviousUsage:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

.field protected mSimId:I

.field public mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getInstance()Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mNeedReportDataUsage:Z

    .line 256
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mDataUsageUpdateRegistrants:Landroid/os/RegistrantList;

    .line 259
    new-instance v0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    const-string v1, "Current"

    invoke-direct {v0, v1}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mCurrentUsage:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    .line 260
    new-instance v0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    const-string v1, "Previous"

    invoke-direct {v0, v1}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mPreviousUsage:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    .line 261
    return-void
.end method

.method private canRequestDataUsage()Z
    .locals 2

    .line 322
    const-string v0, "ImsVT Usage"

    const-string v1, "[canRequestDataUsage]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const-string v0, "persist.vendor.vt.data_simulate"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 325
    .local v0, "forceRequest":Z
    if-eqz v0, :cond_0

    .line 326
    const/4 v1, 0x1

    return v1

    .line 344
    :cond_0
    iget-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mNeedReportDataUsage:Z

    return v1
.end method

.method private getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "subId"    # I

    .line 349
    const-string v0, "carrier_config"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 351
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    const/4 v1, 0x0

    .line 353
    .local v1, "carrierConfig":Landroid/os/PersistableBundle;
    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {v0, p3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 357
    :cond_0
    if-eqz v1, :cond_1

    .line 358
    invoke-virtual {v1, p2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 361
    :cond_1
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method private getTagUsage(Landroid/net/NetworkStats;)Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;
    .locals 29
    .param p1, "uidSnapshot"    # Landroid/net/NetworkStats;

    .line 366
    const-string v0, "getTagUsage uid:1001"

    const-string v1, "ImsVT Usage"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const-wide/16 v2, 0x0

    .line 369
    .local v2, "TotalLteTxBytes":J
    const-wide/16 v4, 0x0

    .line 370
    .local v4, "TotalLteRxBytes":J
    const-wide/16 v6, 0x0

    .line 371
    .local v6, "TotalWifiTxBytes":J
    const-wide/16 v8, 0x0

    .line 373
    .local v8, "TotalWifiRxBytes":J
    const/4 v0, 0x0

    .line 375
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    move-object/from16 v10, p0

    iget v11, v10, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mId:I

    const/high16 v12, -0x1000000

    add-int/2addr v12, v11

    .line 376
    .local v12, "lte_tag":I
    const/high16 v13, -0xf00000

    add-int/2addr v11, v13

    .line 378
    .local v11, "wifi_tag":I
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkStats;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 379
    .local v13, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/NetworkStats$Entry;>;"
    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 381
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Landroid/net/NetworkStats$Entry;

    .line 384
    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getUid()I

    move-result v14

    const/16 v15, 0x3e9

    if-ne v14, v15, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getTag()I

    move-result v14

    if-ne v14, v12, :cond_1

    .line 386
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getTaggedSnapshot LTE entry:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v1, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    move-result-wide v14

    add-long/2addr v2, v14

    .line 389
    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    move-result-wide v14

    add-long/2addr v4, v14

    .line 393
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getUid()I

    move-result v14

    const/16 v15, 0x3e9

    if-ne v14, v15, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getTag()I

    move-result v14

    if-ne v14, v11, :cond_0

    .line 395
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getTaggedSnapshot WiFi entry:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v1, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    move-result-wide v14

    add-long/2addr v6, v14

    .line 398
    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    move-result-wide v14

    add-long/2addr v8, v14

    goto :goto_0

    .line 402
    :cond_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getTaggedSnapshot LTE: Tx="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", Rx="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 403
    move-object/from16 v28, v0

    .end local v0    # "entry":Landroid/net/NetworkStats$Entry;
    .local v28, "entry":Landroid/net/NetworkStats$Entry;
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, ", Total="

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-long v16, v2, v4

    .line 404
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 402
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getTaggedSnapshot WiFi: Tx="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 406
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-long v14, v6, v8

    .line 407
    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 405
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    new-instance v0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    const-string v15, "Tag"

    add-long v20, v4, v2

    add-long v26, v8, v6

    move-object v14, v0

    move-wide/from16 v16, v2

    move-wide/from16 v18, v4

    move-wide/from16 v22, v6

    move-wide/from16 v24, v8

    invoke-direct/range {v14 .. v27}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;-><init>(Ljava/lang/String;JJJJJJ)V

    return-object v0
.end method

.method private updateUsage(Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;)V
    .locals 25
    .param p1, "tagUsage"    # Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    .line 415
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mSimId:I

    invoke-static {v2}, Lcom/mediatek/ims/common/SubscriptionManagerHelper;->getSubIdUsingPhoneId(I)I

    move-result v2

    .line 416
    .local v2, "subId":I
    iget-object v3, v0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget-object v3, v3, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 417
    .local v3, "telephony":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v4

    .line 419
    .local v4, "subscriberId":Ljava/lang/String;
    iget-object v5, v0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mInitialUsage:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getWifiUsage(I)J

    move-result-wide v7

    .line 420
    .local v7, "initWifiTxBytes":J
    iget-object v5, v0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mInitialUsage:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    const/4 v9, 0x2

    invoke-virtual {v5, v9}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getWifiUsage(I)J

    move-result-wide v10

    .line 421
    .local v10, "initWifiRxBytes":J
    iget-object v5, v0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mInitialUsage:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    const/4 v12, 0x3

    invoke-virtual {v5, v12}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getWifiUsage(I)J

    move-result-wide v13

    .line 423
    .local v13, "initWifiTxRxBytes":J
    iget-object v5, v0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mCurrentUsage:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    invoke-virtual {v5, v6}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getWifiUsage(I)J

    move-result-wide v15

    .line 424
    .local v15, "curWifiTxBytes":J
    iget-object v5, v0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mCurrentUsage:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    invoke-virtual {v5, v9}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getWifiUsage(I)J

    move-result-wide v17

    .line 425
    .local v17, "curWifiRxBytes":J
    iget-object v5, v0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mCurrentUsage:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    invoke-virtual {v5, v12}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getWifiUsage(I)J

    move-result-wide v19

    .line 427
    .local v19, "curWifiTxRxBytes":J
    iget-object v5, v0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mPreviousUsage:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    iget-object v12, v0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mCurrentUsage:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    invoke-virtual {v5, v12}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->updateFrom(Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;)V

    .line 433
    invoke-virtual {v1, v6}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getWifiUsage(I)J

    move-result-wide v21

    const-wide/16 v23, 0x0

    cmp-long v5, v21, v23

    if-nez v5, :cond_1

    .line 434
    invoke-virtual {v1, v9}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getWifiUsage(I)J

    move-result-wide v21

    cmp-long v5, v21, v23

    if-nez v5, :cond_0

    .line 436
    move-wide/from16 v21, v10

    .end local v10    # "initWifiRxBytes":J
    .local v21, "initWifiRxBytes":J
    add-long v9, v15, v7

    invoke-virtual {v1, v6, v9, v10}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->setWifiUsage(IJ)V

    .line 437
    add-long v10, v17, v21

    const/4 v5, 0x2

    invoke-virtual {v1, v5, v10, v11}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->setWifiUsage(IJ)V

    .line 438
    add-long v9, v19, v13

    const/4 v11, 0x3

    invoke-virtual {v1, v11, v9, v10}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->setWifiUsage(IJ)V

    goto :goto_0

    .line 434
    .end local v21    # "initWifiRxBytes":J
    .restart local v10    # "initWifiRxBytes":J
    :cond_0
    move-wide/from16 v21, v10

    .end local v10    # "initWifiRxBytes":J
    .restart local v21    # "initWifiRxBytes":J
    goto :goto_0

    .line 433
    .end local v21    # "initWifiRxBytes":J
    .restart local v10    # "initWifiRxBytes":J
    :cond_1
    move-wide/from16 v21, v10

    .line 441
    .end local v10    # "initWifiRxBytes":J
    .restart local v21    # "initWifiRxBytes":J
    :goto_0
    iget-object v9, v0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget v10, v0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mId:I

    invoke-virtual {v9, v10, v1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->usageSet(ILcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;)V

    .line 443
    iget-object v9, v0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mInitialUsage:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    invoke-virtual {v1, v9}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->subtraction(Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;)V

    .line 444
    iget-object v9, v0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mCurrentUsage:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    invoke-virtual {v9, v1}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->updateFrom(Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;)V

    .line 447
    new-instance v9, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    const-string v10, "Delta"

    iget-object v11, v0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mCurrentUsage:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    invoke-direct {v9, v10, v11}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;-><init>(Ljava/lang/String;Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;)V

    .line 448
    .local v9, "deltaUsage":Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;
    iget-object v10, v0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mPreviousUsage:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    invoke-virtual {v9, v10}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->subtraction(Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;)V

    .line 457
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sendVTusageBroadcast:  lterxbytes="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 458
    const/4 v5, 0x2

    invoke-virtual {v9, v5}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getLteUsage(I)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", ltetxbytes="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 459
    invoke-virtual {v9, v6}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getLteUsage(I)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", wifirxbytes="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 460
    const/4 v5, 0x2

    invoke-virtual {v9, v5}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getWifiUsage(I)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", wifiTxbytes="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 461
    invoke-virtual {v9, v6}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getWifiUsage(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", subId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 457
    const-string v6, "ImsVT Usage"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 465
    iget v5, v0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mSimId:I

    invoke-static {v5}, Lcom/mediatek/ims/ImsServiceCallTracker;->getInstance(I)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v5

    invoke-virtual {v5, v2, v9}, Lcom/mediatek/ims/ImsServiceCallTracker;->onCallDataUsageChanged(ILcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;)V

    .line 468
    :cond_2
    return-void
.end method


# virtual methods
.method public requestCallDataUsage()Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;
    .locals 9

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] [onRequestCallDataUsage] Start"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsVT Usage"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-direct {p0}, Lcom/mediatek/ims/internal/ImsVTUsageManager;->canRequestDataUsage()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 284
    return-object v3

    .line 299
    :cond_0
    :try_start_0
    const-class v0, Landroid/net/TrafficStats;

    const-string v4, "getDataLayerSnapshotForUid"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v0, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 300
    .local v0, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 301
    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mContext:Landroid/content/Context;

    aput-object v5, v4, v8

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkStats;

    .line 302
    .local v4, "uidSnapshot":Landroid/net/NetworkStats;
    if-nez v4, :cond_1

    .line 303
    const-string v1, "fail to getDataLayerSnapshotForUid"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    return-object v3

    .line 306
    :cond_1
    invoke-direct {p0, v4}, Lcom/mediatek/ims/internal/ImsVTUsageManager;->getTagUsage(Landroid/net/NetworkStats;)Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    move-result-object v5

    .line 307
    .local v5, "tagUsage":Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;
    invoke-direct {p0, v5}, Lcom/mediatek/ims/internal/ImsVTUsageManager;->updateUsage(Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;)V

    .line 309
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v6, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mId:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "] [onRequestCallDataUsage] Finish (VIWIFI usage:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mCurrentUsage:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    .line 310
    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getWifiUsage(I)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ")"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 309
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mCurrentUsage:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 314
    .end local v0    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "uidSnapshot":Landroid/net/NetworkStats;
    .end local v5    # "tagUsage":Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    .end local v0    # "e":Ljava/lang/Exception;
    return-object v3
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 276
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mContext:Landroid/content/Context;

    .line 277
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .line 264
    iput p1, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mId:I

    .line 265
    return-void
.end method

.method public setInitUsage(Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;)V
    .locals 0
    .param p1, "initUsage"    # Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    .line 272
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mInitialUsage:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    .line 273
    return-void
.end method

.method public setSimId(I)V
    .locals 0
    .param p1, "simId"    # I

    .line 268
    iput p1, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mSimId:I

    .line 269
    return-void
.end method

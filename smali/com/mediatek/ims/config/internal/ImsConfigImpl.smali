.class public Lcom/mediatek/ims/config/internal/ImsConfigImpl;
.super Landroid/telephony/ims/compat/stub/ImsConfigImplBase;
.source "ImsConfigImpl.java"


# static fields
.field private static final ACTION_TRY_WFC_CONNECTION:Ljava/lang/String; = "com.google.android.wfcactivation.TRY_WFC_CONNECTION"

.field static final CARRIER_ID_ATT:I = 0x4a3

.field static final CARRIER_ID_ATT_5G:I = 0x2725

.field static final CARRIER_ID_CRICKET_Q:I = 0x7ac

.field static final CARRIER_ID_CRICKET_R:I = 0x6f3

.field static final CARRIER_ID_FIRSTNET:I = 0x847

.field static final CARRIER_ID_FIRSTNET_LAB:I = 0x848

.field static final CARRIER_ID_TRACFONE_ATT:I = 0x2710

.field private static final DEBUG:Z

.field private static final IMS_SERVICES_DEFAULT_ALL:I = 0x3

.field private static final IMS_SERVICES_SUPPORT_VOLTE:I = 0x1

.field private static final IMS_SERVICES_SUPPORT_VT:I = 0x2

.field private static final PROPERTY_IMSCONFIG_FORCE_NOTIFY:Ljava/lang/String; = "vendor.ril.imsconfig.force.notify"

.field private static final PROP_FORCE_DEBUG_KEY:Ljava/lang/String; = "persist.vendor.log.tel_dbg"

.field private static final TAG:Ljava/lang/String; = "ImsConfigImpl"

.field private static final WFC_AID_VALUE:Ljava/lang/String; = "wfc_aid_value"


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConfigAdapter:Lcom/mediatek/ims/config/internal/ImsConfigAdapter;

.field private mContext:Landroid/content/Context;

.field private mImsCallOemPlugin:Lcom/mediatek/ims/plugin/ImsCallOemPlugin;

.field private mLogTag:Ljava/lang/String;

.field private mPhoneId:I

.field private mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 51
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 52
    const-string v0, "persist.vendor.log.tel_dbg"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    nop

    :goto_1
    sput-boolean v1, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->DEBUG:Z

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/ims/ril/ImsCommandsInterface;Lcom/mediatek/ims/config/internal/ImsConfigAdapter;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imsRilAdapter"    # Lcom/mediatek/ims/ril/ImsCommandsInterface;
    .param p3, "configAdapter"    # Lcom/mediatek/ims/config/internal/ImsConfigAdapter;
    .param p4, "phoneId"    # I

    .line 79
    invoke-direct {p0, p1}, Landroid/telephony/ims/compat/stub/ImsConfigImplBase;-><init>(Landroid/content/Context;)V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mConfigAdapter:Lcom/mediatek/ims/config/internal/ImsConfigAdapter;

    .line 62
    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mImsCallOemPlugin:Lcom/mediatek/ims/plugin/ImsCallOemPlugin;

    .line 512
    new-instance v0, Lcom/mediatek/ims/config/internal/ImsConfigImpl$1;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/config/internal/ImsConfigImpl$1;-><init>(Lcom/mediatek/ims/config/internal/ImsConfigImpl;)V

    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 81
    iput-object p1, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mContext:Landroid/content/Context;

    .line 82
    iput p4, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mPhoneId:I

    .line 83
    iput-object p2, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 84
    iput-object p3, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mConfigAdapter:Lcom/mediatek/ims/config/internal/ImsConfigAdapter;

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsConfigImpl["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mLogTag:Ljava/lang/String;

    .line 88
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 89
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.google.android.wfcactivation.TRY_WFC_CONNECTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/config/internal/ImsConfigImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/config/internal/ImsConfigImpl;

    .line 48
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mLogTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/ims/config/internal/ImsConfigImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/config/internal/ImsConfigImpl;

    .line 48
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/ims/config/internal/ImsConfigImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/config/internal/ImsConfigImpl;

    .line 48
    iget v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mPhoneId:I

    return v0
.end method

.method private getDomainName()Ljava/lang/String;
    .locals 4

    .line 184
    const-string v0, ""

    .line 185
    .local v0, "domain":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mPhoneId:I

    .line 186
    invoke-static {v2, v3}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getActiveSubIdForPhoneId(Landroid/content/Context;I)I

    move-result v2

    .line 185
    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 187
    .local v1, "telephonyMgr":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    .line 188
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getIsimDomain()Ljava/lang/String;

    move-result-object v0

    .line 190
    :cond_0
    return-object v0
.end method

.method private getImsSupportedResCapability()I
    .locals 6

    .line 595
    const-string v0, "persist.vendor.mtk_dynamic_ims_switch"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 596
    const/4 v0, 0x0

    .line 598
    .local v0, "val":I
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mConfigAdapter:Lcom/mediatek/ims/config/internal/ImsConfigAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;->getImsResCapability(I)I

    move-result v1

    .line 600
    .local v1, "volteResCap":I
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mConfigAdapter:Lcom/mediatek/ims/config/internal/ImsConfigAdapter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;->getImsResCapability(I)I

    move-result v2

    .line 602
    .local v2, "vilteResCap":I
    if-ne v1, v3, :cond_0

    .line 603
    or-int/lit8 v0, v0, 0x1

    .line 605
    :cond_0
    if-ne v2, v3, :cond_1

    .line 606
    or-int/lit8 v0, v0, 0x2

    .line 608
    :cond_1
    iget-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mLogTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getImsSupportedResCapability: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 611
    nop

    .end local v1    # "volteResCap":I
    .end local v2    # "vilteResCap":I
    goto :goto_0

    .line 609
    :catch_0
    move-exception v1

    .line 610
    .local v1, "e":Lcom/android/ims/ImsException;
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mLogTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getImsSupportedResCapability failed, code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    .end local v1    # "e":Lcom/android/ims/ImsException;
    :goto_0
    return v0

    .line 614
    .end local v0    # "val":I
    :cond_2
    const/4 v0, 0x3

    return v0
.end method

.method private saveAidValue(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "aid"    # Ljava/lang/String;

    .line 560
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mPhoneId:I

    .line 561
    invoke-static {v1, v2}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getActiveSubIdForPhoneId(Landroid/content/Context;I)I

    move-result v1

    .line 560
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 562
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 563
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSpecificCarrierId()I

    move-result v1

    .line 564
    .local v1, "carrierId":I
    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 572
    :sswitch_0
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mLogTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveAidValue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mLogTag:Ljava/lang/String;

    invoke-static {v4, p2}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wfc_aid_value"

    invoke-static {v2, v3, p2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 575
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mLogTag:Ljava/lang/String;

    const-string v3, "Save AID failed"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    .end local v1    # "carrierId":I
    :cond_0
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x4a3 -> :sswitch_0
        0x6f3 -> :sswitch_0
        0x7ac -> :sswitch_0
        0x847 -> :sswitch_0
        0x848 -> :sswitch_0
        0x2710 -> :sswitch_0
        0x2725 -> :sswitch_0
    .end sparse-switch
.end method

.method private setImsUserAgent(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .line 298
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setImsUserAgent value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    .line 301
    .local v1, "keys":[Ljava/lang/String;
    new-array v0, v0, [Ljava/lang/String;

    .line 302
    .local v0, "values":[Ljava/lang/String;
    const-string v2, "user_agent"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 303
    aput-object p1, v0, v3

    .line 304
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mConfigAdapter:Lcom/mediatek/ims/config/internal/ImsConfigAdapter;

    invoke-virtual {v2, v1, v0, v3}, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;->setModemImsCfg([Ljava/lang/String;[Ljava/lang/String;I)[I

    .line 305
    return-void
.end method


# virtual methods
.method public getFeatureValue(IILcom/android/ims/ImsConfigListener;)V
    .locals 6
    .param p1, "feature"    # I
    .param p2, "network"    # I
    .param p3, "listener"    # Lcom/android/ims/ImsConfigListener;

    .line 321
    const-string v0, "getFeatureValue("

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mConfigAdapter:Lcom/mediatek/ims/config/internal/ImsConfigAdapter;

    invoke-virtual {v2, p1, p2}, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;->getFeatureValue(II)I

    move-result v2

    .line 322
    .local v2, "value":I
    sget-boolean v3, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 323
    iget-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mLogTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " on phone "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mPhoneId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_0
    invoke-interface {p3, p1, p2, v2, v1}, Lcom/android/ims/ImsConfigListener;->onGetFeatureResponse(IIII)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    .end local v2    # "value":I
    goto :goto_0

    .line 335
    :catch_0
    move-exception v1

    goto :goto_1

    .line 328
    :catch_1
    move-exception v2

    .line 329
    .local v2, "e":Lcom/android/ims/ImsException;
    :try_start_1
    iget-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mLogTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") failed, code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/ims/ImsException;->getCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const/4 v3, 0x1

    invoke-interface {p3, p1, p2, v1, v3}, Lcom/android/ims/ImsConfigListener;->onGetFeatureResponse(IIII)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 338
    .end local v2    # "e":Lcom/android/ims/ImsException;
    :goto_0
    nop

    .line 339
    return-void

    .line 336
    .local v1, "e":Landroid/os/RemoteException;
    :goto_1
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mLogTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ") remote failed!"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getProvisionedStringValue(I)Ljava/lang/String;
    .locals 6
    .param p1, "item"    # I

    .line 146
    const/16 v0, 0x4a

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 147
    return-object v1

    .line 152
    :cond_0
    const/16 v0, 0xc

    const-string v2, "getProvisionedStringValue("

    if-ne p1, v0, :cond_1

    .line 153
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->getDomainName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 171
    :catch_0
    move-exception v0

    goto :goto_0

    .line 158
    :cond_1
    const/16 v0, 0x48

    if-ne p1, v0, :cond_2

    .line 159
    const/16 p1, 0x3ea

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mConfigAdapter:Lcom/mediatek/ims/config/internal/ImsConfigAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;->getProvisionedStringValue(I)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "result":Ljava/lang/String;
    sget-boolean v3, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 165
    iget-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mLogTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " on phone "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mPhoneId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from binder pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 166
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", binder uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 167
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", process pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", process uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 168
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 165
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :cond_3
    return-object v0

    .line 172
    .local v0, "e":Lcom/android/ims/ImsException;
    :goto_0
    iget-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mLogTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ") failed, code: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 175
    const-string v1, "Unknown"

    return-object v1

    .line 177
    :cond_4
    return-object v1
.end method

.method public getProvisionedValue(I)I
    .locals 5
    .param p1, "item"    # I

    .line 104
    const-string v0, "getProvisionedValue("

    const/16 v1, 0x49

    if-ne p1, v1, :cond_0

    .line 105
    invoke-direct {p0}, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->getImsSupportedResCapability()I

    move-result v0

    return v0

    .line 109
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mConfigAdapter:Lcom/mediatek/ims/config/internal/ImsConfigAdapter;

    invoke-virtual {v1, p1}, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;->getProvisionedValue(I)I

    move-result v1

    .line 112
    .local v1, "result":I
    const/16 v2, 0x1b

    if-ne p1, v2, :cond_1

    .line 113
    invoke-static {v1}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->converMtkWFCModeValuetToMotoWFCModeValue(I)I

    move-result v2

    move v1, v2

    .line 117
    :cond_1
    sget-boolean v2, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 118
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mLogTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " on phone"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from binder pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 119
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", binder uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 120
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", process pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", process uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 121
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 118
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :cond_2
    return v1

    .line 124
    .end local v1    # "result":I
    :catch_0
    move-exception v1

    .line 125
    .local v1, "e":Lcom/android/ims/ImsException;
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mLogTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ") failed, code: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/ims/ImsException;->getCode()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 128
    const/4 v0, -0x1

    return v0
.end method

.method public getVolteProvisioned()Z
    .locals 1

    .line 508
    const/4 v0, 0x1

    return v0
.end method

.method public setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V
    .locals 7
    .param p1, "feature"    # I
    .param p2, "network"    # I
    .param p3, "value"    # I
    .param p4, "listener"    # Lcom/android/ims/ImsConfigListener;

    .line 356
    const-string v0, ", "

    const-string v1, "setFeatureValue("

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    iget-object v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mLogTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ") on phone "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mPhoneId:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " from pid "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 357
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", uid "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 358
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", listener "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 356
    invoke-static {v4, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const/16 v0, 0x66

    const/4 v4, -0x1

    if-eq p1, v4, :cond_f

    .line 367
    const/4 v5, 0x4

    if-eq p1, v5, :cond_c

    const/4 v5, 0x5

    if-ne p1, v5, :cond_0

    goto/16 :goto_2

    .line 379
    :cond_0
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMims()Z

    move-result v5

    if-nez v5, :cond_2

    .line 380
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->getMainCapabilityPhoneId()I

    move-result v5

    iget v6, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mPhoneId:I

    if-ne v5, v6, :cond_1

    goto :goto_0

    .line 381
    :cond_1
    iget-object v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mLogTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setFeatureValue is not allow on non main capability phoneId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mPhoneId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in non MIMS project"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    new-instance v4, Lcom/android/ims/ImsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Do not setFeatureValue for non MIMS not main capability phoneId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mPhoneId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigImpl;
    .end local p1    # "feature":I
    .end local p2    # "network":I
    .end local p3    # "value":I
    .end local p4    # "listener":Lcom/android/ims/ImsConfigListener;
    throw v4

    .line 390
    .restart local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigImpl;
    .restart local p1    # "feature":I
    .restart local p2    # "network":I
    .restart local p3    # "value":I
    .restart local p4    # "listener":Lcom/android/ims/ImsConfigListener;
    :cond_2
    :goto_0
    if-ne p3, v3, :cond_3

    .line 391
    const-string v0, "1"

    const-string v5, "persist.vendor.mtk_dynamic_ims_switch"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_3

    const/16 v0, 0x9

    if-eq p1, v0, :cond_3

    .line 395
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mConfigAdapter:Lcom/mediatek/ims/config/internal/ImsConfigAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;->getImsResCapability(I)I

    move-result v0

    .line 397
    .local v0, "resCap":I
    if-eq v0, v3, :cond_3

    const-string v5, "vendor.ril.imsconfig.force.notify"

    .line 398
    invoke-static {v5, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_3

    .line 399
    iget-object v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mLogTag:Ljava/lang/String;

    const-string v6, "setFeatureValue, modify the value in ImsConfig."

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    const/4 p3, 0x0

    .line 405
    .end local v0    # "resCap":I
    :cond_3
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mConfigAdapter:Lcom/mediatek/ims/config/internal/ImsConfigAdapter;

    invoke-virtual {v0, p1, p2, p3, v4}, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;->setFeatureValue(IIII)V

    .line 407
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mImsCallOemPlugin:Lcom/mediatek/ims/plugin/ImsCallOemPlugin;

    if-nez v0, :cond_4

    .line 408
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/ims/plugin/ExtensionFactory;->makeOemPluginFactory(Landroid/content/Context;)Lcom/mediatek/ims/plugin/OemPluginFactory;

    move-result-object v0

    iget-object v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mContext:Landroid/content/Context;

    .line 409
    invoke-interface {v0, v5}, Lcom/mediatek/ims/plugin/OemPluginFactory;->makeImsCallPlugin(Landroid/content/Context;)Lcom/mediatek/ims/plugin/ImsCallOemPlugin;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mImsCallOemPlugin:Lcom/mediatek/ims/plugin/ImsCallOemPlugin;

    .line 412
    :cond_4
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mImsCallOemPlugin:Lcom/mediatek/ims/plugin/ImsCallOemPlugin;

    invoke-interface {v0}, Lcom/mediatek/ims/plugin/ImsCallOemPlugin;->isUpdateViwifiFeatureValueAsViLTE()Z

    move-result v0

    if-eqz v0, :cond_5

    if-ne v3, p1, :cond_5

    .line 414
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mConfigAdapter:Lcom/mediatek/ims/config/internal/ImsConfigAdapter;

    const/4 v5, 0x3

    invoke-virtual {v0, v5, v3, p3, v4}, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;->setFeatureValue(IIII)V

    .line 422
    :cond_5
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v0

    if-nez v0, :cond_a

    .line 424
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 443
    :pswitch_0
    const-string v4, "persist.vendor.mtk.viwifi.enable"

    iget v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mPhoneId:I

    invoke-static {v4, v5}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getFeaturePropValue(Ljava/lang/String;I)I

    move-result v4

    .line 445
    .local v4, "oldViWifiValue":I
    if-eq p3, v4, :cond_a

    .line 446
    if-ne p3, v3, :cond_6

    .line 447
    iget-object v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v5, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->turnOnViwifi(Landroid/os/Message;)V

    goto :goto_1

    .line 449
    :cond_6
    iget-object v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v5, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->turnOffViwifi(Landroid/os/Message;)V

    goto :goto_1

    .line 454
    .end local v4    # "oldViWifiValue":I
    :pswitch_1
    const-string v4, "persist.vendor.mtk.wfc.enable"

    iget v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mPhoneId:I

    invoke-static {v4, v5}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getFeaturePropValue(Ljava/lang/String;I)I

    move-result v4

    .line 456
    .local v4, "oldWfcValue":I
    if-eq p3, v4, :cond_a

    .line 457
    if-ne p3, v3, :cond_7

    .line 458
    iget-object v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v5, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->turnOnWfc(Landroid/os/Message;)V

    goto :goto_1

    .line 460
    :cond_7
    iget-object v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v5, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->turnOffWfc(Landroid/os/Message;)V

    goto :goto_1

    .line 426
    .end local v4    # "oldWfcValue":I
    :pswitch_2
    const-string v4, "persist.vendor.mtk.vilte.enable"

    iget v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mPhoneId:I

    invoke-static {v4, v5}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getFeaturePropValue(Ljava/lang/String;I)I

    move-result v4

    .line 428
    .local v4, "oldViLTEValue":I
    if-eq p3, v4, :cond_a

    .line 429
    if-ne p3, v3, :cond_8

    .line 430
    iget-object v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v5, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->turnOnVilte(Landroid/os/Message;)V

    .line 431
    iget-object v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mImsCallOemPlugin:Lcom/mediatek/ims/plugin/ImsCallOemPlugin;

    invoke-interface {v5}, Lcom/mediatek/ims/plugin/ImsCallOemPlugin;->isUpdateViwifiFeatureValueAsViLTE()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 432
    iget-object v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v5, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->turnOnViwifi(Landroid/os/Message;)V

    goto :goto_1

    .line 435
    :cond_8
    iget-object v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v5, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->turnOffVilte(Landroid/os/Message;)V

    .line 436
    iget-object v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mImsCallOemPlugin:Lcom/mediatek/ims/plugin/ImsCallOemPlugin;

    invoke-interface {v5}, Lcom/mediatek/ims/plugin/ImsCallOemPlugin;->isUpdateViwifiFeatureValueAsViLTE()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 437
    iget-object v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v5, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->turnOffViwifi(Landroid/os/Message;)V

    goto :goto_1

    .line 465
    .end local v4    # "oldViLTEValue":I
    :pswitch_3
    const-string v4, "persist.vendor.mtk.volte.enable"

    iget v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mPhoneId:I

    invoke-static {v4, v5}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getFeaturePropValue(Ljava/lang/String;I)I

    move-result v4

    .line 467
    .local v4, "oldVoLTEValue":I
    if-eq p3, v4, :cond_a

    .line 468
    if-ne p3, v3, :cond_9

    .line 469
    iget-object v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v5, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->turnOnVolte(Landroid/os/Message;)V

    goto :goto_1

    .line 471
    :cond_9
    iget-object v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v5, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->turnOffVolte(Landroid/os/Message;)V

    .line 480
    .end local v4    # "oldVoLTEValue":I
    :cond_a
    :goto_1
    if-eqz p4, :cond_b

    .line 481
    invoke-interface {p4, p1, p2, p3, v2}, Lcom/android/ims/ImsConfigListener;->onSetFeatureResponse(IIII)V

    .line 492
    :cond_b
    goto :goto_4

    .line 369
    :cond_c
    :goto_2
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/ImsService;

    move-result-object v0

    iget v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mPhoneId:I

    .line 370
    if-ne p3, v3, :cond_d

    move v5, v3

    goto :goto_3

    :cond_d
    move v5, v2

    .line 369
    :goto_3
    invoke-virtual {v0, v4, v5}, Lcom/mediatek/ims/ImsService;->setIsSupportUT(IZ)V

    .line 371
    if-eqz p4, :cond_e

    .line 372
    invoke-interface {p4, p1, p2, p3, v2}, Lcom/android/ims/ImsConfigListener;->onSetFeatureResponse(IIII)V

    .line 375
    :cond_e
    return-void

    .line 363
    :cond_f
    iget-object v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mLogTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setFeatureValue is not support currently:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    new-instance v4, Lcom/android/ims/ImsException;

    const-string v5, "setFeatureValue is not support currently."

    invoke-direct {v4, v5, v0}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigImpl;
    .end local p1    # "feature":I
    .end local p2    # "network":I
    .end local p3    # "value":I
    .end local p4    # "listener":Lcom/android/ims/ImsConfigListener;
    throw v4
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    .restart local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigImpl;
    .restart local p1    # "feature":I
    .restart local p2    # "network":I
    .restart local p3    # "value":I
    .restart local p4    # "listener":Lcom/android/ims/ImsConfigListener;
    :catch_0
    move-exception v0

    goto :goto_5

    .line 484
    :catch_1
    move-exception v0

    .line 485
    .local v0, "e":Lcom/android/ims/ImsException;
    :try_start_1
    iget-object v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mLogTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") failed, code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    if-eqz p4, :cond_10

    .line 488
    invoke-interface {p4, p1, p2, v2, v3}, Lcom/android/ims/ImsConfigListener;->onSetFeatureResponse(IIII)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 496
    .end local v0    # "e":Lcom/android/ims/ImsException;
    :cond_10
    :goto_4
    nop

    .line 497
    return-void

    .line 494
    .local v0, "e":Landroid/os/RemoteException;
    :goto_5
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mLogTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") remote failed!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setProvisionedStringValue(ILjava/lang/String;)I
    .locals 11
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 245
    const/16 v0, 0x4a

    const-string v1, " ,retVal:"

    const-string v2, ", uid "

    const-string v3, " from pid "

    const-string v4, ") on phone "

    const-string v5, ", "

    const-string v6, "setProvisionedStringValue("

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne p1, v0, :cond_1

    .line 246
    :try_start_0
    invoke-direct {p0, p2}, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->setImsUserAgent(Ljava/lang/String;)V

    .line 247
    sget-boolean v0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mLogTag:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mPhoneId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 249
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 250
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 248
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_0
    return v8

    .line 290
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 258
    :cond_1
    const/16 v0, 0xc

    if-ne p1, v0, :cond_2

    .line 259
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mLogTag:Ljava/lang/String;

    const-string v1, "ProvisioningManager.KEY_REGISTRATION_DOMAIN_NAME: value can\'t be changed"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return v7

    .line 265
    :cond_2
    const/16 v0, 0x48

    if-ne p1, v0, :cond_4

    .line 266
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mLogTag:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setProvisionedStringValue WIFI_MDN set db value="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mLogTag:Ljava/lang/String;

    invoke-static {v10, p2}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    if-nez p2, :cond_3

    .line 269
    const-string v0, "0"

    move-object p2, v0

    .line 272
    :cond_3
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mContext:Landroid/content/Context;

    iget v9, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mPhoneId:I

    .line 273
    invoke-static {v0, v9}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getActiveSubIdForPhoneId(Landroid/content/Context;I)I

    move-result v0

    const-string v9, "wfc_ims_mdn"

    .line 272
    invoke-static {v0, v9, p2}, Landroid/telephony/SubscriptionManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p2}, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->saveAidValue(Landroid/content/Context;Ljava/lang/String;)V

    .line 276
    const/16 p1, 0x3ea

    .line 280
    :cond_4
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mConfigAdapter:Lcom/mediatek/ims/config/internal/ImsConfigAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;->setProvisionedStringValue(ILjava/lang/String;)V

    .line 283
    sget-boolean v0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->DEBUG:Z

    if-eqz v0, :cond_5

    .line 284
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mLogTag:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mPhoneId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 285
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 286
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 284
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :cond_5
    return v8

    .line 291
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setProvisionedValue("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") failed, e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    return v7
.end method

.method public setProvisionedValue(II)I
    .locals 6
    .param p1, "item"    # I
    .param p2, "value"    # I

    .line 206
    const-string v0, "setProvisionedValue("

    const/16 v1, 0x49

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    .line 207
    return v2

    .line 212
    :cond_0
    const/16 v1, 0x1b

    if-ne p1, v1, :cond_1

    .line 213
    invoke-static {p2}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->convertMotoWFCModeValueToMtkWFCModeValue(I)I

    move-result p2

    .line 218
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mConfigAdapter:Lcom/mediatek/ims/config/internal/ImsConfigAdapter;

    invoke-virtual {v1, p1, p2}, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;->setProvisionedValue(II)V

    .line 219
    sget-boolean v1, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->DEBUG:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 220
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mLogTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") on phone "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mPhoneId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 221
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 222
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,retVal:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 220
    invoke-static {v1, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :cond_2
    return v3

    .line 226
    :catch_0
    move-exception v1

    .line 227
    .local v1, "e":Lcom/android/ims/ImsException;
    iget-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->mLogTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ") failed, code: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    return v2
.end method

.class public Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ImsConfigEventReceiver.java"


# static fields
.field private static final ACTION_CXP_NOTIFY_FEATURE:Ljava/lang/String; = "com.mediatek.common.carrierexpress.cxp_notify_feature"

.field private static final DEBUG:Z

.field private static final INVALID_VALUE:Ljava/lang/String; = "-1"

.field private static final PROPERTY_MTK_RCS_UA_SUPPORT:Ljava/lang/String; = "persist.vendor.mtk_rcs_ua_support"

.field private static final PROPERTY_MTK_VILTE_SUPPORT:Ljava/lang/String; = "persist.vendor.vilte_support"

.field private static final PROPERTY_MTK_VIWIFI_SUPPORT:Ljava/lang/String; = "persist.vendor.viwifi_support"

.field private static final PROPERTY_MTK_VOLTE_SUPPORT:Ljava/lang/String; = "persist.vendor.volte_support"

.field private static final PROPERTY_MTK_WFC_SUPPORT:Ljava/lang/String; = "persist.vendor.mtk_wfc_support"

.field private static final PROPERTY_SUPPORT:Ljava/lang/String; = "1"

.field private static final PROP_FORCE_DEBUG_KEY:Ljava/lang/String; = "persist.vendor.log.tel_dbg"

.field private static final TAG:Ljava/lang/String; = "ImsConfigEventReceiver"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

.field private mIsCarrierConfigLoaded:Z

.field private mLogTag:Ljava/lang/String;

.field private mMainPhoneId:I

.field private final mPhoneId:I

.field private mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 38
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 39
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
    sput-boolean v1, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->DEBUG:Z

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;ILcom/mediatek/ims/ril/ImsCommandsInterface;)V
    .locals 4
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "phoneId"    # I
    .param p3, "imsRilAdapter"    # Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 63
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mMainPhoneId:I

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mIsCarrierConfigLoaded:Z

    .line 60
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    .line 64
    iput p2, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mPhoneId:I

    .line 65
    iput-object p1, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mHandler:Landroid/os/Handler;

    .line 67
    iput-object p3, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsConfigEventReceiver["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mLogTag:Ljava/lang/String;

    .line 69
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->getSimStateForSlotIndex(I)I

    move-result v1

    .line 70
    .local v1, "simState":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/16 v3, 0xa

    if-ne v1, v3, :cond_1

    :cond_0
    move v0, v2

    :cond_1
    iput-boolean v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mIsCarrierConfigLoaded:Z

    .line 72
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init with phoneId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", simState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", carrier config loaded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mIsCarrierConfigLoaded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;

    .line 35
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mLogTag:Ljava/lang/String;

    return-object v0
.end method

.method private handleCarrierConfigChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 265
    const-string v0, "phone"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 267
    .local v0, "phoneId":I
    iget v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mPhoneId:I

    if-eq v0, v1, :cond_0

    .line 268
    return-void

    .line 271
    :cond_0
    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getSimStateForSlotIndex(I)I

    move-result v1

    .line 272
    .local v1, "simState":I
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mLogTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "received CARRIER_CONFIG_CHANGED["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], simState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 275
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mIsCarrierConfigLoaded:Z

    .line 278
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 279
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_2

    .line 280
    invoke-virtual {v2, v0}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 284
    iget-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mLogTag:Ljava/lang/String;

    const-string v4, "No need to reload config storage"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    return-void

    .line 289
    :cond_2
    const-string v3, "ACTION_CARRIER_CONFIG_CHANGED"

    invoke-direct {p0, v3}, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->resetWfcModeFlag(Ljava/lang/String;)V

    .line 290
    invoke-direct {p0}, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->syncWfcMdn()V

    .line 292
    const-string v3, "mtk_wfc_remove_preference_mode_bool"

    invoke-static {p1, v3, v0}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v3

    .line 294
    .local v3, "removeWfcPrefMode":Z
    const-string v4, "editable_wfc_mode_bool"

    invoke-static {p1, v4, v0}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v4

    .line 296
    .local v4, "wfcModeEditable":Z
    iget-object v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mLogTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KEY_WFC_REMOVE_PREFERENCE_MODE_BOOL = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mLogTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KEY_EDITABLE_WFC_MODE_BOOL = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    if-nez v4, :cond_5

    .line 299
    const-string v5, "carrier_default_wfc_ims_mode_int"

    invoke-static {p1, v5, v0}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getIntCarrierConfig(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    .line 301
    .local v5, "wfcMode":I
    iget-object v6, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mLogTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTION_CARRIER_CONFIG_CHANGED: set wfc mode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", phoneId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMims()Z

    move-result v6

    if-nez v6, :cond_4

    .line 306
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->getMainPhoneIdForSingleIms()I

    move-result v6

    if-ne v6, v0, :cond_3

    goto :goto_0

    .line 309
    :cond_3
    iget-object v6, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mLogTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "no set wfc mode due to mims: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMims()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", main phone id:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 310
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->getMainPhoneIdForSingleIms()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 309
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 307
    :cond_4
    :goto_0
    invoke-static {p1, v0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/ims/ImsManager;->setWfcMode(I)V

    .line 314
    .end local v5    # "wfcMode":I
    :cond_5
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->setVoiceDomainSetting(Landroid/content/Context;I)V

    .line 315
    return-void
.end method

.method private resetWfcModeFlag(Ljava/lang/String;)V
    .locals 5
    .param p1, "reason"    # Ljava/lang/String;

    .line 318
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 319
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 320
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mLogTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetWfcModeFlag, reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iput v1, v0, Landroid/os/Message;->what:I

    .line 322
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 323
    return-void
.end method

.method private setVoiceDomainSetting(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 352
    new-instance v0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver$1;-><init>(Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;Landroid/content/Context;I)V

    .line 378
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 379
    return-void
.end method

.method private syncWfcMdn()V
    .locals 2

    .line 343
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 344
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 345
    .local v0, "msg":Landroid/os/Message;
    iput v1, v0, Landroid/os/Message;->what:I

    .line 346
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 347
    return-void
.end method

.method private updateFeatureSupportProperty(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 202
    const-string v0, "persist.vendor.mtk_wfc_support"

    const-string v1, "-1"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "isWfcOn":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "1"

    const/4 v4, 0x0

    if-nez v2, :cond_1

    .line 205
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 206
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v2, v4}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->turnOnWfc(Landroid/os/Message;)V

    goto :goto_0

    .line 208
    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v2, v4}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->turnOffWfc(Landroid/os/Message;)V

    .line 213
    :cond_1
    :goto_0
    const-string v2, "persist.vendor.volte_support"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, "isVolteOn":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 216
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 217
    iget-object v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v5, v4}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->turnOnVolte(Landroid/os/Message;)V

    goto :goto_1

    .line 219
    :cond_2
    iget-object v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v5, v4}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->turnOffVolte(Landroid/os/Message;)V

    .line 224
    :cond_3
    :goto_1
    const-string v5, "persist.vendor.vilte_support"

    invoke-virtual {p1, v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 226
    .local v5, "isVilteOn":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 227
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 228
    iget-object v6, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v6, v4}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->turnOnVilte(Landroid/os/Message;)V

    goto :goto_2

    .line 230
    :cond_4
    iget-object v6, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v6, v4}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->turnOffVilte(Landroid/os/Message;)V

    .line 235
    :cond_5
    :goto_2
    const-string v6, "persist.vendor.viwifi_support"

    invoke-virtual {p1, v6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 237
    .local v6, "isViWiFiOn":Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 238
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 239
    iget-object v7, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v7, v4}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->turnOnViwifi(Landroid/os/Message;)V

    goto :goto_3

    .line 241
    :cond_6
    iget-object v7, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v7, v4}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->turnOffViwifi(Landroid/os/Message;)V

    .line 246
    :cond_7
    :goto_3
    const-string v7, "persist.vendor.mtk_rcs_ua_support"

    invoke-virtual {p1, v7, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 248
    .local v7, "isRcsUaOn":Ljava/lang/String;
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 249
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 250
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v1, v4}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->turnOnRcsUa(Landroid/os/Message;)V

    goto :goto_4

    .line 252
    :cond_8
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v1, v4}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->turnOffRcsUa(Landroid/os/Message;)V

    .line 256
    :cond_9
    :goto_4
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mLogTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateFeatureSupportProperty(), volte:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " wfc:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " vilte:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " viwifi:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isRcsUaOn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return-void
.end method

.method private updateImsServiceConfig(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 326
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    if-nez v0, :cond_0

    .line 327
    invoke-static {p1}, Lcom/mediatek/ims/plugin/ExtensionFactory;->makeOemPluginFactory(Landroid/content/Context;)Lcom/mediatek/ims/plugin/OemPluginFactory;

    move-result-object v0

    .line 328
    invoke-interface {v0, p1}, Lcom/mediatek/ims/plugin/OemPluginFactory;->makeImsManagerPlugin(Landroid/content/Context;)Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    .line 331
    :cond_0
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMims()Z

    move-result v0

    if-nez v0, :cond_2

    .line 332
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->getMainCapabilityPhoneId()I

    move-result v0

    if-ne p2, v0, :cond_1

    goto :goto_0

    .line 336
    :cond_1
    sget-boolean v0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 337
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mLogTag:Ljava/lang/String;

    const-string v1, "Do not update if phoneId is not main capability"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 334
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    invoke-interface {v0, p1, p2}, Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;->updateImsServiceConfig(Landroid/content/Context;I)V

    .line 339
    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 78
    const/4 v0, -0x1

    .line 79
    .local v0, "phoneId":I
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v2, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_1
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_1

    :sswitch_2
    const-string v2, "com.mediatek.common.carrierexpress.cxp_notify_feature"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_3
    const-string v2, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_1

    :sswitch_4
    const-string v2, "com.mediatek.ims.MTK_MMTEL_READY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :goto_0
    move v1, v5

    :goto_1
    const-string v2, "defaultSupportVolte =false and mIsCarrierConfigLoaded =false, don\'t update ims service config."

    const-string v6, "carrier_volte_available_bool"

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_7

    .line 182
    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 184
    .local v1, "opFeature":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 187
    invoke-direct {p0, v1}, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->updateFeatureSupportProperty(Landroid/os/Bundle;)V

    .line 190
    invoke-direct {p0, p1, v0}, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->updateImsServiceConfig(Landroid/content/Context;I)V

    goto/16 :goto_7

    .line 192
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mLogTag:Ljava/lang/String;

    const-string v3, "ACTION_CXP_NOTIFY_FEATURE, opFeature is null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 142
    .end local v1    # "opFeature":Landroid/os/Bundle;
    :pswitch_1
    const/4 v1, 0x1

    .line 144
    .local v1, "isNeedUpdate":Z
    iget v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mMainPhoneId:I

    if-ne v3, v5, :cond_2

    .line 146
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->getMainCapabilityPhoneId()I

    move-result v3

    iput v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mMainPhoneId:I

    .line 147
    const/4 v1, 0x0

    goto :goto_2

    .line 149
    :cond_2
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->getMainCapabilityPhoneId()I

    move-result v0

    .line 151
    iget v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mMainPhoneId:I

    if-ne v0, v3, :cond_3

    .line 153
    const/4 v1, 0x0

    goto :goto_2

    .line 156
    :cond_3
    iput v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mMainPhoneId:I

    .line 158
    iget v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mPhoneId:I

    if-eq v3, v0, :cond_4

    .line 159
    const/4 v1, 0x0

    .line 164
    :cond_4
    :goto_2
    if-eqz v1, :cond_d

    .line 165
    const-string v3, "ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-direct {p0, v3}, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->resetWfcModeFlag(Ljava/lang/String;)V

    .line 166
    iget-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mLogTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SET_RADIO_CAPABILITY_DONE, update IMS config with phoneId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mPhoneId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 171
    .local v3, "defaultSupportVolte":Z
    if-nez v3, :cond_6

    iget-boolean v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mIsCarrierConfigLoaded:Z

    if-eqz v4, :cond_5

    goto :goto_3

    .line 174
    :cond_5
    iget-object v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mLogTag:Ljava/lang/String;

    invoke-static {v4, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 172
    :cond_6
    :goto_3
    iget v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mPhoneId:I

    invoke-direct {p0, p1, v2}, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->updateImsServiceConfig(Landroid/content/Context;I)V

    .line 178
    .end local v3    # "defaultSupportVolte":Z
    :goto_4
    goto/16 :goto_7

    .line 120
    .end local v1    # "isNeedUpdate":Z
    :pswitch_2
    const-string v1, "android:phone_id"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 123
    iget v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mPhoneId:I

    if-ne v0, v1, :cond_d

    .line 124
    const-string v1, "ACTION_MTK_MMTEL_READY"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->resetWfcModeFlag(Ljava/lang/String;)V

    .line 125
    iget v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mPhoneId:I

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getSimStateForSlotIndex(I)I

    move-result v1

    .line 126
    .local v1, "simState":I
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 128
    .restart local v3    # "defaultSupportVolte":Z
    iget-object v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mLogTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_MTK_MMTEL_READY, update IMS config with phoneId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", simState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", carrier config loaded: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mIsCarrierConfigLoaded:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", defaultSupportVolte: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    if-nez v3, :cond_8

    iget-boolean v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mIsCarrierConfigLoaded:Z

    if-eqz v4, :cond_7

    goto :goto_5

    .line 134
    :cond_7
    iget-object v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mLogTag:Ljava/lang/String;

    invoke-static {v4, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 132
    :cond_8
    :goto_5
    invoke-direct {p0, p1, v0}, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->updateImsServiceConfig(Landroid/content/Context;I)V

    .line 138
    .end local v1    # "simState":I
    .end local v3    # "defaultSupportVolte":Z
    :goto_6
    goto/16 :goto_7

    .line 116
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->handleCarrierConfigChanged(Landroid/content/Context;Landroid/content/Intent;)V

    .line 117
    goto/16 :goto_7

    .line 81
    :pswitch_4
    const-string v1, "ss"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "state":Ljava/lang/String;
    const-string v2, "phone"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 85
    iget v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mPhoneId:I

    if-ne v0, v2, :cond_d

    if-eqz v1, :cond_d

    .line 86
    const-string v2, "READY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 87
    iget v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mPhoneId:I

    invoke-static {p1, v2}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->isWfcEnabledByUser(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_d

    iget v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mPhoneId:I

    .line 88
    invoke-static {p1, v2}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getWfcMode(Landroid/content/Context;I)I

    move-result v2

    if-nez v2, :cond_d

    .line 90
    iget v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mPhoneId:I

    invoke-static {p1, v2, v4}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->sendWifiOnlyModeIntent(Landroid/content/Context;IZ)V

    .line 91
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mLogTag:Ljava/lang/String;

    const-string v3, "Turn OFF radio, after sim ready and wfc mode is wifi_only"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 94
    :cond_9
    const-string v2, "ABSENT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 95
    const-string v4, "LOADED"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 96
    :cond_a
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 98
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mLogTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ICC_ABSENT["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], reset carrier config loaded flag."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iput-boolean v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mIsCarrierConfigLoaded:Z

    .line 102
    :cond_b
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 104
    .local v2, "defaultSupportVolte":Z
    if-eqz v2, :cond_c

    const-string v3, "persist.vendor.mtk_dynamic_ims_switch"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 106
    iget-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mLogTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateImsServiceConfig after SIM event, phoneId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-direct {p0, p1, v0}, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->updateImsServiceConfig(Landroid/content/Context;I)V

    .line 111
    .end local v2    # "defaultSupportVolte":Z
    :cond_c
    nop

    .line 197
    .end local v1    # "state":Ljava/lang/String;
    :cond_d
    :goto_7
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7249aca6 -> :sswitch_4
        -0x43dd7a3f -> :sswitch_3
        -0x1a88cade -> :sswitch_2
        -0xdb21ee7 -> :sswitch_1
        0x3d6899a4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

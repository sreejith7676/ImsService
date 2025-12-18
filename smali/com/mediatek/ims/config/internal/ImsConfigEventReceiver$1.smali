.class Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver$1;
.super Ljava/lang/Object;
.source "ImsConfigEventReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->setVoiceDomainSetting(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$phoneId:I


# direct methods
.method constructor <init>(Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;Landroid/content/Context;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 352
    iput-object p1, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver$1;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;

    iput-object p2, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver$1;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver$1;->val$phoneId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 354
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver$1;->val$context:Landroid/content/Context;

    iget v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver$1;->val$phoneId:I

    invoke-static {v0, v1}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getActiveSubIdForPhoneId(Landroid/content/Context;I)I

    move-result v0

    .line 355
    .local v0, "subId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 356
    return-void

    .line 359
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver$1;->val$context:Landroid/content/Context;

    const-string v2, "moto_voice_domain_pref_ignore_bool"

    iget v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver$1;->val$phoneId:I

    invoke-static {v1, v2, v3}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 362
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver$1;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;

    invoke-static {v1}, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->access$000(Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SetVoiceDomainSetting invalid"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    return-void

    .line 366
    :cond_1
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver$1;->val$context:Landroid/content/Context;

    iget v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver$1;->val$phoneId:I

    invoke-static {v1, v2}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->isVolteEnabledByPlatform(Landroid/content/Context;I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver$1;->val$context:Landroid/content/Context;

    iget v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver$1;->val$phoneId:I

    .line 367
    invoke-static {v1, v3}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->isWfcEnabledByPlatform(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x1

    .line 368
    .local v1, "bEnabled":Z
    :goto_1
    if-eqz v1, :cond_4

    const/4 v2, 0x3

    goto :goto_2

    .line 369
    :cond_4
    nop

    :goto_2
    nop

    .line 371
    .local v2, "voiceDomain":I
    new-instance v3, Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    iget-object v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {v3, v4, v0}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;-><init>(Landroid/content/Context;I)V

    .line 372
    .local v3, "mMotoExtTM":Lcom/motorola/android/telephony/MotoExtTelephonyManager;
    invoke-virtual {v3}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;->getVoiceDomainSetting()I

    move-result v4

    if-eq v2, v4, :cond_5

    .line 373
    iget-object v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver$1;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;

    invoke-static {v4}, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->access$000(Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SetVoiceDomainSetting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-virtual {v3, v2}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;->setVoiceDomainSetting(I)Z

    .line 376
    :cond_5
    return-void
.end method

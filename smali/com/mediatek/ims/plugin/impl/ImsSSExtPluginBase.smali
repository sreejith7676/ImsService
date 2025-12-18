.class public Lcom/mediatek/ims/plugin/impl/ImsSSExtPluginBase;
.super Ljava/lang/Object;
.source "ImsSSExtPluginBase.java"

# interfaces
.implements Lcom/mediatek/ims/plugin/ImsSSExtPlugin;


# static fields
.field private static final TAG:Ljava/lang/String; = "ImsSSExtPluginBase"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/mediatek/ims/plugin/impl/ImsSSExtPluginBase;->mContext:Landroid/content/Context;

    .line 62
    return-void
.end method


# virtual methods
.method public getImsCallForwardInfo([Lcom/android/internal/telephony/CallForwardInfo;I)[Landroid/telephony/ims/ImsCallForwardInfo;
    .locals 6
    .param p1, "info"    # [Lcom/android/internal/telephony/CallForwardInfo;
    .param p2, "phoneId"    # I

    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, "imsCfInfo":[Landroid/telephony/ims/ImsCallForwardInfo;
    if-eqz p1, :cond_3

    .line 70
    iget-object v1, p0, Lcom/mediatek/ims/plugin/impl/ImsSSExtPluginBase;->mContext:Landroid/content/Context;

    const-string v2, "moto_video_call_forward_enabled_bool"

    invoke-static {v1, v2, p2}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    .line 72
    .local v1, "isSupportVideo":Z
    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 73
    array-length v3, p1

    new-array v0, v3, [Landroid/telephony/ims/ImsCallForwardInfo;

    goto :goto_0

    .line 75
    :cond_0
    new-array v0, v2, [Landroid/telephony/ims/ImsCallForwardInfo;

    .line 77
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, p1

    if-ge v3, v4, :cond_2

    .line 78
    if-nez v1, :cond_1

    aget-object v4, p1, v3

    iget v4, v4, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    if-eq v4, v2, :cond_1

    .line 79
    goto :goto_2

    .line 81
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getImsCallForwardInfo: info["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p1, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ImsSSExtPluginBase"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance v4, Landroid/telephony/ims/ImsCallForwardInfo;

    invoke-direct {v4}, Landroid/telephony/ims/ImsCallForwardInfo;-><init>()V

    aput-object v4, v0, v3

    .line 83
    aget-object v4, v0, v3

    aget-object v5, p1, v3

    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-static {v5}, Lcom/mediatek/ims/ImsUtImpl;->getConditionFromCFReason(I)I

    move-result v5

    iput v5, v4, Landroid/telephony/ims/ImsCallForwardInfo;->mCondition:I

    .line 84
    aget-object v4, v0, v3

    aget-object v5, p1, v3

    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    iput v5, v4, Landroid/telephony/ims/ImsCallForwardInfo;->mStatus:I

    .line 85
    aget-object v4, v0, v3

    aget-object v5, p1, v3

    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    invoke-static {v5}, Lcom/mediatek/ims/ImsCommonUtil;->convertServiceClassfromMtk(I)I

    move-result v5

    iput v5, v4, Landroid/telephony/ims/ImsCallForwardInfo;->mServiceClass:I

    .line 86
    aget-object v4, v0, v3

    aget-object v5, p1, v3

    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    iput v5, v4, Landroid/telephony/ims/ImsCallForwardInfo;->mToA:I

    .line 87
    aget-object v4, v0, v3

    aget-object v5, p1, v3

    iget-object v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iput-object v5, v4, Landroid/telephony/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    .line 88
    aget-object v4, v0, v3

    aget-object v5, p1, v3

    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iput v5, v4, Landroid/telephony/ims/ImsCallForwardInfo;->mTimeSeconds:I

    .line 77
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 90
    .end local v1    # "isSupportVideo":Z
    .end local v3    # "i":I
    :cond_2
    goto :goto_3

    .line 91
    :cond_3
    const/4 v1, 0x0

    new-array v0, v1, [Landroid/telephony/ims/ImsCallForwardInfo;

    .line 93
    :goto_3
    return-object v0
.end method

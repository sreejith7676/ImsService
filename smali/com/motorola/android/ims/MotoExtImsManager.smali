.class public Lcom/motorola/android/ims/MotoExtImsManager;
.super Ljava/lang/Object;
.source "MotoExtImsManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MotoExtImsManager"

.field private static sImsManagerInstances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/motorola/android/ims/MotoExtImsManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mMotoExtIms:Lcom/motorola/android/ims/internal/IMotoExtIms;

.field private mSubId:I

.field private final mSubscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method public static synthetic $r8$lambda$5-Wl5OX0WgoBaELyJbHc3IOud5w(Lcom/motorola/android/ims/MotoExtImsManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/motorola/android/ims/MotoExtImsManager;->lambda$new$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/android/ims/MotoExtImsManager;->sImsManagerInstances:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 56
    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Lcom/motorola/android/ims/MotoExtImsManager;-><init>(Landroid/content/Context;I)V

    .line 57
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/android/ims/MotoExtImsManager;->mSubId:I

    .line 85
    new-instance v0, Lcom/motorola/android/ims/MotoExtImsManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/motorola/android/ims/MotoExtImsManager$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/android/ims/MotoExtImsManager;)V

    iput-object v0, p0, Lcom/motorola/android/ims/MotoExtImsManager;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New MotoExtImsManager for subId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MotoExtImsManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iput p2, p0, Lcom/motorola/android/ims/MotoExtImsManager;->mSubId:I

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 63
    .local v1, "appContext":Landroid/content/Context;
    if-eqz v1, :cond_0

    .line 64
    iput-object v1, p0, Lcom/motorola/android/ims/MotoExtImsManager;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 66
    :cond_0
    iput-object p1, p0, Lcom/motorola/android/ims/MotoExtImsManager;->mContext:Landroid/content/Context;

    .line 68
    :goto_0
    invoke-direct {p0}, Lcom/motorola/android/ims/MotoExtImsManager;->getIMotoExtIms()Lcom/motorola/android/ims/internal/IMotoExtIms;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/android/ims/MotoExtImsManager;->mMotoExtIms:Lcom/motorola/android/ims/internal/IMotoExtIms;

    .line 71
    if-eqz v3, :cond_1

    .line 72
    :try_start_0
    invoke-interface {v3}, Lcom/motorola/android/ims/internal/IMotoExtIms;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 74
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to get MotoExtIms Service!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 77
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    nop

    .line 80
    :goto_2
    iget-object v0, p0, Lcom/motorola/android/ims/MotoExtImsManager;->mContext:Landroid/content/Context;

    const-string v2, "telephony_subscription_service"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    iput-object v0, p0, Lcom/motorola/android/ims/MotoExtImsManager;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 82
    return-void
.end method

.method private checkSubId(I)V
    .locals 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/ims/MotoExtImsException;
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/motorola/android/ims/MotoExtImsManager;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->isActiveSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    return-void

    .line 130
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkSubId: invalid sub = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotoExtImsManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    new-instance v0, Lcom/motorola/android/ims/MotoExtImsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MotoExtIms with invalid subId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/motorola/android/ims/MotoExtImsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getIMotoExtIms()Lcom/motorola/android/ims/internal/IMotoExtIms;
    .locals 1

    .line 110
    const-string v0, "motoextims"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/android/ims/internal/IMotoExtIms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/android/ims/internal/IMotoExtIms;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;I)Lcom/motorola/android/ims/MotoExtImsManager;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .line 92
    sget-object v0, Lcom/motorola/android/ims/MotoExtImsManager;->sImsManagerInstances:Ljava/util/HashMap;

    monitor-enter v0

    .line 93
    :try_start_0
    sget-object v1, Lcom/motorola/android/ims/MotoExtImsManager;->sImsManagerInstances:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    sget-object v1, Lcom/motorola/android/ims/MotoExtImsManager;->sImsManagerInstances:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/android/ims/MotoExtImsManager;

    .line 96
    .local v1, "m":Lcom/motorola/android/ims/MotoExtImsManager;
    if-eqz v1, :cond_0

    .line 97
    invoke-virtual {v1}, Lcom/motorola/android/ims/MotoExtImsManager;->isServiceAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 98
    const-string v2, "MotoExtImsManager"

    const-string v3, "MotoExtIms service die"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    monitor-exit v0

    return-object v1

    .line 103
    .end local v1    # "m":Lcom/motorola/android/ims/MotoExtImsManager;
    :cond_1
    new-instance v1, Lcom/motorola/android/ims/MotoExtImsManager;

    invoke-direct {v1, p0, p1}, Lcom/motorola/android/ims/MotoExtImsManager;-><init>(Landroid/content/Context;I)V

    .line 104
    .local v1, "mgr":Lcom/motorola/android/ims/MotoExtImsManager;
    sget-object v2, Lcom/motorola/android/ims/MotoExtImsManager;->sImsManagerInstances:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    monitor-exit v0

    return-object v1

    .line 107
    .end local v1    # "mgr":Lcom/motorola/android/ims/MotoExtImsManager;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getOpPackageName()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/motorola/android/ims/MotoExtImsManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 146
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeathRecipient triggered, binder died: subID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/motorola/android/ims/MotoExtImsManager;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotoExtImsManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    sget-object v0, Lcom/motorola/android/ims/MotoExtImsManager;->sImsManagerInstances:Ljava/util/HashMap;

    iget v1, p0, Lcom/motorola/android/ims/MotoExtImsManager;->mSubId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    return-void
.end method

.method private validServiceAvailable()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/ims/MotoExtImsException;
        }
    .end annotation

    .line 122
    invoke-virtual {p0}, Lcom/motorola/android/ims/MotoExtImsManager;->isServiceAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    return-void

    .line 123
    :cond_0
    new-instance v0, Lcom/motorola/android/ims/MotoExtImsException;

    const-string v1, "MotoExtIms not available"

    invoke-direct {v0, v1}, Lcom/motorola/android/ims/MotoExtImsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateInvariants()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/ims/MotoExtImsException;
        }
    .end annotation

    .line 136
    invoke-direct {p0}, Lcom/motorola/android/ims/MotoExtImsManager;->validServiceAvailable()V

    .line 137
    iget v0, p0, Lcom/motorola/android/ims/MotoExtImsManager;->mSubId:I

    invoke-direct {p0, v0}, Lcom/motorola/android/ims/MotoExtImsManager;->checkSubId(I)V

    .line 138
    return-void
.end method


# virtual methods
.method public getConfigInterface()Lcom/motorola/android/ims/MotoExtImsConfig;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/ims/MotoExtImsException;
        }
    .end annotation

    .line 157
    invoke-direct {p0}, Lcom/motorola/android/ims/MotoExtImsManager;->validateInvariants()V

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/motorola/android/ims/MotoExtImsManager;->mMotoExtIms:Lcom/motorola/android/ims/internal/IMotoExtIms;

    iget v1, p0, Lcom/motorola/android/ims/MotoExtImsManager;->mSubId:I

    invoke-interface {v0, v1}, Lcom/motorola/android/ims/internal/IMotoExtIms;->getConfigInterface(I)Lcom/motorola/android/ims/internal/IMotoExtImsConfig;

    move-result-object v0

    .line 160
    .local v0, "config":Lcom/motorola/android/ims/internal/IMotoExtImsConfig;
    new-instance v1, Lcom/motorola/android/ims/MotoExtImsConfig;

    invoke-direct {v1, v0}, Lcom/motorola/android/ims/MotoExtImsConfig;-><init>(Lcom/motorola/android/ims/internal/IMotoExtImsConfig;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 161
    .end local v0    # "config":Lcom/motorola/android/ims/internal/IMotoExtImsConfig;
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/motorola/android/ims/MotoExtImsException;

    const-string v2, "getConfigInterface()"

    invoke-direct {v1, v2}, Lcom/motorola/android/ims/MotoExtImsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getWfcMDN()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/ims/MotoExtImsException;
        }
    .end annotation

    .line 187
    invoke-direct {p0}, Lcom/motorola/android/ims/MotoExtImsManager;->validateInvariants()V

    .line 188
    const/4 v0, 0x0

    .line 190
    .local v0, "mdn":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/ims/MotoExtImsManager;->mMotoExtIms:Lcom/motorola/android/ims/internal/IMotoExtIms;

    iget v2, p0, Lcom/motorola/android/ims/MotoExtImsManager;->mSubId:I

    invoke-direct {p0}, Lcom/motorola/android/ims/MotoExtImsManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/motorola/android/ims/internal/IMotoExtIms;->getWfcMDN(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 193
    nop

    .line 194
    return-object v0

    .line 191
    :catch_0
    move-exception v1

    .line 192
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/motorola/android/ims/MotoExtImsException;

    const-string v3, "getWfcMDN"

    invoke-direct {v2, v3}, Lcom/motorola/android/ims/MotoExtImsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public isCallComposerEnabledByPlatform()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/ims/MotoExtImsException;
        }
    .end annotation

    .line 242
    invoke-direct {p0}, Lcom/motorola/android/ims/MotoExtImsManager;->validateInvariants()V

    .line 243
    const/4 v0, 0x0

    .line 245
    .local v0, "ret":Z
    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/ims/MotoExtImsManager;->mMotoExtIms:Lcom/motorola/android/ims/internal/IMotoExtIms;

    iget v2, p0, Lcom/motorola/android/ims/MotoExtImsManager;->mSubId:I

    invoke-direct {p0}, Lcom/motorola/android/ims/MotoExtImsManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/motorola/android/ims/internal/IMotoExtIms;->isCallComposerEnabledByPlatform(ILjava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 248
    nop

    .line 249
    return v0

    .line 246
    :catch_0
    move-exception v1

    .line 247
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/motorola/android/ims/MotoExtImsException;

    const-string v3, "isCallComposerEnabledByPlatform"

    invoke-direct {v2, v3}, Lcom/motorola/android/ims/MotoExtImsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public isChatBotEnabledByPlatform()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/ims/MotoExtImsException;
        }
    .end annotation

    .line 260
    invoke-direct {p0}, Lcom/motorola/android/ims/MotoExtImsManager;->validateInvariants()V

    .line 261
    const/4 v0, 0x0

    .line 263
    .local v0, "ret":Z
    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/ims/MotoExtImsManager;->mMotoExtIms:Lcom/motorola/android/ims/internal/IMotoExtIms;

    iget v2, p0, Lcom/motorola/android/ims/MotoExtImsManager;->mSubId:I

    invoke-direct {p0}, Lcom/motorola/android/ims/MotoExtImsManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/motorola/android/ims/internal/IMotoExtIms;->isChatBotEnabledByPlatform(ILjava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 266
    nop

    .line 267
    return v0

    .line 264
    :catch_0
    move-exception v1

    .line 265
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/motorola/android/ims/MotoExtImsException;

    const-string v3, "isChatBotEnabledByPlatform"

    invoke-direct {v2, v3}, Lcom/motorola/android/ims/MotoExtImsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public isImsOverNrEnabledByPlatform()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/ims/MotoExtImsException;
        }
    .end annotation

    .line 301
    invoke-direct {p0}, Lcom/motorola/android/ims/MotoExtImsManager;->validateInvariants()V

    .line 302
    const/4 v0, 0x0

    .line 304
    .local v0, "ret":Z
    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/ims/MotoExtImsManager;->mMotoExtIms:Lcom/motorola/android/ims/internal/IMotoExtIms;

    iget v2, p0, Lcom/motorola/android/ims/MotoExtImsManager;->mSubId:I

    invoke-direct {p0}, Lcom/motorola/android/ims/MotoExtImsManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/motorola/android/ims/internal/IMotoExtIms;->isImsOverNrEnabledByPlatform(ILjava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 307
    nop

    .line 308
    return v0

    .line 305
    :catch_0
    move-exception v1

    .line 306
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/motorola/android/ims/MotoExtImsException;

    const-string v3, "isImsOverNrEnabledByPlatform"

    invoke-direct {v2, v3}, Lcom/motorola/android/ims/MotoExtImsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public isServiceAvailable()Z
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/motorola/android/ims/MotoExtImsManager;->mMotoExtIms:Lcom/motorola/android/ims/internal/IMotoExtIms;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/motorola/android/ims/internal/IMotoExtIms;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVceEnabledByPlatform()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/ims/MotoExtImsException;
        }
    .end annotation

    .line 224
    invoke-direct {p0}, Lcom/motorola/android/ims/MotoExtImsManager;->validateInvariants()V

    .line 225
    const/4 v0, 0x0

    .line 227
    .local v0, "ret":Z
    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/ims/MotoExtImsManager;->mMotoExtIms:Lcom/motorola/android/ims/internal/IMotoExtIms;

    iget v2, p0, Lcom/motorola/android/ims/MotoExtImsManager;->mSubId:I

    invoke-direct {p0}, Lcom/motorola/android/ims/MotoExtImsManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/motorola/android/ims/internal/IMotoExtIms;->isVceEnabledByPlatform(ILjava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 230
    nop

    .line 231
    return v0

    .line 228
    :catch_0
    move-exception v1

    .line 229
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/motorola/android/ims/MotoExtImsException;

    const-string v3, "isVceEnabledByPlatform"

    invoke-direct {v2, v3}, Lcom/motorola/android/ims/MotoExtImsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public isWfcEnabled()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/ims/MotoExtImsException;
        }
    .end annotation

    .line 206
    invoke-direct {p0}, Lcom/motorola/android/ims/MotoExtImsManager;->validateInvariants()V

    .line 207
    const/4 v0, 0x0

    .line 209
    .local v0, "ret":Z
    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/ims/MotoExtImsManager;->mMotoExtIms:Lcom/motorola/android/ims/internal/IMotoExtIms;

    iget v2, p0, Lcom/motorola/android/ims/MotoExtImsManager;->mSubId:I

    invoke-direct {p0}, Lcom/motorola/android/ims/MotoExtImsManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/motorola/android/ims/internal/IMotoExtIms;->isWfcEnabled(ILjava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 212
    nop

    .line 213
    return v0

    .line 210
    :catch_0
    move-exception v1

    .line 211
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/motorola/android/ims/MotoExtImsException;

    const-string v3, "isWfcEnabled"

    invoke-direct {v2, v3}, Lcom/motorola/android/ims/MotoExtImsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public queryVopsStatus(Lcom/motorola/android/ims/internal/IMotoExtImsListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/motorola/android/ims/internal/IMotoExtImsListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/ims/MotoExtImsException;
        }
    .end annotation

    .line 283
    invoke-direct {p0}, Lcom/motorola/android/ims/MotoExtImsManager;->validateInvariants()V

    .line 285
    :try_start_0
    iget-object v0, p0, Lcom/motorola/android/ims/MotoExtImsManager;->mMotoExtIms:Lcom/motorola/android/ims/internal/IMotoExtIms;

    iget v1, p0, Lcom/motorola/android/ims/MotoExtImsManager;->mSubId:I

    invoke-direct {p0}, Lcom/motorola/android/ims/MotoExtImsManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lcom/motorola/android/ims/internal/IMotoExtIms;->queryVopsStatus(ILcom/motorola/android/ims/internal/IMotoExtImsListener;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    nop

    .line 289
    return-void

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/motorola/android/ims/MotoExtImsException;

    const-string v2, "queryVopsStatus"

    invoke-direct {v1, v2}, Lcom/motorola/android/ims/MotoExtImsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public sendVosSupportStatus(ZLcom/motorola/android/ims/internal/IMotoExtImsListener;)V
    .locals 4
    .param p1, "isVosSupported"    # Z
    .param p2, "listener"    # Lcom/motorola/android/ims/internal/IMotoExtImsListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/ims/MotoExtImsException;
        }
    .end annotation

    .line 391
    invoke-direct {p0}, Lcom/motorola/android/ims/MotoExtImsManager;->validateInvariants()V

    .line 393
    :try_start_0
    iget-object v0, p0, Lcom/motorola/android/ims/MotoExtImsManager;->mMotoExtIms:Lcom/motorola/android/ims/internal/IMotoExtIms;

    iget v1, p0, Lcom/motorola/android/ims/MotoExtImsManager;->mSubId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/motorola/android/ims/internal/IMotoExtIms;->sendVosSupportStatus(IZLcom/motorola/android/ims/internal/IMotoExtImsListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    nop

    .line 397
    return-void

    .line 394
    :catch_0
    move-exception v0

    .line 395
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/motorola/android/ims/MotoExtImsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote ImsService sendVosSupportStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/motorola/android/ims/MotoExtImsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setScreenShareListener(Lcom/motorola/android/ims/MotoExtImsScreenShareListenerBase;)V
    .locals 4
    .param p1, "listener"    # Lcom/motorola/android/ims/MotoExtImsScreenShareListenerBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/ims/MotoExtImsException;
        }
    .end annotation

    .line 320
    invoke-direct {p0}, Lcom/motorola/android/ims/MotoExtImsManager;->validateInvariants()V

    .line 321
    if-eqz p1, :cond_0

    .line 326
    :try_start_0
    iget-object v0, p0, Lcom/motorola/android/ims/MotoExtImsManager;->mMotoExtIms:Lcom/motorola/android/ims/internal/IMotoExtIms;

    iget v1, p0, Lcom/motorola/android/ims/MotoExtImsManager;->mSubId:I

    invoke-virtual {p1}, Lcom/motorola/android/ims/MotoExtImsScreenShareListenerBase;->getBinder()Lcom/motorola/android/ims/internal/IMotoExtImsScreenShareListener;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/motorola/android/ims/internal/IMotoExtIms;->setScreenShareListener(ILcom/motorola/android/ims/internal/IMotoExtImsScreenShareListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    nop

    .line 330
    return-void

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/motorola/android/ims/MotoExtImsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote ImsService setScreenShareListener :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/motorola/android/ims/MotoExtImsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 322
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v0, "MotoExtImsManager"

    const-string v1, "setScreenShareListener listener is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    new-instance v0, Lcom/motorola/android/ims/MotoExtImsException;

    const-string v1, "Listener is NULL"

    invoke-direct {v0, v1}, Lcom/motorola/android/ims/MotoExtImsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWfcMDN(Ljava/lang/String;)V
    .locals 3
    .param p1, "mdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/ims/MotoExtImsException;
        }
    .end annotation

    .line 171
    invoke-direct {p0}, Lcom/motorola/android/ims/MotoExtImsManager;->validateInvariants()V

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/motorola/android/ims/MotoExtImsManager;->mMotoExtIms:Lcom/motorola/android/ims/internal/IMotoExtIms;

    iget v1, p0, Lcom/motorola/android/ims/MotoExtImsManager;->mSubId:I

    invoke-interface {v0, v1, p1}, Lcom/motorola/android/ims/internal/IMotoExtIms;->setWfcMDN(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    nop

    .line 177
    return-void

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/motorola/android/ims/MotoExtImsException;

    const-string v2, "setWfcMDN"

    invoke-direct {v1, v2}, Lcom/motorola/android/ims/MotoExtImsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public startScreenShare(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/ims/MotoExtImsException;
        }
    .end annotation

    .line 342
    invoke-direct {p0}, Lcom/motorola/android/ims/MotoExtImsManager;->validateInvariants()V

    .line 344
    :try_start_0
    iget-object v0, p0, Lcom/motorola/android/ims/MotoExtImsManager;->mMotoExtIms:Lcom/motorola/android/ims/internal/IMotoExtIms;

    iget v1, p0, Lcom/motorola/android/ims/MotoExtImsManager;->mSubId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/motorola/android/ims/internal/IMotoExtIms;->startScreenShare(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    nop

    .line 348
    return-void

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/motorola/android/ims/MotoExtImsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote ImsService startScreenShare :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/motorola/android/ims/MotoExtImsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public stopScreenShare()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/ims/MotoExtImsException;
        }
    .end annotation

    .line 355
    invoke-direct {p0}, Lcom/motorola/android/ims/MotoExtImsManager;->validateInvariants()V

    .line 357
    :try_start_0
    iget-object v0, p0, Lcom/motorola/android/ims/MotoExtImsManager;->mMotoExtIms:Lcom/motorola/android/ims/internal/IMotoExtIms;

    iget v1, p0, Lcom/motorola/android/ims/MotoExtImsManager;->mSubId:I

    invoke-interface {v0, v1}, Lcom/motorola/android/ims/internal/IMotoExtIms;->stopScreenShare(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    nop

    .line 361
    return-void

    .line 358
    :catch_0
    move-exception v0

    .line 359
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/motorola/android/ims/MotoExtImsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote ImsService stopScreenShare :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/motorola/android/ims/MotoExtImsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public videoScreenOperation(Lcom/motorola/android/ims/MotoVosActionInfo;Lcom/motorola/android/ims/internal/IMotoExtImsListener;)V
    .locals 4
    .param p1, "vosActionInfo"    # Lcom/motorola/android/ims/MotoVosActionInfo;
    .param p2, "listener"    # Lcom/motorola/android/ims/internal/IMotoExtImsListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/ims/MotoExtImsException;
        }
    .end annotation

    .line 371
    invoke-direct {p0}, Lcom/motorola/android/ims/MotoExtImsManager;->validateInvariants()V

    .line 373
    :try_start_0
    iget-object v0, p0, Lcom/motorola/android/ims/MotoExtImsManager;->mMotoExtIms:Lcom/motorola/android/ims/internal/IMotoExtIms;

    iget v1, p0, Lcom/motorola/android/ims/MotoExtImsManager;->mSubId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/motorola/android/ims/internal/IMotoExtIms;->videoScreenOperation(ILcom/motorola/android/ims/MotoVosActionInfo;Lcom/motorola/android/ims/internal/IMotoExtImsListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    nop

    .line 377
    return-void

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/motorola/android/ims/MotoExtImsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote ImsService videoScreenOperation :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/motorola/android/ims/MotoExtImsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.class public Lcom/mediatek/ims/MotoDialerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MotoDialerReceiver.java"


# static fields
.field private static final ACTION_MOTO_USER_OPEN_MISSED_CALL:Ljava/lang/String; = "com.motorola.internal.intent.action.USER_OPEN_MISSED_CALL"

.field private static final LOG_TAG:Ljava/lang/String; = "MotoDialerReceiver"


# instance fields
.field mCallLogIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/MotoDialerReceiver;->mCallLogIntent:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 31
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "com.motorola.internal.intent.action.USER_OPEN_MISSED_CALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 34
    :try_start_0
    const-string v2, "number"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 35
    .local v2, "number":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/ims/MotoDialerReceiver;->mCallLogIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_0

    .line 36
    new-instance v3, Landroid/content/Intent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v1, v3

    .line 37
    .local v1, "tmpIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/mediatek/ims/MotoDialerReceiver;->mCallLogIntent:Landroid/app/PendingIntent;

    const/16 v4, 0xc8

    invoke-virtual {v3, p1, v4, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .end local v1    # "tmpIntent":Landroid/content/Intent;
    .end local v2    # "number":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 39
    :catch_0
    move-exception v1

    .line 40
    .local v1, "e":Landroid/app/PendingIntent$CanceledException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send calllogIntent error, ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MotoDialerReceiver"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .end local v1    # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_1
    :goto_0
    return-void
.end method

.method public setCallLogIntent(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .line 27
    iput-object p1, p0, Lcom/mediatek/ims/MotoDialerReceiver;->mCallLogIntent:Landroid/app/PendingIntent;

    .line 28
    return-void
.end method

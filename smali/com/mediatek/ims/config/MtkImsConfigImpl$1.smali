.class Lcom/mediatek/ims/config/MtkImsConfigImpl$1;
.super Ljava/lang/Object;
.source "MtkImsConfigImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ims/config/MtkImsConfigImpl;->checkinVolteProvision(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/config/MtkImsConfigImpl;

.field final synthetic val$event_code:I

.field final synthetic val$event_info:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/config/MtkImsConfigImpl;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/config/MtkImsConfigImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 419
    iput-object p1, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl$1;->this$0:Lcom/mediatek/ims/config/MtkImsConfigImpl;

    iput p2, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl$1;->val$event_code:I

    iput-object p3, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl$1;->val$event_info:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 430
    const/4 v0, 0x0

    .line 431
    .local v0, "dm_provision":I
    iget-object v1, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl$1;->this$0:Lcom/mediatek/ims/config/MtkImsConfigImpl;

    invoke-static {v1}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->access$400(Lcom/mediatek/ims/config/MtkImsConfigImpl;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "carrier_volte_provisioning_required_bool"

    iget-object v3, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl$1;->this$0:Lcom/mediatek/ims/config/MtkImsConfigImpl;

    .line 433
    invoke-static {v3}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->access$500(Lcom/mediatek/ims/config/MtkImsConfigImpl;)I

    move-result v3

    .line 431
    invoke-static {v1, v2, v3}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 434
    or-int/lit8 v0, v0, 0x1

    .line 436
    iget-object v1, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl$1;->this$0:Lcom/mediatek/ims/config/MtkImsConfigImpl;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->getConfigInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    .line 438
    or-int/lit8 v0, v0, 0x2

    .line 440
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl$1;->this$0:Lcom/mediatek/ims/config/MtkImsConfigImpl;

    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->getConfigInt(I)I

    move-result v1

    if-ne v2, v1, :cond_1

    .line 442
    or-int/lit8 v0, v0, 0x4

    .line 444
    :cond_1
    iget-object v1, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl$1;->this$0:Lcom/mediatek/ims/config/MtkImsConfigImpl;

    const/16 v3, 0x19

    invoke-virtual {v1, v3}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->getConfigInt(I)I

    move-result v1

    if-ne v2, v1, :cond_2

    .line 446
    or-int/lit8 v0, v0, 0x8

    .line 448
    :cond_2
    iget-object v1, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl$1;->this$0:Lcom/mediatek/ims/config/MtkImsConfigImpl;

    const/16 v3, 0x1c

    invoke-virtual {v1, v3}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->getConfigInt(I)I

    move-result v1

    if-ne v2, v1, :cond_3

    .line 450
    or-int/lit8 v0, v0, 0x10

    .line 452
    :cond_3
    iget-object v1, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl$1;->this$0:Lcom/mediatek/ims/config/MtkImsConfigImpl;

    const/16 v3, 0x41

    invoke-virtual {v1, v3}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->getConfigInt(I)I

    move-result v1

    if-ne v2, v1, :cond_4

    .line 454
    or-int/lit8 v0, v0, 0x20

    .line 458
    :cond_4
    const-string v1, "CALL_PERF_STATS"

    .line 459
    .local v1, "CHECKIN_GROUP_TAG":Ljava/lang/String;
    const-string v2, "VolteProvisioning"

    .line 460
    .local v2, "CHECKIN_EVENT_NAME":Ljava/lang/String;
    new-instance v9, Lcom/mediatek/ims/config/CheckinEvent;

    const-string v4, "CALL_PERF_STATS"

    const-string v5, "VolteProvisioning"

    const-string v6, "1.0"

    .line 463
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/mediatek/ims/config/CheckinEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 466
    .local v3, "ce":Lcom/mediatek/ims/config/CheckinEvent;
    const/4 v4, 0x0

    .line 467
    .local v4, "flag":I
    :try_start_0
    iget-object v5, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl$1;->this$0:Lcom/mediatek/ims/config/MtkImsConfigImpl;

    invoke-static {v5}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->access$600(Lcom/mediatek/ims/config/MtkImsConfigImpl;)Ljava/lang/Integer;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    :try_start_1
    const-string v6, "usr"

    iget-object v7, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl$1;->this$0:Lcom/mediatek/ims/config/MtkImsConfigImpl;

    invoke-static {v7}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->access$600(Lcom/mediatek/ims/config/MtkImsConfigImpl;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Lcom/mediatek/ims/config/CheckinEvent;->setValue(Ljava/lang/String;I)V

    .line 469
    iget-object v6, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl$1;->this$0:Lcom/mediatek/ims/config/MtkImsConfigImpl;

    invoke-static {v6}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->access$600(Lcom/mediatek/ims/config/MtkImsConfigImpl;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    shl-int/lit8 v6, v6, 0x10

    or-int v4, v6, v0

    .line 470
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 472
    :try_start_2
    const-string v5, "dm"

    invoke-virtual {v3, v5, v0}, Lcom/mediatek/ims/config/CheckinEvent;->setValue(Ljava/lang/String;I)V

    .line 473
    iget v5, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl$1;->val$event_code:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_5

    .line 474
    const-string v6, "evt"

    invoke-virtual {v3, v6, v5}, Lcom/mediatek/ims/config/CheckinEvent;->setValue(Ljava/lang/String;I)V

    .line 476
    :cond_5
    iget-object v5, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl$1;->val$event_info:Ljava/lang/String;

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_6

    .line 477
    const-string v5, "evt_info"

    iget-object v6, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl$1;->val$event_info:Ljava/lang/String;

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/mediatek/ims/config/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    :cond_6
    iget-object v5, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl$1;->this$0:Lcom/mediatek/ims/config/MtkImsConfigImpl;

    invoke-static {v5}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->access$700(Lcom/mediatek/ims/config/MtkImsConfigImpl;)I

    move-result v5

    if-ne v5, v4, :cond_7

    .line 481
    const-string v5, "[SR-IMS][MtkImsConfigImpl]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignore Checkin event, flag={0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 482
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "}, tag={"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/mediatek/ims/config/CheckinEvent;->getTagName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "}, value={"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 483
    invoke-virtual {v3}, Lcom/mediatek/ims/config/CheckinEvent;->serializeEvent()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 481
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    return-void

    .line 486
    :cond_7
    iget-object v5, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl$1;->this$0:Lcom/mediatek/ims/config/MtkImsConfigImpl;

    invoke-static {v5, v4}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->access$702(Lcom/mediatek/ims/config/MtkImsConfigImpl;I)I

    .line 488
    iget-object v5, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl$1;->this$0:Lcom/mediatek/ims/config/MtkImsConfigImpl;

    invoke-static {v5}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->access$400(Lcom/mediatek/ims/config/MtkImsConfigImpl;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/mediatek/ims/config/CheckinEvent;->publish(Landroid/content/ContentResolver;)V

    .line 490
    const-string v5, "[SR-IMS][MtkImsConfigImpl]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Log Checkin event, tag={"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/mediatek/ims/config/CheckinEvent;->getTagName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "}, value={"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 491
    invoke-virtual {v3}, Lcom/mediatek/ims/config/CheckinEvent;->serializeEvent()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 490
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 494
    nop

    .end local v4    # "flag":I
    goto :goto_0

    .line 470
    .restart local v4    # "flag":I
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "dm_provision":I
    .end local v1    # "CHECKIN_GROUP_TAG":Ljava/lang/String;
    .end local v2    # "CHECKIN_EVENT_NAME":Ljava/lang/String;
    .end local v3    # "ce":Lcom/mediatek/ims/config/CheckinEvent;
    .end local p0    # "this":Lcom/mediatek/ims/config/MtkImsConfigImpl$1;
    :try_start_4
    throw v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 492
    .end local v4    # "flag":I
    .restart local v0    # "dm_provision":I
    .restart local v1    # "CHECKIN_GROUP_TAG":Ljava/lang/String;
    .restart local v2    # "CHECKIN_EVENT_NAME":Ljava/lang/String;
    .restart local v3    # "ce":Lcom/mediatek/ims/config/CheckinEvent;
    .restart local p0    # "this":Lcom/mediatek/ims/config/MtkImsConfigImpl$1;
    :catch_0
    move-exception v4

    .line 493
    .local v4, "ex":Ljava/lang/Exception;
    const-string v5, "[SR-IMS][MtkImsConfigImpl]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Checkin publish failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

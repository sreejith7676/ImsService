.class Lcom/mediatek/ims/ImsUtImpl$ResultHandler;
.super Landroid/os/Handler;
.source "ImsUtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsUtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResultHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/ImsUtImpl;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/ImsUtImpl;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 192
    iput-object p1, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    .line 193
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 194
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage(): event = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", requestId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    .line 200
    invoke-static {v1}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    const-string v1, "ImsUtImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v2, "utConfigurationUpdated(): event = "

    const/4 v3, 0x1

    const/16 v4, 0x324

    const/4 v5, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Event: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    .line 445
    :sswitch_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v0}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 446
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 447
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    .line 449
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-virtual {v1, p1}, Lcom/mediatek/ims/ImsUtImpl;->notifyUtConfigurationUpdated(Landroid/os/Message;)V

    goto :goto_1

    .line 454
    :cond_0
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_1

    .line 455
    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v1}, Lcom/mediatek/ims/ImsUtImpl;->access$200(Lcom/mediatek/ims/ImsUtImpl;)Lcom/mediatek/ims/plugin/ImsSSOemPlugin;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    iget-object v3, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    .line 456
    invoke-static {v3}, Lcom/mediatek/ims/ImsUtImpl;->access$100(Lcom/mediatek/ims/ImsUtImpl;)I

    move-result v3

    .line 455
    invoke-interface {v1, v2, v3}, Lcom/mediatek/ims/plugin/ImsSSOemPlugin;->commandExceptionToReason(Lcom/android/internal/telephony/CommandException;I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v1

    .local v1, "reason":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_0

    .line 458
    .end local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :cond_1
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1, v4, v5}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 460
    .restart local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_0
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-virtual {v2, p1, v1}, Lcom/mediatek/ims/ImsUtImpl;->notifyUtConfigurationUpdateFailed(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 462
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_1
    goto/16 :goto_17

    .line 409
    :sswitch_1
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v0}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 410
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 411
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_3

    .line 412
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [Lcom/mediatek/internal/telephony/MtkCallForwardInfo;

    .line 413
    .local v1, "cfInfo":[Lcom/mediatek/internal/telephony/MtkCallForwardInfo;
    const/4 v2, 0x0

    .line 415
    .local v2, "imsCfInfo":[Landroid/telephony/ims/ImsCallForwardInfo;
    if-eqz v1, :cond_2

    .line 416
    array-length v3, v1

    new-array v2, v3, [Landroid/telephony/ims/ImsCallForwardInfo;

    .line 417
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v4, v1

    if-ge v3, v4, :cond_2

    .line 419
    new-instance v4, Landroid/telephony/ims/ImsCallForwardInfo;

    invoke-direct {v4}, Landroid/telephony/ims/ImsCallForwardInfo;-><init>()V

    .line 420
    .local v4, "info":Landroid/telephony/ims/ImsCallForwardInfo;
    aget-object v5, v1, v3

    iget v5, v5, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->reason:I

    invoke-static {v5}, Lcom/mediatek/ims/ImsUtImpl;->getConditionFromCFReason(I)I

    move-result v5

    iput v5, v4, Landroid/telephony/ims/ImsCallForwardInfo;->mCondition:I

    .line 421
    aget-object v5, v1, v3

    iget v5, v5, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->status:I

    iput v5, v4, Landroid/telephony/ims/ImsCallForwardInfo;->mStatus:I

    .line 422
    aget-object v5, v1, v3

    iget v5, v5, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->serviceClass:I

    invoke-static {v5}, Lcom/mediatek/ims/ImsCommonUtil;->convertServiceClassfromMtk(I)I

    move-result v5

    iput v5, v4, Landroid/telephony/ims/ImsCallForwardInfo;->mServiceClass:I

    .line 423
    aget-object v5, v1, v3

    iget v5, v5, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->toa:I

    iput v5, v4, Landroid/telephony/ims/ImsCallForwardInfo;->mToA:I

    .line 424
    aget-object v5, v1, v3

    iget-object v5, v5, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->number:Ljava/lang/String;

    iput-object v5, v4, Landroid/telephony/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    .line 425
    aget-object v5, v1, v3

    iget v5, v5, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->timeSeconds:I

    iput v5, v4, Landroid/telephony/ims/ImsCallForwardInfo;->mTimeSeconds:I

    .line 426
    aput-object v4, v2, v3

    .line 417
    .end local v4    # "info":Landroid/telephony/ims/ImsCallForwardInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 430
    .end local v3    # "i":I
    :cond_2
    iget-object v3, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v3}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4, v2}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationCallForwardQueried(I[Landroid/telephony/ims/ImsCallForwardInfo;)V

    .line 431
    .end local v1    # "cfInfo":[Lcom/mediatek/internal/telephony/MtkCallForwardInfo;
    .end local v2    # "imsCfInfo":[Landroid/telephony/ims/ImsCallForwardInfo;
    goto :goto_4

    .line 433
    :cond_3
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_4

    .line 434
    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v1}, Lcom/mediatek/ims/ImsUtImpl;->access$200(Lcom/mediatek/ims/ImsUtImpl;)Lcom/mediatek/ims/plugin/ImsSSOemPlugin;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    iget-object v3, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    .line 435
    invoke-static {v3}, Lcom/mediatek/ims/ImsUtImpl;->access$100(Lcom/mediatek/ims/ImsUtImpl;)I

    move-result v3

    .line 434
    invoke-interface {v1, v2, v3}, Lcom/mediatek/ims/plugin/ImsSSOemPlugin;->commandExceptionToReason(Lcom/android/internal/telephony/CommandException;I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v1

    .local v1, "reason":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_3

    .line 437
    .end local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :cond_4
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1, v4, v5}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 440
    .restart local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_3
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v2}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v1}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 442
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_4
    goto/16 :goto_17

    .line 466
    :sswitch_2
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v0}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 467
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 469
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_6

    .line 471
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Lcom/mediatek/ims/MtkImsBarringCall;

    .line 472
    .local v2, "res":[Lcom/mediatek/ims/MtkImsBarringCall;
    array-length v3, v2

    new-array v3, v3, [Landroid/telephony/ims/ImsSsInfo;

    .line 473
    .local v3, "info":[Landroid/telephony/ims/ImsSsInfo;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5
    array-length v5, v2

    if-ge v4, v5, :cond_5

    .line 474
    new-instance v5, Landroid/telephony/ims/ImsSsInfo;

    invoke-direct {v5}, Landroid/telephony/ims/ImsSsInfo;-><init>()V

    aput-object v5, v3, v4

    .line 475
    aget-object v5, v3, v4

    aget-object v6, v2, v4

    iget v6, v6, Lcom/mediatek/ims/MtkImsBarringCall;->status:I

    iput v6, v5, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    .line 476
    aget-object v5, v3, v4

    aget-object v6, v2, v4

    iget-object v6, v6, Lcom/mediatek/ims/MtkImsBarringCall;->number:Ljava/lang/String;

    iput-object v6, v5, Landroid/telephony/ims/ImsSsInfo;->mIcbNum:Ljava/lang/String;

    .line 479
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IMS_UT_EVENT_GET_CB_MT: number = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v4

    iget-object v6, v6, Landroid/telephony/ims/ImsSsInfo;->mIcbNum:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 484
    .end local v4    # "i":I
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IMS_UT_EVENT_GET_CB_MT: count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v1}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v1

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v4, v3}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationCallBarringQueried(I[Landroid/telephony/ims/ImsSsInfo;)V

    .line 488
    .end local v2    # "res":[Lcom/mediatek/ims/MtkImsBarringCall;
    .end local v3    # "info":[Landroid/telephony/ims/ImsSsInfo;
    goto :goto_7

    .line 490
    :cond_6
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_7

    .line 491
    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v1}, Lcom/mediatek/ims/ImsUtImpl;->access$200(Lcom/mediatek/ims/ImsUtImpl;)Lcom/mediatek/ims/plugin/ImsSSOemPlugin;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    iget-object v3, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    .line 492
    invoke-static {v3}, Lcom/mediatek/ims/ImsUtImpl;->access$100(Lcom/mediatek/ims/ImsUtImpl;)I

    move-result v3

    .line 491
    invoke-interface {v1, v2, v3}, Lcom/mediatek/ims/plugin/ImsSSOemPlugin;->commandExceptionToReason(Lcom/android/internal/telephony/CommandException;I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v1

    .restart local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_6

    .line 494
    .end local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :cond_7
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1, v4, v5}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 497
    .restart local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_6
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v2}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v1}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 499
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_7
    goto/16 :goto_17

    .line 348
    :sswitch_3
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v0}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 349
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 350
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_a

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_a

    .line 352
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v3, v3, [Lcom/android/internal/telephony/CallForwardInfo;

    if-eqz v3, :cond_a

    .line 353
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 354
    .local v2, "cfInfo":[Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v3, 0x0

    .line 355
    .local v3, "imsCfInfo":[Landroid/telephony/ims/ImsCallForwardInfo;
    if-eqz v2, :cond_9

    array-length v4, v2

    if-eqz v4, :cond_9

    .line 356
    array-length v4, v2

    new-array v3, v4, [Landroid/telephony/ims/ImsCallForwardInfo;

    .line 357
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_8
    array-length v5, v2

    if-ge v4, v5, :cond_9

    .line 358
    iget-object v5, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    aget-object v6, v2, v4

    invoke-static {v5, v6}, Lcom/mediatek/ims/ImsUtImpl;->access$400(Lcom/mediatek/ims/ImsUtImpl;Lcom/android/internal/telephony/CallForwardInfo;)Landroid/telephony/ims/ImsCallForwardInfo;

    move-result-object v5

    aput-object v5, v3, v4

    .line 360
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IMS_UT_EVENT_SET_CF: cfInfo["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] = , Condition: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v4

    .line 361
    invoke-virtual {v6}, Landroid/telephony/ims/ImsCallForwardInfo;->getCondition()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 362
    aget-object v6, v3, v4

    invoke-virtual {v6}, Landroid/telephony/ims/ImsCallForwardInfo;->getStatus()I

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "disabled"

    goto :goto_9

    :cond_8
    const-string v6, "enabled"

    :goto_9
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ToA: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v4

    .line 363
    invoke-virtual {v6}, Landroid/telephony/ims/ImsCallForwardInfo;->getToA()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Service Class: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v4

    .line 364
    invoke-virtual {v6}, Landroid/telephony/ims/ImsCallForwardInfo;->getServiceClass()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Number="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v4

    .line 365
    invoke-virtual {v6}, Landroid/telephony/ims/ImsCallForwardInfo;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/ims/ImsUtImpl;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Time (seconds): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v4

    .line 366
    invoke-virtual {v6}, Landroid/telephony/ims/ImsCallForwardInfo;->getTimeSeconds()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 360
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_8

    .line 371
    .end local v4    # "i":I
    :cond_9
    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v1}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v1

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v4, v3}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationCallForwardQueried(I[Landroid/telephony/ims/ImsCallForwardInfo;)V

    .line 373
    goto/16 :goto_17

    .line 384
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "cfInfo":[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v3    # "imsCfInfo":[Landroid/telephony/ims/ImsCallForwardInfo;
    :cond_a
    :sswitch_4
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v0}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 385
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 386
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_b

    .line 388
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v1}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationUpdated(I)V

    goto :goto_b

    .line 396
    :cond_b
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_c

    .line 397
    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v1}, Lcom/mediatek/ims/ImsUtImpl;->access$200(Lcom/mediatek/ims/ImsUtImpl;)Lcom/mediatek/ims/plugin/ImsSSOemPlugin;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    iget-object v3, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    .line 398
    invoke-static {v3}, Lcom/mediatek/ims/ImsUtImpl;->access$100(Lcom/mediatek/ims/ImsUtImpl;)I

    move-result v3

    .line 397
    invoke-interface {v1, v2, v3}, Lcom/mediatek/ims/plugin/ImsSSOemPlugin;->commandExceptionToReason(Lcom/android/internal/telephony/CommandException;I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v1

    .restart local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_a

    .line 400
    .end local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :cond_c
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1, v4, v5}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 403
    .restart local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_a
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v2}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v1}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 405
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_b
    goto/16 :goto_17

    .line 317
    :sswitch_5
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v0}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 318
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 319
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_d

    .line 321
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    .line 322
    .local v1, "result":[I
    new-instance v2, Landroid/telephony/ims/ImsSsInfo;

    invoke-direct {v2}, Landroid/telephony/ims/ImsSsInfo;-><init>()V

    .line 323
    .local v2, "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    aget v3, v1, v5

    iput v3, v2, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    .line 324
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 325
    .local v3, "info":Landroid/os/Bundle;
    const-string v4, "imsSsInfo"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 327
    iget-object v4, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v4}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5, v3}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationQueried(ILandroid/os/Bundle;)V

    .line 328
    .end local v1    # "result":[I
    .end local v2    # "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    .end local v3    # "info":Landroid/os/Bundle;
    goto :goto_d

    .line 331
    :cond_d
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_e

    .line 332
    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v1}, Lcom/mediatek/ims/ImsUtImpl;->access$200(Lcom/mediatek/ims/ImsUtImpl;)Lcom/mediatek/ims/plugin/ImsSSOemPlugin;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    iget-object v3, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    .line 333
    invoke-static {v3}, Lcom/mediatek/ims/ImsUtImpl;->access$100(Lcom/mediatek/ims/ImsUtImpl;)I

    move-result v3

    .line 332
    invoke-interface {v1, v2, v3}, Lcom/mediatek/ims/plugin/ImsSSOemPlugin;->commandExceptionToReason(Lcom/android/internal/telephony/CommandException;I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v1

    .local v1, "reason":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_c

    .line 335
    .end local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :cond_e
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1, v4, v5}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 338
    .restart local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_c
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v2}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v1}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 340
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_d
    goto/16 :goto_17

    .line 286
    :sswitch_6
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v0}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 287
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 288
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_10

    .line 289
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    .line 291
    .local v2, "result":[I
    if-eqz v2, :cond_f

    array-length v4, v2

    const/4 v6, 0x2

    if-ne v4, v6, :cond_f

    .line 292
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UT GET CLIR result = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    new-instance v1, Landroid/telephony/ims/ImsSsInfo$Builder;

    const/4 v4, -0x1

    invoke-direct {v1, v4}, Landroid/telephony/ims/ImsSsInfo$Builder;-><init>(I)V

    aget v4, v2, v5

    .line 295
    invoke-virtual {v1, v4}, Landroid/telephony/ims/ImsSsInfo$Builder;->setClirOutgoingState(I)Landroid/telephony/ims/ImsSsInfo$Builder;

    move-result-object v1

    aget v3, v2, v3

    .line 296
    invoke-virtual {v1, v3}, Landroid/telephony/ims/ImsSsInfo$Builder;->setClirInterrogationStatus(I)Landroid/telephony/ims/ImsSsInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ims/ImsSsInfo$Builder;->build()Landroid/telephony/ims/ImsSsInfo;

    move-result-object v1

    .line 297
    .local v1, "info":Landroid/telephony/ims/ImsSsInfo;
    iget-object v3, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v3}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4, v1}, Landroid/telephony/ims/ImsUtListener;->onLineIdentificationSupplementaryServiceResponse(ILandroid/telephony/ims/ImsSsInfo;)V

    .line 298
    .end local v1    # "info":Landroid/telephony/ims/ImsSsInfo;
    goto :goto_e

    .line 299
    :cond_f
    const-string v3, "IMS_UT_EVENT_GET_CLIR: Something funny going on"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    .end local v2    # "result":[I
    :goto_e
    goto :goto_10

    .line 303
    :cond_10
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_11

    .line 304
    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v1}, Lcom/mediatek/ims/ImsUtImpl;->access$200(Lcom/mediatek/ims/ImsUtImpl;)Lcom/mediatek/ims/plugin/ImsSSOemPlugin;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    iget-object v3, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    .line 305
    invoke-static {v3}, Lcom/mediatek/ims/ImsUtImpl;->access$100(Lcom/mediatek/ims/ImsUtImpl;)I

    move-result v3

    .line 304
    invoke-interface {v1, v2, v3}, Lcom/mediatek/ims/plugin/ImsSSOemPlugin;->commandExceptionToReason(Lcom/android/internal/telephony/CommandException;I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v1

    .local v1, "reason":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_f

    .line 307
    .end local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :cond_11
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1, v4, v5}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 310
    .restart local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_f
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v2}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v1}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 312
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_10
    goto/16 :goto_17

    .line 257
    :sswitch_7
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v0}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 258
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 259
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_12

    .line 261
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    .line 262
    .restart local v2    # "result":[I
    new-array v3, v3, [Landroid/telephony/ims/ImsSsInfo;

    .line 263
    .local v3, "info":[Landroid/telephony/ims/ImsSsInfo;
    new-instance v4, Landroid/telephony/ims/ImsSsInfo;

    invoke-direct {v4}, Landroid/telephony/ims/ImsSsInfo;-><init>()V

    aput-object v4, v3, v5

    .line 264
    aget-object v4, v3, v5

    aget v6, v2, v5

    iput v6, v4, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    .line 267
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IMS_UT_EVENT_GET_CW: status = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v1}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v1

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v4, v3}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationCallWaitingQueried(I[Landroid/telephony/ims/ImsSsInfo;)V

    .line 271
    .end local v2    # "result":[I
    .end local v3    # "info":[Landroid/telephony/ims/ImsSsInfo;
    goto :goto_12

    .line 274
    :cond_12
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_13

    .line 275
    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v1}, Lcom/mediatek/ims/ImsUtImpl;->access$200(Lcom/mediatek/ims/ImsUtImpl;)Lcom/mediatek/ims/plugin/ImsSSOemPlugin;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    iget-object v3, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    .line 276
    invoke-static {v3}, Lcom/mediatek/ims/ImsUtImpl;->access$100(Lcom/mediatek/ims/ImsUtImpl;)I

    move-result v3

    .line 275
    invoke-interface {v1, v2, v3}, Lcom/mediatek/ims/plugin/ImsSSOemPlugin;->commandExceptionToReason(Lcom/android/internal/telephony/CommandException;I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v1

    .restart local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_11

    .line 278
    .end local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :cond_13
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1, v4, v5}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 281
    .restart local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_11
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v2}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v1}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 283
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_12
    goto/16 :goto_17

    .line 235
    :sswitch_8
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v0}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 236
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 237
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_14

    .line 239
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 240
    .local v1, "cfInfo":[Lcom/android/internal/telephony/CallForwardInfo;
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v2}, Lcom/mediatek/ims/ImsUtImpl;->access$300(Lcom/mediatek/ims/ImsUtImpl;)Lcom/mediatek/ims/plugin/ImsSSExtPlugin;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v3}, Lcom/mediatek/ims/ImsUtImpl;->access$100(Lcom/mediatek/ims/ImsUtImpl;)I

    move-result v3

    invoke-interface {v2, v1, v3}, Lcom/mediatek/ims/plugin/ImsSSExtPlugin;->getImsCallForwardInfo([Lcom/android/internal/telephony/CallForwardInfo;I)[Landroid/telephony/ims/ImsCallForwardInfo;

    move-result-object v2

    .line 241
    .local v2, "imsCfInfo":[Landroid/telephony/ims/ImsCallForwardInfo;
    iget-object v3, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v3}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4, v2}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationCallForwardQueried(I[Landroid/telephony/ims/ImsCallForwardInfo;)V

    .line 242
    .end local v1    # "cfInfo":[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v2    # "imsCfInfo":[Landroid/telephony/ims/ImsCallForwardInfo;
    goto :goto_14

    .line 245
    :cond_14
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_15

    .line 246
    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v1}, Lcom/mediatek/ims/ImsUtImpl;->access$200(Lcom/mediatek/ims/ImsUtImpl;)Lcom/mediatek/ims/plugin/ImsSSOemPlugin;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    iget-object v3, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    .line 247
    invoke-static {v3}, Lcom/mediatek/ims/ImsUtImpl;->access$100(Lcom/mediatek/ims/ImsUtImpl;)I

    move-result v3

    .line 246
    invoke-interface {v1, v2, v3}, Lcom/mediatek/ims/plugin/ImsSSOemPlugin;->commandExceptionToReason(Lcom/android/internal/telephony/CommandException;I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v1

    .local v1, "reason":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_13

    .line 249
    .end local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :cond_15
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1, v4, v5}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 252
    .restart local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_13
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v2}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v1}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 254
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_14
    goto :goto_17

    .line 205
    :sswitch_9
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v0}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 206
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 208
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_16

    .line 210
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    .line 211
    .local v2, "result":[I
    new-array v3, v3, [Landroid/telephony/ims/ImsSsInfo;

    .line 212
    .restart local v3    # "info":[Landroid/telephony/ims/ImsSsInfo;
    new-instance v4, Landroid/telephony/ims/ImsSsInfo;

    invoke-direct {v4}, Landroid/telephony/ims/ImsSsInfo;-><init>()V

    aput-object v4, v3, v5

    .line 213
    aget-object v4, v3, v5

    aget v6, v2, v5

    iput v6, v4, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    .line 216
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IMS_UT_EVENT_GET_CB: status = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v1}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v1

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v4, v3}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationCallBarringQueried(I[Landroid/telephony/ims/ImsSsInfo;)V

    .line 220
    .end local v2    # "result":[I
    .end local v3    # "info":[Landroid/telephony/ims/ImsSsInfo;
    goto :goto_16

    .line 223
    :cond_16
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_17

    .line 224
    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v1}, Lcom/mediatek/ims/ImsUtImpl;->access$200(Lcom/mediatek/ims/ImsUtImpl;)Lcom/mediatek/ims/plugin/ImsSSOemPlugin;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    iget-object v3, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    .line 225
    invoke-static {v3}, Lcom/mediatek/ims/ImsUtImpl;->access$100(Lcom/mediatek/ims/ImsUtImpl;)I

    move-result v3

    .line 224
    invoke-interface {v1, v2, v3}, Lcom/mediatek/ims/plugin/ImsSSOemPlugin;->commandExceptionToReason(Lcom/android/internal/telephony/CommandException;I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v1

    .restart local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_15

    .line 227
    .end local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :cond_17
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1, v4, v5}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 230
    .restart local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_15
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v2}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v1}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 232
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_16
    nop

    .line 505
    :cond_18
    :goto_17
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_9
        0x3e9 -> :sswitch_8
        0x3ea -> :sswitch_7
        0x3eb -> :sswitch_6
        0x3ec -> :sswitch_5
        0x3ed -> :sswitch_5
        0x3ee -> :sswitch_5
        0x3ef -> :sswitch_3
        0x3f0 -> :sswitch_3
        0x3f1 -> :sswitch_4
        0x3f2 -> :sswitch_4
        0x3f3 -> :sswitch_4
        0x3f4 -> :sswitch_4
        0x3f5 -> :sswitch_4
        0x3f6 -> :sswitch_2
        0x3f7 -> :sswitch_3
        0x4b0 -> :sswitch_1
        0x4b1 -> :sswitch_0
    .end sparse-switch
.end method

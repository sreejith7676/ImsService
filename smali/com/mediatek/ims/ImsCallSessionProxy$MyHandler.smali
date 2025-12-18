.class Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;
.super Landroid/os/Handler;
.source "ImsCallSessionProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsCallSessionProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field private static final PAU_END_FLAG_FIELD:Ljava/lang/String; = ">"

.field private static final PAU_NAME_FIELD:Ljava/lang/String; = "<name:"

.field private static final PAU_NUMBER_FIELD:Ljava/lang/String; = "<tel:"

.field private static final PAU_SIP_NUMBER_FIELD:Ljava/lang/String; = "<sip:"

.field private static final PAU_VERSTAT_FIELD:Ljava/lang/String; = "verstat="


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/ImsCallSessionProxy;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1704
    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 1705
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1706
    return-void
.end method

.method private convertToImsConferenceState(Ljava/util/ArrayList;)Landroid/telephony/ims/ImsConferenceState;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/ims/ImsCallSessionProxy$User;",
            ">;)",
            "Landroid/telephony/ims/ImsConferenceState;"
        }
    .end annotation

    .line 3595
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/ims/ImsCallSessionProxy$User;>;"
    new-instance v0, Landroid/telephony/ims/ImsConferenceState;

    invoke-direct {v0}, Landroid/telephony/ims/ImsConferenceState;-><init>()V

    .line 3596
    .local v0, "confState":Landroid/telephony/ims/ImsConferenceState;
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$12300(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3597
    const/4 v1, 0x1

    .line 3598
    .local v1, "index":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 3599
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 3600
    .local v3, "userInfo":Landroid/os/Bundle;
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/ims/ImsCallSessionProxy$User;

    iget-object v4, v4, Lcom/mediatek/ims/ImsCallSessionProxy$User;->mUserAddr:Ljava/lang/String;

    .line 3601
    .local v4, "userAddr":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/ims/ImsCallSessionProxy$User;

    iget-object v5, v5, Lcom/mediatek/ims/ImsCallSessionProxy$User;->mEndPoint:Ljava/lang/String;

    .line 3602
    .local v5, "endPoint":Ljava/lang/String;
    const-string v6, "user"

    invoke-virtual {v3, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3604
    const-string v6, "endpoint"

    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3605
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/ims/ImsCallSessionProxy$User;

    iget-object v7, v7, Lcom/mediatek/ims/ImsCallSessionProxy$User;->mStatus:Ljava/lang/String;

    const-string v8, "status"

    invoke-virtual {v3, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3606
    const-string v7, "_"

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_1

    .line 3612
    :cond_0
    iget-object v6, v0, Landroid/telephony/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3613
    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$12300(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3607
    :cond_1
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3608
    iget-object v6, v0, Landroid/telephony/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3609
    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$12300(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3610
    add-int/lit8 v1, v1, 0x1

    .line 3598
    .end local v3    # "userInfo":Landroid/os/Bundle;
    .end local v4    # "userAddr":Ljava/lang/String;
    .end local v5    # "endPoint":Ljava/lang/String;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 3616
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v3, v0, Landroid/telephony/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    invoke-static {v2, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$12402(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 3617
    return-object v0
.end method

.method private getDisplayNameFromPau(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "pau"    # Ljava/lang/String;

    .line 1710
    const-string v0, "\\\\"

    const-string v1, "\\"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1711
    const-string v0, "<ascii_34>"

    const-string v1, "\""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1712
    .local v0, "newPau":Ljava/lang/String;
    const-string v1, ""

    .line 1713
    .local v1, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1714
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v3, "getDisplayNameFromPau() : pau is null !"

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 1715
    return-object v1

    .line 1717
    :cond_0
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1718
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1719
    .local v3, "aChar":C
    const/16 v4, 0x3c

    if-ne v3, v4, :cond_1

    .line 1720
    goto :goto_1

    .line 1722
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1717
    .end local v3    # "aChar":C
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1724
    .end local v2    # "index":I
    :cond_2
    :goto_1
    return-object v1
.end method

.method private getFieldValueFromPau(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "pau"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/String;

    .line 1729
    const-string v0, ""

    .line 1730
    .local v0, "value":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 1734
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1735
    return-object v0

    .line 1738
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1739
    .local v1, "startIndex":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    .line 1740
    const-string v2, ">"

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 1741
    .local v2, "endIndex":I
    if-gez v2, :cond_2

    .line 1742
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1744
    :cond_2
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1746
    :goto_0
    return-object v0

    .line 1731
    .end local v1    # "startIndex":I
    .end local v2    # "endIndex":I
    :cond_3
    :goto_1
    return-object v0
.end method

.method private getWfcDisconnectCause(I)I
    .locals 7
    .param p1, "causeCode"    # I

    .line 3821
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WFC] getWfcDisconnectCause mRatType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$800(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3822
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$700(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$800(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v0

    if-ne v0, v2, :cond_6

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    goto :goto_2

    .line 3827
    :cond_0
    const/4 v0, 0x0

    .line 3829
    .local v0, "disconnectCause":Lcom/mediatek/wfo/DisconnectCause;
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$700(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v4

    invoke-interface {v3, v4}, Lcom/mediatek/wfo/IWifiOffloadService;->getDisconnectCause(I)Lcom/mediatek/wfo/DisconnectCause;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 3832
    goto :goto_0

    .line 3830
    :catch_0
    move-exception v3

    .line 3831
    .local v3, "e":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v5, "getWfcDisconnectCause() : RemoteException in getWfcDisconnectCause()"

    const/4 v6, 0x5

    invoke-static {v4, v5, v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3833
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    if-nez v0, :cond_1

    .line 3834
    return v1

    .line 3836
    :cond_1
    invoke-virtual {v0}, Lcom/mediatek/wfo/DisconnectCause;->getErrorCause()I

    move-result v3

    .line 3837
    .local v3, "wfcErrorCause":I
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[WFC] wfcErrorCause = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3838
    const/16 v2, 0x7d1

    if-ne v3, v2, :cond_2

    .line 3839
    const v1, 0xf00b

    return v1

    .line 3840
    :cond_2
    const/16 v2, 0x7d3

    if-eq v3, v2, :cond_5

    const/16 v2, 0x7d5

    if-ne v3, v2, :cond_3

    goto :goto_1

    .line 3843
    :cond_3
    const/16 v2, 0x7d4

    if-ne v3, v2, :cond_4

    .line 3845
    const v1, 0xf00e

    return v1

    .line 3847
    :cond_4
    return v1

    .line 3842
    :cond_5
    :goto_1
    const v1, 0xf00d

    return v1

    .line 3824
    .end local v0    # "disconnectCause":Lcom/mediatek/wfo/DisconnectCause;
    .end local v3    # "wfcErrorCause":I
    :cond_6
    :goto_2
    return v1
.end method

.method private handleDialResult(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 3534
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6200(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3543
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    const-string v3, "handleDialResult()"

    invoke-static {v0, v1, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8000(Lcom/mediatek/ims/ImsCallSessionProxy;ZLjava/lang/String;)V

    .line 3545
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    .line 3546
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3900(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3547
    .local v0, "result":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    sget-object v3, Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;->DIAL:Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    invoke-static {v1, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$9702(Lcom/mediatek/ims/ImsCallSessionProxy;Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;)Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    .line 3548
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4000(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v1

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v3

    invoke-interface {v1, v3, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->getLastCallFailCause(ILandroid/os/Message;)V

    .line 3549
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6302(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 3551
    .end local v0    # "result":Landroid/os/Message;
    :cond_2
    return-void

    .line 3536
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v1, "handleDialResult() : ar or mListener is null"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3539
    return-void
.end method

.method private handleEconfIndication([Ljava/lang/String;)V
    .locals 11
    .param p1, "params"    # [Ljava/lang/String;

    .line 3326
    const/4 v0, 0x0

    aget-object v1, p1, v0

    .line 3327
    .local v1, "confCallId":Ljava/lang/String;
    const/4 v2, 0x3

    aget-object v3, p1, v2

    .line 3328
    .local v3, "result":Ljava/lang/String;
    const/4 v4, 0x5

    aget-object v4, p1, v4

    .line 3331
    .local v4, "joinedCallId":Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleEconfIndication() : receive EVENT_ECONF_RESULT_INDICATION mCallId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", conf_call_id:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", op: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v8, p1, v7

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", number: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v9, 0x2

    aget-object v10, p1, v9

    .line 3333
    invoke-static {v8, v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", result: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v2, p1, v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", joined_call_id:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3331
    invoke-static {v5, v2, v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3337
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "0"

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3338
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2, v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$11102(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 3341
    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3400(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v2

    if-eq v2, v7, :cond_1

    .line 3342
    return-void

    .line 3347
    :cond_1
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3348
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3600(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/mediatek/ims/ImsServiceCallTracker;->getCallInfo(Ljava/lang/String;)Lcom/mediatek/ims/ImsCallInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 3349
    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3600(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/mediatek/ims/ImsServiceCallTracker;->getCallInfo(Ljava/lang/String;)Lcom/mediatek/ims/ImsCallInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/mediatek/ims/ImsCallInfo;->mCallSession:Lcom/mediatek/ims/ImsCallSessionProxy;

    if-eqz v2, :cond_2

    .line 3350
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3600(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/mediatek/ims/ImsServiceCallTracker;->getCallInfo(Ljava/lang/String;)Lcom/mediatek/ims/ImsCallInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/mediatek/ims/ImsCallInfo;->mCallSession:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v6, 0x7

    invoke-static {v2, v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5302(Lcom/mediatek/ims/ImsCallSessionProxy;I)I

    .line 3353
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleEconfIndication() : call id "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " is merged successfully"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6, v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3359
    :cond_2
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$11200(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 3361
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v4, :cond_3

    .line 3362
    invoke-static {}, Lcom/mediatek/ims/ImsConferenceHandler;->getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/mediatek/ims/DefaultConferenceHandler;->addFirstMergeParticipant(Ljava/lang/String;)V

    .line 3364
    :cond_3
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$11308(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    .line 3365
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3366
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2, v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$11402(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 3368
    :cond_4
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$11300(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v2

    if-ne v2, v9, :cond_d

    .line 3369
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$11400(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, " successful"

    goto :goto_0

    :cond_5
    const-string v2, " failed"

    .line 3371
    .local v2, "ret":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleEconfIndication() : 3 way conference merge result is"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3374
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$11400(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 3375
    invoke-static {}, Lcom/mediatek/ims/ImsConferenceHandler;->getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/ims/DefaultConferenceHandler;->isConferenceActive()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 3376
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$11500(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 3379
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$11100(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3380
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->close()V

    goto :goto_1

    .line 3384
    :cond_6
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5300(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_7

    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 3388
    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$11600(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 3391
    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3600(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v5

    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3800(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/mediatek/ims/ImsServiceCallTracker;->getCallInfo(Ljava/lang/String;)Lcom/mediatek/ims/ImsCallInfo;

    move-result-object v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 3392
    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3600(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v5

    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3800(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/mediatek/ims/ImsServiceCallTracker;->getCallInfo(Ljava/lang/String;)Lcom/mediatek/ims/ImsCallInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/mediatek/ims/ImsCallInfo;->mCallSession:Lcom/mediatek/ims/ImsCallSessionProxy;

    if-eqz v5, :cond_7

    .line 3393
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3600(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v5

    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3800(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/mediatek/ims/ImsServiceCallTracker;->getCallInfo(Ljava/lang/String;)Lcom/mediatek/ims/ImsCallInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/mediatek/ims/ImsCallInfo;->mCallSession:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->close()V

    .line 3397
    :cond_7
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5300(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v5

    if-eq v5, v6, :cond_8

    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 3401
    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$11600(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 3403
    :cond_8
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->close()V

    goto :goto_1

    .line 3409
    :cond_9
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 3410
    .local v5, "confCallIdInt":I
    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4000(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v6

    invoke-interface {v6, v5}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->terminate(I)V

    .line 3412
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->retrieveMergeFail()V

    .line 3417
    .end local v5    # "confCallIdInt":I
    :cond_a
    :goto_1
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$11302(Lcom/mediatek/ims/ImsCallSessionProxy;I)I

    .line 3418
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$11202(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 3419
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$11402(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 3420
    .end local v2    # "ret":Ljava/lang/String;
    goto :goto_2

    .line 3423
    :cond_b
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 3424
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v5, "handleEconfIndication() : ConfCreated successed"

    invoke-static {v2, v5, v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3426
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3600(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v2

    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3700(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v0}, Lcom/mediatek/ims/ImsServiceCallTracker;->setIgnoreUpdateStatus(Ljava/lang/String;Z)V

    .line 3427
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3600(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v2

    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3800(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v0}, Lcom/mediatek/ims/ImsServiceCallTracker;->setIgnoreUpdateStatus(Ljava/lang/String;Z)V

    .line 3428
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$11500(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    goto :goto_2

    .line 3430
    :cond_c
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v2, "handleEconfIndication() : ConfCreated failed"

    invoke-static {v0, v2, v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3432
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->retrieveMergeFail()V

    .line 3435
    :cond_d
    :goto_2
    return-void
.end method

.method private handleEctIndication(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 3482
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v1, "handleEctIndication()"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3483
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7102(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 3484
    if-nez p1, :cond_0

    .line 3486
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v1, "handleEctIndication() : ar or mMtkImsCallSessionProxy is null"

    invoke-static {v0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3489
    return-void

    .line 3492
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    .line 3493
    .local v0, "result":[I
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    aget v1, v0, v1

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_1

    goto/16 :goto_3

    .line 3497
    :cond_1
    const/4 v1, 0x1

    aget v2, v0, v1

    const/4 v3, 0x5

    if-nez v2, :cond_3

    .line 3499
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6200(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3500
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6200(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v2

    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    invoke-virtual {v2, v4}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionTransferFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3502
    :catch_0
    move-exception v2

    .line 3503
    .local v2, "e":Ljava/lang/RuntimeException;
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v5, "RuntimeException callSessionTransferFailed()"

    invoke-static {v4, v5, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3505
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :cond_2
    :goto_0
    goto :goto_1

    .line 3506
    :cond_3
    aget v2, v0, v1

    if-ne v2, v1, :cond_5

    .line 3508
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6200(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 3509
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6200(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionTransferred()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3514
    :cond_4
    goto :goto_1

    .line 3511
    :catch_1
    move-exception v2

    .line 3512
    .restart local v2    # "e":Ljava/lang/RuntimeException;
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v5, "RuntimeException callSessionTransferred()"

    invoke-static {v4, v5, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3520
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$11700(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Messenger;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$11800(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Message;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$11900(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Messenger;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 3521
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$11800(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Message;

    move-result-object v2

    aget v1, v0, v1

    iput v1, v2, Landroid/os/Message;->arg1:I

    .line 3523
    :try_start_2
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$11900(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Messenger;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$11800(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 3527
    goto :goto_2

    .line 3524
    :catch_2
    move-exception v1

    .line 3525
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v4, "handleMessage() : RemoteException for ECT"

    invoke-static {v2, v4, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3529
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$11902(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 3530
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$11802(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/Message;)Landroid/os/Message;

    .line 3531
    return-void

    .line 3494
    :cond_7
    :goto_3
    return-void
.end method

.method private handleEctResult(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 3438
    const/4 v0, 0x2

    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6200(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 3446
    :cond_0
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v2, 0x5

    if-eqz v1, :cond_2

    .line 3448
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v3, "handleEctResult() : explicit call transfer failed!!"

    invoke-static {v1, v3, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3451
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7102(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 3454
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6200(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3455
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6200(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionTransferFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3457
    :catch_0
    move-exception v0

    .line 3458
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v3, "RuntimeException callSessionTransferFailed()"

    invoke-static {v1, v3, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3460
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    goto :goto_1

    .line 3463
    :cond_2
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v3, "handleEctResult() : explicit call transfer succeeded!!"

    invoke-static {v1, v3, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3468
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6200(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3469
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6200(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionTransferred()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3474
    :cond_3
    goto :goto_1

    .line 3471
    :catch_1
    move-exception v0

    .line 3472
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v3, "RuntimeException callSessionTransferred()"

    invoke-static {v1, v3, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3476
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_1
    return-void

    .line 3440
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v2, "handleEctResult() : ar or mListener is null"

    invoke-static {v1, v2, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3443
    return-void
.end method

.method private handleImsConferenceIndication(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 3554
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$12000(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3555
    return-void

    .line 3557
    :cond_0
    const/4 v0, 0x2

    if-nez p1, :cond_1

    .line 3559
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v2, "handleImsConferenceIndication() : ar is null"

    invoke-static {v1, v2, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3562
    return-void

    .line 3563
    :cond_1
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6200(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v1

    if-nez v1, :cond_2

    .line 3565
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v2, "handleImsConferenceIndication() : mListener is null, cache info"

    invoke-static {v1, v2, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3568
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$12102(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/AsyncResult;)Landroid/os/AsyncResult;

    .line 3569
    return-void

    .line 3571
    :cond_2
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    .line 3572
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/ims/ImsCallSessionProxy$User;>;"
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$12202(Lcom/mediatek/ims/ImsCallSessionProxy;I)I

    .line 3573
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 3574
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/ImsCallSessionProxy$User;

    .line 3575
    .local v2, "user":Lcom/mediatek/ims/ImsCallSessionProxy$User;
    const-string v3, "disconnected"

    iget-object v4, v2, Lcom/mediatek/ims/ImsCallSessionProxy$User;->mStatus:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 3576
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$12208(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    .line 3578
    .end local v2    # "user":Lcom/mediatek/ims/ImsCallSessionProxy$User;
    :cond_3
    goto :goto_0

    .line 3579
    :cond_4
    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->convertToImsConferenceState(Ljava/util/ArrayList;)Landroid/telephony/ims/ImsConferenceState;

    move-result-object v0

    .line 3581
    .local v0, "confState":Landroid/telephony/ims/ImsConferenceState;
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6200(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3585
    goto :goto_1

    .line 3582
    :catch_0
    move-exception v2

    .line 3583
    .local v2, "e":Ljava/lang/RuntimeException;
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v4, "RuntimeException callSessionConferenceStateUpdated()"

    const/4 v5, 0x5

    invoke-static {v3, v4, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3586
    .end local v0    # "confState":Landroid/telephony/ims/ImsConferenceState;
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_1
    goto :goto_2

    .line 3588
    :cond_5
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v4, "handleImsConferenceIndication() : auto terminate"

    invoke-static {v2, v4, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3590
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v0, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->terminate(I)V

    .line 3592
    :goto_2
    return-void
.end method

.method private handlePauUpdate(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pau"    # Ljava/lang/String;

    .line 3760
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3761
    const/4 v0, 0x0

    return v0

    .line 3764
    :cond_0
    const-string v0, "<sip:"

    invoke-direct {p0, p1, v0}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->getFieldValueFromPau(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3765
    .local v0, "sipNumber":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    const-string v2, "remote_uri"

    invoke-virtual {v1, v2, v0}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 3766
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->updateAddressFromPau(Ljava/lang/String;)Z

    move-result v1

    .line 3767
    .local v1, "ret":Z
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->updateDisplayNameFromPau(Ljava/lang/String;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 3768
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->updateVerstatFromPau(Ljava/lang/String;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 3769
    return v1
.end method

.method private handleRttAudioIndication(Landroid/os/AsyncResult;)V
    .locals 8
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 4054
    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6200(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 4059
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    .line 4060
    .local v0, "result":[I
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    aget v2, v0, v1

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 4063
    :cond_1
    const/4 v2, 0x1

    aget v3, v0, v2

    .line 4064
    .local v3, "status":I
    new-instance v4, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v4}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    .line 4065
    .local v4, "profile":Landroid/telephony/ims/ImsStreamMediaProfile;
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleRttAudioIndication audio: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v3, :cond_2

    move v7, v2

    goto :goto_0

    :cond_2
    move v7, v1

    :goto_0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v5, v6, v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 4067
    if-nez v3, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {v4, v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->setReceivingRttAudio(Z)V

    .line 4068
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6200(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionRttAudioIndicatorChanged(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 4069
    return-void

    .line 4061
    .end local v3    # "status":I
    .end local v4    # "profile":Landroid/telephony/ims/ImsStreamMediaProfile;
    :cond_4
    :goto_1
    return-void

    .line 4055
    .end local v0    # "result":[I
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v1, "handleRttAudioIndication ar or mListener is null"

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 4057
    return-void
.end method

.method private handleRttCapabilityIndication(Landroid/os/AsyncResult;)V
    .locals 13
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 3856
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v0

    .line 3857
    .local v0, "callId":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 3858
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v2, "handleRttCapabilityIndication ar is null"

    const/4 v3, 0x5

    invoke-static {v1, v2, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3860
    return-void

    .line 3863
    :cond_0
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    .line 3864
    .local v1, "result":[I
    if-eqz v0, :cond_8

    const/4 v2, 0x0

    aget v3, v1, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eq v3, v4, :cond_1

    goto/16 :goto_3

    .line 3867
    :cond_1
    const/4 v3, 0x1

    aget v4, v1, v3

    .line 3868
    .local v4, "localCapability":I
    const/4 v5, 0x2

    aget v6, v1, v5

    .line 3869
    .local v6, "remoteCapability":I
    const/4 v7, 0x3

    aget v7, v1, v7

    .line 3870
    .local v7, "localTextStatus":I
    const/4 v8, 0x4

    aget v8, v1, v8

    .line 3871
    .local v8, "realRemoteTextCapability":I
    iget-object v9, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleRttCapabilityIndication local cap= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " remo status= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " local status= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " remo cap= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3877
    iget-object v9, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    if-ne v6, v3, :cond_2

    if-ne v7, v3, :cond_2

    move v10, v3

    goto :goto_0

    :cond_2
    move v10, v2

    :goto_0
    invoke-static {v9, v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$12802(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 3879
    iget-object v9, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9, v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$12900(Lcom/mediatek/ims/ImsCallSessionProxy;I)V

    .line 3881
    iget-object v9, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleRttCapabilityIndication mIsRttEnabledForCallSession: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 3882
    invoke-static {v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$12800(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3881
    invoke-static {v9, v10, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3885
    iget-object v9, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$9000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v9

    if-ne v4, v3, :cond_3

    .line 3886
    move v10, v3

    goto :goto_1

    :cond_3
    move v10, v2

    .line 3885
    :goto_1
    invoke-virtual {v9, v10}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    .line 3887
    iget-object v9, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2800(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v9

    if-ne v8, v3, :cond_4

    .line 3888
    move v10, v3

    goto :goto_2

    :cond_4
    move v10, v2

    .line 3887
    :goto_2
    invoke-virtual {v9, v10}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    .line 3892
    iget-object v9, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v9, v9, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    if-eqz v9, :cond_5

    .line 3893
    iget-object v9, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v9, v9, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-virtual {v9, v4, v6, v7, v8}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->notifyTextCapabilityChanged(IIII)V

    .line 3899
    :cond_5
    const/4 v9, 0x0

    .line 3900
    .local v9, "status":I
    iget-object v10, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$12800(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 3901
    const/4 v9, 0x1

    .line 3903
    :cond_6
    iget-object v10, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v10

    iget-object v10, v10, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v10, v9}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    .line 3904
    iget-object v10, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$400(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 3907
    iget-object v10, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6700(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 3910
    iget-object v10, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$13000(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 3913
    iget-object v10, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1000(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsService;

    move-result-object v10

    iget-object v11, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/mediatek/ims/ImsService;->getRttEmcGuardTimerUtil(I)Lcom/mediatek/ims/RttEmcGuardTimerUtil;

    move-result-object v10

    .line 3914
    invoke-virtual {v10}, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->checkIncomingCallInRttEmcGuardTime()Z

    move-result v10

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 3915
    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$12800(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v10

    if-nez v10, :cond_7

    iget-object v10, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5900(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 3916
    iget-object v10, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handle RTT EMC Guard upgrade, mCallId= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3918
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4000(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x0

    invoke-interface {v5, v10, v3, v11}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->sendRttModifyRequest(IILandroid/os/Message;)V

    .line 3919
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5902(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 3921
    :cond_7
    return-void

    .line 3865
    .end local v4    # "localCapability":I
    .end local v6    # "remoteCapability":I
    .end local v7    # "localTextStatus":I
    .end local v8    # "realRemoteTextCapability":I
    .end local v9    # "status":I
    :cond_8
    :goto_3
    return-void
.end method

.method private handleRttECCRedialEvent()V
    .locals 3

    .line 3924
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v1, "notifyRttECCRedialEvent"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3925
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v0, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    if-nez v0, :cond_0

    .line 3926
    return-void

    .line 3928
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v0, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->notifyRttECCRedialEvent()V

    .line 3929
    return-void
.end method

.method private handleRttModifyRequestReceived(Landroid/os/AsyncResult;)V
    .locals 9
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 4011
    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6200(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 4016
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    .line 4017
    .local v0, "result":[I
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    aget v2, v0, v1

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 4021
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$13300(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v2

    const/4 v3, 0x2

    if-nez v2, :cond_2

    .line 4022
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v4, "handleRttModifyRequestReceived() : RTT and video not switchable"

    invoke-static {v2, v4, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 4024
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v2, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->sendRttModifyResponse(Z)V

    .line 4025
    return-void

    .line 4028
    :cond_2
    const/4 v2, 0x1

    aget v4, v0, v2

    .line 4029
    .local v4, "status":I
    new-instance v5, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v5}, Landroid/telephony/ims/ImsCallProfile;-><init>()V

    .line 4030
    .local v5, "imsCallProfile":Landroid/telephony/ims/ImsCallProfile;
    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleRttModifyRequestReceived status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 4032
    if-ne v4, v2, :cond_3

    .line 4033
    iget-object v1, v5, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    goto :goto_0

    .line 4035
    :cond_3
    iget-object v3, v5, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v3, v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    .line 4037
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->sendRttModifyResponse(Z)V

    .line 4040
    :goto_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6200(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionRttModifyRequestReceived(Landroid/telephony/ims/ImsCallProfile;)V

    .line 4041
    return-void

    .line 4018
    .end local v4    # "status":I
    .end local v5    # "imsCallProfile":Landroid/telephony/ims/ImsCallProfile;
    :cond_4
    :goto_1
    return-void

    .line 4012
    .end local v0    # "result":[I
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v1, "handleRttModifyRequestReceived ar or mListener is null"

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 4014
    return-void
.end method

.method private handleRttModifyResponse(Landroid/os/AsyncResult;)V
    .locals 8
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 3973
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6200(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 3978
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    .line 3979
    .local v0, "result":[I
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    aget v2, v0, v1

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 3982
    :cond_1
    const/4 v2, 0x1

    aget v2, v0, v2

    .line 3983
    .local v2, "response":I
    const/4 v3, 0x0

    .line 3989
    .local v3, "status":I
    const/4 v4, 0x2

    if-nez v2, :cond_2

    .line 3990
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v6, "handleRttModifyResponse success"

    invoke-static {v5, v6, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3991
    const/4 v3, 0x1

    goto :goto_0

    .line 3993
    :cond_2
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleRttModifyResponse fail status = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3995
    const/4 v3, 0x3

    .line 3998
    :goto_0
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6200(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionRttModifyResponseReceived(I)V

    .line 4001
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$13202(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 4003
    return-void

    .line 3980
    .end local v2    # "response":I
    .end local v3    # "status":I
    :cond_3
    :goto_1
    return-void

    .line 3974
    .end local v0    # "result":[I
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v1, "handleRttModifyResponse ar or mListener is null"

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3976
    return-void
.end method

.method private handleRttTextReceived(Landroid/os/AsyncResult;)V
    .locals 9
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 3932
    const/4 v0, 0x5

    if-nez p1, :cond_0

    .line 3933
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v2, "handleRttTextReceived ar is null"

    invoke-static {v1, v2, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3934
    return-void

    .line 3936
    :cond_0
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    .line 3937
    .local v1, "textReceived":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v3, v1, v2

    if-eqz v3, :cond_8

    const/4 v3, 0x1

    aget-object v4, v1, v3

    if-eqz v4, :cond_8

    const/4 v4, 0x2

    aget-object v5, v1, v4

    if-nez v5, :cond_1

    goto/16 :goto_3

    .line 3941
    :cond_1
    aget-object v5, v1, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 3942
    .local v5, "targetCallid":I
    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6200(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 3943
    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eq v5, v6, :cond_2

    goto/16 :goto_2

    .line 3946
    :cond_2
    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received call id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v2, v1, v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " len = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    aget-object v8, v1, v3

    .line 3947
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " textMessage = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    aget-object v8, v1, v4

    .line 3948
    invoke-static {v7, v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " actual len = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    aget-object v8, v1, v4

    .line 3949
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3946
    invoke-static {v6, v2, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3951
    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_6

    aget-object v2, v1, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    .line 3957
    :cond_3
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$13100(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/RttTextEncoder;

    move-result-object v2

    aget-object v3, v1, v4

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/RttTextEncoder;->getUnicodeFromUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3958
    .local v2, "decodeText":Ljava/lang/String;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    .line 3964
    :cond_4
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6200(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionRttMessageReceived(Ljava/lang/String;)V

    .line 3965
    return-void

    .line 3959
    :cond_5
    :goto_0
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v4, "handleRttTextReceived: decodeText length is 0"

    invoke-static {v3, v4, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3961
    return-void

    .line 3952
    .end local v2    # "decodeText":Ljava/lang/String;
    :cond_6
    :goto_1
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v3, "handleRttTextReceived: length is 0"

    invoke-static {v2, v3, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3954
    return-void

    .line 3944
    :cond_7
    :goto_2
    return-void

    .line 3938
    .end local v5    # "targetCallid":I
    :cond_8
    :goto_3
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v3, "textReceived is null"

    invoke-static {v2, v3, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3939
    return-void
.end method

.method private imsReasonInfoCodeFromRilReasonCode(I)I
    .locals 7
    .param p1, "causeCode"    # I

    .line 1750
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imsReasonInfoCodeFromRilReasonCode() : causeCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 1753
    const/16 v0, 0x1fe

    const/16 v1, 0x162

    const/16 v3, 0x154

    sparse-switch p1, :sswitch_data_0

    .line 1867
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->getWfcDisconnectCause(I)I

    move-result v1

    .line 1868
    .local v1, "wfcReason":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    .line 1869
    return v1

    .line 1847
    .end local v1    # "wfcReason":I
    :sswitch_0
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1848
    const/16 v0, 0x5ea

    return v0

    .line 1850
    :cond_0
    const v0, 0xf001

    return v0

    .line 1860
    :sswitch_1
    const/16 v0, 0x16c

    return v0

    .line 1857
    :sswitch_2
    const/16 v0, 0x16b

    return v0

    .line 1775
    :sswitch_3
    const/16 v0, 0x5e8

    return v0

    .line 1854
    :sswitch_4
    const/16 v0, 0xf3

    return v0

    .line 1777
    :sswitch_5
    const/16 v0, 0xf1

    return v0

    .line 1773
    :sswitch_6
    const/16 v0, 0x66

    return v0

    .line 1839
    :sswitch_7
    const/16 v0, 0x14f

    return v0

    .line 1843
    :sswitch_8
    const/16 v0, 0x156

    return v0

    .line 1770
    :sswitch_9
    const/16 v0, 0x8d

    return v0

    .line 1780
    :sswitch_a
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$700(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$800(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 1782
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$700(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/wfo/IWifiOffloadService;->isWifiConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1783
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v3, "imsReasonInfoCodeFromRilReasonCode() : Rat is Wifi, Wifi is disconnected, ret=SIGNAL_LOST"

    invoke-static {v0, v3, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1784
    const v0, 0xf00b

    return v0

    .line 1788
    :cond_1
    goto :goto_0

    .line 1786
    :catch_0
    move-exception v0

    .line 1787
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v3, "imsReasonInfoCodeFromRilReasonCode() : RemoteException in isWifiConnected()"

    const/4 v4, 0x5

    invoke-static {v2, v3, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 1792
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    return v1

    .line 1826
    :sswitch_b
    const/16 v0, 0x14c

    return v0

    .line 1762
    :sswitch_c
    return v3

    .line 1759
    :sswitch_d
    const/16 v0, 0x150

    return v0

    .line 1822
    :sswitch_e
    const/16 v0, 0x160

    return v0

    .line 1767
    :sswitch_f
    const/16 v0, 0x15f

    return v0

    .line 1810
    :sswitch_10
    return v0

    .line 1798
    :sswitch_11
    return v1

    .line 1815
    :sswitch_12
    const/16 v0, 0x151

    return v0

    .line 1807
    :sswitch_13
    const/16 v0, 0x169

    return v0

    .line 1804
    :sswitch_14
    const/16 v0, 0x1f6

    return v0

    .line 1801
    :sswitch_15
    const/16 v0, 0xca

    return v0

    .line 1755
    :sswitch_16
    const/16 v0, 0x152

    return v0

    .line 1836
    :sswitch_17
    const/16 v0, 0x153

    return v0

    .line 1830
    :sswitch_18
    return v3

    .line 1833
    :sswitch_19
    const/16 v0, 0x14d

    return v0

    .line 1813
    :sswitch_1a
    const/16 v0, 0x5eb

    return v0

    .line 1872
    .restart local v1    # "wfcReason":I
    :cond_3
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1000(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsService;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mediatek/ims/ImsService;->getImsServiceState(I)I

    move-result v3

    .line 1874
    .local v3, "serviceState":I
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "imsReasonInfoCodeFromRilReasonCode() : serviceState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 1877
    const/4 v2, 0x3

    if-ne v3, v2, :cond_4

    .line 1878
    const/16 v0, 0x6f

    return v0

    .line 1879
    :cond_4
    const/4 v2, 0x1

    if-ne v3, v2, :cond_5

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 1880
    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1100(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1881
    const/16 v0, 0x6a

    return v0

    .line 1882
    :cond_5
    const/16 v2, 0x10

    if-ne p1, v2, :cond_6

    .line 1883
    return v0

    .line 1887
    :cond_6
    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1a
        0x3 -> :sswitch_19
        0x6 -> :sswitch_18
        0x8 -> :sswitch_17
        0x11 -> :sswitch_16
        0x12 -> :sswitch_15
        0x13 -> :sswitch_14
        0x15 -> :sswitch_13
        0x1c -> :sswitch_12
        0x1d -> :sswitch_11
        0x1f -> :sswitch_10
        0x22 -> :sswitch_f
        0x26 -> :sswitch_e
        0x29 -> :sswitch_d
        0x2a -> :sswitch_e
        0x2b -> :sswitch_11
        0x2c -> :sswitch_d
        0x2f -> :sswitch_e
        0x31 -> :sswitch_c
        0x37 -> :sswitch_b
        0x39 -> :sswitch_b
        0x3a -> :sswitch_a
        0x3f -> :sswitch_e
        0x41 -> :sswitch_18
        0x44 -> :sswitch_9
        0x45 -> :sswitch_f
        0x51 -> :sswitch_8
        0x58 -> :sswitch_e
        0x66 -> :sswitch_7
        0x6f -> :sswitch_f
        0x7f -> :sswitch_11
        0xf0 -> :sswitch_6
        0xf1 -> :sswitch_5
        0xf3 -> :sswitch_4
        0x104 -> :sswitch_3
        0x145 -> :sswitch_2
        0x146 -> :sswitch_1
        0x17c -> :sswitch_0
    .end sparse-switch
.end method

.method private isCallModeUpdated(II)Z
    .locals 8
    .param p1, "callMode"    # I
    .param p2, "videoState"    # I

    .line 2161
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCallModeUpdated() : callMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "videoState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2162
    const/4 v0, 0x0

    .line 2163
    .local v0, "isChanged":Z
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    iget v1, v1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 2165
    .local v1, "oldCallMode":I
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v3

    if-eq v3, p2, :cond_0

    .line 2166
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3, p2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2902(Lcom/mediatek/ims/ImsCallSessionProxy;I)I

    .line 2167
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$300(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 2168
    const/4 v0, 0x1

    .line 2171
    :cond_0
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v4

    invoke-static {v3, p1, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3000(Lcom/mediatek/ims/ImsCallSessionProxy;II)V

    .line 2173
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    iget v3, v3, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    if-eq v3, v1, :cond_1

    .line 2174
    const/4 v0, 0x1

    .line 2176
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3100(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/internal/ImsVTProvider;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2177
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3100(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/internal/ImsVTProvider;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v4

    iget v4, v4, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-static {v4}, Landroid/telephony/ims/ImsCallProfile;->getVideoStateFromCallType(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mediatek/ims/internal/ImsVTProvider;->onUpdateProfile(I)V

    .line 2182
    :cond_1
    sget-object v3, Lcom/mediatek/ims/OperatorUtils$OPID;->OP07:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2183
    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v3

    .line 2185
    .local v3, "supportUpgradeWhenVoiceConf":Z
    const/16 v4, 0x18

    const/16 v5, 0x16

    if-eq p1, v5, :cond_2

    if-ne p1, v4, :cond_3

    :cond_2
    if-nez v3, :cond_3

    .line 2187
    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3200(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v6

    or-int/2addr v0, v6

    .line 2190
    :cond_3
    const/16 v6, 0x14

    if-eq p1, v6, :cond_4

    if-eq p1, v5, :cond_4

    if-eq p1, v4, :cond_4

    const/16 v4, 0x19

    if-ne p1, v4, :cond_5

    .line 2192
    :cond_4
    if-eqz v0, :cond_5

    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3100(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/internal/ImsVTProvider;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 2193
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isCallModeUpdated() : Start setUIMode old: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2194
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3300(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3100(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/internal/ImsVTProvider;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v4, v5, v6}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->setUIMode(Lcom/mediatek/ims/internal/ImsVTProvider;I)V

    .line 2195
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isCallModeUpdated() : End setUIMode new: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v6

    iget v6, v6, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2200
    :cond_5
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2201
    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3100(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/internal/ImsVTProvider;

    move-result-object v5

    iget v5, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    move v5, v6

    goto :goto_0

    :cond_6
    const/4 v5, 0x0

    .line 2200
    :goto_0
    const-string v7, "local_paused"

    invoke-virtual {v4, v7, v5}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 2202
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v4

    const-string v5, "prev_call_type"

    invoke-virtual {v4, v5, v1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2204
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isCallModeUpdated() : EXTRA_LOCAL_PAUSED: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2205
    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3100(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/internal/ImsVTProvider;

    move-result-object v7

    iget v7, v7, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    if-ne v7, v6, :cond_7

    const-string v6, "true"

    goto :goto_1

    :cond_7
    const-string v6, "false"

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", EXTRA_PREVIOUS_CALL_TYPE: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2204
    invoke-static {v4, v5, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2210
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    iget v2, v2, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    if-eq v2, v1, :cond_8

    .line 2211
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2213
    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3100(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/internal/ImsVTProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/ims/internal/ImsVTProvider;->getModificationCause()I

    move-result v4

    .line 2211
    const-string v5, "SessionModificationCause"

    invoke-virtual {v2, v5, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2217
    :cond_8
    return v0
.end method

.method private notifyMultipartyStateChanged(I)V
    .locals 5
    .param p1, "callMode"    # I

    .line 3647
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->updateMultipartyState(I)Z

    move-result v0

    .line 3648
    .local v0, "stateChanged":Z
    if-nez v0, :cond_0

    .line 3649
    return-void

    .line 3652
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyMultipartyStateChanged() : isMultiparty(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 3653
    invoke-virtual {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->isMultiparty()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3652
    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3656
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6200(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3658
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6200(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->isMultiparty()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionMultipartyStateChanged(Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3662
    goto :goto_0

    .line 3659
    :catch_0
    move-exception v1

    .line 3660
    .local v1, "e":Ljava/lang/RuntimeException;
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v3, "RuntimeException callSessionMultipartyStateChanged()"

    const/4 v4, 0x5

    invoke-static {v2, v3, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3664
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return-void
.end method

.method private retrieveMergeFail()V
    .locals 9

    .line 2221
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3400(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3500(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 2227
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3600(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsServiceCallTracker;->setOngoingMergeCallIds([Ljava/lang/String;)V

    .line 2228
    const/4 v0, 0x0

    .line 2229
    .local v0, "mergeCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    const/4 v1, 0x0

    .line 2230
    .local v1, "mergedCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    const/4 v2, 0x0

    .line 2231
    .local v2, "isNotifyMergeFail":Z
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3502(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 2233
    invoke-static {}, Lcom/mediatek/ims/ImsConferenceHandler;->getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/ims/DefaultConferenceHandler;->modifyParticipantFailed()V

    .line 2235
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v4, "retrieveMergeFail()"

    const/4 v5, 0x2

    invoke-static {v3, v4, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2236
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3700(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3700(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2237
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3600(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v3

    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3700(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/mediatek/ims/ImsServiceCallTracker;->getCallInfo(Ljava/lang/String;)Lcom/mediatek/ims/ImsCallInfo;

    move-result-object v0

    .line 2240
    :cond_1
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3800(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3800(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2241
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3600(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3800(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/ims/ImsServiceCallTracker;->getCallInfo(Ljava/lang/String;)Lcom/mediatek/ims/ImsCallInfo;

    move-result-object v1

    .line 2244
    :cond_2
    const/16 v3, 0xd3

    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    .line 2246
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "retrieveMergeFail() : MergeCallInfo: callId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/mediatek/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " call status="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v0, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " MergedCallInfo: callId="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v1, Lcom/mediatek/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2250
    iget-object v4, v0, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    sget-object v6, Lcom/mediatek/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/ims/ImsCallInfo$State;

    if-ne v4, v6, :cond_3

    iget-object v4, v1, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    sget-object v6, Lcom/mediatek/ims/ImsCallInfo$State;->HOLDING:Lcom/mediatek/ims/ImsCallInfo$State;

    if-ne v4, v6, :cond_3

    .line 2253
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2255
    :cond_3
    iget-object v4, v0, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    sget-object v6, Lcom/mediatek/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/ims/ImsCallInfo$State;

    if-ne v4, v6, :cond_4

    iget-object v4, v1, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    sget-object v6, Lcom/mediatek/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/ims/ImsCallInfo$State;

    if-ne v4, v6, :cond_4

    .line 2259
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v6, "retrieveMergeFail() : two active call and hold merged call"

    invoke-static {v4, v6, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2261
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3900(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 2262
    .local v3, "result":Landroid/os/Message;
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4000(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3800(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->hold(ILandroid/os/Message;)V

    .line 2264
    .end local v3    # "result":Landroid/os/Message;
    goto/16 :goto_0

    :cond_4
    iget-object v4, v0, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    sget-object v6, Lcom/mediatek/ims/ImsCallInfo$State;->HOLDING:Lcom/mediatek/ims/ImsCallInfo$State;

    if-ne v4, v6, :cond_5

    iget-object v4, v1, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    sget-object v6, Lcom/mediatek/ims/ImsCallInfo$State;->HOLDING:Lcom/mediatek/ims/ImsCallInfo$State;

    if-ne v4, v6, :cond_5

    .line 2268
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v6, "retrieveMergeFail() : two hold call and resume merge call"

    invoke-static {v4, v6, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2270
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3900(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 2271
    .restart local v3    # "result":Landroid/os/Message;
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4000(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3700(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->resume(ILandroid/os/Message;)V

    .line 2272
    .end local v3    # "result":Landroid/os/Message;
    goto/16 :goto_0

    .line 2273
    :cond_5
    iget-boolean v4, v0, Lcom/mediatek/ims/ImsCallInfo;->mIsIgnoreUpdateStatus:Z

    if-eqz v4, :cond_6

    iget-boolean v4, v1, Lcom/mediatek/ims/ImsCallInfo;->mIsIgnoreUpdateStatus:Z

    if-eqz v4, :cond_6

    .line 2275
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v6, "retrieveMergeFail() : swap back as active call and holdconference call are swapped before merge"

    invoke-static {v4, v6, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2277
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3900(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 2278
    .restart local v3    # "result":Landroid/os/Message;
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4000(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->swap(Landroid/os/Message;)V

    .line 2279
    .end local v3    # "result":Landroid/os/Message;
    goto :goto_0

    .line 2281
    :cond_6
    const/4 v2, 0x1

    goto :goto_0

    .line 2284
    :cond_7
    if-eqz v0, :cond_8

    if-nez v1, :cond_d

    .line 2287
    :cond_8
    if-eqz v0, :cond_a

    .line 2289
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v6, "retrieveMergeFail() : only merge call is left"

    invoke-static {v4, v6, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2291
    iget-object v4, v0, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    sget-object v5, Lcom/mediatek/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/ims/ImsCallInfo$State;

    if-eq v4, v5, :cond_9

    .line 2292
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3900(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 2293
    .restart local v3    # "result":Landroid/os/Message;
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4000(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3700(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->resume(ILandroid/os/Message;)V

    .line 2294
    .end local v3    # "result":Landroid/os/Message;
    goto :goto_0

    .line 2295
    :cond_9
    const/4 v2, 0x1

    goto :goto_0

    .line 2298
    :cond_a
    if-eqz v1, :cond_c

    .line 2300
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v6, "retrieveMergeFail() : only merged call is left"

    invoke-static {v4, v6, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2302
    iget-object v4, v1, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    sget-object v5, Lcom/mediatek/ims/ImsCallInfo$State;->HOLDING:Lcom/mediatek/ims/ImsCallInfo$State;

    if-eq v4, v5, :cond_b

    .line 2303
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3900(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 2304
    .restart local v3    # "result":Landroid/os/Message;
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4000(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3800(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->hold(ILandroid/os/Message;)V

    .line 2305
    .end local v3    # "result":Landroid/os/Message;
    goto :goto_0

    .line 2306
    :cond_b
    const/4 v2, 0x1

    goto :goto_0

    .line 2312
    :cond_c
    const/4 v2, 0x1

    .line 2316
    :cond_d
    :goto_0
    const/4 v3, 0x0

    if-eqz v0, :cond_e

    .line 2317
    iput-boolean v3, v0, Lcom/mediatek/ims/ImsCallInfo;->mIsIgnoreUpdateStatus:Z

    .line 2320
    :cond_e
    if-eqz v1, :cond_f

    .line 2321
    iput-boolean v3, v1, Lcom/mediatek/ims/ImsCallInfo;->mIsIgnoreUpdateStatus:Z

    .line 2324
    :cond_f
    if-eqz v2, :cond_10

    .line 2325
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3502(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 2326
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4100(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 2328
    :cond_10
    return-void

    .line 2222
    .end local v0    # "mergeCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    .end local v1    # "mergedCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    .end local v2    # "isNotifyMergeFail":Z
    :cond_11
    :goto_1
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "retrieveMergeFail() : Shouldn\'t retrieve merge fail, mIsMerging:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2223
    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3400(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsRetrievingMergeFail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3500(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2222
    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2225
    return-void
.end method

.method private updateAddressFromPau(Ljava/lang/String;)Z
    .locals 10
    .param p1, "pau"    # Ljava/lang/String;

    .line 3702
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$12500(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-nez v0, :cond_0

    .line 3703
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v3, "updateAddressFromPau() : MO call, should not update addr by PAU"

    invoke-static {v0, v3, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3705
    return v1

    .line 3708
    :cond_0
    const/4 v0, 0x0

    .line 3710
    .local v0, "changed":Z
    const-string v3, "<sip:"

    invoke-direct {p0, p1, v3}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->getFieldValueFromPau(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3711
    .local v3, "sipField":Ljava/lang/String;
    const-string v4, "<tel:"

    invoke-direct {p0, p1, v4}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->getFieldValueFromPau(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3713
    .local v4, "telField":Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateAddressFromPau() : updatePau()... telNumber: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 3714
    invoke-static {v7, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " sipNumber: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v7, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3713
    invoke-static {v5, v6, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3718
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$12600(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3719
    move-object v5, v3

    goto :goto_0

    :cond_1
    move-object v5, v4

    .line 3720
    .local v5, "addr":Ljava/lang/String;
    :goto_0
    const-string v6, "[;@,]+"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 3721
    .local v6, "split":[Ljava/lang/String;
    aget-object v1, v6, v1

    .line 3723
    .end local v5    # "addr":Ljava/lang/String;
    .local v1, "addr":Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v5

    const-string v7, "oi"

    invoke-virtual {v5, v7}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3724
    .local v5, "currentOI":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 3725
    invoke-static {v5, v1}, Landroid/telephony/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 3726
    const/4 v0, 0x1

    .line 3727
    iget-object v8, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v8

    invoke-virtual {v8, v7, v1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 3728
    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateAddressFromPau() : updatePau()... addr: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 3729
    invoke-static {v9, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3728
    invoke-static {v7, v8, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3732
    :cond_2
    return v0
.end method

.method private updateCallDisplayFromNumberOrPau(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "pau"    # Ljava/lang/String;

    .line 3800
    const/4 v0, 0x0

    .line 3802
    .local v0, "changed":Z
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3803
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    const-string v2, "oi"

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3805
    .local v1, "curOI":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3807
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCallDisplayFromNumberOrPau() : number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 3808
    invoke-static {v5, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3807
    const/4 v5, 0x2

    invoke-static {v3, v4, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3810
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    invoke-virtual {v3, v2, p1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 3811
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    const-string v3, "remote_uri"

    invoke-virtual {v2, v3, p1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 3812
    const/4 v0, 0x1

    .line 3814
    :cond_0
    return v0

    .line 3817
    .end local v1    # "curOI":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->handlePauUpdate(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private updateDisplayNameFromPau(Ljava/lang/String;)Z
    .locals 7
    .param p1, "pau"    # Ljava/lang/String;

    .line 3736
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$12700(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 3737
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v2, "updateDisplayNameFromPau() : MO call, should not update display-name by PAU"

    invoke-static {v0, v2, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3739
    const/4 v0, 0x0

    return v0

    .line 3742
    :cond_0
    const/4 v0, 0x0

    .line 3743
    .local v0, "changed":Z
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->getDisplayNameFromPau(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3744
    .local v2, "displayName":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    const-string v4, "cna"

    invoke-virtual {v3, v4}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3745
    .local v3, "currentDisplayName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 3746
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v5

    const-string v6, "cnap"

    invoke-virtual {v5, v6, v1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 3748
    invoke-static {v3, v2}, Landroid/telephony/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 3749
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v5

    invoke-virtual {v5, v4, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 3750
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v4

    invoke-virtual {v4, v6, v1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 3752
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v5, "updateDisplayNameFromPau()"

    invoke-static {v4, v5, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3753
    const/4 v0, 0x1

    .line 3756
    :cond_1
    return v0
.end method

.method private updateImsReasonInfo(Landroid/os/AsyncResult;)V
    .locals 16
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 1894
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, [Ljava/lang/String;

    .line 1895
    .local v3, "sipMessage":[Ljava/lang/String;
    if-eqz v3, :cond_15

    const/4 v0, 0x3

    aget-object v4, v3, v0

    if-eqz v4, :cond_15

    const/4 v4, 0x4

    aget-object v5, v3, v4

    if-eqz v5, :cond_15

    iget-object v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 1896
    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_15

    const/4 v5, 0x0

    aget-object v6, v3, v5

    iget-object v7, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    goto/16 :goto_3

    .line 1899
    :cond_0
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateImsReasonInfo() : receive sip method = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v3, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " cause = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v3, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " reason header = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x5

    aget-object v8, v3, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1300(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)V

    .line 1902
    new-instance v6, Lcom/mediatek/ims/SipMessage;

    invoke-direct {v6, v3}, Lcom/mediatek/ims/SipMessage;-><init>([Ljava/lang/String;)V

    .line 1904
    .local v6, "msg":Lcom/mediatek/ims/SipMessage;
    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getCode()I

    move-result v7

    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v7, v8}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->updateRestrictHDForRemoteCallProfile(ILjava/lang/String;)V

    .line 1907
    iget-object v7, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1400(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ext/OpImsCallSessionProxy;

    move-result-object v7

    invoke-interface {v7, v6}, Lcom/mediatek/ims/ext/OpImsCallSessionProxy;->getImsReasonInfo(Lcom/mediatek/ims/SipMessage;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v7

    .line 1908
    .local v7, "opReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    if-nez v7, :cond_1

    .line 1909
    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v8, v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1500(Lcom/mediatek/ims/ImsCallSessionProxy;Lcom/mediatek/ims/SipMessage;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v7

    .line 1911
    :cond_1
    if-eqz v7, :cond_2

    .line 1912
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0, v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1602(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsReasonInfo;)Landroid/telephony/ims/ImsReasonInfo;

    .line 1913
    return-void

    .line 1919
    :cond_2
    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v8

    const-string v9, "No answer from user (user alerted)"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1920
    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1702(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    .line 1924
    :cond_3
    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getCode()I

    move-result v8

    const/16 v9, 0x57c

    const/16 v10, 0x3f6

    const-string v11, "RTP inactivity"

    const-string v12, "mCachedCauseText="

    const/4 v13, 0x2

    const/16 v14, 0x192

    const-string v15, "ImsCallSessionProxy"

    const/4 v0, 0x7

    const/4 v4, 0x1

    sparse-switch v8, :sswitch_data_0

    goto/16 :goto_2

    .line 2090
    :sswitch_0
    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getMethod()I

    move-result v8

    if-ne v8, v0, :cond_14

    .line 2091
    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getDir()I

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2092
    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$800(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v0

    if-ne v0, v13, :cond_14

    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2093
    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2500(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v0

    if-eq v0, v4, :cond_4

    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2500(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2600(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v0

    if-ne v0, v4, :cond_14

    .line 2094
    :cond_4
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v14, v5, v11}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-static {v0, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1602(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsReasonInfo;)Landroid/telephony/ims/ImsReasonInfo;

    goto/16 :goto_2

    .line 2000
    :sswitch_1
    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 2001
    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v4, "declined"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2003
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    .line 2005
    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v9, v5, v8}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 2003
    invoke-static {v0, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1602(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsReasonInfo;)Landroid/telephony/ims/ImsReasonInfo;

    goto/16 :goto_2

    .line 1977
    :sswitch_2
    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getMethod()I

    move-result v0

    if-ne v0, v4, :cond_14

    .line 1978
    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_14

    .line 1980
    sget-object v0, Lcom/mediatek/ims/OperatorUtils$OPID;->OP07:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget-object v4, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v4

    invoke-static {v0, v4}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1981
    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v0

    const-string v4, "Emergency calls over WiFi not allowed in this location"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1983
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    .line 1985
    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x656

    invoke-direct {v4, v9, v5, v8}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1983
    invoke-static {v0, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1602(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsReasonInfo;)Landroid/telephony/ims/ImsReasonInfo;

    goto/16 :goto_2

    .line 2119
    :sswitch_3
    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getMethod()I

    move-result v0

    if-ne v0, v4, :cond_14

    .line 2120
    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getDir()I

    move-result v0

    if-ne v0, v4, :cond_14

    .line 2121
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    .line 2122
    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x152

    invoke-direct {v4, v9, v5, v8}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 2121
    invoke-static {v0, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1602(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsReasonInfo;)Landroid/telephony/ims/ImsReasonInfo;

    .line 2123
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v0, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    if-eqz v0, :cond_14

    .line 2124
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v0, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->notifyCallSessionBusy()V

    goto/16 :goto_2

    .line 1927
    :sswitch_4
    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getMethod()I

    move-result v0

    if-ne v0, v4, :cond_14

    .line 1928
    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_14

    .line 1930
    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v0

    const-string v8, "Simultaneous Call Limit Has Already Been Reached"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1931
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    .line 1933
    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x57b

    invoke-direct {v4, v9, v5, v8}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1931
    invoke-static {v0, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1602(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsReasonInfo;)Landroid/telephony/ims/ImsReasonInfo;

    goto/16 :goto_2

    .line 1934
    :cond_5
    sget-object v0, Lcom/mediatek/ims/OperatorUtils$OPID;->OP07:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v8

    invoke-static {v0, v8}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1935
    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v0

    const-string v8, "Service not allowed in this location"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1937
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v8, Landroid/telephony/ims/ImsReasonInfo;

    .line 1939
    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x657

    invoke-direct {v8, v10, v5, v9}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1937
    invoke-static {v0, v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1602(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsReasonInfo;)Landroid/telephony/ims/ImsReasonInfo;

    .line 1942
    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 1943
    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v0

    const-string v5, "Forbidden. Not Authorized for Service"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1945
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1800(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/content/Context;

    move-result-object v0

    const-string v5, "phone"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 1947
    .local v5, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v5, :cond_6

    .line 1948
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v0

    invoke-virtual {v5, v0, v4}, Landroid/telephony/TelephonyManager;->getImsConfig(II)Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object v0

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :goto_0
    move-object v4, v0

    .line 1949
    .local v4, "configBinder":Landroid/telephony/ims/aidl/IImsConfig;
    if-eqz v4, :cond_7

    .line 1951
    :try_start_0
    const-string v0, "invite 403: Forbidden. Not Authorized for Service"

    const/16 v8, 0x193

    invoke-interface {v4, v8, v0}, Landroid/telephony/ims/aidl/IImsConfig;->checkinVolteProvision(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1955
    goto :goto_1

    .line 1954
    :catch_0
    move-exception v0

    .line 1958
    :cond_7
    :goto_1
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1000(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsService;

    move-result-object v0

    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/mediatek/ims/ImsService;->getSubIdUsingPhoneId(I)I

    move-result v0

    .line 1959
    .local v0, "subId":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Throwing ACTION_FORBIDDEN_NO_SERVICE_AUTHORIZATION intent for subId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v15, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.android.internal.intent.action.ACTION_FORBIDDEN_NO_SERVICE_AUTHORIZATION"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1963
    .local v8, "intent":Landroid/content/Intent;
    const-string v9, "android.telephony.extra.SUBSCRIPTION_INDEX"

    invoke-virtual {v8, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1964
    const-string v9, "service_name"

    const-string v10, "motorola.telephony.extra.IMS_CALLING"

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1966
    const/high16 v9, 0x20000000

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1967
    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1800(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1969
    .end local v0    # "subId":I
    .end local v4    # "configBinder":Landroid/telephony/ims/aidl/IImsConfig;
    .end local v5    # "tm":Landroid/telephony/TelephonyManager;
    .end local v8    # "intent":Landroid/content/Intent;
    goto/16 :goto_2

    .line 1991
    :sswitch_5
    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 1992
    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v4, "call completed elsewhere"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1994
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    .line 1996
    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v10, v5, v8}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1994
    invoke-static {v0, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1602(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsReasonInfo;)Landroid/telephony/ims/ImsReasonInfo;

    goto/16 :goto_2

    .line 2102
    :sswitch_6
    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getDir()I

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getType()I

    move-result v0

    if-ne v0, v4, :cond_8

    .line 2104
    sget-object v0, Lcom/mediatek/ims/OperatorUtils$OPID;->OP08:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget-object v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v5

    invoke-static {v0, v5}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2105
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2702(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 2109
    :cond_8
    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getDir()I

    move-result v0

    if-ne v0, v4, :cond_14

    .line 2110
    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getType()I

    move-result v0

    if-ne v0, v4, :cond_14

    .line 2111
    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getMethod()I

    move-result v0

    if-ne v0, v4, :cond_14

    .line 2113
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2402(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    .line 2114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2400(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2131
    :sswitch_7
    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getDir()I

    move-result v0

    if-ne v0, v4, :cond_14

    .line 2132
    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getType()I

    move-result v0

    if-ne v0, v4, :cond_14

    .line 2133
    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getMethod()I

    move-result v0

    if-ne v0, v4, :cond_14

    .line 2135
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2402(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    .line 2136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2400(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2009
    :sswitch_8
    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getMethod()I

    move-result v8

    const/4 v14, 0x4

    if-ne v8, v14, :cond_9

    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_9

    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2010
    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v14

    invoke-static {v8, v14}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1900(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 2011
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    .line 2013
    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v9, v5, v8}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 2011
    invoke-static {v0, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1602(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsReasonInfo;)Landroid/telephony/ims/ImsReasonInfo;

    goto/16 :goto_2

    .line 2014
    :cond_9
    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getMethod()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_a

    .line 2015
    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_a

    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2016
    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2000(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 2017
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    .line 2019
    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v10, v5, v8}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 2017
    invoke-static {v0, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1602(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsReasonInfo;)Landroid/telephony/ims/ImsReasonInfo;

    goto/16 :goto_2

    .line 2020
    :cond_a
    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getMethod()I

    move-result v8

    if-ne v8, v0, :cond_b

    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_b

    .line 2022
    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Call Has Been Pulled by Another Device"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 2023
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    .line 2025
    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x3f8

    invoke-direct {v4, v9, v5, v8}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 2023
    invoke-static {v0, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1602(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsReasonInfo;)Landroid/telephony/ims/ImsReasonInfo;

    goto/16 :goto_2

    .line 2026
    :cond_b
    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getDir()I

    move-result v8

    if-nez v8, :cond_d

    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getType()I

    move-result v8

    if-nez v8, :cond_d

    .line 2028
    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getMethod()I

    move-result v8

    if-ne v8, v4, :cond_d

    .line 2029
    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_d

    .line 2030
    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Video call is currently not available"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 2032
    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Video calling is unavailable"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 2034
    :cond_c
    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2035
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateImsReasonInfo() : "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v13}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2037
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    .line 2039
    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x2c

    invoke-direct {v4, v9, v5, v8}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 2037
    invoke-static {v0, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1602(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsReasonInfo;)Landroid/telephony/ims/ImsReasonInfo;

    goto/16 :goto_2

    .line 2040
    :cond_d
    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getMethod()I

    move-result v8

    if-ne v8, v0, :cond_10

    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getDir()I

    move-result v8

    if-nez v8, :cond_10

    .line 2042
    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_10

    .line 2043
    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "rtp-rtcp timeout"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 2045
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2100(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2046
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2200(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v0

    iget-object v4, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2300(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v4

    if-ge v0, v4, :cond_e

    .line 2047
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    const-string v8, "Call is dropped due to Wi-Fi signal is degraded"

    const/16 v9, 0x192

    invoke-direct {v4, v9, v5, v8}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-static {v0, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1602(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsReasonInfo;)Landroid/telephony/ims/ImsReasonInfo;

    goto/16 :goto_2

    .line 2051
    :cond_e
    const/16 v9, 0x192

    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    const-string v8, "Call is dropped due to Wi-Fi backhaul is congested"

    invoke-direct {v4, v9, v5, v8}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-static {v0, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1602(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsReasonInfo;)Landroid/telephony/ims/ImsReasonInfo;

    goto/16 :goto_2

    .line 2057
    :cond_f
    const/16 v9, 0x192

    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v9, v5, v11}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-static {v0, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1602(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsReasonInfo;)Landroid/telephony/ims/ImsReasonInfo;

    goto/16 :goto_2

    .line 2062
    :cond_10
    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getMethod()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_11

    .line 2063
    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getDir()I

    move-result v8

    if-ne v8, v4, :cond_11

    .line 2064
    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getType()I

    move-result v8

    if-nez v8, :cond_11

    .line 2067
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2402(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    .line 2068
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2400(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2070
    :cond_11
    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getMethod()I

    move-result v8

    if-ne v8, v0, :cond_12

    .line 2071
    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getDir()I

    move-result v8

    if-nez v8, :cond_12

    .line 2072
    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getType()I

    move-result v8

    if-nez v8, :cond_12

    .line 2073
    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_12

    .line 2074
    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Media bearer loss"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 2075
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1702(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 2080
    :cond_12
    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getMethod()I

    move-result v8

    if-ne v8, v0, :cond_14

    .line 2081
    invoke-virtual {v6}, Lcom/mediatek/ims/SipMessage;->getDir()I

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2082
    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$800(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v0

    if-ne v0, v13, :cond_14

    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2083
    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2500(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v0

    if-eq v0, v4, :cond_13

    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2500(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2600(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v0

    if-ne v0, v4, :cond_14

    .line 2084
    :cond_13
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v8, 0x192

    invoke-direct {v4, v8, v5, v11}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-static {v0, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1602(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsReasonInfo;)Landroid/telephony/ims/ImsReasonInfo;

    .line 2142
    :cond_14
    :goto_2
    return-void

    .line 1897
    .end local v6    # "msg":Lcom/mediatek/ims/SipMessage;
    .end local v7    # "opReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    :cond_15
    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_8
        0xb4 -> :sswitch_7
        0xb7 -> :sswitch_6
        0xc8 -> :sswitch_5
        0x193 -> :sswitch_4
        0x1e6 -> :sswitch_3
        0x1f7 -> :sswitch_2
        0x25b -> :sswitch_1
        0x2a0 -> :sswitch_0
    .end sparse-switch
.end method

.method private updateMultipartyState(I)Z
    .locals 6
    .param p1, "callMode"    # I

    .line 3621
    const/16 v0, 0x17

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x16

    if-eq p1, v3, :cond_1

    if-eq p1, v0, :cond_1

    const/16 v4, 0x18

    if-eq p1, v4, :cond_1

    const/16 v4, 0x19

    if-ne p1, v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v1

    .line 3624
    .local v4, "isMultipartyMode":Z
    :goto_1
    if-eq p1, v3, :cond_3

    if-ne p1, v0, :cond_2

    goto :goto_2

    .line 3627
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$12002(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    goto :goto_3

    .line 3625
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$12002(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 3630
    :goto_3
    sget-object v0, Lcom/mediatek/ims/OperatorUtils$OPID;->OP12:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v3

    invoke-static {v0, v3}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$12000(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3632
    const-string v0, "ImsCallSessionProxy"

    const-string v3, "VzW: set conference no constrain for HD icon"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3633
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2800(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    iput v2, v0, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    .line 3636
    :cond_4
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->isMultiparty()Z

    move-result v0

    .line 3637
    .local v0, "mptyState":Z
    const-string v3, "mpty"

    .line 3639
    .local v3, "mptyExtra":Ljava/lang/String;
    if-ne v0, v4, :cond_5

    .line 3640
    return v2

    .line 3642
    :cond_5
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v5

    if-eqz v4, :cond_6

    move v2, v1

    :cond_6
    invoke-virtual {v5, v3, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 3643
    return v1
.end method

.method private updateOIR(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "num"    # Ljava/lang/String;
    .param p2, "pau"    # Ljava/lang/String;

    .line 3667
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->isMultiparty()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 3668
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v2, "updateOIR() : ignore update OIR for mpty call: "

    invoke-static {v0, v2, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3669
    return-void

    .line 3672
    :cond_0
    const/4 v0, 0x2

    .line 3673
    .local v0, "oir":I
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->getDisplayNameFromPau(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3674
    .local v2, "displayName":Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    const-string v4, "Coin line/payphone"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 3676
    .local v3, "payPhoneName":Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateOIR() : pau: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6, p2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "], displayName: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 3677
    invoke-static {v6, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3676
    invoke-static {v4, v5, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3679
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3680
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 3681
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3682
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v4, "coin line/payphone"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3683
    const/4 v0, 0x4

    goto/16 :goto_0

    .line 3684
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/mediatek/ims/OperatorUtils$OPID;->OP50:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 3685
    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v4

    invoke-static {v1, v4}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/mediatek/ims/OperatorUtils$OPID;->OP129:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 3686
    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v4

    invoke-static {v1, v4}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/mediatek/ims/OperatorUtils$OPID;->OP218:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 3687
    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v4

    invoke-static {v1, v4}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3688
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v4, "unavailable"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 3689
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v4, "interaction with other service"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3690
    :cond_4
    const/4 v0, 0x3

    goto :goto_0

    .line 3691
    :cond_5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v4, "anonymous"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3692
    const/4 v0, 0x1

    goto :goto_0

    .line 3693
    :cond_6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/mediatek/ims/OperatorUtils$OPID;->OP07:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 3694
    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v4

    .line 3693
    invoke-static {v1, v4}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3695
    const/4 v0, 0x1

    .line 3698
    :cond_7
    :goto_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    const-string v4, "oir"

    invoke-virtual {v1, v4, v0}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 3699
    return-void
.end method

.method private updateRestrictHDForRemoteCallProfile(ILjava/lang/String;)V
    .locals 3
    .param p1, "sipCode"    # I
    .param p2, "reasonHeader"    # Ljava/lang/String;

    .line 2145
    sget-object v0, Lcom/mediatek/ims/OperatorUtils$OPID;->OP12:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2146
    return-void

    .line 2149
    :cond_0
    const-string v0, "updateRestrictHDForRemoteCallProfile: check for op12"

    const-string v1, "ImsCallSessionProxy"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    const/16 v0, 0xb4

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_1

    .line 2151
    return-void

    .line 2153
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "<call_w_mmtel_icsi_tag>"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2154
    const-string v0, "updateRestrictHDForRemoteCallProfile"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2155
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2800(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    .line 2156
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$400(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 2158
    :cond_2
    return-void
.end method

.method private updateVerstatFromPau(Ljava/lang/String;)Z
    .locals 9
    .param p1, "pau"    # Ljava/lang/String;

    .line 3773
    const/4 v0, 0x0

    .line 3774
    .local v0, "changed":Z
    const-string v1, "verstat="

    invoke-direct {p0, p1, v1}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->getFieldValueFromPau(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3776
    .local v1, "verstatField":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3777
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateVerstatFromPau() :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3779
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ims/ImsCallProfile;->getCallerNumberVerificationStatus()I

    move-result v2

    .line 3780
    .local v2, "currentVerstat":I
    const-string v3, "[;@,]+"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 3781
    .local v3, "split":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v6, v3, v5

    .line 3782
    .local v6, "value":Ljava/lang/String;
    const-string v7, "TN-Validation-Passed"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    const-string v8, "verstat"

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    if-eq v2, v7, :cond_0

    .line 3784
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/telephony/ims/ImsCallProfile;->setCallerNumberVerificationStatus(I)V

    .line 3786
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v4

    invoke-virtual {v4, v8, v7}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 3787
    const/4 v0, 0x1

    goto :goto_0

    .line 3788
    :cond_0
    const-string v7, "TN-Validation-Failed"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    if-eq v2, v4, :cond_1

    .line 3790
    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallerNumberVerificationStatus(I)V

    .line 3792
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v4

    invoke-virtual {v4, v8, v5}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 3793
    const/4 v0, 0x1

    .line 3796
    .end local v2    # "currentVerstat":I
    .end local v3    # "split":[Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 20
    .param p1, "msg"    # Landroid/os/Message;

    .line 2333
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/16 v3, 0xff

    .line 2335
    .local v3, "callMode":I
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage() : receive message = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget v6, v2, Landroid/os/Message;->what:I

    invoke-static {v5, v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4200(Lcom/mediatek/ims/ImsCallSessionProxy;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1300(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)V

    .line 2337
    invoke-static {}, Lcom/mediatek/ims/ImsConferenceHandler;->getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;

    move-result-object v4

    .line 2338
    .local v4, "confHdler":Lcom/mediatek/ims/DefaultConferenceHandler;
    iget v0, v2, Landroid/os/Message;->what:I

    const/16 v5, 0x19

    const/16 v6, 0xce

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x5

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x2

    sparse-switch v0, :sswitch_data_0

    .line 3319
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v2, "handleMessage() : unknown messahe, ignore"

    const/4 v5, 0x2

    invoke-static {v0, v2, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    goto/16 :goto_24

    .line 3310
    :sswitch_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3311
    .local v0, "p":Landroid/os/Parcel;
    iget-object v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v5

    invoke-virtual {v5, v0, v11}, Landroid/telephony/ims/ImsCallProfile;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3312
    invoke-virtual {v0, v11}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 3313
    new-instance v5, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v5, v0}, Landroid/telephony/ims/ImsCallProfile;-><init>(Landroid/os/Parcel;)V

    .line 3314
    .local v5, "requestedProfile":Landroid/telephony/ims/ImsCallProfile;
    iget-object v6, v5, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v6, v10}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    .line 3315
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v6, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->sendRttModifyRequest(Landroid/telephony/ims/ImsCallProfile;)V

    .line 3316
    goto/16 :goto_24

    .line 3305
    .end local v0    # "p":Landroid/os/Parcel;
    .end local v5    # "requestedProfile":Landroid/telephony/ims/ImsCallProfile;
    :sswitch_1
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$11000(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/Message;)V

    .line 3306
    goto/16 :goto_24

    .line 3292
    :sswitch_2
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-static {v0, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$10600(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/AsyncResult;)V

    .line 3293
    goto/16 :goto_24

    .line 3301
    :sswitch_3
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$10900(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 3302
    goto/16 :goto_24

    .line 3298
    :sswitch_4
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-static {v0, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$10800(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/AsyncResult;)V

    .line 3299
    goto/16 :goto_24

    .line 3295
    :sswitch_5
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/telephony/ims/ImsReasonInfo;

    invoke-static {v0, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$10700(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 3296
    goto/16 :goto_24

    .line 3289
    :sswitch_6
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-static {v0, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$10500(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/AsyncResult;)V

    .line 3290
    goto/16 :goto_24

    .line 3286
    :sswitch_7
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-static {v0, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$10400(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/AsyncResult;)V

    .line 3287
    goto/16 :goto_24

    .line 3283
    :sswitch_8
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-static {v0, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$10300(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/AsyncResult;)V

    .line 3284
    goto/16 :goto_24

    .line 3242
    :sswitch_9
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/os/AsyncResult;

    .line 3243
    .local v5, "ar":Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    .line 3244
    .local v6, "notification":Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v6, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->index:I

    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-eq v0, v8, :cond_0

    .line 3245
    goto/16 :goto_24

    .line 3247
    :cond_0
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v8, "handleMessage() : EVENT_ON_SUPP_SERVICE_NOTIFICATION, notify"

    invoke-static {v0, v8, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3249
    new-instance v0, Landroid/telephony/ims/ImsSuppServiceNotification;

    iget v14, v6, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    iget v15, v6, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    iget v8, v6, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->index:I

    iget v10, v6, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->type:I

    iget-object v11, v6, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->number:Ljava/lang/String;

    iget-object v12, v6, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->history:[Ljava/lang/String;

    move-object v13, v0

    move/from16 v16, v8

    move/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v19, v12

    invoke-direct/range {v13 .. v19}, Landroid/telephony/ims/ImsSuppServiceNotification;-><init>(IIIILjava/lang/String;[Ljava/lang/String;)V

    move-object v8, v0

    .line 3254
    .local v8, "imsNotification":Landroid/telephony/ims/ImsSuppServiceNotification;
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$10000(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/internal/IMotoExtImsScreenShareListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, v6, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    const/16 v10, 0xc

    if-ne v0, v10, :cond_1

    .line 3257
    :try_start_0
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$10000(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/internal/IMotoExtImsScreenShareListener;

    move-result-object v0

    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v10

    iget-object v11, v6, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->number:Ljava/lang/String;

    invoke-interface {v0, v10, v11}, Lcom/mediatek/ims/internal/IMotoExtImsScreenShareListener;->onCMOSEventReceived(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3258
    goto/16 :goto_24

    .line 3259
    :catch_0
    move-exception v0

    .line 3260
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v11, "RuntimeException onCMOSEventReceived()"

    invoke-static {v10, v11, v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3265
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$10100(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 3266
    :try_start_1
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6200(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3267
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3900(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v0

    new-instance v10, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler$2;

    invoke-direct {v10, v1, v8}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler$2;-><init>(Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;Landroid/telephony/ims/ImsSuppServiceNotification;)V

    const-wide/16 v11, 0x3e8

    invoke-virtual {v0, v10, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3276
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0, v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$10202(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/AsyncResult;)Landroid/os/AsyncResult;

    goto :goto_0

    .line 3278
    :cond_2
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$10202(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/AsyncResult;)Landroid/os/AsyncResult;

    .line 3280
    :goto_0
    monitor-exit v9

    .line 3281
    goto/16 :goto_24

    .line 3280
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 3222
    .end local v5    # "ar":Landroid/os/AsyncResult;
    .end local v6    # "notification":Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    .end local v8    # "imsNotification":Landroid/telephony/ims/ImsSuppServiceNotification;
    :sswitch_a
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {v1, v0}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->handleRttAudioIndication(Landroid/os/AsyncResult;)V

    .line 3223
    goto/16 :goto_24

    .line 3239
    :sswitch_b
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-static {v0, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$9900(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/AsyncResult;)V

    .line 3240
    goto/16 :goto_24

    .line 3225
    :sswitch_c
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 3226
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3600(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v0

    iget-object v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/mediatek/ims/ImsServiceCallTracker;->getCallInfo(Ljava/lang/String;)Lcom/mediatek/ims/ImsCallInfo;

    move-result-object v0

    .line 3227
    .local v0, "myCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    if-eqz v0, :cond_4

    iget-object v5, v0, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    sget-object v6, Lcom/mediatek/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/ims/ImsCallInfo$State;

    if-eq v5, v6, :cond_3

    iget-object v5, v0, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    sget-object v6, Lcom/mediatek/ims/ImsCallInfo$State;->ALERTING:Lcom/mediatek/ims/ImsCallInfo$State;

    if-eq v5, v6, :cond_3

    iget-object v5, v0, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    sget-object v6, Lcom/mediatek/ims/ImsCallInfo$State;->INCOMING:Lcom/mediatek/ims/ImsCallInfo$State;

    if-ne v5, v6, :cond_4

    .line 3230
    :cond_3
    iget-object v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v6, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-static {v5, v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$9800(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/AsyncResult;)V

    goto :goto_1

    .line 3232
    :cond_4
    iget-object v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v6, "skip speech not active or alerting"

    invoke-static {v5, v6, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3234
    .end local v0    # "myCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    :goto_1
    goto/16 :goto_24

    .line 3235
    :cond_5
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v5, "skip speech codec update when mCallId null"

    invoke-static {v0, v5, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3237
    goto/16 :goto_24

    .line 3219
    :sswitch_d
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {v1, v0}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->handleRttModifyRequestReceived(Landroid/os/AsyncResult;)V

    .line 3220
    goto/16 :goto_24

    .line 3216
    :sswitch_e
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {v1, v0}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->handleRttModifyResponse(Landroid/os/AsyncResult;)V

    .line 3217
    goto/16 :goto_24

    .line 3213
    :sswitch_f
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {v1, v0}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->handleRttTextReceived(Landroid/os/AsyncResult;)V

    .line 3214
    goto/16 :goto_24

    .line 3192
    :sswitch_10
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0, v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$9602(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 3193
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8100(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3194
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v5, "handleMessage() : EVENT_RADIO_NOT_AVAILABLE, ignore"

    invoke-static {v0, v5, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3195
    goto/16 :goto_24

    .line 3197
    :cond_6
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6300(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3198
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0, v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6302(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 3199
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    sget-object v5, Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;->DIAL:Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    invoke-static {v0, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$9702(Lcom/mediatek/ims/ImsCallSessionProxy;Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;)Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    goto :goto_2

    .line 3201
    :cond_7
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    sget-object v5, Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;->DISCONNECT:Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    invoke-static {v0, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$9702(Lcom/mediatek/ims/ImsCallSessionProxy;Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;)Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    .line 3203
    :goto_2
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x6a

    invoke-direct {v5, v6, v11}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-static {v0, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8800(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 3205
    goto/16 :goto_24

    .line 3176
    :sswitch_11
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {v1, v0}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->handleEctResult(Landroid/os/AsyncResult;)V

    .line 3177
    goto/16 :goto_24

    .line 3171
    :sswitch_12
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6200(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    if-eqz v0, :cond_62

    .line 3172
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6200(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v5}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    invoke-virtual {v0, v5}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_24

    .line 3139
    :sswitch_13
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 3140
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6200(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v5

    if-eqz v5, :cond_62

    .line 3141
    iget v5, v2, Landroid/os/Message;->arg1:I

    if-ne v5, v10, :cond_a

    .line 3142
    if-eqz v0, :cond_9

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_9

    .line 3143
    iget-object v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v6, "EVENT_SEND_USSI_COMPLETE : callSessionInitiatedFailed"

    invoke-static {v5, v6, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3144
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v5}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    .line 3146
    .local v5, "reason":Landroid/telephony/ims/ImsReasonInfo;
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v6, v6, Lcom/android/internal/telephony/CommandException;

    if-eqz v6, :cond_8

    .line 3147
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v6, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v6

    .line 3148
    .local v6, "err":Lcom/android/internal/telephony/CommandException$Error;
    iget-object v7, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EVENT_SEND_USSI_COMPLETE : callSessionInitiatedFailed error:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3150
    sget-object v7, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v6, v7, :cond_8

    .line 3151
    new-instance v7, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v8, 0xf1

    invoke-direct {v7, v8, v11}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v5, v7

    .line 3155
    .end local v6    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_8
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6200(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionInitiatedFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 3156
    .end local v5    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    goto/16 :goto_24

    .line 3157
    :cond_9
    iget-object v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v6, "EVENT_SEND_USSI_COMPLETE : callSessionInitiated"

    invoke-static {v5, v6, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3158
    iget-object v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6200(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v5

    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionInitiated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 3159
    iget-object v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v6, "EVENT_SEND_USSI_COMPLETE : callSessionTerminated"

    invoke-static {v5, v6, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3160
    iget-object v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6200(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v5

    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    invoke-virtual {v5, v6}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_24

    .line 3163
    :cond_a
    if-eqz v0, :cond_62

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_62

    .line 3164
    iget-object v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v6, "EVENT_SEND_USSI_COMPLETE : callSessionInitiatedFailed"

    invoke-static {v5, v6, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3165
    iget-object v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6200(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v5

    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    invoke-virtual {v5, v6}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionInitiatedFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_24

    .line 3116
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_14
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$9500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_62

    .line 3117
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v5, "handleMessage() : EVENT_DTMF_DONE for DTMF"

    invoke-static {v0, v5, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3118
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3900(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v0

    new-instance v5, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler$1;

    invoke-direct {v5, v1}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler$1;-><init>(Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;)V

    const-wide/16 v6, 0x96

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_24

    .line 2880
    :sswitch_15
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3500(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2881
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0, v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3502(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 2885
    :cond_b
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4100(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 2886
    goto/16 :goto_24

    .line 2843
    :sswitch_16
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2845
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_c

    goto :goto_3

    :cond_c
    move v10, v11

    :goto_3
    const-string v7, "handleMessage() : receive EVENT_SWAP_BEFORE_MERGE_RESULT"

    invoke-static {v5, v10, v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8000(Lcom/mediatek/ims/ImsCallSessionProxy;ZLjava/lang/String;)V

    .line 2847
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_d

    .line 2848
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->retrieveMergeFail()V

    goto/16 :goto_24

    .line 2851
    :cond_d
    iget-object v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3600(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v5

    iget-object v7, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/mediatek/ims/ImsServiceCallTracker;->getCallInfo(Ljava/lang/String;)Lcom/mediatek/ims/ImsCallInfo;

    move-result-object v5

    .line 2852
    .local v5, "myCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    if-nez v5, :cond_e

    .line 2853
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v7, "can\'t find this call callInfo"

    invoke-static {v6, v7, v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2854
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->retrieveMergeFail()V

    .line 2855
    goto/16 :goto_24

    .line 2858
    :cond_e
    iget-object v7, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3600(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v7

    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3800(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/mediatek/ims/ImsServiceCallTracker;->getCallInfo(Ljava/lang/String;)Lcom/mediatek/ims/ImsCallInfo;

    move-result-object v7

    .line 2859
    .local v7, "beMergedCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    if-nez v7, :cond_f

    .line 2860
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v8, "can\'t find this another call callInfo"

    invoke-static {v6, v8, v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2861
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->retrieveMergeFail()V

    .line 2862
    goto/16 :goto_24

    .line 2864
    :cond_f
    iget-boolean v8, v5, Lcom/mediatek/ims/ImsCallInfo;->mIsConferenceHost:Z

    if-eqz v8, :cond_10

    .line 2865
    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v9, "handleMessage() : myCallI is conference, merge normal call"

    invoke-static {v8, v9, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2866
    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3900(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 2867
    .local v6, "result":Landroid/os/Message;
    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4000(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v8

    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v8, v9, v7, v6}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->inviteParticipantsByCallId(ILcom/mediatek/ims/ImsCallInfo;Landroid/os/Message;)V

    goto :goto_4

    .line 2870
    .end local v6    # "result":Landroid/os/Message;
    :cond_10
    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v9, "handleMessage() : bg conference is foreground now, merge normal call"

    invoke-static {v8, v9, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2871
    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3900(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 2872
    .restart local v6    # "result":Landroid/os/Message;
    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4000(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v8

    iget-object v9, v7, Lcom/mediatek/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    .line 2873
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 2872
    invoke-interface {v8, v9, v5, v6}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->inviteParticipantsByCallId(ILcom/mediatek/ims/ImsCallInfo;Landroid/os/Message;)V

    .line 2878
    .end local v5    # "myCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    .end local v6    # "result":Landroid/os/Message;
    .end local v7    # "beMergedCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    :goto_4
    goto/16 :goto_24

    .line 3011
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_17
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {v1, v0}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->updateImsReasonInfo(Landroid/os/AsyncResult;)V

    .line 3012
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-static {v0, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8900(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/AsyncResult;)V

    .line 3013
    goto/16 :goto_24

    .line 2931
    :sswitch_18
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/os/AsyncResult;

    .line 2933
    .local v5, "ar":Landroid/os/AsyncResult;
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v6, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_11

    move v6, v10

    goto :goto_5

    :cond_11
    move v6, v11

    :goto_5
    const-string v8, "receive EVENT_REMOVE_CONFERENCE_RESULT"

    invoke-static {v0, v6, v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8000(Lcom/mediatek/ims/ImsCallSessionProxy;ZLjava/lang/String;)V

    .line 2936
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8100(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v0

    if-ne v0, v10, :cond_12

    .line 2937
    goto/16 :goto_24

    .line 2940
    :cond_12
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/16 v6, 0xcf

    if-nez v0, :cond_13

    .line 2941
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0, v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8202(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 2942
    invoke-static {}, Lcom/mediatek/ims/ImsConferenceHandler;->getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/DefaultConferenceHandler;->modifyParticipantComplete()V

    .line 2943
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0, v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8602(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_6

    .line 2945
    :cond_13
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8600(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 2946
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3900(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2947
    .local v0, "result":Landroid/os/Message;
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4000(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v6

    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8600(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v8, v9, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->removeParticipants(ILjava/lang/String;Landroid/os/Message;)V

    .line 2948
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6, v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8602(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    .line 2949
    goto/16 :goto_24

    .line 2951
    .end local v0    # "result":Landroid/os/Message;
    :cond_14
    invoke-static {}, Lcom/mediatek/ims/ImsConferenceHandler;->getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/DefaultConferenceHandler;->modifyParticipantFailed()V

    .line 2955
    :goto_6
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8308(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    .line 2956
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8300(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v0

    iget-object v7, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8400(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v7

    if-ge v0, v7, :cond_15

    .line 2957
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3900(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2959
    .restart local v0    # "result":Landroid/os/Message;
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4000(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v6

    iget-object v7, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2960
    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8500(Lcom/mediatek/ims/ImsCallSessionProxy;)[Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8300(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v9

    aget-object v8, v8, v9

    .line 2959
    invoke-interface {v6, v7, v8, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->removeParticipants(ILjava/lang/String;Landroid/os/Message;)V

    .line 2961
    .end local v0    # "result":Landroid/os/Message;
    goto/16 :goto_24

    .line 2962
    :cond_15
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6200(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 2964
    :try_start_2
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8200(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 2965
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6200(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    invoke-virtual {v0, v6}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionRemoveParticipantsRequestFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_7

    .line 2967
    :cond_16
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6200(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionRemoveParticipantsRequestDelivered()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2971
    :goto_7
    goto :goto_8

    .line 2969
    :catch_1
    move-exception v0

    .line 2970
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v7, "RuntimeException callSessionRemoveParticipantsRequest"

    invoke-static {v6, v7, v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2973
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_17
    :goto_8
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0, v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8202(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 2975
    goto/16 :goto_24

    .line 2888
    .end local v5    # "ar":Landroid/os/AsyncResult;
    :sswitch_19
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/os/AsyncResult;

    .line 2890
    .restart local v5    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3400(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2891
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_62

    .line 2892
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->retrieveMergeFail()V

    goto/16 :goto_24

    .line 2895
    :cond_18
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8100(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v0

    if-ne v0, v10, :cond_19

    .line 2896
    goto/16 :goto_24

    .line 2899
    :cond_19
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1a

    .line 2900
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0, v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8202(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 2901
    invoke-static {}, Lcom/mediatek/ims/ImsConferenceHandler;->getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/DefaultConferenceHandler;->modifyParticipantComplete()V

    goto :goto_9

    .line 2903
    :cond_1a
    invoke-static {}, Lcom/mediatek/ims/ImsConferenceHandler;->getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/DefaultConferenceHandler;->modifyParticipantFailed()V

    .line 2905
    :goto_9
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8308(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    .line 2907
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8300(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v0

    iget-object v7, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8400(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v7

    if-ge v0, v7, :cond_1b

    .line 2908
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3900(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2909
    .local v0, "result":Landroid/os/Message;
    invoke-static {}, Lcom/mediatek/ims/ImsConferenceHandler;->getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;

    move-result-object v6

    iget-object v7, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2910
    invoke-static {v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8500(Lcom/mediatek/ims/ImsCallSessionProxy;)[Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8300(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v8

    aget-object v7, v7, v8

    .line 2909
    invoke-virtual {v6, v7}, Lcom/mediatek/ims/DefaultConferenceHandler;->tryAddParticipant(Ljava/lang/String;)V

    .line 2911
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4000(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v6

    iget-object v7, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2912
    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8500(Lcom/mediatek/ims/ImsCallSessionProxy;)[Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8300(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v9

    aget-object v8, v8, v9

    .line 2911
    invoke-interface {v6, v7, v8, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->inviteParticipants(ILjava/lang/String;Landroid/os/Message;)V

    .line 2914
    .end local v0    # "result":Landroid/os/Message;
    goto/16 :goto_24

    .line 2915
    :cond_1b
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6200(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 2917
    :try_start_3
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8200(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 2918
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6200(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    invoke-virtual {v0, v6}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionInviteParticipantsRequestFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_a

    .line 2920
    :cond_1c
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6200(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionInviteParticipantsRequestDelivered()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    .line 2924
    :goto_a
    goto :goto_b

    .line 2922
    :catch_2
    move-exception v0

    .line 2923
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v7, "RuntimeException callSessionInviteParticipantsRequest"

    invoke-static {v6, v7, v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2926
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1d
    :goto_b
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0, v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8202(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 2929
    goto/16 :goto_24

    .line 2829
    .end local v5    # "ar":Landroid/os/AsyncResult;
    :sswitch_1a
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2831
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_1e

    goto :goto_c

    :cond_1e
    move v10, v11

    :goto_c
    const-string v6, "handleMessage() : receive EVENT_MERGE_RESULT"

    invoke-static {v5, v10, v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8000(Lcom/mediatek/ims/ImsCallSessionProxy;ZLjava/lang/String;)V

    .line 2833
    iget-object v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6200(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v5

    if-eqz v5, :cond_62

    .line 2834
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_62

    .line 2836
    iget-object v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v6, "handleMessage() : ConfCreated failed"

    invoke-static {v5, v6, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2838
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->retrieveMergeFail()V

    goto/16 :goto_24

    .line 2814
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_1b
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/os/AsyncResult;

    .line 2816
    .restart local v5    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v6, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_1f

    goto :goto_d

    :cond_1f
    move v10, v11

    :goto_d
    const-string v6, "handleMessage() : receive EVENT_RESUME_RESULT"

    invoke-static {v0, v10, v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8000(Lcom/mediatek/ims/ImsCallSessionProxy;ZLjava/lang/String;)V

    .line 2818
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6200(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    if-eqz v0, :cond_62

    .line 2819
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_62

    .line 2821
    :try_start_4
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6200(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    invoke-virtual {v0, v6}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionResumeFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_e

    .line 2822
    :catch_3
    move-exception v0

    .line 2823
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v7, "RuntimeException callSessionResumeFailed()"

    invoke-static {v6, v7, v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2824
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_e
    goto/16 :goto_24

    .line 2787
    .end local v5    # "ar":Landroid/os/AsyncResult;
    :sswitch_1c
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/os/AsyncResult;

    .line 2789
    .restart local v5    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v6, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_20

    goto :goto_f

    :cond_20
    move v10, v11

    :goto_f
    const-string v6, "handleMessage() : receive EVENT_HOLD_RESULT"

    invoke-static {v0, v10, v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8000(Lcom/mediatek/ims/ImsCallSessionProxy;ZLjava/lang/String;)V

    .line 2792
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6200(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    if-eqz v0, :cond_62

    .line 2793
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_62

    .line 2794
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v0}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    move-object v6, v0

    .line 2795
    .local v6, "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_21

    .line 2796
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v0, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    .line 2797
    .local v0, "err":Lcom/android/internal/telephony/CommandException$Error;
    sget-object v7, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_1:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v7, :cond_21

    .line 2798
    new-instance v7, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v8, 0x94

    invoke-direct {v7, v8, v11}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v6, v7

    .line 2800
    iget-object v7, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v8, "Call hold failed by call terminated"

    invoke-static {v7, v8, v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2802
    goto/16 :goto_24

    .line 2806
    .end local v0    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_21
    :try_start_5
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6200(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionHoldFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4

    .line 2809
    goto :goto_10

    .line 2807
    :catch_4
    move-exception v0

    .line 2808
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v7, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v8, "RuntimeException callSessionHoldFailed()"

    invoke-static {v7, v8, v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2810
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v6    # "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    :goto_10
    goto/16 :goto_24

    .line 2784
    .end local v5    # "ar":Landroid/os/AsyncResult;
    :sswitch_1d
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {v1, v0}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->handleDialResult(Landroid/os/AsyncResult;)V

    .line 2785
    goto/16 :goto_24

    .line 3207
    :sswitch_1e
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {v1, v0}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->handleImsConferenceIndication(Landroid/os/AsyncResult;)V

    .line 3208
    goto/16 :goto_24

    .line 3210
    :sswitch_1f
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {v1, v0}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->handleRttCapabilityIndication(Landroid/os/AsyncResult;)V

    .line 3211
    goto/16 :goto_24

    .line 3184
    :sswitch_20
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v0, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    if-eqz v0, :cond_22

    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1400(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ext/OpImsCallSessionProxy;

    move-result-object v0

    iget-object v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 3185
    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v6, v6, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-virtual {v6}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->getServiceImpl()Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v6

    iget-object v7, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    .line 3184
    invoke-interface {v0, v5, v6, v7}, Lcom/mediatek/ims/ext/OpImsCallSessionProxy;->handleDeviceSwitchResult(Ljava/lang/String;Lcom/mediatek/ims/internal/IMtkImsCallSession;Landroid/os/AsyncResult;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 3186
    goto/16 :goto_24

    .line 3189
    :cond_22
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {v1, v0}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->handleEctIndication(Landroid/os/AsyncResult;)V

    .line 3190
    goto/16 :goto_24

    .line 3065
    :sswitch_21
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 3066
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/String;

    .line 3068
    .local v5, "videoCapabilityInfo":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 3069
    .local v6, "lVideoCapability":I
    const/4 v7, 0x0

    .line 3070
    .local v7, "rVideoCapability":I
    if-eqz v5, :cond_62

    aget-object v9, v5, v11

    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 3071
    invoke-static {v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_62

    .line 3072
    aget-object v9, v5, v10

    if-eqz v9, :cond_24

    aget-object v9, v5, v10

    const-string v11, ""

    .line 3073
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_24

    .line 3074
    aget-object v9, v5, v10

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 3075
    if-ne v6, v10, :cond_23

    .line 3076
    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$9000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v9

    iput v8, v9, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    goto :goto_11

    .line 3078
    :cond_23
    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$9000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v9

    iput v12, v9, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 3082
    :cond_24
    :goto_11
    aget-object v9, v5, v12

    if-eqz v9, :cond_26

    aget-object v9, v5, v12

    const-string v11, ""

    .line 3083
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_26

    .line 3084
    aget-object v9, v5, v12

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 3085
    if-ne v7, v10, :cond_25

    .line 3086
    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2800(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v9

    iput v8, v9, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    goto :goto_12

    .line 3088
    :cond_25
    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2800(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v8

    iput v12, v8, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 3092
    :cond_26
    :goto_12
    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$9100(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 3095
    sget-object v8, Lcom/mediatek/ims/OperatorUtils$OPID;->OP07:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 3096
    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v9

    invoke-static {v8, v9}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v8

    .line 3098
    .local v8, "supportUpgradeWhenVoiceConf":Z
    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->isMultiparty()Z

    move-result v9

    if-eqz v9, :cond_27

    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$9200(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsCallProfile;)Z

    move-result v9

    if-nez v9, :cond_27

    if-nez v8, :cond_27

    .line 3100
    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3200(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    .line 3103
    :cond_27
    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$9000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v10

    iget v10, v10, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-static {v9, v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$9302(Lcom/mediatek/ims/ImsCallSessionProxy;I)I

    .line 3104
    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2800(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v10

    iget v10, v10, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-static {v9, v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$9402(Lcom/mediatek/ims/ImsCallSessionProxy;I)I

    .line 3106
    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6900(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    .line 3109
    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleMessage() : local video capability = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", remote video capability = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3112
    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$400(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 3113
    .end local v8    # "supportUpgradeWhenVoiceConf":Z
    goto/16 :goto_24

    .line 3015
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "videoCapabilityInfo":[Ljava/lang/String;
    .end local v6    # "lVideoCapability":I
    .end local v7    # "rVideoCapability":I
    :sswitch_22
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 3016
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/String;

    .line 3021
    .local v6, "callModeInfo":[Ljava/lang/String;
    iget-object v7, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3600(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/mediatek/ims/ImsServiceCallTracker;->processCallModeChangeIndication([Ljava/lang/String;)V

    .line 3023
    if-eqz v6, :cond_62

    aget-object v7, v6, v11

    iget-object v13, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v13}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_62

    .line 3025
    const/4 v7, 0x3

    .line 3026
    .local v7, "videoState":I
    aget-object v13, v6, v10

    if-eqz v13, :cond_28

    aget-object v13, v6, v10

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_28

    .line 3027
    aget-object v13, v6, v10

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 3029
    :cond_28
    aget-object v13, v6, v12

    if-eqz v13, :cond_29

    aget-object v13, v6, v12

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_29

    .line 3030
    aget-object v13, v6, v12

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 3034
    :cond_29
    iget-object v13, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleMessage() : mode = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", video state = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3037
    invoke-direct {v1, v3, v7}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->isCallModeUpdated(II)Z

    move-result v12

    .line 3038
    .local v12, "isCallModeChanged":Z
    array-length v13, v6

    if-lt v13, v9, :cond_2a

    aget-object v8, v6, v8

    .line 3039
    invoke-direct {v1, v8}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->handlePauUpdate(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2a

    move v8, v10

    goto :goto_13

    :cond_2a
    move v8, v11

    .line 3041
    .local v8, "isCallDisplayUpdated":Z
    :goto_13
    if-ne v3, v5, :cond_2b

    goto :goto_14

    :cond_2b
    move v10, v11

    :goto_14
    move v5, v10

    .line 3042
    .local v5, "shouldUpdateExtras":Z
    if-eqz v5, :cond_2c

    .line 3043
    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v10

    const-string v13, "video_provider_id"

    iget-object v14, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v14}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 3044
    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handleMessage() : setCallIDAsExtras video_provider_id = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v14}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13, v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3047
    :cond_2c
    if-nez v12, :cond_2d

    if-nez v8, :cond_2d

    if-eqz v5, :cond_2e

    .line 3048
    :cond_2d
    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$400(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 3049
    if-eqz v12, :cond_2e

    .line 3051
    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5300(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v10

    invoke-static {v9, v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6600(Lcom/mediatek/ims/ImsCallSessionProxy;I)V

    .line 3054
    :cond_2e
    invoke-direct {v1, v3}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->notifyMultipartyStateChanged(I)V

    .line 3057
    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v9

    const-string v10, "SessionModificationCause"

    invoke-virtual {v9, v10, v11}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 3060
    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3100(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/internal/ImsVTProvider;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mediatek/ims/internal/ImsVTProvider;->resetModificationCause()V

    .line 3062
    .end local v5    # "shouldUpdateExtras":Z
    .end local v7    # "videoState":I
    .end local v12    # "isCallModeChanged":Z
    goto/16 :goto_24

    .line 2977
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v6    # "callModeInfo":[Ljava/lang/String;
    .end local v8    # "isCallDisplayUpdated":Z
    :sswitch_23
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2979
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    const/4 v5, 0x0

    .line 2981
    .local v5, "sipCauseCode":I
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_2f

    .line 2982
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    .local v6, "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_15

    .line 2984
    .end local v6    # "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    :cond_2f
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8700(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v6

    if-eqz v6, :cond_30

    .line 2985
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleMessage() : notify disconnect cause by mLocalTerminateReason "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2986
    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8700(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2985
    invoke-static {v6, v7, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2987
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    iget-object v7, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8700(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v7

    invoke-direct {v6, v7, v11}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .restart local v6    # "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_15

    .line 2996
    .end local v6    # "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    :cond_30
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1600(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v6

    if-nez v6, :cond_31

    .line 2997
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v7, "handleMessage() : get disconnect cause from +CEER"

    invoke-static {v6, v7, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2999
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/LastCallFailCause;

    .line 3000
    .local v6, "failCause":Lcom/android/internal/telephony/LastCallFailCause;
    iget v7, v6, Lcom/android/internal/telephony/LastCallFailCause;->causeCode:I

    invoke-direct {v1, v7}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->imsReasonInfoCodeFromRilReasonCode(I)I

    move-result v5

    .line 3001
    new-instance v7, Landroid/telephony/ims/ImsReasonInfo;

    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1700(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v5, v11, v8}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v6, v7

    .line 3002
    .local v6, "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_15

    .line 3003
    .end local v6    # "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    :cond_31
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v7, "handleMessage() : get disconnect cause directly from +ESIPCPI"

    invoke-static {v6, v7, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3004
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1600(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v6

    .line 3008
    .restart local v6    # "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    :goto_15
    iget-object v7, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v7, v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8800(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 3009
    goto/16 :goto_24

    .line 2778
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "sipCauseCode":I
    .end local v6    # "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    :sswitch_24
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2779
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/String;

    invoke-direct {v1, v5}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->handleEconfIndication([Ljava/lang/String;)V

    .line 2780
    goto/16 :goto_24

    .line 2364
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_25
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroid/os/AsyncResult;

    .line 2365
    .local v6, "ar":Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, [Ljava/lang/String;

    .line 2366
    .local v13, "callInfo":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 2367
    .local v0, "msgType":I
    const/4 v14, 0x0

    .line 2368
    .local v14, "isCallProfileUpdated":Z
    const/4 v15, 0x0

    .line 2369
    .local v15, "causeNum":I
    aget-object v16, v13, v10

    if-eqz v16, :cond_32

    aget-object v7, v13, v10

    const-string v5, ""

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_32

    .line 2370
    aget-object v5, v13, v10

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v5, v0

    goto :goto_16

    .line 2373
    :cond_32
    move v5, v0

    .end local v0    # "msgType":I
    .local v5, "msgType":I
    :goto_16
    aget-object v0, v13, v9

    if-eqz v0, :cond_33

    aget-object v0, v13, v9

    const-string v7, ""

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 2374
    aget-object v0, v13, v9

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2378
    :cond_33
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_36

    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v0

    aget-object v7, v13, v11

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 2382
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4300(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3400(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 2383
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EVENT_CALL_INFO_INDICATION : mIsWaitingClose is "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2384
    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4300(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ", count: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4400(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2383
    invoke-static {v0, v7, v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2386
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4400(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v0

    if-ge v0, v9, :cond_34

    .line 2387
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4408(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    goto/16 :goto_24

    .line 2389
    :cond_34
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->close()V

    .line 2391
    goto/16 :goto_24

    .line 2394
    :cond_35
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3600(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v0

    iget-object v7, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v10

    invoke-virtual {v0, v13, v7, v10}, Lcom/mediatek/ims/ImsServiceCallTracker;->processCallInfoIndication([Ljava/lang/String;Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsCallProfile;)V

    .line 2397
    :cond_36
    const/4 v0, 0x0

    .line 2398
    .local v0, "isCallDisplayUpdated":Z
    const/4 v7, 0x0

    .line 2400
    .local v7, "isVideoCapUpdated":Z
    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3400(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v10

    if-eqz v10, :cond_3d

    aget-object v10, v13, v11

    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3d

    .line 2401
    packed-switch v5, :pswitch_data_0

    .line 2460
    goto/16 :goto_24

    .line 2403
    :pswitch_0
    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleMessage() : conference assign call id = "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v13, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2405
    new-instance v8, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v8}, Landroid/telephony/ims/ImsCallProfile;-><init>()V

    .line 2407
    .local v8, "imsCallProfile":Landroid/telephony/ims/ImsCallProfile;
    const/4 v9, 0x5

    aget-object v10, v13, v9

    if-eqz v10, :cond_37

    aget-object v10, v13, v9

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_37

    .line 2408
    aget-object v9, v13, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2411
    :cond_37
    const/16 v9, 0x15

    if-eq v3, v9, :cond_39

    const/16 v9, 0x17

    if-eq v3, v9, :cond_39

    const/16 v9, 0x19

    if-ne v3, v9, :cond_38

    goto :goto_17

    .line 2415
    :cond_38
    iput v12, v8, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    goto :goto_18

    .line 2413
    :cond_39
    :goto_17
    const/4 v9, 0x4

    iput v9, v8, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 2418
    :goto_18
    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4500(Lcom/mediatek/ims/ImsCallSessionProxy;I)V

    .line 2420
    const/4 v9, 0x6

    aget-object v10, v13, v9

    if-eqz v10, :cond_3a

    aget-object v10, v13, v9

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3a

    .line 2422
    const-string v10, "oi"

    aget-object v11, v13, v9

    invoke-virtual {v8, v10, v11}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 2428
    const-string v10, "remote_uri"

    aget-object v9, v13, v9

    invoke-virtual {v8, v10, v9}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 2430
    const-string v9, "oir"

    invoke-virtual {v8, v9, v12}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    goto :goto_19

    .line 2433
    :cond_3a
    const-string v9, "oir"

    invoke-virtual {v8, v9, v12}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2437
    :goto_19
    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v9

    const-string v10, "CallRadioTech"

    invoke-virtual {v9, v10}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2439
    .local v9, "radioTech":Ljava/lang/String;
    const-string v10, "CallRadioTech"

    invoke-virtual {v8, v10, v9}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 2442
    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v11, 0x0

    aget-object v12, v13, v11

    invoke-static {v10, v8, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4600(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsCallProfile;Ljava/lang/String;)V

    .line 2444
    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4700(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/MtkImsCallSessionProxy;

    move-result-object v10

    if-eqz v10, :cond_3b

    .line 2445
    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3600(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v10

    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4700(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/MtkImsCallSessionProxy;

    move-result-object v11

    invoke-virtual {v11}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->getAospCallSessionProxy()Lcom/mediatek/ims/ImsCallSessionProxy;

    move-result-object v11

    invoke-virtual {v10, v13, v11, v8}, Lcom/mediatek/ims/ImsServiceCallTracker;->processCallInfoIndication([Ljava/lang/String;Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsCallProfile;)V

    goto :goto_1a

    .line 2446
    :cond_3b
    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4800(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsCallSessionProxy;

    move-result-object v10

    if-eqz v10, :cond_3c

    .line 2447
    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3600(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v10

    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4800(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsCallSessionProxy;

    move-result-object v11

    invoke-virtual {v10, v13, v11, v8}, Lcom/mediatek/ims/ImsServiceCallTracker;->processCallInfoIndication([Ljava/lang/String;Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsCallProfile;)V

    goto :goto_1a

    .line 2449
    :cond_3c
    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v11, "handleMessage() : conference not create callSession"

    const/4 v12, 0x2

    invoke-static {v10, v11, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2453
    :goto_1a
    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4900(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v10

    if-eqz v10, :cond_62

    .line 2454
    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4902(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 2455
    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5000(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    goto/16 :goto_24

    .line 2462
    .end local v8    # "imsCallProfile":Landroid/telephony/ims/ImsCallProfile;
    .end local v9    # "radioTech":Ljava/lang/String;
    :cond_3d
    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x8

    if-eqz v8, :cond_5b

    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x0

    aget-object v12, v13, v11

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5b

    .line 2463
    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "EVENT_CALL_INFO_INDICATION: msgType "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mCallNumber = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2464
    invoke-static {v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1100(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2463
    invoke-static {v8, v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1300(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)V

    .line 2466
    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5200(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v8

    if-nez v8, :cond_3e

    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1100(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3f

    .line 2467
    :cond_3e
    const/4 v8, 0x6

    aget-object v10, v13, v8

    if-eqz v10, :cond_3f

    aget-object v10, v13, v8

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3f

    .line 2468
    aget-object v10, v13, v8

    const-string v8, "*31#"

    const-string v11, ""

    invoke-virtual {v10, v8, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "#31#"

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 2469
    .local v8, "ecpiCallNumber":Ljava/lang/String;
    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1100(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3f

    .line 2470
    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10, v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1102(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    .line 2474
    .end local v8    # "ecpiCallNumber":Ljava/lang/String;
    :cond_3f
    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2475
    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1100(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v8

    aget-object v10, v13, v9

    invoke-direct {v1, v8, v10}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->updateCallDisplayFromNumberOrPau(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 2476
    .end local v0    # "isCallDisplayUpdated":Z
    .local v8, "isCallDisplayUpdated":Z
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1100(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v0

    aget-object v9, v13, v9

    invoke-direct {v1, v0, v9}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->updateOIR(Ljava/lang/String;Ljava/lang/String;)V

    .line 2477
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1000(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsService;

    move-result-object v0

    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/mediatek/ims/ImsService;->mapPhoneIdToServiceId(I)I

    move-result v9

    .line 2478
    .local v9, "serviceId":I
    const/4 v0, 0x7

    sparse-switch v5, :sswitch_data_1

    goto/16 :goto_22

    .line 2728
    :sswitch_26
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->handleRttECCRedialEvent()V

    goto/16 :goto_22

    .line 2719
    :sswitch_27
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4500(Lcom/mediatek/ims/ImsCallSessionProxy;I)V

    .line 2720
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6900(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v7

    .line 2721
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0, v13}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6000(Lcom/mediatek/ims/ImsCallSessionProxy;[Ljava/lang/String;)I

    .line 2722
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7500(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 2723
    if-nez v8, :cond_40

    if-eqz v7, :cond_5a

    .line 2724
    :cond_40
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$400(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    goto/16 :goto_22

    .line 2709
    :sswitch_28
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4500(Lcom/mediatek/ims/ImsCallSessionProxy;I)V

    .line 2710
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6900(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v7

    .line 2711
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0, v13}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6000(Lcom/mediatek/ims/ImsCallSessionProxy;[Ljava/lang/String;)I

    .line 2712
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7400(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 2713
    if-nez v8, :cond_41

    if-eqz v7, :cond_5a

    .line 2714
    :cond_41
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$400(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    goto/16 :goto_22

    .line 2695
    :sswitch_29
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4500(Lcom/mediatek/ims/ImsCallSessionProxy;I)V

    .line 2697
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2698
    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3600(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v0

    sget-object v10, Lcom/mediatek/ims/ImsCallInfo$State;->HOLDING:Lcom/mediatek/ims/ImsCallInfo$State;

    invoke-virtual {v0, v10}, Lcom/mediatek/ims/ImsServiceCallTracker;->getCallInfo(Lcom/mediatek/ims/ImsCallInfo$State;)Lcom/mediatek/ims/ImsCallInfo;

    move-result-object v0

    if-eqz v0, :cond_42

    const/4 v11, 0x1

    goto :goto_1b

    :cond_42
    const/4 v11, 0x0

    :goto_1b
    move v0, v11

    .line 2699
    .local v0, "hasHoldCall":Z
    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6300(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v10

    if-eqz v10, :cond_43

    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v10, v10, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    if-eqz v10, :cond_43

    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2700
    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1400(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ext/OpImsCallSessionProxy;

    move-result-object v10

    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v11, v11, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    .line 2701
    invoke-virtual {v11}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->getServiceImpl()Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v11

    iget-object v12, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4000(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v12

    .line 2700
    invoke-interface {v10, v11, v12, v0}, Lcom/mediatek/ims/ext/OpImsCallSessionProxy;->handleCallStartFailed(Lcom/mediatek/ims/internal/IMtkImsCallSession;Ljava/lang/Object;Z)Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_43

    .line 2702
    goto/16 :goto_22

    .line 2705
    :cond_43
    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->callTerminated()V

    .line 2706
    goto/16 :goto_22

    .line 2668
    .end local v0    # "hasHoldCall":Z
    :sswitch_2a
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4500(Lcom/mediatek/ims/ImsCallSessionProxy;I)V

    .line 2669
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6900(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v7

    .line 2671
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6200(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    if-eqz v0, :cond_5a

    .line 2672
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5300(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v0

    const/4 v10, 0x4

    if-ne v0, v10, :cond_45

    .line 2673
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7300(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v0

    if-nez v0, :cond_44

    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2674
    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3600(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v0

    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/mediatek/ims/ImsServiceCallTracker;->isIgnoreUpdateStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 2676
    :try_start_6
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6200(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionResumed(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_5

    .line 2680
    goto :goto_1c

    .line 2677
    :catch_5
    move-exception v0

    .line 2678
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v11, "RuntimeException callSessionResumed()"

    const/4 v12, 0x5

    invoke-static {v10, v11, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2683
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_44
    :goto_1c
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3100(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/internal/ImsVTProvider;

    move-result-object v0

    if-eqz v0, :cond_5a

    .line 2684
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6500(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 2685
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3100(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/internal/ImsVTProvider;

    move-result-object v0

    const/16 v10, 0x84

    invoke-virtual {v0, v10}, Lcom/mediatek/ims/internal/ImsVTProvider;->onReceiveCallSessionEvent(I)V

    goto/16 :goto_22

    .line 2688
    :cond_45
    if-nez v8, :cond_46

    if-eqz v7, :cond_5a

    .line 2689
    :cond_46
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$400(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    goto/16 :goto_22

    .line 2641
    :sswitch_2b
    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4500(Lcom/mediatek/ims/ImsCallSessionProxy;I)V

    .line 2642
    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6900(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v7

    .line 2643
    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6200(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v10

    if-eqz v10, :cond_5a

    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5300(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v10

    if-eq v10, v0, :cond_5a

    .line 2644
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7000(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v0

    if-nez v0, :cond_47

    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2645
    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7100(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v0

    if-nez v0, :cond_47

    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2646
    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1400(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ext/OpImsCallSessionProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/ims/ext/OpImsCallSessionProxy;->isDeviceSwitching()Z

    move-result v0

    if-nez v0, :cond_47

    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2647
    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3600(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v0

    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/mediatek/ims/ImsServiceCallTracker;->isIgnoreUpdateStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_47

    .line 2649
    :try_start_7
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6200(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionHeld(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_1d

    .line 2650
    :catch_6
    move-exception v0

    .line 2651
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v11, "RuntimeException callSessionHeld()"

    const/4 v12, 0x5

    invoke-static {v10, v11, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2652
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_1d
    goto :goto_1e

    .line 2654
    :cond_47
    if-nez v8, :cond_48

    if-eqz v7, :cond_49

    .line 2655
    :cond_48
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$400(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 2658
    :cond_49
    :goto_1e
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7200(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 2660
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7000(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 2662
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v10, 0x1

    invoke-static {v0, v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7302(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    goto/16 :goto_22

    .line 2628
    :sswitch_2c
    const/4 v0, 0x0

    .line 2629
    .local v0, "videoIbt":I
    const/4 v11, 0x2

    aget-object v12, v13, v11

    if-eqz v12, :cond_4a

    .line 2630
    aget-object v12, v13, v11

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2632
    :cond_4a
    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "videoIbt= "

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x2

    invoke-static {v11, v10, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2633
    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10, v3, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6800(Lcom/mediatek/ims/ImsCallSessionProxy;II)V

    .line 2635
    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/16 v11, 0xff

    invoke-static {v10, v11, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5600(Lcom/mediatek/ims/ImsCallSessionProxy;II)V

    .line 2636
    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$400(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 2637
    goto/16 :goto_22

    .line 2567
    .end local v0    # "videoIbt":I
    :sswitch_2d
    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v11, 0x4

    invoke-static {v10, v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5302(Lcom/mediatek/ims/ImsCallSessionProxy;I)I

    .line 2568
    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v10

    iget-object v10, v10, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    const/4 v11, 0x3

    iput v11, v10, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 2571
    invoke-direct {v1, v3}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->updateMultipartyState(I)Z

    .line 2573
    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5300(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v10

    if-eq v10, v0, :cond_4d

    .line 2574
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6200(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 2579
    :try_start_8
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6300(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 2580
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6200(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v10

    iget-object v10, v10, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v0, v10}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 2582
    :cond_4b
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6200(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionInitiated(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_7

    .line 2586
    goto :goto_1f

    .line 2583
    :catch_7
    move-exception v0

    .line 2584
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v11, "RuntimeException callSessionProgressing()/callSessionInitiated()"

    const/4 v12, 0x5

    invoke-static {v10, v11, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2588
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_4c
    :goto_1f
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v10, 0x0

    invoke-static {v0, v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6302(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 2591
    :cond_4d
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3100(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/internal/ImsVTProvider;

    move-result-object v0

    if-eqz v0, :cond_4e

    .line 2592
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3100(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/internal/ImsVTProvider;

    move-result-object v0

    const/4 v10, 0x6

    invoke-virtual {v0, v10}, Lcom/mediatek/ims/internal/ImsVTProvider;->onReceiveCallSessionEvent(I)V

    .line 2595
    :cond_4e
    const/4 v0, 0x0

    .line 2597
    .local v0, "notifyCallSessionUpdate":Z
    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v10

    iget v10, v10, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 2598
    .local v10, "oldCallType":I
    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v12

    invoke-static {v11, v3, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3000(Lcom/mediatek/ims/ImsCallSessionProxy;II)V

    .line 2601
    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v2, 0x0

    const/16 v12, 0xff

    invoke-static {v11, v12, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5600(Lcom/mediatek/ims/ImsCallSessionProxy;II)V

    .line 2604
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4500(Lcom/mediatek/ims/ImsCallSessionProxy;I)V

    .line 2606
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    iget v2, v2, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    if-eq v2, v10, :cond_4f

    .line 2607
    const/4 v0, 0x1

    .line 2610
    :cond_4f
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3100(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/internal/ImsVTProvider;

    move-result-object v2

    if-eqz v2, :cond_50

    .line 2611
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6500(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 2612
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3100(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/internal/ImsVTProvider;

    move-result-object v2

    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2613
    invoke-static {v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v11

    iget v11, v11, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-static {v11}, Landroid/telephony/ims/ImsCallProfile;->getVideoStateFromCallType(I)I

    move-result v11

    .line 2612
    invoke-virtual {v2, v11}, Lcom/mediatek/ims/internal/ImsVTProvider;->onUpdateProfile(I)V

    .line 2616
    :cond_50
    if-eqz v0, :cond_51

    .line 2617
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$400(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 2621
    :cond_51
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5300(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v11

    invoke-static {v2, v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6600(Lcom/mediatek/ims/ImsCallSessionProxy;I)V

    .line 2624
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6700(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 2625
    goto/16 :goto_22

    .line 2531
    .end local v0    # "notifyCallSessionUpdate":Z
    .end local v10    # "oldCallType":I
    :sswitch_2e
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2, v13}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6000(Lcom/mediatek/ims/ImsCallSessionProxy;[Ljava/lang/String;)I

    move-result v2

    .line 2533
    .local v2, "isIbt":I
    invoke-direct {v1, v3}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->updateMultipartyState(I)Z

    .line 2536
    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10, v3, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6100(Lcom/mediatek/ims/ImsCallSessionProxy;II)V

    .line 2540
    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4500(Lcom/mediatek/ims/ImsCallSessionProxy;I)V

    .line 2542
    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5300(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v10

    if-eq v10, v0, :cond_53

    .line 2543
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v10, 0x2

    invoke-static {v0, v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5302(Lcom/mediatek/ims/ImsCallSessionProxy;I)I

    .line 2544
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6200(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    if-eqz v0, :cond_52

    .line 2546
    :try_start_9
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6200(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v10

    iget-object v10, v10, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v0, v10}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_8

    .line 2549
    goto :goto_20

    .line 2547
    :catch_8
    move-exception v0

    .line 2548
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v11, "RuntimeException callSessionRemoveParticipantsRequestFailed()"

    const/4 v12, 0x5

    invoke-static {v10, v11, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2551
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_52
    :goto_20
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v10, 0x0

    invoke-static {v0, v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6302(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 2553
    if-eqz v8, :cond_53

    .line 2554
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$400(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 2557
    :cond_53
    const/16 v0, 0x9

    aget-object v10, v13, v0

    if-eqz v10, :cond_5a

    aget-object v10, v13, v0

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5a

    .line 2558
    aget-object v0, v13, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 2559
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "causeNum = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    invoke-static {v0, v10, v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2560
    if-eqz v15, :cond_5a

    .line 2561
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2400(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v15, v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6400(Lcom/mediatek/ims/ImsCallSessionProxy;ILjava/lang/String;)V

    goto/16 :goto_22

    .line 2480
    .end local v2    # "isIbt":I
    :sswitch_2f
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5302(Lcom/mediatek/ims/ImsCallSessionProxy;I)I

    .line 2481
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5402(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 2482
    const/4 v2, 0x5

    aget-object v0, v13, v2

    if-eqz v0, :cond_54

    aget-object v0, v13, v2

    const-string v10, ""

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    .line 2483
    aget-object v0, v13, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2486
    :cond_54
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1000(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsService;

    move-result-object v2

    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v10

    invoke-virtual {v2, v10}, Lcom/mediatek/ims/ImsService;->getRatType(I)I

    move-result v2

    const/4 v10, 0x0

    invoke-static {v0, v2, v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5500(Lcom/mediatek/ims/ImsCallSessionProxy;II)Z

    .line 2487
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v2

    invoke-static {v0, v3, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3000(Lcom/mediatek/ims/ImsCallSessionProxy;II)V

    .line 2489
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4500(Lcom/mediatek/ims/ImsCallSessionProxy;I)V

    .line 2491
    invoke-direct {v1, v3}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->updateMultipartyState(I)Z

    .line 2493
    const/4 v0, 0x0

    .line 2494
    .local v0, "mtVideoIbt":I
    const/4 v2, 0x2

    aget-object v10, v13, v2

    if-eqz v10, :cond_55

    .line 2495
    aget-object v10, v13, v2

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2497
    :cond_55
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ECPI 0, mtVideoIbt = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    invoke-static {v2, v10, v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2502
    const/4 v2, 0x3

    if-ne v0, v2, :cond_56

    .line 2504
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2800(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    iget-object v2, v2, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput v0, v2, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 2507
    :cond_56
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v10

    iget v10, v10, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-static {v2, v10, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5600(Lcom/mediatek/ims/ImsCallSessionProxy;II)V

    .line 2509
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5700(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 2510
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v2, v2, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    if-eqz v2, :cond_58

    .line 2511
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v2, v2, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->notifyCallSessionRinging(Landroid/telephony/ims/ImsCallProfile;)V

    goto :goto_21

    .line 2514
    :cond_57
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2515
    .local v2, "extras":Landroid/os/Bundle;
    const-string v10, "android:imsCallID"

    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2516
    const-string v10, "android:imsDialString"

    const/4 v11, 0x6

    aget-object v11, v13, v11

    invoke-virtual {v2, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2517
    const-string v10, "android:imsServiceId"

    invoke-virtual {v2, v10, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2519
    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1000(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsService;

    move-result-object v10

    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v11

    iget-object v12, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v12

    invoke-virtual {v10, v11, v12, v2}, Lcom/mediatek/ims/ImsService;->notifyIncomingCallSession(ILcom/android/ims/internal/IImsCallSession;Landroid/os/Bundle;)V

    .line 2522
    .end local v2    # "extras":Landroid/os/Bundle;
    :cond_58
    :goto_21
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v10, 0x1

    invoke-static {v2, v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5802(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 2524
    const/4 v2, 0x3

    if-ne v0, v2, :cond_59

    .line 2525
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$400(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 2527
    :cond_59
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2, v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5902(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 2529
    nop

    .line 2732
    .end local v0    # "mtVideoIbt":I
    .end local v9    # "serviceId":I
    :cond_5a
    :goto_22
    goto/16 :goto_24

    .end local v8    # "isCallDisplayUpdated":Z
    .local v0, "isCallDisplayUpdated":Z
    :cond_5b
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_62

    const/16 v2, 0x82

    if-ne v5, v2, :cond_62

    .line 2734
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleMessage() : receive 130 URC, assign call_id = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v10, 0x0

    aget-object v11, v13, v10

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x2

    invoke-static {v2, v8, v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2736
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3600(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v2

    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v10

    invoke-virtual {v2, v13, v8, v10}, Lcom/mediatek/ims/ImsServiceCallTracker;->processCallInfoIndication([Ljava/lang/String;Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsCallProfile;)V

    .line 2737
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v2, v2, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    if-eqz v2, :cond_5c

    .line 2738
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v2, v2, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-virtual {v2}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->notifyCallSessionCalling()V

    .line 2741
    :cond_5c
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2742
    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1100(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v2

    aget-object v8, v13, v9

    invoke-direct {v1, v2, v8}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->updateCallDisplayFromNumberOrPau(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 2743
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1100(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v2

    aget-object v8, v13, v9

    invoke-direct {v1, v2, v8}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->updateOIR(Ljava/lang/String;Ljava/lang/String;)V

    .line 2746
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v2

    if-nez v2, :cond_5d

    .line 2747
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1000(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsService;

    move-result-object v8

    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/mediatek/ims/ImsService;->getRatType(I)I

    move-result v8

    const/4 v9, 0x0

    invoke-static {v2, v8, v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5500(Lcom/mediatek/ims/ImsCallSessionProxy;II)Z

    goto :goto_23

    .line 2746
    :cond_5d
    const/4 v9, 0x0

    .line 2749
    :goto_23
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v8, 0x3

    invoke-static {v2, v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5302(Lcom/mediatek/ims/ImsCallSessionProxy;I)I

    .line 2750
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    aget-object v8, v13, v9

    invoke-static {v2, v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1202(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    .line 2752
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4500(Lcom/mediatek/ims/ImsCallSessionProxy;I)V

    .line 2753
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3100(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/internal/ImsVTProvider;

    move-result-object v2

    if-eqz v2, :cond_5e

    .line 2754
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3300(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    move-result-object v2

    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2755
    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3100(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/internal/ImsVTProvider;

    move-result-object v8

    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v10

    invoke-virtual {v2, v8, v9, v10}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->bind(Lcom/mediatek/ims/internal/ImsVTProvider;II)V

    .line 2757
    :cond_5e
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7600(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 2758
    invoke-static {}, Lcom/mediatek/ims/ImsConferenceHandler;->getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;

    move-result-object v2

    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2759
    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1800(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/content/Context;

    move-result-object v8

    new-instance v9, Lcom/mediatek/ims/ImsCallSessionProxy$ConferenceEventListener;

    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-direct {v9, v10}, Lcom/mediatek/ims/ImsCallSessionProxy$ConferenceEventListener;-><init>(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    const/4 v10, 0x0

    aget-object v11, v13, v10

    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v10

    .line 2758
    invoke-virtual {v2, v8, v9, v11, v10}, Lcom/mediatek/ims/DefaultConferenceHandler;->startConference(Landroid/content/Context;Lcom/mediatek/ims/DefaultConferenceHandler$Listener;Ljava/lang/String;I)V

    .line 2760
    invoke-static {}, Lcom/mediatek/ims/ImsConferenceHandler;->getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;

    move-result-object v2

    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7700(Lcom/mediatek/ims/ImsCallSessionProxy;)[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/mediatek/ims/DefaultConferenceHandler;->addLocalCache([Ljava/lang/String;)V

    .line 2761
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v8, 0x0

    invoke-static {v2, v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7702(Lcom/mediatek/ims/ImsCallSessionProxy;[Ljava/lang/String;)[Ljava/lang/String;

    .line 2766
    :cond_5f
    if-nez v0, :cond_60

    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$800(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v2

    const/4 v8, 0x2

    if-ne v2, v8, :cond_61

    .line 2767
    :cond_60
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$400(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 2770
    :cond_61
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v8, 0x3

    invoke-static {v2, v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6600(Lcom/mediatek/ims/ImsCallSessionProxy;I)V

    .line 2771
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7800(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 2772
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v8, 0x0

    invoke-static {v2, v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7802(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 2773
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->terminate(I)V

    .line 3322
    .end local v0    # "isCallDisplayUpdated":Z
    .end local v5    # "msgType":I
    .end local v6    # "ar":Landroid/os/AsyncResult;
    .end local v7    # "isVideoCapUpdated":Z
    .end local v13    # "callInfo":[Ljava/lang/String;
    .end local v14    # "isCallProfileUpdated":Z
    .end local v15    # "causeNum":I
    :cond_62
    :goto_24
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x66 -> :sswitch_25
        0x68 -> :sswitch_24
        0x69 -> :sswitch_23
        0x6a -> :sswitch_22
        0x6b -> :sswitch_21
        0x6d -> :sswitch_20
        0x6e -> :sswitch_1f
        0x6f -> :sswitch_1e
        0xc9 -> :sswitch_1d
        0xcb -> :sswitch_1c
        0xcc -> :sswitch_1b
        0xcd -> :sswitch_1a
        0xce -> :sswitch_19
        0xcf -> :sswitch_18
        0xd0 -> :sswitch_17
        0xd1 -> :sswitch_1d
        0xd2 -> :sswitch_16
        0xd3 -> :sswitch_15
        0xd4 -> :sswitch_14
        0xd5 -> :sswitch_13
        0xd6 -> :sswitch_12
        0xd7 -> :sswitch_11
        0xd8 -> :sswitch_1d
        0xd9 -> :sswitch_10
        0xda -> :sswitch_f
        0xdb -> :sswitch_e
        0xdc -> :sswitch_d
        0xdf -> :sswitch_c
        0xe0 -> :sswitch_b
        0xe1 -> :sswitch_a
        0xe2 -> :sswitch_9
        0xe3 -> :sswitch_8
        0xe4 -> :sswitch_7
        0xe5 -> :sswitch_6
        0xe6 -> :sswitch_5
        0xe8 -> :sswitch_4
        0xe9 -> :sswitch_3
        0xea -> :sswitch_2
        0x1f4 -> :sswitch_1
        0x1f5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x82
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2f
        0x2 -> :sswitch_2e
        0x6 -> :sswitch_2d
        0x7 -> :sswitch_2c
        0x83 -> :sswitch_2b
        0x84 -> :sswitch_2a
        0x85 -> :sswitch_29
        0x87 -> :sswitch_28
        0x88 -> :sswitch_27
        0x89 -> :sswitch_26
    .end sparse-switch
.end method

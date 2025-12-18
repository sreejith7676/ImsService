.class public Lcom/mediatek/ims/ImsServiceCallTracker$VtDataUsageProvider;
.super Landroid/net/netstats/provider/NetworkStatsProvider;
.source "ImsServiceCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsServiceCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VtDataUsageProvider"
.end annotation


# instance fields
.field private mIfaceSnapshot:Landroid/net/NetworkStats;

.field private mToken:I

.field private mUidSnapshot:Landroid/net/NetworkStats;

.field final synthetic this$0:Lcom/mediatek/ims/ImsServiceCallTracker;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/ImsServiceCallTracker;)V
    .locals 4
    .param p1, "this$0"    # Lcom/mediatek/ims/ImsServiceCallTracker;

    .line 712
    iput-object p1, p0, Lcom/mediatek/ims/ImsServiceCallTracker$VtDataUsageProvider;->this$0:Lcom/mediatek/ims/ImsServiceCallTracker;

    invoke-direct {p0}, Landroid/net/netstats/provider/NetworkStatsProvider;-><init>()V

    .line 713
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/ims/ImsServiceCallTracker$VtDataUsageProvider;->mToken:I

    .line 714
    new-instance v1, Landroid/net/NetworkStats;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3, v0}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v1, p0, Lcom/mediatek/ims/ImsServiceCallTracker$VtDataUsageProvider;->mIfaceSnapshot:Landroid/net/NetworkStats;

    .line 715
    new-instance v1, Landroid/net/NetworkStats;

    invoke-direct {v1, v2, v3, v0}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v1, p0, Lcom/mediatek/ims/ImsServiceCallTracker$VtDataUsageProvider;->mUidSnapshot:Landroid/net/NetworkStats;

    return-void
.end method


# virtual methods
.method synthetic lambda$onSetAlert$0$com-mediatek-ims-ImsServiceCallTracker$VtDataUsageProvider(J)V
    .locals 1
    .param p1, "quotaBytes"    # J

    .line 747
    iget-object v0, p0, Lcom/mediatek/ims/ImsServiceCallTracker$VtDataUsageProvider;->this$0:Lcom/mediatek/ims/ImsServiceCallTracker;

    invoke-static {v0, p1, p2}, Lcom/mediatek/ims/ImsServiceCallTracker;->access$600(Lcom/mediatek/ims/ImsServiceCallTracker;J)V

    return-void
.end method

.method public onRequestStatsUpdate(I)V
    .locals 6
    .param p1, "token"    # I

    .line 721
    iget-object v0, p0, Lcom/mediatek/ims/ImsServiceCallTracker$VtDataUsageProvider;->this$0:Lcom/mediatek/ims/ImsServiceCallTracker;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsServiceCallTracker;->isVideoCallExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/mediatek/ims/ImsServiceCallTracker$VtDataUsageProvider;->this$0:Lcom/mediatek/ims/ImsServiceCallTracker;

    sget-object v1, Lcom/mediatek/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/ims/ImsCallInfo$State;

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsServiceCallTracker;->getCallInfo(Lcom/mediatek/ims/ImsCallInfo$State;)Lcom/mediatek/ims/ImsCallInfo;

    move-result-object v0

    .line 723
    .local v0, "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    if-eqz v0, :cond_0

    .line 724
    iget-object v1, v0, Lcom/mediatek/ims/ImsCallInfo;->mCallSession:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->onRequestCallDataUsage()V

    .line 727
    .end local v0    # "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsServiceCallTracker$VtDataUsageProvider;->this$0:Lcom/mediatek/ims/ImsServiceCallTracker;

    invoke-static {v0}, Lcom/mediatek/ims/ImsServiceCallTracker;->access$000(Lcom/mediatek/ims/ImsServiceCallTracker;)Landroid/net/NetworkStats;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/ImsServiceCallTracker$VtDataUsageProvider;->mIfaceSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v0

    .line 728
    .local v0, "ifaceDiff":Landroid/net/NetworkStats;
    iget-object v1, p0, Lcom/mediatek/ims/ImsServiceCallTracker$VtDataUsageProvider;->this$0:Lcom/mediatek/ims/ImsServiceCallTracker;

    invoke-static {v1}, Lcom/mediatek/ims/ImsServiceCallTracker;->access$100(Lcom/mediatek/ims/ImsServiceCallTracker;)Landroid/net/NetworkStats;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ImsServiceCallTracker$VtDataUsageProvider;->mUidSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v1, v2}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v1

    .line 729
    .local v1, "uidDiff":Landroid/net/NetworkStats;
    iget-object v2, p0, Lcom/mediatek/ims/ImsServiceCallTracker$VtDataUsageProvider;->this$0:Lcom/mediatek/ims/ImsServiceCallTracker;

    invoke-static {v2}, Lcom/mediatek/ims/ImsServiceCallTracker;->access$200(Lcom/mediatek/ims/ImsServiceCallTracker;)Lcom/mediatek/ims/ImsServiceCallTracker$VtDataUsageProvider;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/ims/ImsServiceCallTracker$VtDataUsageProvider;->mToken:I

    invoke-virtual {v2, v3, v0, v1}, Lcom/mediatek/ims/ImsServiceCallTracker$VtDataUsageProvider;->notifyStatsUpdated(ILandroid/net/NetworkStats;Landroid/net/NetworkStats;)V

    .line 731
    iget-object v2, p0, Lcom/mediatek/ims/ImsServiceCallTracker$VtDataUsageProvider;->this$0:Lcom/mediatek/ims/ImsServiceCallTracker;

    invoke-static {v2, v1}, Lcom/mediatek/ims/ImsServiceCallTracker;->access$300(Lcom/mediatek/ims/ImsServiceCallTracker;Landroid/net/NetworkStats;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    iget-object v2, p0, Lcom/mediatek/ims/ImsServiceCallTracker$VtDataUsageProvider;->this$0:Lcom/mediatek/ims/ImsServiceCallTracker;

    invoke-static {v2, v0}, Lcom/mediatek/ims/ImsServiceCallTracker;->access$300(Lcom/mediatek/ims/ImsServiceCallTracker;Landroid/net/NetworkStats;)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 732
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ims/ImsServiceCallTracker$VtDataUsageProvider;->this$0:Lcom/mediatek/ims/ImsServiceCallTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRequestStatsUpdate, notifyStatsUpdated:uidDiff="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n ifaceDiff="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/ims/ImsServiceCallTracker;->access$400(Lcom/mediatek/ims/ImsServiceCallTracker;Ljava/lang/String;)V

    .line 736
    :cond_2
    iget-object v2, p0, Lcom/mediatek/ims/ImsServiceCallTracker$VtDataUsageProvider;->mIfaceSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v2, v0}, Landroid/net/NetworkStats;->add(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/ImsServiceCallTracker$VtDataUsageProvider;->mIfaceSnapshot:Landroid/net/NetworkStats;

    .line 737
    iget-object v2, p0, Lcom/mediatek/ims/ImsServiceCallTracker$VtDataUsageProvider;->mUidSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v2, v1}, Landroid/net/NetworkStats;->add(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/ImsServiceCallTracker$VtDataUsageProvider;->mUidSnapshot:Landroid/net/NetworkStats;

    .line 738
    iput p1, p0, Lcom/mediatek/ims/ImsServiceCallTracker$VtDataUsageProvider;->mToken:I

    .line 739
    return-void
.end method

.method public onSetAlert(J)V
    .locals 3
    .param p1, "quotaBytes"    # J

    .line 746
    iget-object v0, p0, Lcom/mediatek/ims/ImsServiceCallTracker$VtDataUsageProvider;->this$0:Lcom/mediatek/ims/ImsServiceCallTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetAlert:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/ImsServiceCallTracker;->access$400(Lcom/mediatek/ims/ImsServiceCallTracker;Ljava/lang/String;)V

    .line 747
    iget-object v0, p0, Lcom/mediatek/ims/ImsServiceCallTracker$VtDataUsageProvider;->this$0:Lcom/mediatek/ims/ImsServiceCallTracker;

    invoke-static {v0}, Lcom/mediatek/ims/ImsServiceCallTracker;->access$500(Lcom/mediatek/ims/ImsServiceCallTracker;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mediatek/ims/ImsServiceCallTracker$VtDataUsageProvider$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/mediatek/ims/ImsServiceCallTracker$VtDataUsageProvider$$ExternalSyntheticLambda0;-><init>(Lcom/mediatek/ims/ImsServiceCallTracker$VtDataUsageProvider;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 748
    return-void
.end method

.method public onSetLimit(Ljava/lang/String;J)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "quotaBytes"    # J

    .line 743
    return-void
.end method

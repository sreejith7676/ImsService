.class public final synthetic Lcom/mediatek/ims/ImsServiceCallTracker$VtDataUsageProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/mediatek/ims/ImsServiceCallTracker$VtDataUsageProvider;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/mediatek/ims/ImsServiceCallTracker$VtDataUsageProvider;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mediatek/ims/ImsServiceCallTracker$VtDataUsageProvider$$ExternalSyntheticLambda0;->f$0:Lcom/mediatek/ims/ImsServiceCallTracker$VtDataUsageProvider;

    iput-wide p2, p0, Lcom/mediatek/ims/ImsServiceCallTracker$VtDataUsageProvider$$ExternalSyntheticLambda0;->f$1:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/mediatek/ims/ImsServiceCallTracker$VtDataUsageProvider$$ExternalSyntheticLambda0;->f$0:Lcom/mediatek/ims/ImsServiceCallTracker$VtDataUsageProvider;

    iget-wide v1, p0, Lcom/mediatek/ims/ImsServiceCallTracker$VtDataUsageProvider$$ExternalSyntheticLambda0;->f$1:J

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ims/ImsServiceCallTracker$VtDataUsageProvider;->lambda$onSetAlert$0$com-mediatek-ims-ImsServiceCallTracker$VtDataUsageProvider(J)V

    return-void
.end method

.class public final synthetic Lcom/mediatek/ims/ImsServiceCallTracker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/mediatek/ims/ImsServiceCallTracker;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;


# direct methods
.method public synthetic constructor <init>(Lcom/mediatek/ims/ImsServiceCallTracker;ILcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mediatek/ims/ImsServiceCallTracker$$ExternalSyntheticLambda0;->f$0:Lcom/mediatek/ims/ImsServiceCallTracker;

    iput p2, p0, Lcom/mediatek/ims/ImsServiceCallTracker$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/mediatek/ims/ImsServiceCallTracker$$ExternalSyntheticLambda0;->f$2:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/mediatek/ims/ImsServiceCallTracker$$ExternalSyntheticLambda0;->f$0:Lcom/mediatek/ims/ImsServiceCallTracker;

    iget v1, p0, Lcom/mediatek/ims/ImsServiceCallTracker$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lcom/mediatek/ims/ImsServiceCallTracker$$ExternalSyntheticLambda0;->f$2:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ims/ImsServiceCallTracker;->lambda$onCallDataUsageChanged$0$com-mediatek-ims-ImsServiceCallTracker(ILcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;)V

    return-void
.end method

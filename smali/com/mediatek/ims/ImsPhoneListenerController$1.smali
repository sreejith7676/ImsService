.class Lcom/mediatek/ims/ImsPhoneListenerController$1;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "ImsPhoneListenerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsPhoneListenerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/ImsPhoneListenerController;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/ImsPhoneListenerController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/ImsPhoneListenerController;

    .line 60
    iput-object p1, p0, Lcom/mediatek/ims/ImsPhoneListenerController$1;->this$0:Lcom/mediatek/ims/ImsPhoneListenerController;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/mediatek/ims/ImsPhoneListenerController$1;->this$0:Lcom/mediatek/ims/ImsPhoneListenerController;

    invoke-static {v0}, Lcom/mediatek/ims/ImsPhoneListenerController;->access$000(Lcom/mediatek/ims/ImsPhoneListenerController;)V

    .line 64
    return-void
.end method

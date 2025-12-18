.class Lcom/mediatek/ims/ImsPhoneStateListener$ImsPhoneStateListenerHandler;
.super Landroid/os/Handler;
.source "ImsPhoneStateListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsPhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsPhoneStateListenerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/ImsPhoneStateListener;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/ImsPhoneStateListener;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 86
    iput-object p1, p0, Lcom/mediatek/ims/ImsPhoneStateListener$ImsPhoneStateListenerHandler;->this$0:Lcom/mediatek/ims/ImsPhoneStateListener;

    .line 87
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 88
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 92
    iget-object v0, p0, Lcom/mediatek/ims/ImsPhoneStateListener$ImsPhoneStateListenerHandler;->this$0:Lcom/mediatek/ims/ImsPhoneStateListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message received: what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/ImsPhoneStateListener;->access$000(Lcom/mediatek/ims/ImsPhoneStateListener;Ljava/lang/String;)V

    .line 93
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 99
    iget-object v0, p0, Lcom/mediatek/ims/ImsPhoneStateListener$ImsPhoneStateListenerHandler;->this$0:Lcom/mediatek/ims/ImsPhoneStateListener;

    const-string v1, "handleMessage: unhandled message"

    invoke-static {v0, v1}, Lcom/mediatek/ims/ImsPhoneStateListener;->access$100(Lcom/mediatek/ims/ImsPhoneStateListener;Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 96
    .local v0, "message":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/ImsPhoneStateListener$ImsPhoneStateListenerHandler;->this$0:Lcom/mediatek/ims/ImsPhoneStateListener;

    invoke-virtual {v1, v0}, Lcom/mediatek/ims/ImsPhoneStateListener;->handlePreFiltering(Ljava/lang/String;)V

    .line 97
    nop

    .line 101
    .end local v0    # "message":Ljava/lang/String;
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

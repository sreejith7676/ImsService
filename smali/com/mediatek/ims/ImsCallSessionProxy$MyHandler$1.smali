.class Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler$1;
.super Ljava/lang/Object;
.source "ImsCallSessionProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;

    .line 3118
    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler$1;->this$1:Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 3122
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler$1;->this$1:Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;

    iget-object v0, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$9500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Message;

    move-result-object v0

    iget-object v0, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 3123
    .local v0, "dtmfMessenger":Landroid/os/Messenger;
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler$1;->this$1:Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;

    iget-object v1, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dtmfMessenger "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3124
    if-eqz v0, :cond_0

    .line 3125
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler$1;->this$1:Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;

    iget-object v1, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$9500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 3127
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler$1;->this$1:Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;

    iget-object v1, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$9502(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/Message;)Landroid/os/Message;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3130
    nop

    .end local v0    # "dtmfMessenger":Landroid/os/Messenger;
    goto :goto_0

    .line 3128
    :catch_0
    move-exception v0

    .line 3129
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler$1;->this$1:Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;

    iget-object v1, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v2, "handleMessage() : RemoteException for DTMF"

    const/4 v3, 0x5

    invoke-static {v1, v2, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3132
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

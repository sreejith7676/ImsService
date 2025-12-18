.class final Lcom/motorola/android/ims/MotoExtImsScreenShareListenerBase$ScreenShareListener;
.super Lcom/motorola/android/ims/internal/IMotoExtImsScreenShareListener$Stub;
.source "MotoExtImsScreenShareListenerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/ims/MotoExtImsScreenShareListenerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScreenShareListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/ims/MotoExtImsScreenShareListenerBase;


# direct methods
.method private constructor <init>(Lcom/motorola/android/ims/MotoExtImsScreenShareListenerBase;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/motorola/android/ims/MotoExtImsScreenShareListenerBase$ScreenShareListener;->this$0:Lcom/motorola/android/ims/MotoExtImsScreenShareListenerBase;

    invoke-direct {p0}, Lcom/motorola/android/ims/internal/IMotoExtImsScreenShareListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/android/ims/MotoExtImsScreenShareListenerBase;Lcom/motorola/android/ims/MotoExtImsScreenShareListenerBase$ScreenShareListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/motorola/android/ims/MotoExtImsScreenShareListenerBase$ScreenShareListener;-><init>(Lcom/motorola/android/ims/MotoExtImsScreenShareListenerBase;)V

    return-void
.end method


# virtual methods
.method public onCMOSEventReceived(ILjava/lang/String;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "data"    # Ljava/lang/String;

    .line 25
    iget-object v0, p0, Lcom/motorola/android/ims/MotoExtImsScreenShareListenerBase$ScreenShareListener;->this$0:Lcom/motorola/android/ims/MotoExtImsScreenShareListenerBase;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/android/ims/MotoExtImsScreenShareListenerBase;->onCMOSEventReceived(ILjava/lang/String;)V

    .line 26
    return-void
.end method

.method public onRecordingSurfaceChanged(ILandroid/view/Surface;II)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 19
    iget-object v0, p0, Lcom/motorola/android/ims/MotoExtImsScreenShareListenerBase$ScreenShareListener;->this$0:Lcom/motorola/android/ims/MotoExtImsScreenShareListenerBase;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/motorola/android/ims/MotoExtImsScreenShareListenerBase;->onRecordingSurfaceChanged(ILandroid/view/Surface;II)V

    .line 20
    return-void
.end method

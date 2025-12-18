.class public abstract Lcom/motorola/android/ims/MotoExtImsScreenShareListenerBase;
.super Ljava/lang/Object;
.source "MotoExtImsScreenShareListenerBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/ims/MotoExtImsScreenShareListenerBase$ScreenShareListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/motorola/android/ims/MotoExtImsScreenShareListenerBase$ScreenShareListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBinder()Lcom/motorola/android/ims/internal/IMotoExtImsScreenShareListener;
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/motorola/android/ims/MotoExtImsScreenShareListenerBase;->mListener:Lcom/motorola/android/ims/MotoExtImsScreenShareListenerBase$ScreenShareListener;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/motorola/android/ims/MotoExtImsScreenShareListenerBase$ScreenShareListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/android/ims/MotoExtImsScreenShareListenerBase$ScreenShareListener;-><init>(Lcom/motorola/android/ims/MotoExtImsScreenShareListenerBase;Lcom/motorola/android/ims/MotoExtImsScreenShareListenerBase$ScreenShareListener-IA;)V

    iput-object v0, p0, Lcom/motorola/android/ims/MotoExtImsScreenShareListenerBase;->mListener:Lcom/motorola/android/ims/MotoExtImsScreenShareListenerBase$ScreenShareListener;

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/motorola/android/ims/MotoExtImsScreenShareListenerBase;->mListener:Lcom/motorola/android/ims/MotoExtImsScreenShareListenerBase$ScreenShareListener;

    return-object v0
.end method

.method protected onCMOSEventReceived(ILjava/lang/String;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "data"    # Ljava/lang/String;

    .line 62
    return-void
.end method

.method protected onRecordingSurfaceChanged(ILandroid/view/Surface;II)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 50
    return-void
.end method

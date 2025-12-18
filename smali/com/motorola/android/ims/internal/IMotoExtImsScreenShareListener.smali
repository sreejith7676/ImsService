.class public interface abstract Lcom/motorola/android/ims/internal/IMotoExtImsScreenShareListener;
.super Ljava/lang/Object;
.source "IMotoExtImsScreenShareListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/ims/internal/IMotoExtImsScreenShareListener$Stub;,
        Lcom/motorola/android/ims/internal/IMotoExtImsScreenShareListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.motorola.android.ims.internal.IMotoExtImsScreenShareListener"


# virtual methods
.method public abstract onCMOSEventReceived(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onRecordingSurfaceChanged(ILandroid/view/Surface;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

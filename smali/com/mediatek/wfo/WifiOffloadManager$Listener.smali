.class public abstract Lcom/mediatek/wfo/WifiOffloadManager$Listener;
.super Lcom/mediatek/wfo/IWifiOffloadListener$Stub;
.source "WifiOffloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfo/WifiOffloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Listener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/mediatek/wfo/IWifiOffloadListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllowWifiOff()V
    .locals 0

    .line 60
    return-void
.end method

.method public onHandover(III)V
    .locals 0
    .param p1, "simIdx"    # I
    .param p2, "stage"    # I
    .param p3, "ratType"    # I

    .line 50
    return-void
.end method

.method public onRequestImsSwitch(IZ)V
    .locals 0
    .param p1, "simIdx"    # I
    .param p2, "isImsOn"    # Z

    .line 54
    return-void
.end method

.method public onRoveOut(IZI)V
    .locals 0
    .param p1, "simIdx"    # I
    .param p2, "roveOut"    # Z
    .param p3, "rssi"    # I

    .line 52
    return-void
.end method

.method public onWfcRegError(ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "simIdx"    # I
    .param p2, "imsReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 56
    return-void
.end method

.method public onWfcStateChanged(II)V
    .locals 0
    .param p1, "simIdx"    # I
    .param p2, "state"    # I

    .line 62
    return-void
.end method

.method public onWifiPdnOOSStateChanged(II)V
    .locals 0
    .param p1, "simIdx"    # I
    .param p2, "oosState"    # I

    .line 58
    return-void
.end method

.class public Lcom/mediatek/ims/plugin/impl/ImsRegistrationOemPluginBase;
.super Ljava/lang/Object;
.source "ImsRegistrationOemPluginBase.java"

# interfaces
.implements Lcom/mediatek/ims/plugin/ImsRegistrationOemPlugin;


# static fields
.field private static final TAG:Ljava/lang/String; = "ImsRegistrationOemPluginBase"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public broadcastImsRegistration(IILandroid/telephony/ims/ImsReasonInfo;IZ)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "regErrorCode"    # I
    .param p3, "imsReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;
    .param p4, "imsRegState"    # I
    .param p5, "isVoWiFi"    # Z

    .line 56
    return-void
.end method

.method public notifyImsRegStateWithType(III)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "imsRegState"    # I
    .param p3, "type"    # I

    .line 69
    return-void
.end method

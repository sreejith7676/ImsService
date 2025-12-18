.class public Lcom/mediatek/ims/ImsRegInfo;
.super Ljava/lang/Object;
.source "ImsRegInfo.java"


# static fields
.field public static final INVALID:I = -0x1

.field public static final NOT_REGISTERED:I = 0x2

.field public static final REGISTERED:I = 0x1

.field public static final REGISTERING:I = 0x3


# instance fields
.field public mAccountId:I

.field public mErrorCode:I

.field public mErrorMsg:Ljava/lang/String;

.field public mExpireTime:I

.field public mReportType:I

.field public mUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIIILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "accountId"    # I
    .param p3, "expireTime"    # I
    .param p4, "errCode"    # I
    .param p5, "uri"    # Ljava/lang/String;
    .param p6, "errMsg"    # Ljava/lang/String;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p1, p0, Lcom/mediatek/ims/ImsRegInfo;->mReportType:I

    .line 60
    iput p2, p0, Lcom/mediatek/ims/ImsRegInfo;->mAccountId:I

    .line 61
    iput p3, p0, Lcom/mediatek/ims/ImsRegInfo;->mExpireTime:I

    .line 62
    iput p4, p0, Lcom/mediatek/ims/ImsRegInfo;->mErrorCode:I

    .line 63
    iput-object p5, p0, Lcom/mediatek/ims/ImsRegInfo;->mUri:Ljava/lang/String;

    .line 64
    iput-object p6, p0, Lcom/mediatek/ims/ImsRegInfo;->mErrorMsg:Ljava/lang/String;

    .line 65
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsRegInfo :: {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/ImsRegInfo;->mReportType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/ims/ImsRegInfo;->mAccountId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/ims/ImsRegInfo;->mExpireTime:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/ImsRegInfo;->mErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/ImsRegInfo;->mErrorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

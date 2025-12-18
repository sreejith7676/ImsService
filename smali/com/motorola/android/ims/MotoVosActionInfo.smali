.class public Lcom/motorola/android/ims/MotoVosActionInfo;
.super Ljava/lang/Object;
.source "MotoVosActionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/motorola/android/ims/MotoVosActionInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final INVALID_MOVEINFO:Lcom/motorola/android/ims/MotoVosMoveInfo;

.field public static final INVALID_TOUCHINFO:Lcom/motorola/android/ims/MotoVosTouchInfo;


# instance fields
.field private mVosMoveInfo:Lcom/motorola/android/ims/MotoVosMoveInfo;

.field private mVosTouchInfo:Lcom/motorola/android/ims/MotoVosTouchInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/android/ims/MotoVosActionInfo;->INVALID_MOVEINFO:Lcom/motorola/android/ims/MotoVosMoveInfo;

    .line 20
    sput-object v0, Lcom/motorola/android/ims/MotoVosActionInfo;->INVALID_TOUCHINFO:Lcom/motorola/android/ims/MotoVosTouchInfo;

    .line 67
    new-instance v0, Lcom/motorola/android/ims/MotoVosActionInfo$1;

    invoke-direct {v0}, Lcom/motorola/android/ims/MotoVosActionInfo$1;-><init>()V

    sput-object v0, Lcom/motorola/android/ims/MotoVosActionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p0, p1}, Lcom/motorola/android/ims/MotoVosActionInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/motorola/android/ims/MotoVosMoveInfo;)V
    .locals 1
    .param p1, "vosMoveInfo"    # Lcom/motorola/android/ims/MotoVosMoveInfo;

    .line 35
    sget-object v0, Lcom/motorola/android/ims/MotoVosActionInfo;->INVALID_TOUCHINFO:Lcom/motorola/android/ims/MotoVosTouchInfo;

    invoke-direct {p0, p1, v0}, Lcom/motorola/android/ims/MotoVosActionInfo;-><init>(Lcom/motorola/android/ims/MotoVosMoveInfo;Lcom/motorola/android/ims/MotoVosTouchInfo;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/motorola/android/ims/MotoVosMoveInfo;Lcom/motorola/android/ims/MotoVosTouchInfo;)V
    .locals 0
    .param p1, "vosMoveInfo"    # Lcom/motorola/android/ims/MotoVosMoveInfo;
    .param p2, "vosTouchInfo"    # Lcom/motorola/android/ims/MotoVosTouchInfo;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/motorola/android/ims/MotoVosActionInfo;->mVosMoveInfo:Lcom/motorola/android/ims/MotoVosMoveInfo;

    .line 27
    iput-object p2, p0, Lcom/motorola/android/ims/MotoVosActionInfo;->mVosTouchInfo:Lcom/motorola/android/ims/MotoVosTouchInfo;

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/motorola/android/ims/MotoVosTouchInfo;)V
    .locals 1
    .param p1, "vosTouchInfo"    # Lcom/motorola/android/ims/MotoVosTouchInfo;

    .line 31
    sget-object v0, Lcom/motorola/android/ims/MotoVosActionInfo;->INVALID_MOVEINFO:Lcom/motorola/android/ims/MotoVosMoveInfo;

    invoke-direct {p0, v0, p1}, Lcom/motorola/android/ims/MotoVosActionInfo;-><init>(Lcom/motorola/android/ims/MotoVosMoveInfo;Lcom/motorola/android/ims/MotoVosTouchInfo;)V

    .line 32
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public getVosMoveInfo()Lcom/motorola/android/ims/MotoVosMoveInfo;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/motorola/android/ims/MotoVosActionInfo;->mVosMoveInfo:Lcom/motorola/android/ims/MotoVosMoveInfo;

    return-object v0
.end method

.method public getVosTouchInfo()Lcom/motorola/android/ims/MotoVosTouchInfo;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/motorola/android/ims/MotoVosActionInfo;->mVosTouchInfo:Lcom/motorola/android/ims/MotoVosTouchInfo;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 57
    const-class v0, Lcom/motorola/android/ims/MotoVosMoveInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/ims/MotoVosMoveInfo;

    iput-object v0, p0, Lcom/motorola/android/ims/MotoVosActionInfo;->mVosMoveInfo:Lcom/motorola/android/ims/MotoVosMoveInfo;

    .line 58
    const-class v0, Lcom/motorola/android/ims/MotoVosTouchInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/ims/MotoVosTouchInfo;

    iput-object v0, p0, Lcom/motorola/android/ims/MotoVosActionInfo;->mVosTouchInfo:Lcom/motorola/android/ims/MotoVosTouchInfo;

    .line 59
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{MotoVosActionInfo: vosMoveInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/ims/MotoVosActionInfo;->mVosMoveInfo:Lcom/motorola/android/ims/MotoVosMoveInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , vosTouchInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/ims/MotoVosActionInfo;->mVosTouchInfo:Lcom/motorola/android/ims/MotoVosTouchInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .line 52
    iget-object v0, p0, Lcom/motorola/android/ims/MotoVosActionInfo;->mVosMoveInfo:Lcom/motorola/android/ims/MotoVosMoveInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 53
    iget-object v0, p0, Lcom/motorola/android/ims/MotoVosActionInfo;->mVosTouchInfo:Lcom/motorola/android/ims/MotoVosTouchInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 54
    return-void
.end method

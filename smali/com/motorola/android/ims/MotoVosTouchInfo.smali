.class public Lcom/motorola/android/ims/MotoVosTouchInfo;
.super Ljava/lang/Object;
.source "MotoVosTouchInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/motorola/android/ims/MotoVosTouchInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mTouch:Lcom/motorola/android/ims/MotoCoordinate2D;

.field private mTouchDuration:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Lcom/motorola/android/ims/MotoVosTouchInfo$1;

    invoke-direct {v0}, Lcom/motorola/android/ims/MotoVosTouchInfo$1;-><init>()V

    sput-object v0, Lcom/motorola/android/ims/MotoVosTouchInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p0, p1}, Lcom/motorola/android/ims/MotoVosTouchInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/motorola/android/ims/MotoCoordinate2D;I)V
    .locals 0
    .param p1, "touch"    # Lcom/motorola/android/ims/MotoCoordinate2D;
    .param p2, "touchDuration"    # I

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/motorola/android/ims/MotoVosTouchInfo;->mTouch:Lcom/motorola/android/ims/MotoCoordinate2D;

    .line 25
    iput p2, p0, Lcom/motorola/android/ims/MotoVosTouchInfo;->mTouchDuration:I

    .line 26
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public getTouch()Lcom/motorola/android/ims/MotoCoordinate2D;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/motorola/android/ims/MotoVosTouchInfo;->mTouch:Lcom/motorola/android/ims/MotoCoordinate2D;

    return-object v0
.end method

.method public getTouchDuration()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/motorola/android/ims/MotoVosTouchInfo;->mTouchDuration:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 47
    const-class v0, Lcom/motorola/android/ims/MotoCoordinate2D;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/ims/MotoCoordinate2D;

    iput-object v0, p0, Lcom/motorola/android/ims/MotoVosTouchInfo;->mTouch:Lcom/motorola/android/ims/MotoCoordinate2D;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/android/ims/MotoVosTouchInfo;->mTouchDuration:I

    .line 49
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{MotoVosTouchInfo: touch = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/ims/MotoVosTouchInfo;->mTouch:Lcom/motorola/android/ims/MotoCoordinate2D;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , touchDuration = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/motorola/android/ims/MotoVosTouchInfo;->mTouchDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    .line 42
    iget-object v0, p0, Lcom/motorola/android/ims/MotoVosTouchInfo;->mTouch:Lcom/motorola/android/ims/MotoCoordinate2D;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 43
    iget v0, p0, Lcom/motorola/android/ims/MotoVosTouchInfo;->mTouchDuration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    return-void
.end method

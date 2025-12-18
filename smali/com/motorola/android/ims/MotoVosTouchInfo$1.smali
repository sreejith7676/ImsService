.class Lcom/motorola/android/ims/MotoVosTouchInfo$1;
.super Ljava/lang/Object;
.source "MotoVosTouchInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/ims/MotoVosTouchInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/motorola/android/ims/MotoVosTouchInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/motorola/android/ims/MotoVosTouchInfo;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 61
    new-instance v0, Lcom/motorola/android/ims/MotoVosTouchInfo;

    invoke-direct {v0, p1}, Lcom/motorola/android/ims/MotoVosTouchInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 58
    invoke-virtual {p0, p1}, Lcom/motorola/android/ims/MotoVosTouchInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/motorola/android/ims/MotoVosTouchInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/motorola/android/ims/MotoVosTouchInfo;
    .locals 1
    .param p1, "size"    # I

    .line 66
    new-array v0, p1, [Lcom/motorola/android/ims/MotoVosTouchInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 58
    invoke-virtual {p0, p1}, Lcom/motorola/android/ims/MotoVosTouchInfo$1;->newArray(I)[Lcom/motorola/android/ims/MotoVosTouchInfo;

    move-result-object p1

    return-object p1
.end method

.class public Lcom/motorola/android/ims/MotoVosMoveInfo;
.super Ljava/lang/Object;
.source "MotoVosMoveInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/motorola/android/ims/MotoVosMoveInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mEnd:Lcom/motorola/android/ims/MotoCoordinate2D;

.field private mStart:Lcom/motorola/android/ims/MotoCoordinate2D;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    new-instance v0, Lcom/motorola/android/ims/MotoVosMoveInfo$1;

    invoke-direct {v0}, Lcom/motorola/android/ims/MotoVosMoveInfo$1;-><init>()V

    sput-object v0, Lcom/motorola/android/ims/MotoVosMoveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p0, p1}, Lcom/motorola/android/ims/MotoVosMoveInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/motorola/android/ims/MotoCoordinate2D;Lcom/motorola/android/ims/MotoCoordinate2D;)V
    .locals 0
    .param p1, "start"    # Lcom/motorola/android/ims/MotoCoordinate2D;
    .param p2, "end"    # Lcom/motorola/android/ims/MotoCoordinate2D;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/motorola/android/ims/MotoVosMoveInfo;->mStart:Lcom/motorola/android/ims/MotoCoordinate2D;

    .line 24
    iput-object p2, p0, Lcom/motorola/android/ims/MotoVosMoveInfo;->mEnd:Lcom/motorola/android/ims/MotoCoordinate2D;

    .line 25
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public getEnd()Lcom/motorola/android/ims/MotoCoordinate2D;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/motorola/android/ims/MotoVosMoveInfo;->mEnd:Lcom/motorola/android/ims/MotoCoordinate2D;

    return-object v0
.end method

.method public getStart()Lcom/motorola/android/ims/MotoCoordinate2D;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/motorola/android/ims/MotoVosMoveInfo;->mStart:Lcom/motorola/android/ims/MotoCoordinate2D;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 46
    const-class v0, Lcom/motorola/android/ims/MotoCoordinate2D;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/ims/MotoCoordinate2D;

    iput-object v0, p0, Lcom/motorola/android/ims/MotoVosMoveInfo;->mStart:Lcom/motorola/android/ims/MotoCoordinate2D;

    .line 47
    const-class v0, Lcom/motorola/android/ims/MotoCoordinate2D;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/ims/MotoCoordinate2D;

    iput-object v0, p0, Lcom/motorola/android/ims/MotoVosMoveInfo;->mEnd:Lcom/motorola/android/ims/MotoCoordinate2D;

    .line 48
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{MotoVosMoveInfo: start = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/ims/MotoVosMoveInfo;->mStart:Lcom/motorola/android/ims/MotoCoordinate2D;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , end = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/ims/MotoVosMoveInfo;->mEnd:Lcom/motorola/android/ims/MotoCoordinate2D;

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

    .line 41
    iget-object v0, p0, Lcom/motorola/android/ims/MotoVosMoveInfo;->mStart:Lcom/motorola/android/ims/MotoCoordinate2D;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 42
    iget-object v0, p0, Lcom/motorola/android/ims/MotoVosMoveInfo;->mEnd:Lcom/motorola/android/ims/MotoCoordinate2D;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 43
    return-void
.end method

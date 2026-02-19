.class final Lcom/reglink/parcel/AudioSource$2;
.super Ljava/lang/Object;
.source "AudioSource.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reglink/parcel/AudioSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/reglink/parcel/AudioSource;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 661
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/reglink/parcel/AudioSource;
    .locals 1

    .line 664
    new-instance v0, Lcom/reglink/parcel/AudioSource;

    invoke-direct {v0, p1}, Lcom/reglink/parcel/AudioSource;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 661
    invoke-virtual {p0, p1}, Lcom/reglink/parcel/AudioSource$2;->createFromParcel(Landroid/os/Parcel;)Lcom/reglink/parcel/AudioSource;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/reglink/parcel/AudioSource;
    .locals 0

    .line 669
    new-array p1, p1, [Lcom/reglink/parcel/AudioSource;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 661
    invoke-virtual {p0, p1}, Lcom/reglink/parcel/AudioSource$2;->newArray(I)[Lcom/reglink/parcel/AudioSource;

    move-result-object p1

    return-object p1
.end method

.class final Lcom/reglink/parcel/Radar$1;
.super Ljava/lang/Object;
.source "Radar.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reglink/parcel/Radar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/reglink/parcel/Radar;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/reglink/parcel/Radar;
    .locals 2

    .line 60
    new-instance v0, Lcom/reglink/parcel/Radar;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/reglink/parcel/Radar;-><init>(Landroid/os/Parcel;Lcom/reglink/parcel/Radar$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lcom/reglink/parcel/Radar$1;->createFromParcel(Landroid/os/Parcel;)Lcom/reglink/parcel/Radar;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/reglink/parcel/Radar;
    .locals 0

    .line 65
    new-array p1, p1, [Lcom/reglink/parcel/Radar;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lcom/reglink/parcel/Radar$1;->newArray(I)[Lcom/reglink/parcel/Radar;

    move-result-object p1

    return-object p1
.end method

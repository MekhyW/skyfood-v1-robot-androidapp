.class final Lcom/reglink/parcel/OBDResponse$1;
.super Ljava/lang/Object;
.source "OBDResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reglink/parcel/OBDResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/reglink/parcel/OBDResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/reglink/parcel/OBDResponse;
    .locals 2

    .line 48
    new-instance v0, Lcom/reglink/parcel/OBDResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/reglink/parcel/OBDResponse;-><init>(Landroid/os/Parcel;Lcom/reglink/parcel/OBDResponse$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/reglink/parcel/OBDResponse$1;->createFromParcel(Landroid/os/Parcel;)Lcom/reglink/parcel/OBDResponse;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/reglink/parcel/OBDResponse;
    .locals 0

    .line 53
    new-array p1, p1, [Lcom/reglink/parcel/OBDResponse;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/reglink/parcel/OBDResponse$1;->newArray(I)[Lcom/reglink/parcel/OBDResponse;

    move-result-object p1

    return-object p1
.end method

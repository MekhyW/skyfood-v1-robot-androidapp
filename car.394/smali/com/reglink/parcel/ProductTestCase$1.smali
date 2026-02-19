.class final Lcom/reglink/parcel/ProductTestCase$1;
.super Ljava/lang/Object;
.source "ProductTestCase.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reglink/parcel/ProductTestCase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/reglink/parcel/ProductTestCase;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/reglink/parcel/ProductTestCase;
    .locals 2

    .line 95
    new-instance v0, Lcom/reglink/parcel/ProductTestCase;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/reglink/parcel/ProductTestCase;-><init>(Landroid/os/Parcel;Lcom/reglink/parcel/ProductTestCase$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 92
    invoke-virtual {p0, p1}, Lcom/reglink/parcel/ProductTestCase$1;->createFromParcel(Landroid/os/Parcel;)Lcom/reglink/parcel/ProductTestCase;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/reglink/parcel/ProductTestCase;
    .locals 0

    .line 100
    new-array p1, p1, [Lcom/reglink/parcel/ProductTestCase;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 92
    invoke-virtual {p0, p1}, Lcom/reglink/parcel/ProductTestCase$1;->newArray(I)[Lcom/reglink/parcel/ProductTestCase;

    move-result-object p1

    return-object p1
.end method

.class public Lcom/reglink/parcel/AudioSource$AudioSourceMutable;
.super Lcom/reglink/parcel/AudioSource;
.source "AudioSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reglink/parcel/AudioSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudioSourceMutable"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/reglink/parcel/AudioSource$AudioSourceMutable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 341
    new-instance v0, Lcom/reglink/parcel/AudioSource$AudioSourceMutable$1;

    invoke-direct {v0}, Lcom/reglink/parcel/AudioSource$AudioSourceMutable$1;-><init>()V

    sput-object v0, Lcom/reglink/parcel/AudioSource$AudioSourceMutable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 258
    invoke-direct {p0}, Lcom/reglink/parcel/AudioSource;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 255
    invoke-direct {p0, p1}, Lcom/reglink/parcel/AudioSource;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/reglink/parcel/AudioSource;)V
    .locals 0

    .line 252
    invoke-direct {p0, p1}, Lcom/reglink/parcel/AudioSource;-><init>(Lcom/reglink/parcel/AudioSource;)V

    return-void
.end method

.method public static makeAndroidSource()Lcom/reglink/parcel/AudioSource$AudioSourceMutable;
    .locals 2

    .line 333
    new-instance v0, Lcom/reglink/parcel/AudioSource$AudioSourceMutable;

    invoke-direct {v0}, Lcom/reglink/parcel/AudioSource$AudioSourceMutable;-><init>()V

    const/4 v1, 0x1

    .line 334
    invoke-virtual {v0, v1}, Lcom/reglink/parcel/AudioSource$AudioSourceMutable;->setAction(I)Lcom/reglink/parcel/AudioSource$AudioSourceMutable;

    .line 335
    invoke-virtual {v0, v1}, Lcom/reglink/parcel/AudioSource$AudioSourceMutable;->setPlatformSource(I)Lcom/reglink/parcel/AudioSource$AudioSourceMutable;

    .line 336
    invoke-virtual {v0, v1}, Lcom/reglink/parcel/AudioSource$AudioSourceMutable;->setModelSource(I)Lcom/reglink/parcel/AudioSource$AudioSourceMutable;

    return-object v0
.end method


# virtual methods
.method public addFlag(I)Lcom/reglink/parcel/AudioSource$AudioSourceMutable;
    .locals 0

    .line 268
    invoke-static {p0, p1}, Lcom/reglink/parcel/AudioSource;->access$300(Lcom/reglink/parcel/AudioSource;I)Lcom/reglink/parcel/AudioSource;

    return-object p0
.end method

.method public addMixSource(I)Lcom/reglink/parcel/AudioSource$AudioSourceMutable;
    .locals 0

    .line 308
    invoke-static {p0, p1}, Lcom/reglink/parcel/AudioSource;->access$1000(Lcom/reglink/parcel/AudioSource;I)Lcom/reglink/parcel/AudioSource;

    return-object p0
.end method

.method public clear()Lcom/reglink/parcel/AudioSource$AudioSourceMutable;
    .locals 0

    .line 328
    invoke-static {p0}, Lcom/reglink/parcel/AudioSource;->access$600(Lcom/reglink/parcel/AudioSource;)Lcom/reglink/parcel/AudioSource;

    return-object p0
.end method

.method public clearAction()Lcom/reglink/parcel/AudioSource$AudioSourceMutable;
    .locals 0

    .line 283
    invoke-static {p0}, Lcom/reglink/parcel/AudioSource;->access$900(Lcom/reglink/parcel/AudioSource;)Lcom/reglink/parcel/AudioSource;

    return-object p0
.end method

.method public clearFlag()Lcom/reglink/parcel/AudioSource$AudioSourceMutable;
    .locals 0

    .line 278
    invoke-static {p0}, Lcom/reglink/parcel/AudioSource;->access$800(Lcom/reglink/parcel/AudioSource;)Lcom/reglink/parcel/AudioSource;

    return-object p0
.end method

.method public clearFlag(I)Lcom/reglink/parcel/AudioSource$AudioSourceMutable;
    .locals 0

    .line 273
    invoke-static {p0, p1}, Lcom/reglink/parcel/AudioSource;->access$400(Lcom/reglink/parcel/AudioSource;I)Lcom/reglink/parcel/AudioSource;

    return-object p0
.end method

.method public clone()Lcom/reglink/parcel/AudioSource$AudioSourceMutable;
    .locals 1

    .line 323
    new-instance v0, Lcom/reglink/parcel/AudioSource$AudioSourceMutable;

    invoke-direct {v0, p0}, Lcom/reglink/parcel/AudioSource$AudioSourceMutable;-><init>(Lcom/reglink/parcel/AudioSource;)V

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/reglink/parcel/AudioSource;
    .locals 1

    .line 250
    invoke-virtual {p0}, Lcom/reglink/parcel/AudioSource$AudioSourceMutable;->clone()Lcom/reglink/parcel/AudioSource$AudioSourceMutable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 250
    invoke-virtual {p0}, Lcom/reglink/parcel/AudioSource$AudioSourceMutable;->clone()Lcom/reglink/parcel/AudioSource$AudioSourceMutable;

    move-result-object v0

    return-object v0
.end method

.method public immutable()Lcom/reglink/parcel/AudioSource;
    .locals 1

    .line 318
    new-instance v0, Lcom/reglink/parcel/AudioSource;

    invoke-direct {v0}, Lcom/reglink/parcel/AudioSource;-><init>()V

    .line 319
    invoke-virtual {v0, p0}, Lcom/reglink/parcel/AudioSource;->copyFrom(Lcom/reglink/parcel/AudioSource;)V

    return-object v0
.end method

.method public removeMixSource()Lcom/reglink/parcel/AudioSource$AudioSourceMutable;
    .locals 0

    .line 288
    invoke-static {p0}, Lcom/reglink/parcel/AudioSource;->access$700(Lcom/reglink/parcel/AudioSource;)Lcom/reglink/parcel/AudioSource;

    return-object p0
.end method

.method public removeMixSource(I)Lcom/reglink/parcel/AudioSource$AudioSourceMutable;
    .locals 0

    .line 313
    invoke-static {p0, p1}, Lcom/reglink/parcel/AudioSource;->access$1100(Lcom/reglink/parcel/AudioSource;I)Lcom/reglink/parcel/AudioSource;

    return-object p0
.end method

.method public setAction(I)Lcom/reglink/parcel/AudioSource$AudioSourceMutable;
    .locals 0

    .line 263
    invoke-static {p0, p1}, Lcom/reglink/parcel/AudioSource;->access$200(Lcom/reglink/parcel/AudioSource;I)Lcom/reglink/parcel/AudioSource;

    return-object p0
.end method

.method public setMixSource(I)Lcom/reglink/parcel/AudioSource$AudioSourceMutable;
    .locals 0

    .line 303
    invoke-static {p0, p1}, Lcom/reglink/parcel/AudioSource;->access$500(Lcom/reglink/parcel/AudioSource;I)Lcom/reglink/parcel/AudioSource;

    return-object p0
.end method

.method public setModelSource(I)Lcom/reglink/parcel/AudioSource$AudioSourceMutable;
    .locals 0

    .line 298
    invoke-static {p0, p1}, Lcom/reglink/parcel/AudioSource;->access$100(Lcom/reglink/parcel/AudioSource;I)Lcom/reglink/parcel/AudioSource;

    return-object p0
.end method

.method public setPlatformSource(I)Lcom/reglink/parcel/AudioSource$AudioSourceMutable;
    .locals 0

    .line 293
    invoke-static {p0, p1}, Lcom/reglink/parcel/AudioSource;->access$000(Lcom/reglink/parcel/AudioSource;I)Lcom/reglink/parcel/AudioSource;

    return-object p0
.end method

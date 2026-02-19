.class public Lcom/reglink/parcel/AudioSource$Builder;
.super Ljava/lang/Object;
.source "AudioSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reglink/parcel/AudioSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field audioSource:Lcom/reglink/parcel/AudioSource;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Lcom/reglink/parcel/AudioSource;

    invoke-direct {v0}, Lcom/reglink/parcel/AudioSource;-><init>()V

    iput-object v0, p0, Lcom/reglink/parcel/AudioSource$Builder;->audioSource:Lcom/reglink/parcel/AudioSource;

    return-void
.end method

.method public constructor <init>(Lcom/reglink/parcel/AudioSource;)V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Lcom/reglink/parcel/AudioSource;

    invoke-direct {v0, p1}, Lcom/reglink/parcel/AudioSource;-><init>(Lcom/reglink/parcel/AudioSource;)V

    iput-object v0, p0, Lcom/reglink/parcel/AudioSource$Builder;->audioSource:Lcom/reglink/parcel/AudioSource;

    return-void
.end method


# virtual methods
.method public addFlag(I)Lcom/reglink/parcel/AudioSource$Builder;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/reglink/parcel/AudioSource$Builder;->audioSource:Lcom/reglink/parcel/AudioSource;

    invoke-static {v0, p1}, Lcom/reglink/parcel/AudioSource;->access$300(Lcom/reglink/parcel/AudioSource;I)Lcom/reglink/parcel/AudioSource;

    return-object p0
.end method

.method public build()Lcom/reglink/parcel/AudioSource;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/reglink/parcel/AudioSource$Builder;->audioSource:Lcom/reglink/parcel/AudioSource;

    return-object v0
.end method

.method public clear()Lcom/reglink/parcel/AudioSource$Builder;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/reglink/parcel/AudioSource$Builder;->audioSource:Lcom/reglink/parcel/AudioSource;

    invoke-static {v0}, Lcom/reglink/parcel/AudioSource;->access$600(Lcom/reglink/parcel/AudioSource;)Lcom/reglink/parcel/AudioSource;

    return-object p0
.end method

.method public clearFlag(I)Lcom/reglink/parcel/AudioSource$Builder;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/reglink/parcel/AudioSource$Builder;->audioSource:Lcom/reglink/parcel/AudioSource;

    invoke-static {v0, p1}, Lcom/reglink/parcel/AudioSource;->access$400(Lcom/reglink/parcel/AudioSource;I)Lcom/reglink/parcel/AudioSource;

    return-object p0
.end method

.method public removeMixSource()Lcom/reglink/parcel/AudioSource$Builder;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/reglink/parcel/AudioSource$Builder;->audioSource:Lcom/reglink/parcel/AudioSource;

    invoke-static {v0}, Lcom/reglink/parcel/AudioSource;->access$700(Lcom/reglink/parcel/AudioSource;)Lcom/reglink/parcel/AudioSource;

    return-object p0
.end method

.method public setAction(I)Lcom/reglink/parcel/AudioSource$Builder;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/reglink/parcel/AudioSource$Builder;->audioSource:Lcom/reglink/parcel/AudioSource;

    invoke-static {v0, p1}, Lcom/reglink/parcel/AudioSource;->access$200(Lcom/reglink/parcel/AudioSource;I)Lcom/reglink/parcel/AudioSource;

    return-object p0
.end method

.method public setMixSource(I)Lcom/reglink/parcel/AudioSource$Builder;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/reglink/parcel/AudioSource$Builder;->audioSource:Lcom/reglink/parcel/AudioSource;

    invoke-static {v0, p1}, Lcom/reglink/parcel/AudioSource;->access$500(Lcom/reglink/parcel/AudioSource;I)Lcom/reglink/parcel/AudioSource;

    return-object p0
.end method

.method public setModelSource(I)Lcom/reglink/parcel/AudioSource$Builder;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/reglink/parcel/AudioSource$Builder;->audioSource:Lcom/reglink/parcel/AudioSource;

    invoke-static {v0, p1}, Lcom/reglink/parcel/AudioSource;->access$100(Lcom/reglink/parcel/AudioSource;I)Lcom/reglink/parcel/AudioSource;

    return-object p0
.end method

.method public setPlatformSource(I)Lcom/reglink/parcel/AudioSource$Builder;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/reglink/parcel/AudioSource$Builder;->audioSource:Lcom/reglink/parcel/AudioSource;

    invoke-static {v0, p1}, Lcom/reglink/parcel/AudioSource;->access$000(Lcom/reglink/parcel/AudioSource;I)Lcom/reglink/parcel/AudioSource;

    return-object p0
.end method

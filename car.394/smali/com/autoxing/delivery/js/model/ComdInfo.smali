.class public Lcom/autoxing/delivery/js/model/ComdInfo;
.super Ljava/lang/Object;
.source "ComdInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private port:I

.field private reqType:Ljava/lang/String;

.field private timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x232c

    .line 9
    iput v0, p0, Lcom/autoxing/delivery/js/model/ComdInfo;->port:I

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/autoxing/delivery/js/model/ComdInfo;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/autoxing/delivery/js/model/ComdInfo;->port:I

    return v0
.end method

.method public getReqType()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/autoxing/delivery/js/model/ComdInfo;->reqType:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 28
    iget-wide v0, p0, Lcom/autoxing/delivery/js/model/ComdInfo;->timestamp:J

    return-wide v0
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 24
    iput-object p1, p0, Lcom/autoxing/delivery/js/model/ComdInfo;->data:Ljava/lang/Object;

    return-void
.end method

.method public setPort(I)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/autoxing/delivery/js/model/ComdInfo;->port:I

    return-void
.end method

.method public setReqType(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/autoxing/delivery/js/model/ComdInfo;->reqType:Ljava/lang/String;

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    .line 32
    iput-wide p1, p0, Lcom/autoxing/delivery/js/model/ComdInfo;->timestamp:J

    return-void
.end method

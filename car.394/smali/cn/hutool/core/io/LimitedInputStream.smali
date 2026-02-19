.class public Lcn/hutool/core/io/LimitedInputStream;
.super Ljava/io/FilterInputStream;
.source "LimitedInputStream.java"


# instance fields
.field private currentPos:J

.field private final maxSize:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 25
    iput-wide p2, p0, Lcn/hutool/core/io/LimitedInputStream;->maxSize:J

    return-void
.end method

.method private checkPos()V
    .locals 4

    .line 59
    iget-wide v0, p0, Lcn/hutool/core/io/LimitedInputStream;->currentPos:J

    iget-wide v2, p0, Lcn/hutool/core/io/LimitedInputStream;->maxSize:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    return-void

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Read limit exceeded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 32
    iget-wide v1, p0, Lcn/hutool/core/io/LimitedInputStream;->currentPos:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcn/hutool/core/io/LimitedInputStream;->currentPos:J

    .line 33
    invoke-direct {p0}, Lcn/hutool/core/io/LimitedInputStream;->checkPos()V

    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result p1

    if-lez p1, :cond_0

    .line 42
    iget-wide p2, p0, Lcn/hutool/core/io/LimitedInputStream;->currentPos:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcn/hutool/core/io/LimitedInputStream;->currentPos:J

    .line 43
    invoke-direct {p0}, Lcn/hutool/core/io/LimitedInputStream;->checkPos()V

    :cond_0
    return p1
.end method

.method public skip(J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-super {p0, p1, p2}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 52
    iget-wide v0, p0, Lcn/hutool/core/io/LimitedInputStream;->currentPos:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcn/hutool/core/io/LimitedInputStream;->currentPos:J

    .line 53
    invoke-direct {p0}, Lcn/hutool/core/io/LimitedInputStream;->checkPos()V

    :cond_0
    return-wide p1
.end method

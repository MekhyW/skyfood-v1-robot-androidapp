.class public Lcn/hutool/core/io/copy/ChannelCopier;
.super Lcn/hutool/core/io/copy/IoCopier;
.source "ChannelCopier.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/hutool/core/io/copy/IoCopier<",
        "Ljava/nio/channels/ReadableByteChannel;",
        "Ljava/nio/channels/WritableByteChannel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x2000

    .line 27
    invoke-direct {p0, v0}, Lcn/hutool/core/io/copy/ChannelCopier;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const-wide/16 v0, -0x1

    .line 36
    invoke-direct {p0, p1, v0, v1}, Lcn/hutool/core/io/copy/ChannelCopier;-><init>(IJ)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2, p3, v0}, Lcn/hutool/core/io/copy/ChannelCopier;-><init>(IJLcn/hutool/core/io/StreamProgress;)V

    return-void
.end method

.method public constructor <init>(IJLcn/hutool/core/io/StreamProgress;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/hutool/core/io/copy/IoCopier;-><init>(IJLcn/hutool/core/io/StreamProgress;)V

    return-void
.end method

.method private doCopy(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/channels/WritableByteChannel;Ljava/nio/ByteBuffer;Lcn/hutool/core/io/StreamProgress;)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    iget-wide v0, p0, Lcn/hutool/core/io/copy/ChannelCopier;->count:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcn/hutool/core/io/copy/ChannelCopier;->count:J

    goto :goto_0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    move-wide v4, v2

    :cond_1
    :goto_1
    cmp-long v6, v0, v2

    if-lez v6, :cond_3

    .line 98
    invoke-interface {p1, p3}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v6

    if-gez v6, :cond_2

    goto :goto_2

    .line 103
    :cond_2
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 104
    invoke-interface {p2, p3}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 105
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    int-to-long v6, v6

    sub-long/2addr v0, v6

    add-long/2addr v4, v6

    if-eqz p4, :cond_1

    .line 110
    iget-wide v6, p0, Lcn/hutool/core/io/copy/ChannelCopier;->count:J

    invoke-interface {p4, v6, v7, v4, v5}, Lcn/hutool/core/io/StreamProgress;->progress(JJ)V

    goto :goto_1

    :cond_3
    :goto_2
    return-wide v4
.end method


# virtual methods
.method public bridge synthetic copy(Ljava/lang/Object;Ljava/lang/Object;)J
    .locals 0

    .line 21
    check-cast p1, Ljava/nio/channels/ReadableByteChannel;

    check-cast p2, Ljava/nio/channels/WritableByteChannel;

    invoke-virtual {p0, p1, p2}, Lcn/hutool/core/io/copy/ChannelCopier;->copy(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/channels/WritableByteChannel;)J

    move-result-wide p1

    return-wide p1
.end method

.method public copy(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/channels/WritableByteChannel;)J
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "InputStream is null !"

    .line 62
    invoke-static {p1, v2, v1}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "OutputStream is null !"

    new-array v0, v0, [Ljava/lang/Object;

    .line 63
    invoke-static {p2, v1, v0}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lcn/hutool/core/io/copy/ChannelCopier;->progress:Lcn/hutool/core/io/StreamProgress;

    if-eqz v0, :cond_0

    .line 67
    invoke-interface {v0}, Lcn/hutool/core/io/StreamProgress;->start()V

    .line 71
    :cond_0
    :try_start_0
    iget-wide v1, p0, Lcn/hutool/core/io/copy/ChannelCopier;->count:J

    invoke-virtual {p0, v1, v2}, Lcn/hutool/core/io/copy/ChannelCopier;->bufferSize(J)I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1, v0}, Lcn/hutool/core/io/copy/ChannelCopier;->doCopy(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/channels/WritableByteChannel;Ljava/nio/ByteBuffer;Lcn/hutool/core/io/StreamProgress;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    .line 77
    invoke-interface {v0}, Lcn/hutool/core/io/StreamProgress;->finish()V

    :cond_1
    return-wide p1

    :catch_0
    move-exception p1

    .line 73
    new-instance p2, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {p2, p1}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

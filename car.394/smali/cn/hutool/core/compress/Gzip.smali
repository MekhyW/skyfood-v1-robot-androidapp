.class public Lcn/hutool/core/compress/Gzip;
.super Ljava/lang/Object;
.source "Gzip.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private source:Ljava/io/InputStream;

.field private target:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcn/hutool/core/compress/Gzip;->source:Ljava/io/InputStream;

    .line 44
    iput-object p2, p0, Lcn/hutool/core/compress/Gzip;->target:Ljava/io/OutputStream;

    return-void
.end method

.method public static of(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcn/hutool/core/compress/Gzip;
    .locals 1

    .line 33
    new-instance v0, Lcn/hutool/core/compress/Gzip;

    invoke-direct {v0, p0, p1}, Lcn/hutool/core/compress/Gzip;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcn/hutool/core/compress/Gzip;->target:Ljava/io/OutputStream;

    invoke-static {v0}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    .line 92
    iget-object v0, p0, Lcn/hutool/core/compress/Gzip;->source:Ljava/io/InputStream;

    invoke-static {v0}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    return-void
.end method

.method public getTarget()Ljava/io/OutputStream;
    .locals 1

    .line 53
    iget-object v0, p0, Lcn/hutool/core/compress/Gzip;->target:Ljava/io/OutputStream;

    return-object v0
.end method

.method public gzip()Lcn/hutool/core/compress/Gzip;
    .locals 2

    .line 63
    :try_start_0
    iget-object v0, p0, Lcn/hutool/core/compress/Gzip;->target:Ljava/io/OutputStream;

    instance-of v1, v0, Ljava/util/zip/GZIPOutputStream;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/zip/GZIPOutputStream;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    iget-object v1, p0, Lcn/hutool/core/compress/Gzip;->target:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    :goto_0
    iput-object v0, p0, Lcn/hutool/core/compress/Gzip;->target:Ljava/io/OutputStream;

    .line 65
    iget-object v1, p0, Lcn/hutool/core/compress/Gzip;->source:Ljava/io/InputStream;

    invoke-static {v1, v0}, Lcn/hutool/core/io/IoUtil;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 66
    iget-object v0, p0, Lcn/hutool/core/compress/Gzip;->target:Ljava/io/OutputStream;

    check-cast v0, Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->finish()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 68
    new-instance v1, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {v1, v0}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public unGzip()Lcn/hutool/core/compress/Gzip;
    .locals 2

    .line 80
    :try_start_0
    iget-object v0, p0, Lcn/hutool/core/compress/Gzip;->source:Ljava/io/InputStream;

    instance-of v1, v0, Ljava/util/zip/GZIPInputStream;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/zip/GZIPInputStream;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    iget-object v1, p0, Lcn/hutool/core/compress/Gzip;->source:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_0
    iput-object v0, p0, Lcn/hutool/core/compress/Gzip;->source:Ljava/io/InputStream;

    .line 82
    iget-object v1, p0, Lcn/hutool/core/compress/Gzip;->target:Ljava/io/OutputStream;

    invoke-static {v0, v1}, Lcn/hutool/core/io/IoUtil;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 84
    new-instance v1, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {v1, v0}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

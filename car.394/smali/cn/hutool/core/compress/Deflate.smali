.class public Lcn/hutool/core/compress/Deflate;
.super Ljava/lang/Object;
.source "Deflate.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final nowrap:Z

.field private final source:Ljava/io/InputStream;

.field private target:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcn/hutool/core/compress/Deflate;->source:Ljava/io/InputStream;

    .line 49
    iput-object p2, p0, Lcn/hutool/core/compress/Deflate;->target:Ljava/io/OutputStream;

    .line 50
    iput-boolean p3, p0, Lcn/hutool/core/compress/Deflate;->nowrap:Z

    return-void
.end method

.method public static of(Ljava/io/InputStream;Ljava/io/OutputStream;Z)Lcn/hutool/core/compress/Deflate;
    .locals 1

    .line 37
    new-instance v0, Lcn/hutool/core/compress/Deflate;

    invoke-direct {v0, p0, p1, p2}, Lcn/hutool/core/compress/Deflate;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 99
    iget-object v0, p0, Lcn/hutool/core/compress/Deflate;->target:Ljava/io/OutputStream;

    invoke-static {v0}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    .line 100
    iget-object v0, p0, Lcn/hutool/core/compress/Deflate;->source:Ljava/io/InputStream;

    invoke-static {v0}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    return-void
.end method

.method public deflater(I)Lcn/hutool/core/compress/Deflate;
    .locals 4

    .line 69
    iget-object v0, p0, Lcn/hutool/core/compress/Deflate;->target:Ljava/io/OutputStream;

    instance-of v1, v0, Ljava/util/zip/DeflaterOutputStream;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/zip/DeflaterOutputStream;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/zip/DeflaterOutputStream;

    iget-object v1, p0, Lcn/hutool/core/compress/Deflate;->target:Ljava/io/OutputStream;

    new-instance v2, Ljava/util/zip/Deflater;

    iget-boolean v3, p0, Lcn/hutool/core/compress/Deflate;->nowrap:Z

    invoke-direct {v2, p1, v3}, Ljava/util/zip/Deflater;-><init>(IZ)V

    invoke-direct {v0, v1, v2}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V

    :goto_0
    iput-object v0, p0, Lcn/hutool/core/compress/Deflate;->target:Ljava/io/OutputStream;

    .line 71
    iget-object p1, p0, Lcn/hutool/core/compress/Deflate;->source:Ljava/io/InputStream;

    invoke-static {p1, v0}, Lcn/hutool/core/io/IoUtil;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 73
    :try_start_0
    iget-object p1, p0, Lcn/hutool/core/compress/Deflate;->target:Ljava/io/OutputStream;

    check-cast p1, Ljava/util/zip/DeflaterOutputStream;

    invoke-virtual {p1}, Ljava/util/zip/DeflaterOutputStream;->finish()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 75
    new-instance v0, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {v0, p1}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getTarget()Ljava/io/OutputStream;
    .locals 1

    .line 59
    iget-object v0, p0, Lcn/hutool/core/compress/Deflate;->target:Ljava/io/OutputStream;

    return-object v0
.end method

.method public inflater()Lcn/hutool/core/compress/Deflate;
    .locals 4

    .line 86
    iget-object v0, p0, Lcn/hutool/core/compress/Deflate;->target:Ljava/io/OutputStream;

    instance-of v1, v0, Ljava/util/zip/InflaterOutputStream;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/zip/InflaterOutputStream;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/zip/InflaterOutputStream;

    iget-object v1, p0, Lcn/hutool/core/compress/Deflate;->target:Ljava/io/OutputStream;

    new-instance v2, Ljava/util/zip/Inflater;

    iget-boolean v3, p0, Lcn/hutool/core/compress/Deflate;->nowrap:Z

    invoke-direct {v2, v3}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {v0, v1, v2}, Ljava/util/zip/InflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Inflater;)V

    :goto_0
    iput-object v0, p0, Lcn/hutool/core/compress/Deflate;->target:Ljava/io/OutputStream;

    .line 88
    iget-object v1, p0, Lcn/hutool/core/compress/Deflate;->source:Ljava/io/InputStream;

    invoke-static {v1, v0}, Lcn/hutool/core/io/IoUtil;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 90
    :try_start_0
    iget-object v0, p0, Lcn/hutool/core/compress/Deflate;->target:Ljava/io/OutputStream;

    check-cast v0, Ljava/util/zip/InflaterOutputStream;

    invoke-virtual {v0}, Ljava/util/zip/InflaterOutputStream;->finish()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 92
    new-instance v1, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {v1, v0}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

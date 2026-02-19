.class public interface abstract Lcn/hutool/http/body/RequestBody;
.super Ljava/lang/Object;
.source "RequestBody.java"


# virtual methods
.method public abstract write(Ljava/io/OutputStream;)V
.end method

.method public writeClose(Ljava/io/OutputStream;)V
    .locals 1

    .line 27
    :try_start_0
    invoke-interface {p0, p1}, Lcn/hutool/http/body/RequestBody;->write(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    invoke-static {p1}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {p1}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    .line 30
    throw v0
.end method

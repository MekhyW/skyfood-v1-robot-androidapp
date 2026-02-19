.class public interface abstract Lcn/hutool/crypto/digest/mac/MacEngine;
.super Ljava/lang/Object;
.source "MacEngine.java"


# virtual methods
.method public digest(Ljava/io/InputStream;I)[B
    .locals 4

    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    const/16 p2, 0x2000

    .line 61
    :cond_0
    new-array v0, p2, [B

    const/4 v1, 0x0

    .line 65
    :try_start_0
    invoke-virtual {p1, v0, v1, p2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    :goto_0
    const/4 v3, -0x1

    if-le v2, v3, :cond_1

    .line 68
    invoke-interface {p0, v0, v1, v2}, Lcn/hutool/crypto/digest/mac/MacEngine;->update([BII)V

    .line 69
    invoke-virtual {p1, v0, v1, p2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    goto :goto_0

    .line 71
    :cond_1
    invoke-interface {p0}, Lcn/hutool/crypto/digest/mac/MacEngine;->doFinal()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    invoke-interface {p0}, Lcn/hutool/crypto/digest/mac/MacEngine;->reset()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 73
    :try_start_1
    new-instance p2, Lcn/hutool/crypto/CryptoException;

    invoke-direct {p2, p1}, Lcn/hutool/crypto/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    :goto_1
    invoke-interface {p0}, Lcn/hutool/crypto/digest/mac/MacEngine;->reset()V

    .line 76
    throw p1
.end method

.method public abstract doFinal()[B
.end method

.method public abstract getAlgorithm()Ljava/lang/String;
.end method

.method public abstract getMacLength()I
.end method

.method public abstract reset()V
.end method

.method public update([B)V
    .locals 2

    const/4 v0, 0x0

    .line 23
    array-length v1, p1

    invoke-interface {p0, p1, v0, v1}, Lcn/hutool/crypto/digest/mac/MacEngine;->update([BII)V

    return-void
.end method

.method public abstract update([BII)V
.end method

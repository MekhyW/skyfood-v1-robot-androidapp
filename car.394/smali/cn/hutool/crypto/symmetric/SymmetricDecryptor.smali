.class public interface abstract Lcn/hutool/crypto/symmetric/SymmetricDecryptor;
.super Ljava/lang/Object;
.source "SymmetricDecryptor.java"


# virtual methods
.method public abstract decrypt(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V
.end method

.method public decrypt(Ljava/io/InputStream;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 103
    invoke-static {p1}, Lcn/hutool/core/io/IoUtil;->readBytes(Ljava/io/InputStream;)[B

    move-result-object p1

    invoke-interface {p0, p1}, Lcn/hutool/crypto/symmetric/SymmetricDecryptor;->decrypt([B)[B

    move-result-object p1

    return-object p1
.end method

.method public decrypt(Ljava/lang/String;)[B
    .locals 0

    .line 71
    invoke-static {p1}, Lcn/hutool/crypto/SecureUtil;->decode(Ljava/lang/String;)[B

    move-result-object p1

    invoke-interface {p0, p1}, Lcn/hutool/crypto/symmetric/SymmetricDecryptor;->decrypt([B)[B

    move-result-object p1

    return-object p1
.end method

.method public abstract decrypt([B)[B
.end method

.method public decryptStr(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1

    .line 124
    sget-object v0, Lcn/hutool/core/util/CharsetUtil;->CHARSET_UTF_8:Ljava/nio/charset/Charset;

    invoke-interface {p0, p1, v0}, Lcn/hutool/crypto/symmetric/SymmetricDecryptor;->decryptStr(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public decryptStr(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 0

    .line 114
    invoke-interface {p0, p1}, Lcn/hutool/crypto/symmetric/SymmetricDecryptor;->decrypt(Ljava/io/InputStream;)[B

    move-result-object p1

    invoke-static {p1, p2}, Lcn/hutool/core/util/StrUtil;->str([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public decryptStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 92
    sget-object v0, Lcn/hutool/core/util/CharsetUtil;->CHARSET_UTF_8:Ljava/nio/charset/Charset;

    invoke-interface {p0, p1, v0}, Lcn/hutool/crypto/symmetric/SymmetricDecryptor;->decryptStr(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public decryptStr(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 0

    .line 82
    invoke-interface {p0, p1}, Lcn/hutool/crypto/symmetric/SymmetricDecryptor;->decrypt(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1, p2}, Lcn/hutool/core/util/StrUtil;->str([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public decryptStr([B)Ljava/lang/String;
    .locals 1

    .line 61
    sget-object v0, Lcn/hutool/core/util/CharsetUtil;->CHARSET_UTF_8:Ljava/nio/charset/Charset;

    invoke-interface {p0, p1, v0}, Lcn/hutool/crypto/symmetric/SymmetricDecryptor;->decryptStr([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public decryptStr([BLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-interface {p0, p1}, Lcn/hutool/crypto/symmetric/SymmetricDecryptor;->decrypt([B)[B

    move-result-object p1

    invoke-static {p1, p2}, Lcn/hutool/core/util/StrUtil;->str([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

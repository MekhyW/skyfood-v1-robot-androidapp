.class public interface abstract Lcn/hutool/crypto/symmetric/SymmetricEncryptor;
.super Ljava/lang/Object;
.source "SymmetricEncryptor.java"


# virtual methods
.method public abstract encrypt(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V
.end method

.method public encrypt(Ljava/io/InputStream;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 170
    invoke-static {p1}, Lcn/hutool/core/io/IoUtil;->readBytes(Ljava/io/InputStream;)[B

    move-result-object p1

    invoke-interface {p0, p1}, Lcn/hutool/crypto/symmetric/SymmetricEncryptor;->encrypt([B)[B

    move-result-object p1

    return-object p1
.end method

.method public encrypt(Ljava/lang/String;)[B
    .locals 1

    .line 139
    sget-object v0, Lcn/hutool/core/util/CharsetUtil;->CHARSET_UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p1, v0}, Lcn/hutool/core/util/StrUtil;->bytes(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-interface {p0, p1}, Lcn/hutool/crypto/symmetric/SymmetricEncryptor;->encrypt([B)[B

    move-result-object p1

    return-object p1
.end method

.method public encrypt(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 0

    .line 73
    invoke-static {p1, p2}, Lcn/hutool/core/util/StrUtil;->bytes(Ljava/lang/CharSequence;Ljava/lang/String;)[B

    move-result-object p1

    invoke-interface {p0, p1}, Lcn/hutool/crypto/symmetric/SymmetricEncryptor;->encrypt([B)[B

    move-result-object p1

    return-object p1
.end method

.method public encrypt(Ljava/lang/String;Ljava/nio/charset/Charset;)[B
    .locals 0

    .line 84
    invoke-static {p1, p2}, Lcn/hutool/core/util/StrUtil;->bytes(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-interface {p0, p1}, Lcn/hutool/crypto/symmetric/SymmetricEncryptor;->encrypt([B)[B

    move-result-object p1

    return-object p1
.end method

.method public abstract encrypt([B)[B
.end method

.method public encryptBase64(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 0

    .line 190
    invoke-interface {p0, p1}, Lcn/hutool/crypto/symmetric/SymmetricEncryptor;->encrypt(Ljava/io/InputStream;)[B

    move-result-object p1

    invoke-static {p1}, Lcn/hutool/core/codec/Base64;->encode([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encryptBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 159
    invoke-interface {p0, p1}, Lcn/hutool/crypto/symmetric/SymmetricEncryptor;->encrypt(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcn/hutool/core/codec/Base64;->encode([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encryptBase64(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 117
    invoke-interface {p0, p1, p2}, Lcn/hutool/crypto/symmetric/SymmetricEncryptor;->encrypt(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcn/hutool/core/codec/Base64;->encode([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encryptBase64(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 0

    .line 129
    invoke-interface {p0, p1, p2}, Lcn/hutool/crypto/symmetric/SymmetricEncryptor;->encrypt(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {p1}, Lcn/hutool/core/codec/Base64;->encode([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encryptBase64([B)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-interface {p0, p1}, Lcn/hutool/crypto/symmetric/SymmetricEncryptor;->encrypt([B)[B

    move-result-object p1

    invoke-static {p1}, Lcn/hutool/core/codec/Base64;->encode([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encryptHex(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 0

    .line 180
    invoke-interface {p0, p1}, Lcn/hutool/crypto/symmetric/SymmetricEncryptor;->encrypt(Ljava/io/InputStream;)[B

    move-result-object p1

    invoke-static {p1}, Lcn/hutool/core/util/HexUtil;->encodeHexStr([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encryptHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 149
    invoke-interface {p0, p1}, Lcn/hutool/crypto/symmetric/SymmetricEncryptor;->encrypt(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcn/hutool/core/util/HexUtil;->encodeHexStr([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encryptHex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 95
    invoke-interface {p0, p1, p2}, Lcn/hutool/crypto/symmetric/SymmetricEncryptor;->encrypt(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcn/hutool/core/util/HexUtil;->encodeHexStr([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encryptHex(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 0

    .line 106
    invoke-interface {p0, p1, p2}, Lcn/hutool/crypto/symmetric/SymmetricEncryptor;->encrypt(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {p1}, Lcn/hutool/core/util/HexUtil;->encodeHexStr([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encryptHex([B)Ljava/lang/String;
    .locals 0

    .line 52
    invoke-interface {p0, p1}, Lcn/hutool/crypto/symmetric/SymmetricEncryptor;->encrypt([B)[B

    move-result-object p1

    invoke-static {p1}, Lcn/hutool/core/util/HexUtil;->encodeHexStr([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

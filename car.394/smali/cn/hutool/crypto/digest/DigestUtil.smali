.class public Lcn/hutool/crypto/digest/DigestUtil;
.super Ljava/lang/Object;
.source "DigestUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bcrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 476
    invoke-static {p0}, Lcn/hutool/crypto/digest/BCrypt;->hashpw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bcryptCheck(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 488
    invoke-static {p0, p1}, Lcn/hutool/crypto/digest/BCrypt;->checkpw(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static digester(Lcn/hutool/crypto/digest/DigestAlgorithm;)Lcn/hutool/crypto/digest/Digester;
    .locals 1

    .line 454
    new-instance v0, Lcn/hutool/crypto/digest/Digester;

    invoke-direct {v0, p0}, Lcn/hutool/crypto/digest/Digester;-><init>(Lcn/hutool/crypto/digest/DigestAlgorithm;)V

    return-object v0
.end method

.method public static digester(Ljava/lang/String;)Lcn/hutool/crypto/digest/Digester;
    .locals 1

    .line 465
    new-instance v0, Lcn/hutool/crypto/digest/Digester;

    invoke-direct {v0, p0}, Lcn/hutool/crypto/digest/Digester;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static hmac(Lcn/hutool/crypto/digest/HmacAlgorithm;Ljavax/crypto/SecretKey;)Lcn/hutool/crypto/digest/HMac;
    .locals 1

    .line 443
    new-instance v0, Lcn/hutool/crypto/digest/HMac;

    invoke-direct {v0, p0, p1}, Lcn/hutool/crypto/digest/HMac;-><init>(Lcn/hutool/crypto/digest/HmacAlgorithm;Ljava/security/Key;)V

    return-object v0
.end method

.method public static hmac(Lcn/hutool/crypto/digest/HmacAlgorithm;[B)Lcn/hutool/crypto/digest/HMac;
    .locals 1

    .line 431
    new-instance v0, Lcn/hutool/crypto/digest/HMac;

    invoke-direct {v0, p0, p1}, Lcn/hutool/crypto/digest/HMac;-><init>(Lcn/hutool/crypto/digest/HmacAlgorithm;[B)V

    return-object v0
.end method

.method public static md5(Ljava/io/File;)[B
    .locals 1

    .line 67
    new-instance v0, Lcn/hutool/crypto/digest/MD5;

    invoke-direct {v0}, Lcn/hutool/crypto/digest/MD5;-><init>()V

    invoke-virtual {v0, p0}, Lcn/hutool/crypto/digest/MD5;->digest(Ljava/io/File;)[B

    move-result-object p0

    return-object p0
.end method

.method public static md5(Ljava/io/InputStream;)[B
    .locals 1

    .line 57
    new-instance v0, Lcn/hutool/crypto/digest/MD5;

    invoke-direct {v0}, Lcn/hutool/crypto/digest/MD5;-><init>()V

    invoke-virtual {v0, p0}, Lcn/hutool/crypto/digest/MD5;->digest(Ljava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method public static md5(Ljava/lang/String;)[B
    .locals 1

    const-string v0, "UTF-8"

    .line 47
    invoke-static {p0, v0}, Lcn/hutool/crypto/digest/DigestUtil;->md5(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static md5(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1

    .line 37
    new-instance v0, Lcn/hutool/crypto/digest/MD5;

    invoke-direct {v0}, Lcn/hutool/crypto/digest/MD5;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcn/hutool/crypto/digest/MD5;->digest(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static md5([B)[B
    .locals 1

    .line 26
    new-instance v0, Lcn/hutool/crypto/digest/MD5;

    invoke-direct {v0}, Lcn/hutool/crypto/digest/MD5;-><init>()V

    invoke-virtual {v0, p0}, Lcn/hutool/crypto/digest/MD5;->digest([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static md5Hex(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    .line 130
    new-instance v0, Lcn/hutool/crypto/digest/MD5;

    invoke-direct {v0}, Lcn/hutool/crypto/digest/MD5;-><init>()V

    invoke-virtual {v0, p0}, Lcn/hutool/crypto/digest/MD5;->digestHex(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static md5Hex(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1

    .line 120
    new-instance v0, Lcn/hutool/crypto/digest/MD5;

    invoke-direct {v0}, Lcn/hutool/crypto/digest/MD5;-><init>()V

    invoke-virtual {v0, p0}, Lcn/hutool/crypto/digest/MD5;->digestHex(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static md5Hex(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "UTF-8"

    .line 110
    invoke-static {p0, v0}, Lcn/hutool/crypto/digest/DigestUtil;->md5Hex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static md5Hex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 88
    new-instance v0, Lcn/hutool/crypto/digest/MD5;

    invoke-direct {v0}, Lcn/hutool/crypto/digest/MD5;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcn/hutool/crypto/digest/MD5;->digestHex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static md5Hex(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    .line 100
    new-instance v0, Lcn/hutool/crypto/digest/MD5;

    invoke-direct {v0}, Lcn/hutool/crypto/digest/MD5;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcn/hutool/crypto/digest/MD5;->digestHex(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static md5Hex([B)Ljava/lang/String;
    .locals 1

    .line 77
    new-instance v0, Lcn/hutool/crypto/digest/MD5;

    invoke-direct {v0}, Lcn/hutool/crypto/digest/MD5;-><init>()V

    invoke-virtual {v0, p0}, Lcn/hutool/crypto/digest/MD5;->digestHex([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static md5Hex16(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    .line 188
    new-instance v0, Lcn/hutool/crypto/digest/MD5;

    invoke-direct {v0}, Lcn/hutool/crypto/digest/MD5;-><init>()V

    invoke-virtual {v0, p0}, Lcn/hutool/crypto/digest/MD5;->digestHex16(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static md5Hex16(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1

    .line 177
    new-instance v0, Lcn/hutool/crypto/digest/MD5;

    invoke-direct {v0}, Lcn/hutool/crypto/digest/MD5;-><init>()V

    invoke-virtual {v0, p0}, Lcn/hutool/crypto/digest/MD5;->digestHex16(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static md5Hex16(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 166
    sget-object v0, Lcn/hutool/core/util/CharsetUtil;->CHARSET_UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lcn/hutool/crypto/digest/DigestUtil;->md5Hex16(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static md5Hex16(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    .line 155
    new-instance v0, Lcn/hutool/crypto/digest/MD5;

    invoke-direct {v0}, Lcn/hutool/crypto/digest/MD5;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcn/hutool/crypto/digest/MD5;->digestHex16(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static md5Hex16([B)Ljava/lang/String;
    .locals 1

    .line 143
    new-instance v0, Lcn/hutool/crypto/digest/MD5;

    invoke-direct {v0}, Lcn/hutool/crypto/digest/MD5;-><init>()V

    invoke-virtual {v0, p0}, Lcn/hutool/crypto/digest/MD5;->digestHex16([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static md5HexTo16(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x8

    const/16 v1, 0x18

    .line 199
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sha1(Ljava/io/File;)[B
    .locals 2

    .line 252
    new-instance v0, Lcn/hutool/crypto/digest/Digester;

    sget-object v1, Lcn/hutool/crypto/digest/DigestAlgorithm;->SHA1:Lcn/hutool/crypto/digest/DigestAlgorithm;

    invoke-direct {v0, v1}, Lcn/hutool/crypto/digest/Digester;-><init>(Lcn/hutool/crypto/digest/DigestAlgorithm;)V

    invoke-virtual {v0, p0}, Lcn/hutool/crypto/digest/Digester;->digest(Ljava/io/File;)[B

    move-result-object p0

    return-object p0
.end method

.method public static sha1(Ljava/io/InputStream;)[B
    .locals 2

    .line 242
    new-instance v0, Lcn/hutool/crypto/digest/Digester;

    sget-object v1, Lcn/hutool/crypto/digest/DigestAlgorithm;->SHA1:Lcn/hutool/crypto/digest/DigestAlgorithm;

    invoke-direct {v0, v1}, Lcn/hutool/crypto/digest/Digester;-><init>(Lcn/hutool/crypto/digest/DigestAlgorithm;)V

    invoke-virtual {v0, p0}, Lcn/hutool/crypto/digest/Digester;->digest(Ljava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method public static sha1(Ljava/lang/String;)[B
    .locals 1

    const-string v0, "UTF-8"

    .line 232
    invoke-static {p0, v0}, Lcn/hutool/crypto/digest/DigestUtil;->sha1(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static sha1(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2

    .line 222
    new-instance v0, Lcn/hutool/crypto/digest/Digester;

    sget-object v1, Lcn/hutool/crypto/digest/DigestAlgorithm;->SHA1:Lcn/hutool/crypto/digest/DigestAlgorithm;

    invoke-direct {v0, v1}, Lcn/hutool/crypto/digest/Digester;-><init>(Lcn/hutool/crypto/digest/DigestAlgorithm;)V

    invoke-virtual {v0, p0, p1}, Lcn/hutool/crypto/digest/Digester;->digest(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static sha1([B)[B
    .locals 2

    .line 211
    new-instance v0, Lcn/hutool/crypto/digest/Digester;

    sget-object v1, Lcn/hutool/crypto/digest/DigestAlgorithm;->SHA1:Lcn/hutool/crypto/digest/DigestAlgorithm;

    invoke-direct {v0, v1}, Lcn/hutool/crypto/digest/Digester;-><init>(Lcn/hutool/crypto/digest/DigestAlgorithm;)V

    invoke-virtual {v0, p0}, Lcn/hutool/crypto/digest/Digester;->digest([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static sha1Hex(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    .line 303
    new-instance v0, Lcn/hutool/crypto/digest/Digester;

    sget-object v1, Lcn/hutool/crypto/digest/DigestAlgorithm;->SHA1:Lcn/hutool/crypto/digest/DigestAlgorithm;

    invoke-direct {v0, v1}, Lcn/hutool/crypto/digest/Digester;-><init>(Lcn/hutool/crypto/digest/DigestAlgorithm;)V

    invoke-virtual {v0, p0}, Lcn/hutool/crypto/digest/Digester;->digestHex(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sha1Hex(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2

    .line 293
    new-instance v0, Lcn/hutool/crypto/digest/Digester;

    sget-object v1, Lcn/hutool/crypto/digest/DigestAlgorithm;->SHA1:Lcn/hutool/crypto/digest/DigestAlgorithm;

    invoke-direct {v0, v1}, Lcn/hutool/crypto/digest/Digester;-><init>(Lcn/hutool/crypto/digest/DigestAlgorithm;)V

    invoke-virtual {v0, p0}, Lcn/hutool/crypto/digest/Digester;->digestHex(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sha1Hex(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "UTF-8"

    .line 283
    invoke-static {p0, v0}, Lcn/hutool/crypto/digest/DigestUtil;->sha1Hex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sha1Hex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 273
    new-instance v0, Lcn/hutool/crypto/digest/Digester;

    sget-object v1, Lcn/hutool/crypto/digest/DigestAlgorithm;->SHA1:Lcn/hutool/crypto/digest/DigestAlgorithm;

    invoke-direct {v0, v1}, Lcn/hutool/crypto/digest/Digester;-><init>(Lcn/hutool/crypto/digest/DigestAlgorithm;)V

    invoke-virtual {v0, p0, p1}, Lcn/hutool/crypto/digest/Digester;->digestHex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sha1Hex([B)Ljava/lang/String;
    .locals 2

    .line 262
    new-instance v0, Lcn/hutool/crypto/digest/Digester;

    sget-object v1, Lcn/hutool/crypto/digest/DigestAlgorithm;->SHA1:Lcn/hutool/crypto/digest/DigestAlgorithm;

    invoke-direct {v0, v1}, Lcn/hutool/crypto/digest/Digester;-><init>(Lcn/hutool/crypto/digest/DigestAlgorithm;)V

    invoke-virtual {v0, p0}, Lcn/hutool/crypto/digest/Digester;->digestHex([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sha256(Ljava/io/File;)[B
    .locals 2

    .line 361
    new-instance v0, Lcn/hutool/crypto/digest/Digester;

    sget-object v1, Lcn/hutool/crypto/digest/DigestAlgorithm;->SHA256:Lcn/hutool/crypto/digest/DigestAlgorithm;

    invoke-direct {v0, v1}, Lcn/hutool/crypto/digest/Digester;-><init>(Lcn/hutool/crypto/digest/DigestAlgorithm;)V

    invoke-virtual {v0, p0}, Lcn/hutool/crypto/digest/Digester;->digest(Ljava/io/File;)[B

    move-result-object p0

    return-object p0
.end method

.method public static sha256(Ljava/io/InputStream;)[B
    .locals 2

    .line 350
    new-instance v0, Lcn/hutool/crypto/digest/Digester;

    sget-object v1, Lcn/hutool/crypto/digest/DigestAlgorithm;->SHA256:Lcn/hutool/crypto/digest/DigestAlgorithm;

    invoke-direct {v0, v1}, Lcn/hutool/crypto/digest/Digester;-><init>(Lcn/hutool/crypto/digest/DigestAlgorithm;)V

    invoke-virtual {v0, p0}, Lcn/hutool/crypto/digest/Digester;->digest(Ljava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method public static sha256(Ljava/lang/String;)[B
    .locals 1

    const-string v0, "UTF-8"

    .line 339
    invoke-static {p0, v0}, Lcn/hutool/crypto/digest/DigestUtil;->sha256(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static sha256(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2

    .line 328
    new-instance v0, Lcn/hutool/crypto/digest/Digester;

    sget-object v1, Lcn/hutool/crypto/digest/DigestAlgorithm;->SHA256:Lcn/hutool/crypto/digest/DigestAlgorithm;

    invoke-direct {v0, v1}, Lcn/hutool/crypto/digest/Digester;-><init>(Lcn/hutool/crypto/digest/DigestAlgorithm;)V

    invoke-virtual {v0, p0, p1}, Lcn/hutool/crypto/digest/Digester;->digest(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static sha256([B)[B
    .locals 2

    .line 316
    new-instance v0, Lcn/hutool/crypto/digest/Digester;

    sget-object v1, Lcn/hutool/crypto/digest/DigestAlgorithm;->SHA256:Lcn/hutool/crypto/digest/DigestAlgorithm;

    invoke-direct {v0, v1}, Lcn/hutool/crypto/digest/Digester;-><init>(Lcn/hutool/crypto/digest/DigestAlgorithm;)V

    invoke-virtual {v0, p0}, Lcn/hutool/crypto/digest/Digester;->digest([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static sha256Hex(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    .line 417
    new-instance v0, Lcn/hutool/crypto/digest/Digester;

    sget-object v1, Lcn/hutool/crypto/digest/DigestAlgorithm;->SHA256:Lcn/hutool/crypto/digest/DigestAlgorithm;

    invoke-direct {v0, v1}, Lcn/hutool/crypto/digest/Digester;-><init>(Lcn/hutool/crypto/digest/DigestAlgorithm;)V

    invoke-virtual {v0, p0}, Lcn/hutool/crypto/digest/Digester;->digestHex(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sha256Hex(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2

    .line 406
    new-instance v0, Lcn/hutool/crypto/digest/Digester;

    sget-object v1, Lcn/hutool/crypto/digest/DigestAlgorithm;->SHA256:Lcn/hutool/crypto/digest/DigestAlgorithm;

    invoke-direct {v0, v1}, Lcn/hutool/crypto/digest/Digester;-><init>(Lcn/hutool/crypto/digest/DigestAlgorithm;)V

    invoke-virtual {v0, p0}, Lcn/hutool/crypto/digest/Digester;->digestHex(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sha256Hex(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "UTF-8"

    .line 395
    invoke-static {p0, v0}, Lcn/hutool/crypto/digest/DigestUtil;->sha256Hex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sha256Hex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 384
    new-instance v0, Lcn/hutool/crypto/digest/Digester;

    sget-object v1, Lcn/hutool/crypto/digest/DigestAlgorithm;->SHA256:Lcn/hutool/crypto/digest/DigestAlgorithm;

    invoke-direct {v0, v1}, Lcn/hutool/crypto/digest/Digester;-><init>(Lcn/hutool/crypto/digest/DigestAlgorithm;)V

    invoke-virtual {v0, p0, p1}, Lcn/hutool/crypto/digest/Digester;->digestHex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sha256Hex([B)Ljava/lang/String;
    .locals 2

    .line 372
    new-instance v0, Lcn/hutool/crypto/digest/Digester;

    sget-object v1, Lcn/hutool/crypto/digest/DigestAlgorithm;->SHA256:Lcn/hutool/crypto/digest/DigestAlgorithm;

    invoke-direct {v0, v1}, Lcn/hutool/crypto/digest/Digester;-><init>(Lcn/hutool/crypto/digest/DigestAlgorithm;)V

    invoke-virtual {v0, p0}, Lcn/hutool/crypto/digest/Digester;->digestHex([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sha512(Ljava/io/File;)[B
    .locals 2

    .line 542
    new-instance v0, Lcn/hutool/crypto/digest/Digester;

    sget-object v1, Lcn/hutool/crypto/digest/DigestAlgorithm;->SHA512:Lcn/hutool/crypto/digest/DigestAlgorithm;

    invoke-direct {v0, v1}, Lcn/hutool/crypto/digest/Digester;-><init>(Lcn/hutool/crypto/digest/DigestAlgorithm;)V

    invoke-virtual {v0, p0}, Lcn/hutool/crypto/digest/Digester;->digest(Ljava/io/File;)[B

    move-result-object p0

    return-object p0
.end method

.method public static sha512(Ljava/io/InputStream;)[B
    .locals 2

    .line 532
    new-instance v0, Lcn/hutool/crypto/digest/Digester;

    sget-object v1, Lcn/hutool/crypto/digest/DigestAlgorithm;->SHA512:Lcn/hutool/crypto/digest/DigestAlgorithm;

    invoke-direct {v0, v1}, Lcn/hutool/crypto/digest/Digester;-><init>(Lcn/hutool/crypto/digest/DigestAlgorithm;)V

    invoke-virtual {v0, p0}, Lcn/hutool/crypto/digest/Digester;->digest(Ljava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method public static sha512(Ljava/lang/String;)[B
    .locals 1

    const-string v0, "UTF-8"

    .line 522
    invoke-static {p0, v0}, Lcn/hutool/crypto/digest/DigestUtil;->sha512(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static sha512(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2

    .line 512
    new-instance v0, Lcn/hutool/crypto/digest/Digester;

    sget-object v1, Lcn/hutool/crypto/digest/DigestAlgorithm;->SHA512:Lcn/hutool/crypto/digest/DigestAlgorithm;

    invoke-direct {v0, v1}, Lcn/hutool/crypto/digest/Digester;-><init>(Lcn/hutool/crypto/digest/DigestAlgorithm;)V

    invoke-virtual {v0, p0, p1}, Lcn/hutool/crypto/digest/Digester;->digest(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static sha512([B)[B
    .locals 2

    .line 500
    new-instance v0, Lcn/hutool/crypto/digest/Digester;

    sget-object v1, Lcn/hutool/crypto/digest/DigestAlgorithm;->SHA512:Lcn/hutool/crypto/digest/DigestAlgorithm;

    invoke-direct {v0, v1}, Lcn/hutool/crypto/digest/Digester;-><init>(Lcn/hutool/crypto/digest/DigestAlgorithm;)V

    invoke-virtual {v0, p0}, Lcn/hutool/crypto/digest/Digester;->digest([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static sha512Hex(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    .line 593
    new-instance v0, Lcn/hutool/crypto/digest/Digester;

    sget-object v1, Lcn/hutool/crypto/digest/DigestAlgorithm;->SHA512:Lcn/hutool/crypto/digest/DigestAlgorithm;

    invoke-direct {v0, v1}, Lcn/hutool/crypto/digest/Digester;-><init>(Lcn/hutool/crypto/digest/DigestAlgorithm;)V

    invoke-virtual {v0, p0}, Lcn/hutool/crypto/digest/Digester;->digestHex(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sha512Hex(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2

    .line 583
    new-instance v0, Lcn/hutool/crypto/digest/Digester;

    sget-object v1, Lcn/hutool/crypto/digest/DigestAlgorithm;->SHA512:Lcn/hutool/crypto/digest/DigestAlgorithm;

    invoke-direct {v0, v1}, Lcn/hutool/crypto/digest/Digester;-><init>(Lcn/hutool/crypto/digest/DigestAlgorithm;)V

    invoke-virtual {v0, p0}, Lcn/hutool/crypto/digest/Digester;->digestHex(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sha512Hex(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "UTF-8"

    .line 573
    invoke-static {p0, v0}, Lcn/hutool/crypto/digest/DigestUtil;->sha512Hex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sha512Hex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 563
    new-instance v0, Lcn/hutool/crypto/digest/Digester;

    sget-object v1, Lcn/hutool/crypto/digest/DigestAlgorithm;->SHA512:Lcn/hutool/crypto/digest/DigestAlgorithm;

    invoke-direct {v0, v1}, Lcn/hutool/crypto/digest/Digester;-><init>(Lcn/hutool/crypto/digest/DigestAlgorithm;)V

    invoke-virtual {v0, p0, p1}, Lcn/hutool/crypto/digest/Digester;->digestHex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sha512Hex([B)Ljava/lang/String;
    .locals 2

    .line 552
    new-instance v0, Lcn/hutool/crypto/digest/Digester;

    sget-object v1, Lcn/hutool/crypto/digest/DigestAlgorithm;->SHA512:Lcn/hutool/crypto/digest/DigestAlgorithm;

    invoke-direct {v0, v1}, Lcn/hutool/crypto/digest/Digester;-><init>(Lcn/hutool/crypto/digest/DigestAlgorithm;)V

    invoke-virtual {v0, p0}, Lcn/hutool/crypto/digest/Digester;->digestHex([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.class public Lcn/hutool/crypto/digest/MD5;
.super Lcn/hutool/crypto/digest/Digester;
.source "MD5.java"


# static fields
.field private static final FACTORY:Lcn/hutool/crypto/digest/DigesterFactory;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    sget-object v0, Lcn/hutool/crypto/digest/DigestAlgorithm;->MD5:Lcn/hutool/crypto/digest/DigestAlgorithm;

    invoke-virtual {v0}, Lcn/hutool/crypto/digest/DigestAlgorithm;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/crypto/digest/DigesterFactory;->ofJdk(Ljava/lang/String;)Lcn/hutool/crypto/digest/DigesterFactory;

    move-result-object v0

    sput-object v0, Lcn/hutool/crypto/digest/MD5;->FACTORY:Lcn/hutool/crypto/digest/DigesterFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    sget-object v0, Lcn/hutool/crypto/digest/MD5;->FACTORY:Lcn/hutool/crypto/digest/DigesterFactory;

    invoke-virtual {v0}, Lcn/hutool/crypto/digest/DigesterFactory;->createMessageDigester()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/hutool/crypto/digest/Digester;-><init>(Ljava/security/MessageDigest;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 43
    invoke-direct {p0, p1, v0, v1}, Lcn/hutool/crypto/digest/MD5;-><init>([BII)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, v0, p2}, Lcn/hutool/crypto/digest/MD5;-><init>([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcn/hutool/crypto/digest/MD5;-><init>()V

    .line 65
    iput-object p1, p0, Lcn/hutool/crypto/digest/MD5;->salt:[B

    .line 66
    iput p2, p0, Lcn/hutool/crypto/digest/MD5;->saltPosition:I

    .line 67
    iput p3, p0, Lcn/hutool/crypto/digest/MD5;->digestCount:I

    return-void
.end method

.method public static create()Lcn/hutool/crypto/digest/MD5;
    .locals 1

    .line 27
    new-instance v0, Lcn/hutool/crypto/digest/MD5;

    invoke-direct {v0}, Lcn/hutool/crypto/digest/MD5;-><init>()V

    return-object v0
.end method


# virtual methods
.method public digestHex16(Ljava/io/File;)Ljava/lang/String;
    .locals 0

    .line 111
    invoke-virtual {p0, p1}, Lcn/hutool/crypto/digest/MD5;->digestHex(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/hutool/crypto/digest/DigestUtil;->md5HexTo16(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public digestHex16(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 0

    .line 101
    invoke-virtual {p0, p1}, Lcn/hutool/crypto/digest/MD5;->digestHex(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/hutool/crypto/digest/DigestUtil;->md5HexTo16(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public digestHex16(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 90
    invoke-virtual {p0, p1}, Lcn/hutool/crypto/digest/MD5;->digestHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/hutool/crypto/digest/DigestUtil;->md5HexTo16(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public digestHex16(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 0

    .line 79
    invoke-virtual {p0, p1, p2}, Lcn/hutool/crypto/digest/MD5;->digestHex(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/hutool/crypto/digest/DigestUtil;->md5HexTo16(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public digestHex16([B)Ljava/lang/String;
    .locals 0

    .line 122
    invoke-virtual {p0, p1}, Lcn/hutool/crypto/digest/MD5;->digestHex([B)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/hutool/crypto/digest/DigestUtil;->md5HexTo16(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

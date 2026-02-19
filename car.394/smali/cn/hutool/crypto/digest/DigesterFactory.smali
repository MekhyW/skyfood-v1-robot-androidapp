.class public Lcn/hutool/crypto/digest/DigesterFactory;
.super Ljava/lang/Object;
.source "DigesterFactory.java"


# instance fields
.field private final cloneSupport:Z

.field private final prototype:Ljava/security/MessageDigest;


# direct methods
.method private constructor <init>(Ljava/security/MessageDigest;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcn/hutool/crypto/digest/DigesterFactory;->prototype:Ljava/security/MessageDigest;

    .line 68
    invoke-static {p1}, Lcn/hutool/crypto/digest/DigesterFactory;->checkCloneSupport(Ljava/security/MessageDigest;)Z

    move-result p1

    iput-boolean p1, p0, Lcn/hutool/crypto/digest/DigesterFactory;->cloneSupport:Z

    return-void
.end method

.method private static checkCloneSupport(Ljava/security/MessageDigest;)Z
    .locals 0

    .line 104
    :try_start_0
    invoke-virtual {p0}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static of(Ljava/lang/String;)Lcn/hutool/crypto/digest/DigesterFactory;
    .locals 0

    .line 45
    invoke-static {p0}, Lcn/hutool/crypto/SecureUtil;->createMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/crypto/digest/DigesterFactory;->of(Ljava/security/MessageDigest;)Lcn/hutool/crypto/digest/DigesterFactory;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/security/MessageDigest;)Lcn/hutool/crypto/digest/DigesterFactory;
    .locals 1

    .line 55
    new-instance v0, Lcn/hutool/crypto/digest/DigesterFactory;

    invoke-direct {v0, p0}, Lcn/hutool/crypto/digest/DigesterFactory;-><init>(Ljava/security/MessageDigest;)V

    return-object v0
.end method

.method public static ofJdk(Ljava/lang/String;)Lcn/hutool/crypto/digest/DigesterFactory;
    .locals 0

    .line 35
    invoke-static {p0}, Lcn/hutool/crypto/SecureUtil;->createJdkMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/crypto/digest/DigesterFactory;->of(Ljava/security/MessageDigest;)Lcn/hutool/crypto/digest/DigesterFactory;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createDigester()Lcn/hutool/crypto/digest/Digester;
    .locals 2

    .line 77
    new-instance v0, Lcn/hutool/crypto/digest/Digester;

    invoke-virtual {p0}, Lcn/hutool/crypto/digest/DigesterFactory;->createMessageDigester()Ljava/security/MessageDigest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/hutool/crypto/digest/Digester;-><init>(Ljava/security/MessageDigest;)V

    return-object v0
.end method

.method public createMessageDigester()Ljava/security/MessageDigest;
    .locals 1

    .line 86
    iget-boolean v0, p0, Lcn/hutool/crypto/digest/DigesterFactory;->cloneSupport:Z

    if-eqz v0, :cond_0

    .line 88
    :try_start_0
    iget-object v0, p0, Lcn/hutool/crypto/digest/DigesterFactory;->prototype:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 93
    :catch_0
    :cond_0
    iget-object v0, p0, Lcn/hutool/crypto/digest/DigesterFactory;->prototype:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/crypto/SecureUtil;->createJdkMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

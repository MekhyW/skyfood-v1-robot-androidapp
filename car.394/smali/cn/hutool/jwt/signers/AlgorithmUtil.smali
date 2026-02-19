.class public Lcn/hutool/jwt/signers/AlgorithmUtil;
.super Ljava/lang/Object;
.source "AlgorithmUtil.java"


# static fields
.field private static final map:Lcn/hutool/core/map/BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/hutool/core/map/BiMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 21
    new-instance v0, Lcn/hutool/core/map/BiMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v0, v1}, Lcn/hutool/core/map/BiMap;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcn/hutool/jwt/signers/AlgorithmUtil;->map:Lcn/hutool/core/map/BiMap;

    .line 22
    sget-object v1, Lcn/hutool/crypto/digest/HmacAlgorithm;->HmacSHA256:Lcn/hutool/crypto/digest/HmacAlgorithm;

    invoke-virtual {v1}, Lcn/hutool/crypto/digest/HmacAlgorithm;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HS256"

    invoke-virtual {v0, v2, v1}, Lcn/hutool/core/map/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v1, Lcn/hutool/crypto/digest/HmacAlgorithm;->HmacSHA384:Lcn/hutool/crypto/digest/HmacAlgorithm;

    invoke-virtual {v1}, Lcn/hutool/crypto/digest/HmacAlgorithm;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HS384"

    invoke-virtual {v0, v2, v1}, Lcn/hutool/core/map/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v1, Lcn/hutool/crypto/digest/HmacAlgorithm;->HmacSHA512:Lcn/hutool/crypto/digest/HmacAlgorithm;

    invoke-virtual {v1}, Lcn/hutool/crypto/digest/HmacAlgorithm;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HS512"

    invoke-virtual {v0, v2, v1}, Lcn/hutool/core/map/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v1, Lcn/hutool/crypto/digest/HmacAlgorithm;->HmacMD5:Lcn/hutool/crypto/digest/HmacAlgorithm;

    invoke-virtual {v1}, Lcn/hutool/crypto/digest/HmacAlgorithm;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HMD5"

    invoke-virtual {v0, v2, v1}, Lcn/hutool/core/map/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v1, Lcn/hutool/crypto/digest/HmacAlgorithm;->HmacSHA1:Lcn/hutool/crypto/digest/HmacAlgorithm;

    invoke-virtual {v1}, Lcn/hutool/crypto/digest/HmacAlgorithm;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HSHA1"

    invoke-virtual {v0, v2, v1}, Lcn/hutool/core/map/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v1, Lcn/hutool/crypto/digest/HmacAlgorithm;->SM4CMAC:Lcn/hutool/crypto/digest/HmacAlgorithm;

    invoke-virtual {v1}, Lcn/hutool/crypto/digest/HmacAlgorithm;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SM4CMAC"

    invoke-virtual {v0, v2, v1}, Lcn/hutool/core/map/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v1, Lcn/hutool/crypto/asymmetric/SignAlgorithm;->SHA256withRSA:Lcn/hutool/crypto/asymmetric/SignAlgorithm;

    invoke-virtual {v1}, Lcn/hutool/crypto/asymmetric/SignAlgorithm;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RS256"

    invoke-virtual {v0, v2, v1}, Lcn/hutool/core/map/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v1, Lcn/hutool/crypto/asymmetric/SignAlgorithm;->SHA384withRSA:Lcn/hutool/crypto/asymmetric/SignAlgorithm;

    invoke-virtual {v1}, Lcn/hutool/crypto/asymmetric/SignAlgorithm;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RS384"

    invoke-virtual {v0, v2, v1}, Lcn/hutool/core/map/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v1, Lcn/hutool/crypto/asymmetric/SignAlgorithm;->SHA512withRSA:Lcn/hutool/crypto/asymmetric/SignAlgorithm;

    invoke-virtual {v1}, Lcn/hutool/crypto/asymmetric/SignAlgorithm;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RS512"

    invoke-virtual {v0, v2, v1}, Lcn/hutool/core/map/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v1, Lcn/hutool/crypto/asymmetric/SignAlgorithm;->SHA256withECDSA:Lcn/hutool/crypto/asymmetric/SignAlgorithm;

    invoke-virtual {v1}, Lcn/hutool/crypto/asymmetric/SignAlgorithm;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ES256"

    invoke-virtual {v0, v2, v1}, Lcn/hutool/core/map/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v1, Lcn/hutool/crypto/asymmetric/SignAlgorithm;->SHA384withECDSA:Lcn/hutool/crypto/asymmetric/SignAlgorithm;

    invoke-virtual {v1}, Lcn/hutool/crypto/asymmetric/SignAlgorithm;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ES384"

    invoke-virtual {v0, v2, v1}, Lcn/hutool/core/map/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v1, Lcn/hutool/crypto/asymmetric/SignAlgorithm;->SHA512withECDSA:Lcn/hutool/crypto/asymmetric/SignAlgorithm;

    invoke-virtual {v1}, Lcn/hutool/crypto/asymmetric/SignAlgorithm;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ES512"

    invoke-virtual {v0, v2, v1}, Lcn/hutool/core/map/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v1, Lcn/hutool/crypto/asymmetric/SignAlgorithm;->SHA256withRSA_PSS:Lcn/hutool/crypto/asymmetric/SignAlgorithm;

    invoke-virtual {v1}, Lcn/hutool/crypto/asymmetric/SignAlgorithm;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PS256"

    invoke-virtual {v0, v2, v1}, Lcn/hutool/core/map/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v1, Lcn/hutool/crypto/asymmetric/SignAlgorithm;->SHA384withRSA_PSS:Lcn/hutool/crypto/asymmetric/SignAlgorithm;

    invoke-virtual {v1}, Lcn/hutool/crypto/asymmetric/SignAlgorithm;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PS384"

    invoke-virtual {v0, v2, v1}, Lcn/hutool/core/map/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v1, Lcn/hutool/crypto/asymmetric/SignAlgorithm;->SHA512withRSA_PSS:Lcn/hutool/crypto/asymmetric/SignAlgorithm;

    invoke-virtual {v1}, Lcn/hutool/crypto/asymmetric/SignAlgorithm;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PS512"

    invoke-virtual {v0, v2, v1}, Lcn/hutool/core/map/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v1, Lcn/hutool/crypto/asymmetric/SignAlgorithm;->MD2withRSA:Lcn/hutool/crypto/asymmetric/SignAlgorithm;

    invoke-virtual {v1}, Lcn/hutool/crypto/asymmetric/SignAlgorithm;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RMD2"

    invoke-virtual {v0, v2, v1}, Lcn/hutool/core/map/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v1, Lcn/hutool/crypto/asymmetric/SignAlgorithm;->MD5withRSA:Lcn/hutool/crypto/asymmetric/SignAlgorithm;

    invoke-virtual {v1}, Lcn/hutool/crypto/asymmetric/SignAlgorithm;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RMD5"

    invoke-virtual {v0, v2, v1}, Lcn/hutool/core/map/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v1, Lcn/hutool/crypto/asymmetric/SignAlgorithm;->SHA1withRSA:Lcn/hutool/crypto/asymmetric/SignAlgorithm;

    invoke-virtual {v1}, Lcn/hutool/crypto/asymmetric/SignAlgorithm;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RSHA1"

    invoke-virtual {v0, v2, v1}, Lcn/hutool/core/map/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v1, Lcn/hutool/crypto/asymmetric/SignAlgorithm;->NONEwithDSA:Lcn/hutool/crypto/asymmetric/SignAlgorithm;

    invoke-virtual {v1}, Lcn/hutool/crypto/asymmetric/SignAlgorithm;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DNONE"

    invoke-virtual {v0, v2, v1}, Lcn/hutool/core/map/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v1, Lcn/hutool/crypto/asymmetric/SignAlgorithm;->SHA1withDSA:Lcn/hutool/crypto/asymmetric/SignAlgorithm;

    invoke-virtual {v1}, Lcn/hutool/crypto/asymmetric/SignAlgorithm;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DSHA1"

    invoke-virtual {v0, v2, v1}, Lcn/hutool/core/map/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v1, Lcn/hutool/crypto/asymmetric/SignAlgorithm;->NONEwithECDSA:Lcn/hutool/crypto/asymmetric/SignAlgorithm;

    invoke-virtual {v1}, Lcn/hutool/crypto/asymmetric/SignAlgorithm;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ENONE"

    invoke-virtual {v0, v2, v1}, Lcn/hutool/core/map/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v1, Lcn/hutool/crypto/asymmetric/SignAlgorithm;->SHA1withECDSA:Lcn/hutool/crypto/asymmetric/SignAlgorithm;

    invoke-virtual {v1}, Lcn/hutool/crypto/asymmetric/SignAlgorithm;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ESHA1"

    invoke-virtual {v0, v2, v1}, Lcn/hutool/core/map/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAlgorithm(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 58
    invoke-static {p0}, Lcn/hutool/jwt/signers/AlgorithmUtil;->getAlgorithmById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcn/hutool/core/util/ObjectUtil;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static getAlgorithmById(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 77
    sget-object v0, Lcn/hutool/jwt/signers/AlgorithmUtil;->map:Lcn/hutool/core/map/BiMap;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/hutool/core/map/BiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 67
    invoke-static {p0}, Lcn/hutool/jwt/signers/AlgorithmUtil;->getIdByAlgorithm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcn/hutool/core/util/ObjectUtil;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static getIdByAlgorithm(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 87
    sget-object v0, Lcn/hutool/jwt/signers/AlgorithmUtil;->map:Lcn/hutool/core/map/BiMap;

    invoke-virtual {v0, p0}, Lcn/hutool/core/map/BiMap;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.class public Lcn/hutool/jwt/signers/NoneJWTSigner;
.super Ljava/lang/Object;
.source "NoneJWTSigner.java"

# interfaces
.implements Lcn/hutool/jwt/signers/JWTSigner;


# static fields
.field public static final ID_NONE:Ljava/lang/String; = "none"

.field public static NONE:Lcn/hutool/jwt/signers/NoneJWTSigner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcn/hutool/jwt/signers/NoneJWTSigner;

    invoke-direct {v0}, Lcn/hutool/jwt/signers/NoneJWTSigner;-><init>()V

    sput-object v0, Lcn/hutool/jwt/signers/NoneJWTSigner;->NONE:Lcn/hutool/jwt/signers/NoneJWTSigner;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "none"

    return-object v0
.end method

.method public sign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p1, ""

    return-object p1
.end method

.method public verify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 24
    invoke-static {p3}, Lcn/hutool/core/util/StrUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

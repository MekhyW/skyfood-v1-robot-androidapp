.class public final enum Lcn/hutool/crypto/asymmetric/AsymmetricAlgorithm;
.super Ljava/lang/Enum;
.source "AsymmetricAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/hutool/crypto/asymmetric/AsymmetricAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/hutool/crypto/asymmetric/AsymmetricAlgorithm;

.field public static final enum RSA:Lcn/hutool/crypto/asymmetric/AsymmetricAlgorithm;

.field public static final enum RSA_ECB:Lcn/hutool/crypto/asymmetric/AsymmetricAlgorithm;

.field public static final enum RSA_ECB_PKCS1:Lcn/hutool/crypto/asymmetric/AsymmetricAlgorithm;

.field public static final enum RSA_None:Lcn/hutool/crypto/asymmetric/AsymmetricAlgorithm;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 12
    new-instance v0, Lcn/hutool/crypto/asymmetric/AsymmetricAlgorithm;

    const-string v1, "RSA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcn/hutool/crypto/asymmetric/AsymmetricAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcn/hutool/crypto/asymmetric/AsymmetricAlgorithm;->RSA:Lcn/hutool/crypto/asymmetric/AsymmetricAlgorithm;

    .line 14
    new-instance v1, Lcn/hutool/crypto/asymmetric/AsymmetricAlgorithm;

    const-string v3, "RSA/ECB/PKCS1Padding"

    const-string v4, "RSA_ECB_PKCS1"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v3}, Lcn/hutool/crypto/asymmetric/AsymmetricAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcn/hutool/crypto/asymmetric/AsymmetricAlgorithm;->RSA_ECB_PKCS1:Lcn/hutool/crypto/asymmetric/AsymmetricAlgorithm;

    .line 16
    new-instance v3, Lcn/hutool/crypto/asymmetric/AsymmetricAlgorithm;

    const-string v4, "RSA/ECB/NoPadding"

    const-string v6, "RSA_ECB"

    const/4 v7, 0x2

    invoke-direct {v3, v6, v7, v4}, Lcn/hutool/crypto/asymmetric/AsymmetricAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcn/hutool/crypto/asymmetric/AsymmetricAlgorithm;->RSA_ECB:Lcn/hutool/crypto/asymmetric/AsymmetricAlgorithm;

    .line 18
    new-instance v4, Lcn/hutool/crypto/asymmetric/AsymmetricAlgorithm;

    const-string v6, "RSA/None/NoPadding"

    const-string v8, "RSA_None"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcn/hutool/crypto/asymmetric/AsymmetricAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcn/hutool/crypto/asymmetric/AsymmetricAlgorithm;->RSA_None:Lcn/hutool/crypto/asymmetric/AsymmetricAlgorithm;

    const/4 v6, 0x4

    new-array v6, v6, [Lcn/hutool/crypto/asymmetric/AsymmetricAlgorithm;

    aput-object v0, v6, v2

    aput-object v1, v6, v5

    aput-object v3, v6, v7

    aput-object v4, v6, v9

    .line 10
    sput-object v6, Lcn/hutool/crypto/asymmetric/AsymmetricAlgorithm;->$VALUES:[Lcn/hutool/crypto/asymmetric/AsymmetricAlgorithm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput-object p3, p0, Lcn/hutool/crypto/asymmetric/AsymmetricAlgorithm;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/hutool/crypto/asymmetric/AsymmetricAlgorithm;
    .locals 1

    .line 10
    const-class v0, Lcn/hutool/crypto/asymmetric/AsymmetricAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/hutool/crypto/asymmetric/AsymmetricAlgorithm;

    return-object p0
.end method

.method public static values()[Lcn/hutool/crypto/asymmetric/AsymmetricAlgorithm;
    .locals 1

    .line 10
    sget-object v0, Lcn/hutool/crypto/asymmetric/AsymmetricAlgorithm;->$VALUES:[Lcn/hutool/crypto/asymmetric/AsymmetricAlgorithm;

    invoke-virtual {v0}, [Lcn/hutool/crypto/asymmetric/AsymmetricAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/hutool/crypto/asymmetric/AsymmetricAlgorithm;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcn/hutool/crypto/asymmetric/AsymmetricAlgorithm;->value:Ljava/lang/String;

    return-object v0
.end method

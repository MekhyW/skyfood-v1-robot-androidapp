.class public final enum Lcn/hutool/crypto/symmetric/ZUC$ZUCAlgorithm;
.super Ljava/lang/Enum;
.source "ZUC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/hutool/crypto/symmetric/ZUC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ZUCAlgorithm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/hutool/crypto/symmetric/ZUC$ZUCAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/hutool/crypto/symmetric/ZUC$ZUCAlgorithm;

.field public static final enum ZUC_128:Lcn/hutool/crypto/symmetric/ZUC$ZUCAlgorithm;

.field public static final enum ZUC_256:Lcn/hutool/crypto/symmetric/ZUC$ZUCAlgorithm;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 48
    new-instance v0, Lcn/hutool/crypto/symmetric/ZUC$ZUCAlgorithm;

    const-string v1, "ZUC-128"

    const-string v2, "ZUC_128"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcn/hutool/crypto/symmetric/ZUC$ZUCAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcn/hutool/crypto/symmetric/ZUC$ZUCAlgorithm;->ZUC_128:Lcn/hutool/crypto/symmetric/ZUC$ZUCAlgorithm;

    .line 49
    new-instance v1, Lcn/hutool/crypto/symmetric/ZUC$ZUCAlgorithm;

    const-string v2, "ZUC-256"

    const-string v4, "ZUC_256"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcn/hutool/crypto/symmetric/ZUC$ZUCAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcn/hutool/crypto/symmetric/ZUC$ZUCAlgorithm;->ZUC_256:Lcn/hutool/crypto/symmetric/ZUC$ZUCAlgorithm;

    const/4 v2, 0x2

    new-array v2, v2, [Lcn/hutool/crypto/symmetric/ZUC$ZUCAlgorithm;

    aput-object v0, v2, v3

    aput-object v1, v2, v5

    .line 47
    sput-object v2, Lcn/hutool/crypto/symmetric/ZUC$ZUCAlgorithm;->$VALUES:[Lcn/hutool/crypto/symmetric/ZUC$ZUCAlgorithm;

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

    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 59
    iput-object p3, p0, Lcn/hutool/crypto/symmetric/ZUC$ZUCAlgorithm;->value:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcn/hutool/crypto/symmetric/ZUC$ZUCAlgorithm;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcn/hutool/crypto/symmetric/ZUC$ZUCAlgorithm;->value:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/hutool/crypto/symmetric/ZUC$ZUCAlgorithm;
    .locals 1

    .line 47
    const-class v0, Lcn/hutool/crypto/symmetric/ZUC$ZUCAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/hutool/crypto/symmetric/ZUC$ZUCAlgorithm;

    return-object p0
.end method

.method public static values()[Lcn/hutool/crypto/symmetric/ZUC$ZUCAlgorithm;
    .locals 1

    .line 47
    sget-object v0, Lcn/hutool/crypto/symmetric/ZUC$ZUCAlgorithm;->$VALUES:[Lcn/hutool/crypto/symmetric/ZUC$ZUCAlgorithm;

    invoke-virtual {v0}, [Lcn/hutool/crypto/symmetric/ZUC$ZUCAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/hutool/crypto/symmetric/ZUC$ZUCAlgorithm;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcn/hutool/crypto/symmetric/ZUC$ZUCAlgorithm;->value:Ljava/lang/String;

    return-object v0
.end method

.class public final enum Lcn/hutool/crypto/symmetric/fpe/FPE$FPEMode;
.super Ljava/lang/Enum;
.source "FPE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/hutool/crypto/symmetric/fpe/FPE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FPEMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/hutool/crypto/symmetric/fpe/FPE$FPEMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/hutool/crypto/symmetric/fpe/FPE$FPEMode;

.field public static final enum FF1:Lcn/hutool/crypto/symmetric/fpe/FPE$FPEMode;

.field public static final enum FF3_1:Lcn/hutool/crypto/symmetric/fpe/FPE$FPEMode;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 144
    new-instance v0, Lcn/hutool/crypto/symmetric/fpe/FPE$FPEMode;

    const-string v1, "FF1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcn/hutool/crypto/symmetric/fpe/FPE$FPEMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcn/hutool/crypto/symmetric/fpe/FPE$FPEMode;->FF1:Lcn/hutool/crypto/symmetric/fpe/FPE$FPEMode;

    .line 148
    new-instance v1, Lcn/hutool/crypto/symmetric/fpe/FPE$FPEMode;

    const-string v3, "FF3-1"

    const-string v4, "FF3_1"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v3}, Lcn/hutool/crypto/symmetric/fpe/FPE$FPEMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcn/hutool/crypto/symmetric/fpe/FPE$FPEMode;->FF3_1:Lcn/hutool/crypto/symmetric/fpe/FPE$FPEMode;

    const/4 v3, 0x2

    new-array v3, v3, [Lcn/hutool/crypto/symmetric/fpe/FPE$FPEMode;

    aput-object v0, v3, v2

    aput-object v1, v3, v5

    .line 140
    sput-object v3, Lcn/hutool/crypto/symmetric/fpe/FPE$FPEMode;->$VALUES:[Lcn/hutool/crypto/symmetric/fpe/FPE$FPEMode;

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

    .line 152
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 153
    iput-object p3, p0, Lcn/hutool/crypto/symmetric/fpe/FPE$FPEMode;->value:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcn/hutool/crypto/symmetric/fpe/FPE$FPEMode;)Ljava/lang/String;
    .locals 0

    .line 140
    iget-object p0, p0, Lcn/hutool/crypto/symmetric/fpe/FPE$FPEMode;->value:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/hutool/crypto/symmetric/fpe/FPE$FPEMode;
    .locals 1

    .line 140
    const-class v0, Lcn/hutool/crypto/symmetric/fpe/FPE$FPEMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/hutool/crypto/symmetric/fpe/FPE$FPEMode;

    return-object p0
.end method

.method public static values()[Lcn/hutool/crypto/symmetric/fpe/FPE$FPEMode;
    .locals 1

    .line 140
    sget-object v0, Lcn/hutool/crypto/symmetric/fpe/FPE$FPEMode;->$VALUES:[Lcn/hutool/crypto/symmetric/fpe/FPE$FPEMode;

    invoke-virtual {v0}, [Lcn/hutool/crypto/symmetric/fpe/FPE$FPEMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/hutool/crypto/symmetric/fpe/FPE$FPEMode;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcn/hutool/crypto/symmetric/fpe/FPE$FPEMode;->value:Ljava/lang/String;

    return-object v0
.end method

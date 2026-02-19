.class public final enum Lcn/hutool/core/util/ModifierUtil$ModifierType;
.super Ljava/lang/Enum;
.source "ModifierUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/hutool/core/util/ModifierUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ModifierType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/hutool/core/util/ModifierUtil$ModifierType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/hutool/core/util/ModifierUtil$ModifierType;

.field public static final enum ABSTRACT:Lcn/hutool/core/util/ModifierUtil$ModifierType;

.field public static final enum FINAL:Lcn/hutool/core/util/ModifierUtil$ModifierType;

.field public static final enum NATIVE:Lcn/hutool/core/util/ModifierUtil$ModifierType;

.field public static final enum PRIVATE:Lcn/hutool/core/util/ModifierUtil$ModifierType;

.field public static final enum PROTECTED:Lcn/hutool/core/util/ModifierUtil$ModifierType;

.field public static final enum PUBLIC:Lcn/hutool/core/util/ModifierUtil$ModifierType;

.field public static final enum STATIC:Lcn/hutool/core/util/ModifierUtil$ModifierType;

.field public static final enum STRICT:Lcn/hutool/core/util/ModifierUtil$ModifierType;

.field public static final enum SYNCHRONIZED:Lcn/hutool/core/util/ModifierUtil$ModifierType;

.field public static final enum TRANSIENT:Lcn/hutool/core/util/ModifierUtil$ModifierType;

.field public static final enum VOLATILE:Lcn/hutool/core/util/ModifierUtil$ModifierType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 28
    new-instance v0, Lcn/hutool/core/util/ModifierUtil$ModifierType;

    const-string v1, "PUBLIC"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcn/hutool/core/util/ModifierUtil$ModifierType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/hutool/core/util/ModifierUtil$ModifierType;->PUBLIC:Lcn/hutool/core/util/ModifierUtil$ModifierType;

    .line 32
    new-instance v1, Lcn/hutool/core/util/ModifierUtil$ModifierType;

    const-string v4, "PRIVATE"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcn/hutool/core/util/ModifierUtil$ModifierType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcn/hutool/core/util/ModifierUtil$ModifierType;->PRIVATE:Lcn/hutool/core/util/ModifierUtil$ModifierType;

    .line 36
    new-instance v4, Lcn/hutool/core/util/ModifierUtil$ModifierType;

    const-string v6, "PROTECTED"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v5, v7}, Lcn/hutool/core/util/ModifierUtil$ModifierType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcn/hutool/core/util/ModifierUtil$ModifierType;->PROTECTED:Lcn/hutool/core/util/ModifierUtil$ModifierType;

    .line 40
    new-instance v6, Lcn/hutool/core/util/ModifierUtil$ModifierType;

    const-string v8, "STATIC"

    const/4 v9, 0x3

    const/16 v10, 0x8

    invoke-direct {v6, v8, v9, v10}, Lcn/hutool/core/util/ModifierUtil$ModifierType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcn/hutool/core/util/ModifierUtil$ModifierType;->STATIC:Lcn/hutool/core/util/ModifierUtil$ModifierType;

    .line 44
    new-instance v8, Lcn/hutool/core/util/ModifierUtil$ModifierType;

    const-string v11, "FINAL"

    const/16 v12, 0x10

    invoke-direct {v8, v11, v7, v12}, Lcn/hutool/core/util/ModifierUtil$ModifierType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcn/hutool/core/util/ModifierUtil$ModifierType;->FINAL:Lcn/hutool/core/util/ModifierUtil$ModifierType;

    .line 48
    new-instance v11, Lcn/hutool/core/util/ModifierUtil$ModifierType;

    const/16 v12, 0x20

    const-string v13, "SYNCHRONIZED"

    const/4 v14, 0x5

    invoke-direct {v11, v13, v14, v12}, Lcn/hutool/core/util/ModifierUtil$ModifierType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcn/hutool/core/util/ModifierUtil$ModifierType;->SYNCHRONIZED:Lcn/hutool/core/util/ModifierUtil$ModifierType;

    .line 52
    new-instance v12, Lcn/hutool/core/util/ModifierUtil$ModifierType;

    const/16 v13, 0x40

    const-string v15, "VOLATILE"

    const/4 v14, 0x6

    invoke-direct {v12, v15, v14, v13}, Lcn/hutool/core/util/ModifierUtil$ModifierType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcn/hutool/core/util/ModifierUtil$ModifierType;->VOLATILE:Lcn/hutool/core/util/ModifierUtil$ModifierType;

    .line 56
    new-instance v13, Lcn/hutool/core/util/ModifierUtil$ModifierType;

    const/16 v15, 0x80

    const-string v14, "TRANSIENT"

    const/4 v7, 0x7

    invoke-direct {v13, v14, v7, v15}, Lcn/hutool/core/util/ModifierUtil$ModifierType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcn/hutool/core/util/ModifierUtil$ModifierType;->TRANSIENT:Lcn/hutool/core/util/ModifierUtil$ModifierType;

    .line 60
    new-instance v14, Lcn/hutool/core/util/ModifierUtil$ModifierType;

    const-string v15, "NATIVE"

    const/16 v7, 0x100

    invoke-direct {v14, v15, v10, v7}, Lcn/hutool/core/util/ModifierUtil$ModifierType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcn/hutool/core/util/ModifierUtil$ModifierType;->NATIVE:Lcn/hutool/core/util/ModifierUtil$ModifierType;

    .line 65
    new-instance v7, Lcn/hutool/core/util/ModifierUtil$ModifierType;

    const/16 v15, 0x400

    const-string v10, "ABSTRACT"

    const/16 v9, 0x9

    invoke-direct {v7, v10, v9, v15}, Lcn/hutool/core/util/ModifierUtil$ModifierType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcn/hutool/core/util/ModifierUtil$ModifierType;->ABSTRACT:Lcn/hutool/core/util/ModifierUtil$ModifierType;

    .line 69
    new-instance v10, Lcn/hutool/core/util/ModifierUtil$ModifierType;

    const/16 v15, 0x800

    const-string v9, "STRICT"

    const/16 v5, 0xa

    invoke-direct {v10, v9, v5, v15}, Lcn/hutool/core/util/ModifierUtil$ModifierType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcn/hutool/core/util/ModifierUtil$ModifierType;->STRICT:Lcn/hutool/core/util/ModifierUtil$ModifierType;

    const/16 v9, 0xb

    new-array v9, v9, [Lcn/hutool/core/util/ModifierUtil$ModifierType;

    aput-object v0, v9, v2

    aput-object v1, v9, v3

    const/4 v0, 0x2

    aput-object v4, v9, v0

    const/4 v0, 0x3

    aput-object v6, v9, v0

    const/4 v0, 0x4

    aput-object v8, v9, v0

    const/4 v0, 0x5

    aput-object v11, v9, v0

    const/4 v0, 0x6

    aput-object v12, v9, v0

    const/4 v0, 0x7

    aput-object v13, v9, v0

    const/16 v0, 0x8

    aput-object v14, v9, v0

    const/16 v0, 0x9

    aput-object v7, v9, v0

    aput-object v10, v9, v5

    .line 24
    sput-object v9, Lcn/hutool/core/util/ModifierUtil$ModifierType;->$VALUES:[Lcn/hutool/core/util/ModifierUtil$ModifierType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 82
    iput p3, p0, Lcn/hutool/core/util/ModifierUtil$ModifierType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/hutool/core/util/ModifierUtil$ModifierType;
    .locals 1

    .line 24
    const-class v0, Lcn/hutool/core/util/ModifierUtil$ModifierType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/hutool/core/util/ModifierUtil$ModifierType;

    return-object p0
.end method

.method public static values()[Lcn/hutool/core/util/ModifierUtil$ModifierType;
    .locals 1

    .line 24
    sget-object v0, Lcn/hutool/core/util/ModifierUtil$ModifierType;->$VALUES:[Lcn/hutool/core/util/ModifierUtil$ModifierType;

    invoke-virtual {v0}, [Lcn/hutool/core/util/ModifierUtil$ModifierType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/hutool/core/util/ModifierUtil$ModifierType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 91
    iget v0, p0, Lcn/hutool/core/util/ModifierUtil$ModifierType;->value:I

    return v0
.end method

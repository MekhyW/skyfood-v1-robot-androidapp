.class public final enum Lcn/hutool/db/meta/TableType;
.super Ljava/lang/Enum;
.source "TableType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/hutool/db/meta/TableType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/hutool/db/meta/TableType;

.field public static final enum ALIAS:Lcn/hutool/db/meta/TableType;

.field public static final enum GLOBAL_TEMPORARY:Lcn/hutool/db/meta/TableType;

.field public static final enum LOCAL_TEMPORARY:Lcn/hutool/db/meta/TableType;

.field public static final enum SYNONYM:Lcn/hutool/db/meta/TableType;

.field public static final enum SYSTEM_TABLE:Lcn/hutool/db/meta/TableType;

.field public static final enum TABLE:Lcn/hutool/db/meta/TableType;

.field public static final enum VIEW:Lcn/hutool/db/meta/TableType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 9
    new-instance v0, Lcn/hutool/db/meta/TableType;

    const-string v1, "TABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcn/hutool/db/meta/TableType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcn/hutool/db/meta/TableType;->TABLE:Lcn/hutool/db/meta/TableType;

    .line 10
    new-instance v1, Lcn/hutool/db/meta/TableType;

    const-string v3, "VIEW"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v3}, Lcn/hutool/db/meta/TableType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcn/hutool/db/meta/TableType;->VIEW:Lcn/hutool/db/meta/TableType;

    .line 11
    new-instance v3, Lcn/hutool/db/meta/TableType;

    const-string v5, "SYSTEM TABLE"

    const-string v6, "SYSTEM_TABLE"

    const/4 v7, 0x2

    invoke-direct {v3, v6, v7, v5}, Lcn/hutool/db/meta/TableType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcn/hutool/db/meta/TableType;->SYSTEM_TABLE:Lcn/hutool/db/meta/TableType;

    .line 12
    new-instance v5, Lcn/hutool/db/meta/TableType;

    const-string v6, "GLOBAL TEMPORARY"

    const-string v8, "GLOBAL_TEMPORARY"

    const/4 v9, 0x3

    invoke-direct {v5, v8, v9, v6}, Lcn/hutool/db/meta/TableType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcn/hutool/db/meta/TableType;->GLOBAL_TEMPORARY:Lcn/hutool/db/meta/TableType;

    .line 13
    new-instance v6, Lcn/hutool/db/meta/TableType;

    const-string v8, "LOCAL TEMPORARY"

    const-string v10, "LOCAL_TEMPORARY"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcn/hutool/db/meta/TableType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcn/hutool/db/meta/TableType;->LOCAL_TEMPORARY:Lcn/hutool/db/meta/TableType;

    .line 14
    new-instance v8, Lcn/hutool/db/meta/TableType;

    const-string v10, "ALIAS"

    const/4 v12, 0x5

    invoke-direct {v8, v10, v12, v10}, Lcn/hutool/db/meta/TableType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcn/hutool/db/meta/TableType;->ALIAS:Lcn/hutool/db/meta/TableType;

    .line 15
    new-instance v10, Lcn/hutool/db/meta/TableType;

    const-string v13, "SYNONYM"

    const/4 v14, 0x6

    invoke-direct {v10, v13, v14, v13}, Lcn/hutool/db/meta/TableType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcn/hutool/db/meta/TableType;->SYNONYM:Lcn/hutool/db/meta/TableType;

    const/4 v13, 0x7

    new-array v13, v13, [Lcn/hutool/db/meta/TableType;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v7

    aput-object v5, v13, v9

    aput-object v6, v13, v11

    aput-object v8, v13, v12

    aput-object v10, v13, v14

    .line 8
    sput-object v13, Lcn/hutool/db/meta/TableType;->$VALUES:[Lcn/hutool/db/meta/TableType;

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

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput-object p3, p0, Lcn/hutool/db/meta/TableType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/hutool/db/meta/TableType;
    .locals 1

    .line 8
    const-class v0, Lcn/hutool/db/meta/TableType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/hutool/db/meta/TableType;

    return-object p0
.end method

.method public static values()[Lcn/hutool/db/meta/TableType;
    .locals 1

    .line 8
    sget-object v0, Lcn/hutool/db/meta/TableType;->$VALUES:[Lcn/hutool/db/meta/TableType;

    invoke-virtual {v0}, [Lcn/hutool/db/meta/TableType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/hutool/db/meta/TableType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcn/hutool/db/meta/TableType;->value()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public value()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcn/hutool/db/meta/TableType;->value:Ljava/lang/String;

    return-object v0
.end method

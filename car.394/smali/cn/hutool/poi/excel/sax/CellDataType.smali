.class public final enum Lcn/hutool/poi/excel/sax/CellDataType;
.super Ljava/lang/Enum;
.source "CellDataType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/hutool/poi/excel/sax/CellDataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/hutool/poi/excel/sax/CellDataType;

.field public static final enum BOOL:Lcn/hutool/poi/excel/sax/CellDataType;

.field public static final enum DATE:Lcn/hutool/poi/excel/sax/CellDataType;

.field public static final enum ERROR:Lcn/hutool/poi/excel/sax/CellDataType;

.field public static final enum FORMULA:Lcn/hutool/poi/excel/sax/CellDataType;

.field public static final enum INLINESTR:Lcn/hutool/poi/excel/sax/CellDataType;

.field public static final enum NULL:Lcn/hutool/poi/excel/sax/CellDataType;

.field public static final enum NUMBER:Lcn/hutool/poi/excel/sax/CellDataType;

.field public static final enum SSTINDEX:Lcn/hutool/poi/excel/sax/CellDataType;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 11
    new-instance v0, Lcn/hutool/poi/excel/sax/CellDataType;

    const-string v1, "b"

    const-string v2, "BOOL"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcn/hutool/poi/excel/sax/CellDataType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcn/hutool/poi/excel/sax/CellDataType;->BOOL:Lcn/hutool/poi/excel/sax/CellDataType;

    .line 13
    new-instance v1, Lcn/hutool/poi/excel/sax/CellDataType;

    const-string v2, "e"

    const-string v4, "ERROR"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcn/hutool/poi/excel/sax/CellDataType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcn/hutool/poi/excel/sax/CellDataType;->ERROR:Lcn/hutool/poi/excel/sax/CellDataType;

    .line 15
    new-instance v2, Lcn/hutool/poi/excel/sax/CellDataType;

    const-string v4, "formula"

    const-string v6, "FORMULA"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcn/hutool/poi/excel/sax/CellDataType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcn/hutool/poi/excel/sax/CellDataType;->FORMULA:Lcn/hutool/poi/excel/sax/CellDataType;

    .line 17
    new-instance v4, Lcn/hutool/poi/excel/sax/CellDataType;

    const-string v6, "inlineStr"

    const-string v8, "INLINESTR"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcn/hutool/poi/excel/sax/CellDataType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcn/hutool/poi/excel/sax/CellDataType;->INLINESTR:Lcn/hutool/poi/excel/sax/CellDataType;

    .line 19
    new-instance v6, Lcn/hutool/poi/excel/sax/CellDataType;

    const-string v8, "s"

    const-string v10, "SSTINDEX"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcn/hutool/poi/excel/sax/CellDataType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcn/hutool/poi/excel/sax/CellDataType;->SSTINDEX:Lcn/hutool/poi/excel/sax/CellDataType;

    .line 21
    new-instance v8, Lcn/hutool/poi/excel/sax/CellDataType;

    const-string v10, "NUMBER"

    const/4 v12, 0x5

    const-string v13, ""

    invoke-direct {v8, v10, v12, v13}, Lcn/hutool/poi/excel/sax/CellDataType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcn/hutool/poi/excel/sax/CellDataType;->NUMBER:Lcn/hutool/poi/excel/sax/CellDataType;

    .line 23
    new-instance v10, Lcn/hutool/poi/excel/sax/CellDataType;

    const-string v14, "m/d/yy"

    const-string v15, "DATE"

    const/4 v12, 0x6

    invoke-direct {v10, v15, v12, v14}, Lcn/hutool/poi/excel/sax/CellDataType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcn/hutool/poi/excel/sax/CellDataType;->DATE:Lcn/hutool/poi/excel/sax/CellDataType;

    .line 25
    new-instance v14, Lcn/hutool/poi/excel/sax/CellDataType;

    const-string v15, "NULL"

    const/4 v12, 0x7

    invoke-direct {v14, v15, v12, v13}, Lcn/hutool/poi/excel/sax/CellDataType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lcn/hutool/poi/excel/sax/CellDataType;->NULL:Lcn/hutool/poi/excel/sax/CellDataType;

    const/16 v13, 0x8

    new-array v13, v13, [Lcn/hutool/poi/excel/sax/CellDataType;

    aput-object v0, v13, v3

    aput-object v1, v13, v5

    aput-object v2, v13, v7

    aput-object v4, v13, v9

    aput-object v6, v13, v11

    const/4 v0, 0x5

    aput-object v8, v13, v0

    const/4 v0, 0x6

    aput-object v10, v13, v0

    aput-object v14, v13, v12

    .line 9
    sput-object v13, Lcn/hutool/poi/excel/sax/CellDataType;->$VALUES:[Lcn/hutool/poi/excel/sax/CellDataType;

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

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-object p3, p0, Lcn/hutool/poi/excel/sax/CellDataType;->name:Ljava/lang/String;

    return-void
.end method

.method public static of(Ljava/lang/String;)Lcn/hutool/poi/excel/sax/CellDataType;
    .locals 2

    if-nez p0, :cond_0

    .line 56
    sget-object p0, Lcn/hutool/poi/excel/sax/CellDataType;->NUMBER:Lcn/hutool/poi/excel/sax/CellDataType;

    return-object p0

    .line 59
    :cond_0
    sget-object v0, Lcn/hutool/poi/excel/sax/CellDataType;->BOOL:Lcn/hutool/poi/excel/sax/CellDataType;

    iget-object v1, v0, Lcn/hutool/poi/excel/sax/CellDataType;->name:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 61
    :cond_1
    sget-object v0, Lcn/hutool/poi/excel/sax/CellDataType;->ERROR:Lcn/hutool/poi/excel/sax/CellDataType;

    iget-object v1, v0, Lcn/hutool/poi/excel/sax/CellDataType;->name:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    .line 63
    :cond_2
    sget-object v0, Lcn/hutool/poi/excel/sax/CellDataType;->INLINESTR:Lcn/hutool/poi/excel/sax/CellDataType;

    iget-object v1, v0, Lcn/hutool/poi/excel/sax/CellDataType;->name:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    .line 65
    :cond_3
    sget-object v0, Lcn/hutool/poi/excel/sax/CellDataType;->SSTINDEX:Lcn/hutool/poi/excel/sax/CellDataType;

    iget-object v1, v0, Lcn/hutool/poi/excel/sax/CellDataType;->name:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v0

    .line 67
    :cond_4
    sget-object v0, Lcn/hutool/poi/excel/sax/CellDataType;->FORMULA:Lcn/hutool/poi/excel/sax/CellDataType;

    iget-object v1, v0, Lcn/hutool/poi/excel/sax/CellDataType;->name:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    return-object v0

    .line 70
    :cond_5
    sget-object p0, Lcn/hutool/poi/excel/sax/CellDataType;->NULL:Lcn/hutool/poi/excel/sax/CellDataType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/hutool/poi/excel/sax/CellDataType;
    .locals 1

    .line 9
    const-class v0, Lcn/hutool/poi/excel/sax/CellDataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/hutool/poi/excel/sax/CellDataType;

    return-object p0
.end method

.method public static values()[Lcn/hutool/poi/excel/sax/CellDataType;
    .locals 1

    .line 9
    sget-object v0, Lcn/hutool/poi/excel/sax/CellDataType;->$VALUES:[Lcn/hutool/poi/excel/sax/CellDataType;

    invoke-virtual {v0}, [Lcn/hutool/poi/excel/sax/CellDataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/hutool/poi/excel/sax/CellDataType;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcn/hutool/poi/excel/sax/CellDataType;->name:Ljava/lang/String;

    return-object v0
.end method

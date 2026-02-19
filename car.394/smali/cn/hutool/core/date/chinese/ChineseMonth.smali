.class public Lcn/hutool/core/date/chinese/ChineseMonth;
.super Ljava/lang/Object;
.source "ChineseMonth.java"


# static fields
.field private static final MONTH_NAME:[Ljava/lang/String;

.field private static final MONTH_NAME_TRADITIONAL:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-string v0, "\u4e00"

    const-string v1, "\u4e8c"

    const-string v2, "\u4e09"

    const-string v3, "\u56db"

    const-string v4, "\u4e94"

    const-string v5, "\u516d"

    const-string v6, "\u4e03"

    const-string v7, "\u516b"

    const-string v8, "\u4e5d"

    const-string v9, "\u5341"

    const-string v10, "\u5341\u4e00"

    const-string v11, "\u5341\u4e8c"

    .line 11
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/hutool/core/date/chinese/ChineseMonth;->MONTH_NAME:[Ljava/lang/String;

    const-string v1, "\u6b63"

    const-string v2, "\u4e8c"

    const-string v3, "\u4e09"

    const-string v4, "\u56db"

    const-string v5, "\u4e94"

    const-string v6, "\u516d"

    const-string v7, "\u4e03"

    const-string v8, "\u516b"

    const-string v9, "\u4e5d"

    const-string v10, "\u5bd2"

    const-string v11, "\u51ac"

    const-string v12, "\u814a"

    .line 12
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/hutool/core/date/chinese/ChineseMonth;->MONTH_NAME_TRADITIONAL:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getChineseMonthName(ZIZ)Ljava/lang/String;
    .locals 1

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_0

    const-string p0, "\u95f0"

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    if-eqz p2, :cond_1

    sget-object p2, Lcn/hutool/core/date/chinese/ChineseMonth;->MONTH_NAME_TRADITIONAL:[Ljava/lang/String;

    goto :goto_1

    :cond_1
    sget-object p2, Lcn/hutool/core/date/chinese/ChineseMonth;->MONTH_NAME:[Ljava/lang/String;

    :goto_1
    add-int/lit8 p1, p1, -0x1

    aget-object p1, p2, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\u6708"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isLeapMonth(II)Z
    .locals 0

    .line 23
    invoke-static {p0}, Lcn/hutool/core/date/chinese/LunarInfo;->leapMonth(I)I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

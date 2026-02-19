.class public final enum Lcn/hutool/cron/pattern/Part;
.super Ljava/lang/Enum;
.source "Part.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/hutool/cron/pattern/Part;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/hutool/cron/pattern/Part;

.field public static final enum DAY_OF_MONTH:Lcn/hutool/cron/pattern/Part;

.field public static final enum DAY_OF_WEEK:Lcn/hutool/cron/pattern/Part;

.field private static final ENUMS:[Lcn/hutool/cron/pattern/Part;

.field public static final enum HOUR:Lcn/hutool/cron/pattern/Part;

.field public static final enum MINUTE:Lcn/hutool/cron/pattern/Part;

.field public static final enum MONTH:Lcn/hutool/cron/pattern/Part;

.field public static final enum SECOND:Lcn/hutool/cron/pattern/Part;

.field public static final enum YEAR:Lcn/hutool/cron/pattern/Part;


# instance fields
.field private final calendarField:I

.field private final max:I

.field private final min:I


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 23
    new-instance v6, Lcn/hutool/cron/pattern/Part;

    const-string v1, "SECOND"

    const/4 v2, 0x0

    const/16 v3, 0xd

    const/4 v4, 0x0

    const/16 v5, 0x3b

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcn/hutool/cron/pattern/Part;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Lcn/hutool/cron/pattern/Part;->SECOND:Lcn/hutool/cron/pattern/Part;

    .line 24
    new-instance v0, Lcn/hutool/cron/pattern/Part;

    const-string v8, "MINUTE"

    const/4 v9, 0x1

    const/16 v10, 0xc

    const/4 v11, 0x0

    const/16 v12, 0x3b

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcn/hutool/cron/pattern/Part;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcn/hutool/cron/pattern/Part;->MINUTE:Lcn/hutool/cron/pattern/Part;

    .line 25
    new-instance v1, Lcn/hutool/cron/pattern/Part;

    const-string v14, "HOUR"

    const/4 v15, 0x2

    const/16 v16, 0xb

    const/16 v17, 0x0

    const/16 v18, 0x17

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcn/hutool/cron/pattern/Part;-><init>(Ljava/lang/String;IIII)V

    sput-object v1, Lcn/hutool/cron/pattern/Part;->HOUR:Lcn/hutool/cron/pattern/Part;

    .line 26
    new-instance v2, Lcn/hutool/cron/pattern/Part;

    const-string v8, "DAY_OF_MONTH"

    const/4 v9, 0x3

    const/4 v10, 0x5

    const/4 v11, 0x1

    const/16 v12, 0x1f

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcn/hutool/cron/pattern/Part;-><init>(Ljava/lang/String;IIII)V

    sput-object v2, Lcn/hutool/cron/pattern/Part;->DAY_OF_MONTH:Lcn/hutool/cron/pattern/Part;

    .line 27
    new-instance v3, Lcn/hutool/cron/pattern/Part;

    const-string v14, "MONTH"

    const/4 v15, 0x4

    const/16 v16, 0x2

    sget-object v4, Lcn/hutool/core/date/Month;->JANUARY:Lcn/hutool/core/date/Month;

    invoke-virtual {v4}, Lcn/hutool/core/date/Month;->getValueBaseOne()I

    move-result v17

    sget-object v4, Lcn/hutool/core/date/Month;->DECEMBER:Lcn/hutool/core/date/Month;

    invoke-virtual {v4}, Lcn/hutool/core/date/Month;->getValueBaseOne()I

    move-result v18

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lcn/hutool/cron/pattern/Part;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcn/hutool/cron/pattern/Part;->MONTH:Lcn/hutool/cron/pattern/Part;

    .line 28
    new-instance v4, Lcn/hutool/cron/pattern/Part;

    const-string v8, "DAY_OF_WEEK"

    const/4 v9, 0x5

    const/4 v10, 0x7

    sget-object v5, Lcn/hutool/core/date/Week;->SUNDAY:Lcn/hutool/core/date/Week;

    invoke-virtual {v5}, Lcn/hutool/core/date/Week;->ordinal()I

    move-result v11

    sget-object v5, Lcn/hutool/core/date/Week;->SATURDAY:Lcn/hutool/core/date/Week;

    invoke-virtual {v5}, Lcn/hutool/core/date/Week;->ordinal()I

    move-result v12

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lcn/hutool/cron/pattern/Part;-><init>(Ljava/lang/String;IIII)V

    sput-object v4, Lcn/hutool/cron/pattern/Part;->DAY_OF_WEEK:Lcn/hutool/cron/pattern/Part;

    .line 29
    new-instance v5, Lcn/hutool/cron/pattern/Part;

    const-string v14, "YEAR"

    const/4 v15, 0x6

    const/16 v16, 0x1

    const/16 v17, 0x7b2

    const/16 v18, 0x833

    move-object v13, v5

    invoke-direct/range {v13 .. v18}, Lcn/hutool/cron/pattern/Part;-><init>(Ljava/lang/String;IIII)V

    sput-object v5, Lcn/hutool/cron/pattern/Part;->YEAR:Lcn/hutool/cron/pattern/Part;

    const/4 v7, 0x7

    new-array v7, v7, [Lcn/hutool/cron/pattern/Part;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    const/4 v6, 0x1

    aput-object v0, v7, v6

    const/4 v0, 0x2

    aput-object v1, v7, v0

    const/4 v0, 0x3

    aput-object v2, v7, v0

    const/4 v0, 0x4

    aput-object v3, v7, v0

    const/4 v0, 0x5

    aput-object v4, v7, v0

    const/4 v0, 0x6

    aput-object v5, v7, v0

    .line 22
    sput-object v7, Lcn/hutool/cron/pattern/Part;->$VALUES:[Lcn/hutool/cron/pattern/Part;

    .line 32
    invoke-static {}, Lcn/hutool/cron/pattern/Part;->values()[Lcn/hutool/cron/pattern/Part;

    move-result-object v0

    sput-object v0, Lcn/hutool/cron/pattern/Part;->ENUMS:[Lcn/hutool/cron/pattern/Part;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput p3, p0, Lcn/hutool/cron/pattern/Part;->calendarField:I

    if-le p4, p5, :cond_0

    .line 48
    iput p5, p0, Lcn/hutool/cron/pattern/Part;->min:I

    .line 49
    iput p4, p0, Lcn/hutool/cron/pattern/Part;->max:I

    goto :goto_0

    .line 51
    :cond_0
    iput p4, p0, Lcn/hutool/cron/pattern/Part;->min:I

    .line 52
    iput p5, p0, Lcn/hutool/cron/pattern/Part;->max:I

    :goto_0
    return-void
.end method

.method public static of(I)Lcn/hutool/cron/pattern/Part;
    .locals 1

    .line 103
    sget-object v0, Lcn/hutool/cron/pattern/Part;->ENUMS:[Lcn/hutool/cron/pattern/Part;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/hutool/cron/pattern/Part;
    .locals 1

    .line 22
    const-class v0, Lcn/hutool/cron/pattern/Part;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/hutool/cron/pattern/Part;

    return-object p0
.end method

.method public static values()[Lcn/hutool/cron/pattern/Part;
    .locals 1

    .line 22
    sget-object v0, Lcn/hutool/cron/pattern/Part;->$VALUES:[Lcn/hutool/cron/pattern/Part;

    invoke-virtual {v0}, [Lcn/hutool/cron/pattern/Part;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/hutool/cron/pattern/Part;

    return-object v0
.end method


# virtual methods
.method public checkValue(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/cron/CronException;
        }
    .end annotation

    .line 91
    iget v0, p0, Lcn/hutool/cron/pattern/Part;->min:I

    iget v1, p0, Lcn/hutool/cron/pattern/Part;->max:I

    new-instance v2, Lcn/hutool/cron/pattern/Part$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcn/hutool/cron/pattern/Part$$ExternalSyntheticLambda0;-><init>(Lcn/hutool/cron/pattern/Part;I)V

    invoke-static {p1, v0, v1, v2}, Lcn/hutool/core/lang/Assert;->checkBetween(IIILjava/util/function/Supplier;)I

    return p1
.end method

.method public getCalendarField()I
    .locals 1

    .line 62
    iget v0, p0, Lcn/hutool/cron/pattern/Part;->calendarField:I

    return v0
.end method

.method public getMax()I
    .locals 1

    .line 80
    iget v0, p0, Lcn/hutool/cron/pattern/Part;->max:I

    return v0
.end method

.method public getMin()I
    .locals 1

    .line 71
    iget v0, p0, Lcn/hutool/cron/pattern/Part;->min:I

    return v0
.end method

.method synthetic lambda$checkValue$0$cn-hutool-cron-pattern-Part(I)Lcn/hutool/cron/CronException;
    .locals 3

    .line 92
    new-instance v0, Lcn/hutool/cron/CronException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    iget p1, p0, Lcn/hutool/cron/pattern/Part;->min:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    iget p1, p0, Lcn/hutool/cron/pattern/Part;->max:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const-string p1, "Value {} out of range: [{} , {}]"

    invoke-direct {v0, p1, v1}, Lcn/hutool/cron/CronException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

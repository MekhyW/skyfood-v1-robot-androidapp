.class public final enum Lcn/hutool/core/date/Week;
.super Ljava/lang/Enum;
.source "Week.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/hutool/core/date/Week;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/hutool/core/date/Week;

.field private static final ALIASES:[Ljava/lang/String;

.field private static final ENUMS:[Lcn/hutool/core/date/Week;

.field public static final enum FRIDAY:Lcn/hutool/core/date/Week;

.field public static final enum MONDAY:Lcn/hutool/core/date/Week;

.field public static final enum SATURDAY:Lcn/hutool/core/date/Week;

.field public static final enum SUNDAY:Lcn/hutool/core/date/Week;

.field public static final enum THURSDAY:Lcn/hutool/core/date/Week;

.field public static final enum TUESDAY:Lcn/hutool/core/date/Week;

.field public static final enum WEDNESDAY:Lcn/hutool/core/date/Week;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 27
    new-instance v0, Lcn/hutool/core/date/Week;

    const-string v1, "SUNDAY"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcn/hutool/core/date/Week;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/hutool/core/date/Week;->SUNDAY:Lcn/hutool/core/date/Week;

    .line 31
    new-instance v1, Lcn/hutool/core/date/Week;

    const-string v4, "MONDAY"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcn/hutool/core/date/Week;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcn/hutool/core/date/Week;->MONDAY:Lcn/hutool/core/date/Week;

    .line 35
    new-instance v4, Lcn/hutool/core/date/Week;

    const-string v6, "TUESDAY"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcn/hutool/core/date/Week;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcn/hutool/core/date/Week;->TUESDAY:Lcn/hutool/core/date/Week;

    .line 39
    new-instance v6, Lcn/hutool/core/date/Week;

    const-string v8, "WEDNESDAY"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lcn/hutool/core/date/Week;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcn/hutool/core/date/Week;->WEDNESDAY:Lcn/hutool/core/date/Week;

    .line 43
    new-instance v8, Lcn/hutool/core/date/Week;

    const-string v10, "THURSDAY"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lcn/hutool/core/date/Week;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcn/hutool/core/date/Week;->THURSDAY:Lcn/hutool/core/date/Week;

    .line 47
    new-instance v10, Lcn/hutool/core/date/Week;

    const-string v12, "FRIDAY"

    const/4 v13, 0x6

    invoke-direct {v10, v12, v11, v13}, Lcn/hutool/core/date/Week;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcn/hutool/core/date/Week;->FRIDAY:Lcn/hutool/core/date/Week;

    .line 51
    new-instance v12, Lcn/hutool/core/date/Week;

    const-string v14, "SATURDAY"

    const/4 v15, 0x7

    invoke-direct {v12, v14, v13, v15}, Lcn/hutool/core/date/Week;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcn/hutool/core/date/Week;->SATURDAY:Lcn/hutool/core/date/Week;

    new-array v14, v15, [Lcn/hutool/core/date/Week;

    aput-object v0, v14, v2

    aput-object v1, v14, v3

    aput-object v4, v14, v5

    aput-object v6, v14, v7

    aput-object v8, v14, v9

    aput-object v10, v14, v11

    aput-object v12, v14, v13

    .line 22
    sput-object v14, Lcn/hutool/core/date/Week;->$VALUES:[Lcn/hutool/core/date/Week;

    const-string v15, "sun"

    const-string v16, "mon"

    const-string v17, "tue"

    const-string v18, "wed"

    const-string v19, "thu"

    const-string v20, "fri"

    const-string v21, "sat"

    .line 57
    filled-new-array/range {v15 .. v21}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/hutool/core/date/Week;->ALIASES:[Ljava/lang/String;

    .line 58
    invoke-static {}, Lcn/hutool/core/date/Week;->values()[Lcn/hutool/core/date/Week;

    move-result-object v0

    sput-object v0, Lcn/hutool/core/date/Week;->ENUMS:[Lcn/hutool/core/date/Week;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 71
    iput p3, p0, Lcn/hutool/core/date/Week;->value:I

    return-void
.end method

.method public static of(I)Lcn/hutool/core/date/Week;
    .locals 2

    .line 159
    sget-object v0, Lcn/hutool/core/date/Week;->ENUMS:[Lcn/hutool/core/date/Week;

    array-length v1, v0

    if-gt p0, v1, :cond_1

    const/4 v1, 0x1

    if-ge p0, v1, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr p0, v1

    .line 162
    aget-object p0, v0, p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static of(Ljava/lang/String;)Lcn/hutool/core/date/Week;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 174
    invoke-static {p0}, Lcn/hutool/core/lang/Assert;->notBlank(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 175
    sget-object v0, Lcn/hutool/core/date/Week;->ALIASES:[Ljava/lang/String;

    invoke-static {v0, p0}, Lcn/hutool/core/util/ArrayUtil;->indexOfIgnoreCase([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcn/hutool/core/date/Week;->of(I)Lcn/hutool/core/date/Week;

    move-result-object v0

    if-nez v0, :cond_0

    .line 177
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/date/Week;->valueOf(Ljava/lang/String;)Lcn/hutool/core/date/Week;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static of(Ljava/time/DayOfWeek;)Lcn/hutool/core/date/Week;
    .locals 2

    .line 197
    invoke-static {p0}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    invoke-virtual {p0}, Ljava/time/DayOfWeek;->getValue()I

    move-result p0

    const/4 v0, 0x1

    add-int/2addr p0, v0

    const/16 v1, 0x8

    if-ne v1, p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, p0

    .line 203
    :goto_0
    invoke-static {v0}, Lcn/hutool/core/date/Week;->of(I)Lcn/hutool/core/date/Week;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/hutool/core/date/Week;
    .locals 1

    .line 22
    const-class v0, Lcn/hutool/core/date/Week;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/hutool/core/date/Week;

    return-object p0
.end method

.method public static values()[Lcn/hutool/core/date/Week;
    .locals 1

    .line 22
    sget-object v0, Lcn/hutool/core/date/Week;->$VALUES:[Lcn/hutool/core/date/Week;

    invoke-virtual {v0}, [Lcn/hutool/core/date/Week;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/hutool/core/date/Week;

    return-object v0
.end method


# virtual methods
.method public getIso8601Value()I
    .locals 1

    .line 90
    invoke-virtual {p0}, Lcn/hutool/core/date/Week;->getValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_0

    const/4 v0, 0x7

    :cond_0
    return v0
.end method

.method public getValue()I
    .locals 1

    .line 80
    iget v0, p0, Lcn/hutool/core/date/Week;->value:I

    return v0
.end method

.method public toChinese()Ljava/lang/String;
    .locals 1

    const-string v0, "\u661f\u671f"

    .line 104
    invoke-virtual {p0, v0}, Lcn/hutool/core/date/Week;->toChinese(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toChinese(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 115
    sget-object v0, Lcn/hutool/core/date/Week$1;->$SwitchMap$cn$hutool$core$date$Week:[I

    invoke-virtual {p0}, Lcn/hutool/core/date/Week;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 129
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\u516d"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 127
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\u4e94"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 125
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\u56db"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 123
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\u4e09"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 121
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\u4e8c"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 119
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\u4e00"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 117
    :pswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\u65e5"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toJdkDayOfWeek()Ljava/time/DayOfWeek;
    .locals 1

    .line 142
    invoke-virtual {p0}, Lcn/hutool/core/date/Week;->getIso8601Value()I

    move-result v0

    invoke-static {v0}, Ljava/time/DayOfWeek;->of(I)Ljava/time/DayOfWeek;

    move-result-object v0

    return-object v0
.end method

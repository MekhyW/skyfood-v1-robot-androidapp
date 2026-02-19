.class public Lcn/hutool/poi/excel/cell/values/NumericCellValue;
.super Ljava/lang/Object;
.source "NumericCellValue.java"

# interfaces
.implements Lcn/hutool/poi/excel/cell/CellValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/hutool/poi/excel/cell/CellValue<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final cell:Lorg/apache/poi/ss/usermodel/Cell;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/usermodel/Cell;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcn/hutool/poi/excel/cell/values/NumericCellValue;->cell:Lorg/apache/poi/ss/usermodel/Cell;

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 6

    .line 35
    iget-object v0, p0, Lcn/hutool/poi/excel/cell/values/NumericCellValue;->cell:Lorg/apache/poi/ss/usermodel/Cell;

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Cell;->getNumericCellValue()D

    move-result-wide v0

    .line 37
    iget-object v2, p0, Lcn/hutool/poi/excel/cell/values/NumericCellValue;->cell:Lorg/apache/poi/ss/usermodel/Cell;

    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/Cell;->getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 40
    iget-object v3, p0, Lcn/hutool/poi/excel/cell/values/NumericCellValue;->cell:Lorg/apache/poi/ss/usermodel/Cell;

    invoke-static {v3}, Lcn/hutool/poi/excel/ExcelDateUtil;->isDateFormat(Lorg/apache/poi/ss/usermodel/Cell;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 41
    iget-object v0, p0, Lcn/hutool/poi/excel/cell/values/NumericCellValue;->cell:Lorg/apache/poi/ss/usermodel/Cell;

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Cell;->getLocalDateTimeCellValue()Ljava/time/LocalDateTime;

    move-result-object v0

    const/16 v1, 0x76b

    .line 42
    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getYear()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 44
    invoke-virtual {v0}, Ljava/time/LocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v0

    return-object v0

    .line 47
    :cond_0
    invoke-static {v0}, Lcn/hutool/core/date/DateUtil;->date(Ljava/time/temporal/TemporalAccessor;)Lcn/hutool/core/date/DateTime;

    move-result-object v0

    return-object v0

    .line 50
    :cond_1
    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/CellStyle;->getDataFormatString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const/16 v3, 0x2e

    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_2

    double-to-long v2, v0

    long-to-double v4, v2

    cmpl-double v4, v4, v0

    if-nez v4, :cond_2

    .line 56
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 62
    :cond_2
    invoke-static {v0, v1}, Lorg/apache/poi/ss/util/NumberToTextConverter;->toText(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

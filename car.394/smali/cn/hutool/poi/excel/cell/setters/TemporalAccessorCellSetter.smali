.class public Lcn/hutool/poi/excel/cell/setters/TemporalAccessorCellSetter;
.super Ljava/lang/Object;
.source "TemporalAccessorCellSetter.java"

# interfaces
.implements Lcn/hutool/poi/excel/cell/CellSetter;


# instance fields
.field private final value:Ljava/time/temporal/TemporalAccessor;


# direct methods
.method constructor <init>(Ljava/time/temporal/TemporalAccessor;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcn/hutool/poi/excel/cell/setters/TemporalAccessorCellSetter;->value:Ljava/time/temporal/TemporalAccessor;

    return-void
.end method


# virtual methods
.method public setValue(Lorg/apache/poi/ss/usermodel/Cell;)V
    .locals 2

    .line 33
    iget-object v0, p0, Lcn/hutool/poi/excel/cell/setters/TemporalAccessorCellSetter;->value:Ljava/time/temporal/TemporalAccessor;

    instance-of v1, v0, Ljava/time/Instant;

    if-eqz v1, :cond_0

    .line 34
    check-cast v0, Ljava/time/Instant;

    invoke-static {v0}, Ljava/util/Date;->from(Ljava/time/Instant;)Ljava/util/Date;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/poi/ss/usermodel/Cell;->setCellValue(Ljava/util/Date;)V

    goto :goto_0

    .line 35
    :cond_0
    instance-of v1, v0, Ljava/time/LocalDateTime;

    if-eqz v1, :cond_1

    .line 36
    check-cast v0, Ljava/time/LocalDateTime;

    invoke-interface {p1, v0}, Lorg/apache/poi/ss/usermodel/Cell;->setCellValue(Ljava/time/LocalDateTime;)V

    goto :goto_0

    .line 37
    :cond_1
    instance-of v1, v0, Ljava/time/LocalDate;

    if-eqz v1, :cond_2

    .line 38
    check-cast v0, Ljava/time/LocalDate;

    invoke-interface {p1, v0}, Lorg/apache/poi/ss/usermodel/Cell;->setCellValue(Ljava/time/LocalDate;)V

    :cond_2
    :goto_0
    return-void
.end method

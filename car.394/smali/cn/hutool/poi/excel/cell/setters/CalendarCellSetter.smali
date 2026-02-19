.class public Lcn/hutool/poi/excel/cell/setters/CalendarCellSetter;
.super Ljava/lang/Object;
.source "CalendarCellSetter.java"

# interfaces
.implements Lcn/hutool/poi/excel/cell/CellSetter;


# instance fields
.field private final value:Ljava/util/Calendar;


# direct methods
.method constructor <init>(Ljava/util/Calendar;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcn/hutool/poi/excel/cell/setters/CalendarCellSetter;->value:Ljava/util/Calendar;

    return-void
.end method


# virtual methods
.method public setValue(Lorg/apache/poi/ss/usermodel/Cell;)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcn/hutool/poi/excel/cell/setters/CalendarCellSetter;->value:Ljava/util/Calendar;

    invoke-interface {p1, v0}, Lorg/apache/poi/ss/usermodel/Cell;->setCellValue(Ljava/util/Calendar;)V

    return-void
.end method

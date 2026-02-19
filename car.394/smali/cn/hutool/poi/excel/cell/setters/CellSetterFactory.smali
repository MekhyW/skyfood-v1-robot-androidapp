.class public Lcn/hutool/poi/excel/cell/setters/CellSetterFactory;
.super Ljava/lang/Object;
.source "CellSetterFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCellSetter(Ljava/lang/Object;)Lcn/hutool/poi/excel/cell/CellSetter;
    .locals 1

    if-nez p0, :cond_0

    .line 27
    sget-object p0, Lcn/hutool/poi/excel/cell/setters/NullCellSetter;->INSTANCE:Lcn/hutool/poi/excel/cell/setters/NullCellSetter;

    return-object p0

    .line 28
    :cond_0
    instance-of v0, p0, Lcn/hutool/poi/excel/cell/CellSetter;

    if-eqz v0, :cond_1

    .line 29
    check-cast p0, Lcn/hutool/poi/excel/cell/CellSetter;

    return-object p0

    .line 30
    :cond_1
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_2

    .line 31
    new-instance v0, Lcn/hutool/poi/excel/cell/setters/DateCellSetter;

    check-cast p0, Ljava/util/Date;

    invoke-direct {v0, p0}, Lcn/hutool/poi/excel/cell/setters/DateCellSetter;-><init>(Ljava/util/Date;)V

    return-object v0

    .line 32
    :cond_2
    instance-of v0, p0, Ljava/time/temporal/TemporalAccessor;

    if-eqz v0, :cond_3

    .line 33
    new-instance v0, Lcn/hutool/poi/excel/cell/setters/TemporalAccessorCellSetter;

    check-cast p0, Ljava/time/temporal/TemporalAccessor;

    invoke-direct {v0, p0}, Lcn/hutool/poi/excel/cell/setters/TemporalAccessorCellSetter;-><init>(Ljava/time/temporal/TemporalAccessor;)V

    return-object v0

    .line 34
    :cond_3
    instance-of v0, p0, Ljava/util/Calendar;

    if-eqz v0, :cond_4

    .line 35
    new-instance v0, Lcn/hutool/poi/excel/cell/setters/CalendarCellSetter;

    check-cast p0, Ljava/util/Calendar;

    invoke-direct {v0, p0}, Lcn/hutool/poi/excel/cell/setters/CalendarCellSetter;-><init>(Ljava/util/Calendar;)V

    return-object v0

    .line 36
    :cond_4
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    .line 37
    new-instance v0, Lcn/hutool/poi/excel/cell/setters/BooleanCellSetter;

    check-cast p0, Ljava/lang/Boolean;

    invoke-direct {v0, p0}, Lcn/hutool/poi/excel/cell/setters/BooleanCellSetter;-><init>(Ljava/lang/Boolean;)V

    return-object v0

    .line 38
    :cond_5
    instance-of v0, p0, Lorg/apache/poi/ss/usermodel/RichTextString;

    if-eqz v0, :cond_6

    .line 39
    new-instance v0, Lcn/hutool/poi/excel/cell/setters/RichTextCellSetter;

    check-cast p0, Lorg/apache/poi/ss/usermodel/RichTextString;

    invoke-direct {v0, p0}, Lcn/hutool/poi/excel/cell/setters/RichTextCellSetter;-><init>(Lorg/apache/poi/ss/usermodel/RichTextString;)V

    return-object v0

    .line 40
    :cond_6
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_7

    .line 41
    new-instance v0, Lcn/hutool/poi/excel/cell/setters/NumberCellSetter;

    check-cast p0, Ljava/lang/Number;

    invoke-direct {v0, p0}, Lcn/hutool/poi/excel/cell/setters/NumberCellSetter;-><init>(Ljava/lang/Number;)V

    return-object v0

    .line 42
    :cond_7
    instance-of v0, p0, Lorg/apache/poi/ss/usermodel/Hyperlink;

    if-eqz v0, :cond_8

    .line 43
    new-instance v0, Lcn/hutool/poi/excel/cell/setters/HyperlinkCellSetter;

    check-cast p0, Lorg/apache/poi/ss/usermodel/Hyperlink;

    invoke-direct {v0, p0}, Lcn/hutool/poi/excel/cell/setters/HyperlinkCellSetter;-><init>(Lorg/apache/poi/ss/usermodel/Hyperlink;)V

    return-object v0

    .line 45
    :cond_8
    new-instance v0, Lcn/hutool/poi/excel/cell/setters/CharSequenceCellSetter;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcn/hutool/poi/excel/cell/setters/CharSequenceCellSetter;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

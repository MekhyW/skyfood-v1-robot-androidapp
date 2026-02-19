.class public Lcn/hutool/poi/excel/StyleSet;
.super Ljava/lang/Object;
.source "StyleSet.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final cellStyle:Lorg/apache/poi/ss/usermodel/CellStyle;

.field protected final cellStyleForDate:Lorg/apache/poi/ss/usermodel/CellStyle;

.field protected final cellStyleForHyperlink:Lorg/apache/poi/ss/usermodel/CellStyle;

.field protected final cellStyleForNumber:Lorg/apache/poi/ss/usermodel/CellStyle;

.field protected final headCellStyle:Lorg/apache/poi/ss/usermodel/CellStyle;

.field private final workbook:Lorg/apache/poi/ss/usermodel/Workbook;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/usermodel/Workbook;)V
    .locals 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcn/hutool/poi/excel/StyleSet;->workbook:Lorg/apache/poi/ss/usermodel/Workbook;

    .line 53
    invoke-static {p1}, Lcn/hutool/poi/excel/style/StyleUtil;->createHeadCellStyle(Lorg/apache/poi/ss/usermodel/Workbook;)Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v0

    iput-object v0, p0, Lcn/hutool/poi/excel/StyleSet;->headCellStyle:Lorg/apache/poi/ss/usermodel/CellStyle;

    .line 54
    invoke-static {p1}, Lcn/hutool/poi/excel/style/StyleUtil;->createDefaultCellStyle(Lorg/apache/poi/ss/usermodel/Workbook;)Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v0

    iput-object v0, p0, Lcn/hutool/poi/excel/StyleSet;->cellStyle:Lorg/apache/poi/ss/usermodel/CellStyle;

    .line 57
    invoke-static {p1, v0}, Lcn/hutool/poi/excel/style/StyleUtil;->cloneCellStyle(Lorg/apache/poi/ss/usermodel/Workbook;Lorg/apache/poi/ss/usermodel/CellStyle;)Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v1

    iput-object v1, p0, Lcn/hutool/poi/excel/StyleSet;->cellStyleForNumber:Lorg/apache/poi/ss/usermodel/CellStyle;

    const/4 v2, 0x2

    .line 59
    invoke-interface {v1, v2}, Lorg/apache/poi/ss/usermodel/CellStyle;->setDataFormat(S)V

    .line 62
    invoke-static {p1, v0}, Lcn/hutool/poi/excel/style/StyleUtil;->cloneCellStyle(Lorg/apache/poi/ss/usermodel/Workbook;Lorg/apache/poi/ss/usermodel/CellStyle;)Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v1

    iput-object v1, p0, Lcn/hutool/poi/excel/StyleSet;->cellStyleForDate:Lorg/apache/poi/ss/usermodel/CellStyle;

    const/16 v2, 0x16

    .line 64
    invoke-interface {v1, v2}, Lorg/apache/poi/ss/usermodel/CellStyle;->setDataFormat(S)V

    .line 68
    invoke-static {p1, v0}, Lcn/hutool/poi/excel/style/StyleUtil;->cloneCellStyle(Lorg/apache/poi/ss/usermodel/Workbook;Lorg/apache/poi/ss/usermodel/CellStyle;)Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v0

    iput-object v0, p0, Lcn/hutool/poi/excel/StyleSet;->cellStyleForHyperlink:Lorg/apache/poi/ss/usermodel/CellStyle;

    .line 69
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Workbook;->createFont()Lorg/apache/poi/ss/usermodel/Font;

    move-result-object p1

    const/4 v1, 0x1

    .line 70
    invoke-interface {p1, v1}, Lorg/apache/poi/ss/usermodel/Font;->setUnderline(B)V

    .line 71
    sget-object v1, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->BLUE:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->getIndex()S

    move-result v1

    invoke-interface {p1, v1}, Lorg/apache/poi/ss/usermodel/Font;->setColor(S)V

    .line 72
    invoke-interface {v0, p1}, Lorg/apache/poi/ss/usermodel/CellStyle;->setFont(Lorg/apache/poi/ss/usermodel/Font;)V

    return-void
.end method


# virtual methods
.method public getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;
    .locals 1

    .line 90
    iget-object v0, p0, Lcn/hutool/poi/excel/StyleSet;->cellStyle:Lorg/apache/poi/ss/usermodel/CellStyle;

    return-object v0
.end method

.method public getCellStyleForDate()Lorg/apache/poi/ss/usermodel/CellStyle;
    .locals 1

    .line 108
    iget-object v0, p0, Lcn/hutool/poi/excel/StyleSet;->cellStyleForDate:Lorg/apache/poi/ss/usermodel/CellStyle;

    return-object v0
.end method

.method public getCellStyleForHyperlink()Lorg/apache/poi/ss/usermodel/CellStyle;
    .locals 1

    .line 118
    iget-object v0, p0, Lcn/hutool/poi/excel/StyleSet;->cellStyleForHyperlink:Lorg/apache/poi/ss/usermodel/CellStyle;

    return-object v0
.end method

.method public getCellStyleForNumber()Lorg/apache/poi/ss/usermodel/CellStyle;
    .locals 1

    .line 99
    iget-object v0, p0, Lcn/hutool/poi/excel/StyleSet;->cellStyleForNumber:Lorg/apache/poi/ss/usermodel/CellStyle;

    return-object v0
.end method

.method public getHeadCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;
    .locals 1

    .line 81
    iget-object v0, p0, Lcn/hutool/poi/excel/StyleSet;->headCellStyle:Lorg/apache/poi/ss/usermodel/CellStyle;

    return-object v0
.end method

.method public getStyleByValueType(Ljava/lang/Object;Z)Lorg/apache/poi/ss/usermodel/CellStyle;
    .locals 1

    if-eqz p2, :cond_0

    .line 232
    iget-object p2, p0, Lcn/hutool/poi/excel/StyleSet;->headCellStyle:Lorg/apache/poi/ss/usermodel/CellStyle;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 234
    :cond_0
    iget-object p2, p0, Lcn/hutool/poi/excel/StyleSet;->cellStyle:Lorg/apache/poi/ss/usermodel/CellStyle;

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 238
    :goto_0
    instance-of v0, p1, Ljava/util/Date;

    if-nez v0, :cond_5

    instance-of v0, p1, Ljava/time/temporal/TemporalAccessor;

    if-nez v0, :cond_5

    instance-of v0, p1, Ljava/util/Calendar;

    if-eqz v0, :cond_2

    goto :goto_1

    .line 245
    :cond_2
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_4

    .line 247
    instance-of v0, p1, Ljava/lang/Double;

    if-nez v0, :cond_3

    instance-of v0, p1, Ljava/lang/Float;

    if-nez v0, :cond_3

    instance-of p1, p1, Ljava/math/BigDecimal;

    if-eqz p1, :cond_6

    :cond_3
    iget-object p1, p0, Lcn/hutool/poi/excel/StyleSet;->cellStyleForNumber:Lorg/apache/poi/ss/usermodel/CellStyle;

    if-eqz p1, :cond_6

    goto :goto_2

    .line 251
    :cond_4
    instance-of p1, p1, Lorg/apache/poi/ss/usermodel/Hyperlink;

    if-eqz p1, :cond_6

    .line 253
    iget-object p1, p0, Lcn/hutool/poi/excel/StyleSet;->cellStyleForHyperlink:Lorg/apache/poi/ss/usermodel/CellStyle;

    if-eqz p1, :cond_6

    goto :goto_2

    .line 242
    :cond_5
    :goto_1
    iget-object p1, p0, Lcn/hutool/poi/excel/StyleSet;->cellStyleForDate:Lorg/apache/poi/ss/usermodel/CellStyle;

    if-eqz p1, :cond_6

    :goto_2
    move-object p2, p1

    :cond_6
    return-object p2
.end method

.method public setAlign(Lorg/apache/poi/ss/usermodel/HorizontalAlignment;Lorg/apache/poi/ss/usermodel/VerticalAlignment;)Lcn/hutool/poi/excel/StyleSet;
    .locals 1

    .line 147
    iget-object v0, p0, Lcn/hutool/poi/excel/StyleSet;->headCellStyle:Lorg/apache/poi/ss/usermodel/CellStyle;

    invoke-static {v0, p1, p2}, Lcn/hutool/poi/excel/style/StyleUtil;->setAlign(Lorg/apache/poi/ss/usermodel/CellStyle;Lorg/apache/poi/ss/usermodel/HorizontalAlignment;Lorg/apache/poi/ss/usermodel/VerticalAlignment;)Lorg/apache/poi/ss/usermodel/CellStyle;

    .line 148
    iget-object v0, p0, Lcn/hutool/poi/excel/StyleSet;->cellStyle:Lorg/apache/poi/ss/usermodel/CellStyle;

    invoke-static {v0, p1, p2}, Lcn/hutool/poi/excel/style/StyleUtil;->setAlign(Lorg/apache/poi/ss/usermodel/CellStyle;Lorg/apache/poi/ss/usermodel/HorizontalAlignment;Lorg/apache/poi/ss/usermodel/VerticalAlignment;)Lorg/apache/poi/ss/usermodel/CellStyle;

    .line 149
    iget-object v0, p0, Lcn/hutool/poi/excel/StyleSet;->cellStyleForNumber:Lorg/apache/poi/ss/usermodel/CellStyle;

    invoke-static {v0, p1, p2}, Lcn/hutool/poi/excel/style/StyleUtil;->setAlign(Lorg/apache/poi/ss/usermodel/CellStyle;Lorg/apache/poi/ss/usermodel/HorizontalAlignment;Lorg/apache/poi/ss/usermodel/VerticalAlignment;)Lorg/apache/poi/ss/usermodel/CellStyle;

    .line 150
    iget-object v0, p0, Lcn/hutool/poi/excel/StyleSet;->cellStyleForDate:Lorg/apache/poi/ss/usermodel/CellStyle;

    invoke-static {v0, p1, p2}, Lcn/hutool/poi/excel/style/StyleUtil;->setAlign(Lorg/apache/poi/ss/usermodel/CellStyle;Lorg/apache/poi/ss/usermodel/HorizontalAlignment;Lorg/apache/poi/ss/usermodel/VerticalAlignment;)Lorg/apache/poi/ss/usermodel/CellStyle;

    .line 151
    iget-object v0, p0, Lcn/hutool/poi/excel/StyleSet;->cellStyleForHyperlink:Lorg/apache/poi/ss/usermodel/CellStyle;

    invoke-static {v0, p1, p2}, Lcn/hutool/poi/excel/style/StyleUtil;->setAlign(Lorg/apache/poi/ss/usermodel/CellStyle;Lorg/apache/poi/ss/usermodel/HorizontalAlignment;Lorg/apache/poi/ss/usermodel/VerticalAlignment;)Lorg/apache/poi/ss/usermodel/CellStyle;

    return-object p0
.end method

.method public setBackgroundColor(Lorg/apache/poi/ss/usermodel/IndexedColors;Z)Lcn/hutool/poi/excel/StyleSet;
    .locals 1

    if-eqz p2, :cond_0

    .line 165
    iget-object p2, p0, Lcn/hutool/poi/excel/StyleSet;->headCellStyle:Lorg/apache/poi/ss/usermodel/CellStyle;

    sget-object v0, Lorg/apache/poi/ss/usermodel/FillPatternType;->SOLID_FOREGROUND:Lorg/apache/poi/ss/usermodel/FillPatternType;

    invoke-static {p2, p1, v0}, Lcn/hutool/poi/excel/style/StyleUtil;->setColor(Lorg/apache/poi/ss/usermodel/CellStyle;Lorg/apache/poi/ss/usermodel/IndexedColors;Lorg/apache/poi/ss/usermodel/FillPatternType;)Lorg/apache/poi/ss/usermodel/CellStyle;

    .line 167
    :cond_0
    iget-object p2, p0, Lcn/hutool/poi/excel/StyleSet;->cellStyle:Lorg/apache/poi/ss/usermodel/CellStyle;

    sget-object v0, Lorg/apache/poi/ss/usermodel/FillPatternType;->SOLID_FOREGROUND:Lorg/apache/poi/ss/usermodel/FillPatternType;

    invoke-static {p2, p1, v0}, Lcn/hutool/poi/excel/style/StyleUtil;->setColor(Lorg/apache/poi/ss/usermodel/CellStyle;Lorg/apache/poi/ss/usermodel/IndexedColors;Lorg/apache/poi/ss/usermodel/FillPatternType;)Lorg/apache/poi/ss/usermodel/CellStyle;

    .line 168
    iget-object p2, p0, Lcn/hutool/poi/excel/StyleSet;->cellStyleForNumber:Lorg/apache/poi/ss/usermodel/CellStyle;

    sget-object v0, Lorg/apache/poi/ss/usermodel/FillPatternType;->SOLID_FOREGROUND:Lorg/apache/poi/ss/usermodel/FillPatternType;

    invoke-static {p2, p1, v0}, Lcn/hutool/poi/excel/style/StyleUtil;->setColor(Lorg/apache/poi/ss/usermodel/CellStyle;Lorg/apache/poi/ss/usermodel/IndexedColors;Lorg/apache/poi/ss/usermodel/FillPatternType;)Lorg/apache/poi/ss/usermodel/CellStyle;

    .line 169
    iget-object p2, p0, Lcn/hutool/poi/excel/StyleSet;->cellStyleForDate:Lorg/apache/poi/ss/usermodel/CellStyle;

    sget-object v0, Lorg/apache/poi/ss/usermodel/FillPatternType;->SOLID_FOREGROUND:Lorg/apache/poi/ss/usermodel/FillPatternType;

    invoke-static {p2, p1, v0}, Lcn/hutool/poi/excel/style/StyleUtil;->setColor(Lorg/apache/poi/ss/usermodel/CellStyle;Lorg/apache/poi/ss/usermodel/IndexedColors;Lorg/apache/poi/ss/usermodel/FillPatternType;)Lorg/apache/poi/ss/usermodel/CellStyle;

    .line 170
    iget-object p2, p0, Lcn/hutool/poi/excel/StyleSet;->cellStyleForHyperlink:Lorg/apache/poi/ss/usermodel/CellStyle;

    sget-object v0, Lorg/apache/poi/ss/usermodel/FillPatternType;->SOLID_FOREGROUND:Lorg/apache/poi/ss/usermodel/FillPatternType;

    invoke-static {p2, p1, v0}, Lcn/hutool/poi/excel/style/StyleUtil;->setColor(Lorg/apache/poi/ss/usermodel/CellStyle;Lorg/apache/poi/ss/usermodel/IndexedColors;Lorg/apache/poi/ss/usermodel/FillPatternType;)Lorg/apache/poi/ss/usermodel/CellStyle;

    return-object p0
.end method

.method public setBorder(Lorg/apache/poi/ss/usermodel/BorderStyle;Lorg/apache/poi/ss/usermodel/IndexedColors;)Lcn/hutool/poi/excel/StyleSet;
    .locals 1

    .line 130
    iget-object v0, p0, Lcn/hutool/poi/excel/StyleSet;->headCellStyle:Lorg/apache/poi/ss/usermodel/CellStyle;

    invoke-static {v0, p1, p2}, Lcn/hutool/poi/excel/style/StyleUtil;->setBorder(Lorg/apache/poi/ss/usermodel/CellStyle;Lorg/apache/poi/ss/usermodel/BorderStyle;Lorg/apache/poi/ss/usermodel/IndexedColors;)Lorg/apache/poi/ss/usermodel/CellStyle;

    .line 131
    iget-object v0, p0, Lcn/hutool/poi/excel/StyleSet;->cellStyle:Lorg/apache/poi/ss/usermodel/CellStyle;

    invoke-static {v0, p1, p2}, Lcn/hutool/poi/excel/style/StyleUtil;->setBorder(Lorg/apache/poi/ss/usermodel/CellStyle;Lorg/apache/poi/ss/usermodel/BorderStyle;Lorg/apache/poi/ss/usermodel/IndexedColors;)Lorg/apache/poi/ss/usermodel/CellStyle;

    .line 132
    iget-object v0, p0, Lcn/hutool/poi/excel/StyleSet;->cellStyleForNumber:Lorg/apache/poi/ss/usermodel/CellStyle;

    invoke-static {v0, p1, p2}, Lcn/hutool/poi/excel/style/StyleUtil;->setBorder(Lorg/apache/poi/ss/usermodel/CellStyle;Lorg/apache/poi/ss/usermodel/BorderStyle;Lorg/apache/poi/ss/usermodel/IndexedColors;)Lorg/apache/poi/ss/usermodel/CellStyle;

    .line 133
    iget-object v0, p0, Lcn/hutool/poi/excel/StyleSet;->cellStyleForDate:Lorg/apache/poi/ss/usermodel/CellStyle;

    invoke-static {v0, p1, p2}, Lcn/hutool/poi/excel/style/StyleUtil;->setBorder(Lorg/apache/poi/ss/usermodel/CellStyle;Lorg/apache/poi/ss/usermodel/BorderStyle;Lorg/apache/poi/ss/usermodel/IndexedColors;)Lorg/apache/poi/ss/usermodel/CellStyle;

    .line 134
    iget-object v0, p0, Lcn/hutool/poi/excel/StyleSet;->cellStyleForHyperlink:Lorg/apache/poi/ss/usermodel/CellStyle;

    invoke-static {v0, p1, p2}, Lcn/hutool/poi/excel/style/StyleUtil;->setBorder(Lorg/apache/poi/ss/usermodel/CellStyle;Lorg/apache/poi/ss/usermodel/BorderStyle;Lorg/apache/poi/ss/usermodel/IndexedColors;)Lorg/apache/poi/ss/usermodel/CellStyle;

    return-object p0
.end method

.method public setFont(Lorg/apache/poi/ss/usermodel/Font;Z)Lcn/hutool/poi/excel/StyleSet;
    .locals 0

    if-nez p2, :cond_0

    .line 198
    iget-object p2, p0, Lcn/hutool/poi/excel/StyleSet;->headCellStyle:Lorg/apache/poi/ss/usermodel/CellStyle;

    invoke-interface {p2, p1}, Lorg/apache/poi/ss/usermodel/CellStyle;->setFont(Lorg/apache/poi/ss/usermodel/Font;)V

    .line 200
    :cond_0
    iget-object p2, p0, Lcn/hutool/poi/excel/StyleSet;->cellStyle:Lorg/apache/poi/ss/usermodel/CellStyle;

    invoke-interface {p2, p1}, Lorg/apache/poi/ss/usermodel/CellStyle;->setFont(Lorg/apache/poi/ss/usermodel/Font;)V

    .line 201
    iget-object p2, p0, Lcn/hutool/poi/excel/StyleSet;->cellStyleForNumber:Lorg/apache/poi/ss/usermodel/CellStyle;

    invoke-interface {p2, p1}, Lorg/apache/poi/ss/usermodel/CellStyle;->setFont(Lorg/apache/poi/ss/usermodel/Font;)V

    .line 202
    iget-object p2, p0, Lcn/hutool/poi/excel/StyleSet;->cellStyleForDate:Lorg/apache/poi/ss/usermodel/CellStyle;

    invoke-interface {p2, p1}, Lorg/apache/poi/ss/usermodel/CellStyle;->setFont(Lorg/apache/poi/ss/usermodel/Font;)V

    .line 203
    iget-object p2, p0, Lcn/hutool/poi/excel/StyleSet;->cellStyleForHyperlink:Lorg/apache/poi/ss/usermodel/CellStyle;

    invoke-interface {p2, p1}, Lorg/apache/poi/ss/usermodel/CellStyle;->setFont(Lorg/apache/poi/ss/usermodel/Font;)V

    return-object p0
.end method

.method public setFont(SSLjava/lang/String;Z)Lcn/hutool/poi/excel/StyleSet;
    .locals 1

    .line 184
    iget-object v0, p0, Lcn/hutool/poi/excel/StyleSet;->workbook:Lorg/apache/poi/ss/usermodel/Workbook;

    invoke-static {v0, p1, p2, p3}, Lcn/hutool/poi/excel/style/StyleUtil;->createFont(Lorg/apache/poi/ss/usermodel/Workbook;SSLjava/lang/String;)Lorg/apache/poi/ss/usermodel/Font;

    move-result-object p1

    .line 185
    invoke-virtual {p0, p1, p4}, Lcn/hutool/poi/excel/StyleSet;->setFont(Lorg/apache/poi/ss/usermodel/Font;Z)Lcn/hutool/poi/excel/StyleSet;

    move-result-object p1

    return-object p1
.end method

.method public setWrapText()Lcn/hutool/poi/excel/StyleSet;
    .locals 2

    .line 214
    iget-object v0, p0, Lcn/hutool/poi/excel/StyleSet;->cellStyle:Lorg/apache/poi/ss/usermodel/CellStyle;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/apache/poi/ss/usermodel/CellStyle;->setWrapText(Z)V

    .line 215
    iget-object v0, p0, Lcn/hutool/poi/excel/StyleSet;->cellStyleForNumber:Lorg/apache/poi/ss/usermodel/CellStyle;

    invoke-interface {v0, v1}, Lorg/apache/poi/ss/usermodel/CellStyle;->setWrapText(Z)V

    .line 216
    iget-object v0, p0, Lcn/hutool/poi/excel/StyleSet;->cellStyleForDate:Lorg/apache/poi/ss/usermodel/CellStyle;

    invoke-interface {v0, v1}, Lorg/apache/poi/ss/usermodel/CellStyle;->setWrapText(Z)V

    .line 217
    iget-object v0, p0, Lcn/hutool/poi/excel/StyleSet;->cellStyleForHyperlink:Lorg/apache/poi/ss/usermodel/CellStyle;

    invoke-interface {v0, v1}, Lorg/apache/poi/ss/usermodel/CellStyle;->setWrapText(Z)V

    return-object p0
.end method

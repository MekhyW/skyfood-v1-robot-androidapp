.class public Lcn/hutool/poi/excel/cell/CellUtil;
.super Ljava/lang/Object;
.source "CellUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCell(Lorg/apache/poi/ss/usermodel/Row;I)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 209
    :cond_0
    invoke-interface {p0, p1}, Lorg/apache/poi/ss/usermodel/Row;->getCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v0

    if-nez v0, :cond_1

    .line 211
    new-instance v0, Lcn/hutool/poi/excel/cell/NullCell;

    invoke-direct {v0, p0, p1}, Lcn/hutool/poi/excel/cell/NullCell;-><init>(Lorg/apache/poi/ss/usermodel/Row;I)V

    :cond_1
    return-object v0
.end method

.method private static getCellIfMergedRegion(Lorg/apache/poi/ss/usermodel/Sheet;II)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 3

    .line 488
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Sheet;->getMergedRegions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 489
    invoke-virtual {v1, p2, p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->isInRange(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 490
    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result p1

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result p2

    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/util/SheetUtil;->getCell(Lorg/apache/poi/ss/usermodel/Sheet;II)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCellRangeAddress(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 2

    .line 303
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v0

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getColumnIndex()I

    move-result v1

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getRowIndex()I

    move-result p0

    invoke-static {v0, v1, p0}, Lcn/hutool/poi/excel/cell/CellUtil;->getCellRangeAddress(Lorg/apache/poi/ss/usermodel/Sheet;II)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object p0

    return-object p0
.end method

.method public static getCellRangeAddress(Lorg/apache/poi/ss/usermodel/Sheet;II)Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 4

    if-eqz p0, :cond_1

    .line 317
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Sheet;->getNumMergedRegions()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 320
    invoke-interface {p0, v1}, Lorg/apache/poi/ss/usermodel/Sheet;->getMergedRegion(I)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v2

    .line 321
    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v3

    if-lt p2, v3, :cond_0

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v3

    if-gt p2, v3, :cond_0

    .line 322
    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v3

    if-lt p1, v3, :cond_0

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v3

    if-gt p1, v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCellRangeAddress(Lorg/apache/poi/ss/usermodel/Sheet;Ljava/lang/String;)Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 1

    .line 291
    invoke-static {p1}, Lcn/hutool/poi/excel/ExcelUtil;->toLocation(Ljava/lang/String;)Lcn/hutool/poi/excel/cell/CellLocation;

    move-result-object p1

    .line 292
    invoke-virtual {p1}, Lcn/hutool/poi/excel/cell/CellLocation;->getX()I

    move-result v0

    invoke-virtual {p1}, Lcn/hutool/poi/excel/cell/CellLocation;->getY()I

    move-result p1

    invoke-static {p0, v0, p1}, Lcn/hutool/poi/excel/cell/CellUtil;->getCellRangeAddress(Lorg/apache/poi/ss/usermodel/Sheet;II)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object p0

    return-object p0
.end method

.method public static getCellValue(Lorg/apache/poi/ss/usermodel/Cell;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-static {p0, v0}, Lcn/hutool/poi/excel/cell/CellUtil;->getCellValue(Lorg/apache/poi/ss/usermodel/Cell;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getCellValue(Lorg/apache/poi/ss/usermodel/Cell;Lcn/hutool/poi/excel/cell/CellEditor;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-static {p0, v0, p1}, Lcn/hutool/poi/excel/cell/CellUtil;->getCellValue(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellType;Lcn/hutool/poi/excel/cell/CellEditor;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getCellValue(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellType;Lcn/hutool/poi/excel/cell/CellEditor;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 94
    :cond_0
    instance-of v1, p0, Lcn/hutool/poi/excel/cell/NullCell;

    if-eqz v1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    .line 95
    :cond_1
    invoke-interface {p2, p0, v0}, Lcn/hutool/poi/excel/cell/CellEditor;->edit(Lorg/apache/poi/ss/usermodel/Cell;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    if-nez p1, :cond_3

    .line 98
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getCellType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object p1

    .line 102
    :cond_3
    invoke-static {p0}, Lcn/hutool/poi/excel/cell/CellUtil;->getMergedRegionCell(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v0

    if-eq v0, p0, :cond_4

    .line 105
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Cell;->getCellType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object p1

    move-object p0, v0

    .line 109
    :cond_4
    sget-object v0, Lcn/hutool/poi/excel/cell/CellUtil$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/CellType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_9

    const/4 v0, 0x2

    if-eq p1, v0, :cond_8

    const/4 v0, 0x3

    if-eq p1, v0, :cond_7

    const/4 v0, 0x4

    if-eq p1, v0, :cond_6

    const/4 v0, 0x5

    if-eq p1, v0, :cond_5

    .line 126
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getStringCellValue()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 123
    :cond_5
    new-instance p1, Lcn/hutool/poi/excel/cell/values/ErrorCellValue;

    invoke-direct {p1, p0}, Lcn/hutool/poi/excel/cell/values/ErrorCellValue;-><init>(Lorg/apache/poi/ss/usermodel/Cell;)V

    invoke-virtual {p1}, Lcn/hutool/poi/excel/cell/values/ErrorCellValue;->getValue()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_6
    const-string p1, ""

    goto :goto_1

    .line 117
    :cond_7
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getCachedFormulaResultType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcn/hutool/poi/excel/cell/CellUtil;->getCellValue(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellType;Lcn/hutool/poi/excel/cell/CellEditor;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    .line 114
    :cond_8
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getBooleanCellValue()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_1

    .line 111
    :cond_9
    new-instance p1, Lcn/hutool/poi/excel/cell/values/NumericCellValue;

    invoke-direct {p1, p0}, Lcn/hutool/poi/excel/cell/values/NumericCellValue;-><init>(Lorg/apache/poi/ss/usermodel/Cell;)V

    invoke-virtual {p1}, Lcn/hutool/poi/excel/cell/values/NumericCellValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    :goto_1
    if-nez p2, :cond_a

    goto :goto_2

    .line 129
    :cond_a
    invoke-interface {p2, p0, p1}, Lcn/hutool/poi/excel/cell/CellEditor;->edit(Lorg/apache/poi/ss/usermodel/Cell;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method public static getCellValue(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/Object;
    .locals 0

    if-eqz p2, :cond_0

    .line 78
    new-instance p2, Lcn/hutool/poi/excel/editors/TrimEditor;

    invoke-direct {p2}, Lcn/hutool/poi/excel/editors/TrimEditor;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p0, p1, p2}, Lcn/hutool/poi/excel/cell/CellUtil;->getCellValue(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellType;Lcn/hutool/poi/excel/cell/CellEditor;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getCellValue(Lorg/apache/poi/ss/usermodel/Cell;Z)Ljava/lang/Object;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 55
    :cond_0
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getCellType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcn/hutool/poi/excel/cell/CellUtil;->getCellValue(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getMergedRegionCell(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 422
    :cond_0
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v0

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getColumnIndex()I

    move-result v1

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getRowIndex()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcn/hutool/poi/excel/cell/CellUtil;->getCellIfMergedRegion(Lorg/apache/poi/ss/usermodel/Sheet;II)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v0

    .line 421
    invoke-static {v0, p0}, Lcn/hutool/core/util/ObjectUtil;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ss/usermodel/Cell;

    return-object p0
.end method

.method public static getMergedRegionCell(Lorg/apache/poi/ss/usermodel/Sheet;II)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 2

    .line 438
    invoke-static {p0, p1, p2}, Lcn/hutool/poi/excel/cell/CellUtil;->getCellIfMergedRegion(Lorg/apache/poi/ss/usermodel/Sheet;II)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v0

    new-instance v1, Lcn/hutool/poi/excel/cell/CellUtil$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2, p1}, Lcn/hutool/poi/excel/cell/CellUtil$$ExternalSyntheticLambda1;-><init>(Lorg/apache/poi/ss/usermodel/Sheet;II)V

    .line 437
    invoke-static {v0, v1}, Lcn/hutool/core/util/ObjectUtil;->defaultIfNull(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ss/usermodel/Cell;

    return-object p0
.end method

.method public static getMergedRegionValue(Lorg/apache/poi/ss/usermodel/Sheet;II)Ljava/lang/Object;
    .locals 0

    .line 406
    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/util/SheetUtil;->getCell(Lorg/apache/poi/ss/usermodel/Sheet;II)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/poi/excel/cell/CellUtil;->getCellValue(Lorg/apache/poi/ss/usermodel/Cell;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getMergedRegionValue(Lorg/apache/poi/ss/usermodel/Sheet;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 390
    invoke-static {p1}, Lcn/hutool/poi/excel/ExcelUtil;->toLocation(Ljava/lang/String;)Lcn/hutool/poi/excel/cell/CellLocation;

    move-result-object p1

    .line 391
    invoke-virtual {p1}, Lcn/hutool/poi/excel/cell/CellLocation;->getX()I

    move-result v0

    invoke-virtual {p1}, Lcn/hutool/poi/excel/cell/CellLocation;->getY()I

    move-result p1

    invoke-static {p0, v0, p1}, Lcn/hutool/poi/excel/cell/CellUtil;->getMergedRegionValue(Lorg/apache/poi/ss/usermodel/Sheet;II)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getOrCreateCell(Lorg/apache/poi/ss/usermodel/Row;I)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 228
    :cond_0
    invoke-interface {p0, p1}, Lorg/apache/poi/ss/usermodel/Row;->getCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v0

    if-nez v0, :cond_1

    .line 230
    invoke-interface {p0, p1}, Lorg/apache/poi/ss/usermodel/Row;->createCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static isMergedRegion(Lorg/apache/poi/ss/usermodel/Cell;)Z
    .locals 2

    .line 256
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v0

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getColumnIndex()I

    move-result v1

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getRowIndex()I

    move-result p0

    invoke-static {v0, v1, p0}, Lcn/hutool/poi/excel/cell/CellUtil;->isMergedRegion(Lorg/apache/poi/ss/usermodel/Sheet;II)Z

    move-result p0

    return p0
.end method

.method public static isMergedRegion(Lorg/apache/poi/ss/usermodel/Sheet;II)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 269
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Sheet;->getNumMergedRegions()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 272
    invoke-interface {p0, v2}, Lorg/apache/poi/ss/usermodel/Sheet;->getMergedRegion(I)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v3

    .line 273
    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v4

    if-lt p2, v4, :cond_0

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v4

    if-gt p2, v4, :cond_0

    .line 274
    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v4

    if-lt p1, v4, :cond_0

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v3

    if-gt p1, v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static isMergedRegion(Lorg/apache/poi/ss/usermodel/Sheet;Ljava/lang/String;)Z
    .locals 1

    .line 244
    invoke-static {p1}, Lcn/hutool/poi/excel/ExcelUtil;->toLocation(Ljava/lang/String;)Lcn/hutool/poi/excel/cell/CellLocation;

    move-result-object p1

    .line 245
    invoke-virtual {p1}, Lcn/hutool/poi/excel/cell/CellLocation;->getX()I

    move-result v0

    invoke-virtual {p1}, Lcn/hutool/poi/excel/cell/CellLocation;->getY()I

    move-result p1

    invoke-static {p0, v0, p1}, Lcn/hutool/poi/excel/cell/CellUtil;->isMergedRegion(Lorg/apache/poi/ss/usermodel/Sheet;II)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$getMergedRegionCell$1(Lorg/apache/poi/ss/usermodel/Sheet;II)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 0

    .line 439
    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/util/SheetUtil;->getCell(Lorg/apache/poi/ss/usermodel/Sheet;II)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$setCellValue$0(Lorg/apache/poi/ss/usermodel/Cell;Ljava/lang/Object;Lorg/apache/poi/ss/usermodel/CellStyle;Lorg/apache/poi/ss/usermodel/Cell;)V
    .locals 0

    .line 165
    invoke-static {p0, p1}, Lcn/hutool/poi/excel/cell/CellUtil;->setCellValue(Lorg/apache/poi/ss/usermodel/Cell;Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    .line 167
    invoke-interface {p3, p2}, Lorg/apache/poi/ss/usermodel/Cell;->setCellStyle(Lorg/apache/poi/ss/usermodel/CellStyle;)V

    :cond_0
    return-void
.end method

.method public static mergingCells(Lorg/apache/poi/ss/usermodel/Sheet;IIII)I
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 354
    invoke-static/range {v0 .. v5}, Lcn/hutool/poi/excel/cell/CellUtil;->mergingCells(Lorg/apache/poi/ss/usermodel/Sheet;IIIILorg/apache/poi/ss/usermodel/CellStyle;)I

    move-result p0

    return p0
.end method

.method public static mergingCells(Lorg/apache/poi/ss/usermodel/Sheet;IIIILorg/apache/poi/ss/usermodel/CellStyle;)I
    .locals 1

    .line 369
    new-instance v0, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    .line 376
    invoke-static {p5, v0, p0}, Lcn/hutool/poi/excel/cell/CellUtil;->setMergeCellStyle(Lorg/apache/poi/ss/usermodel/CellStyle;Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/Sheet;)V

    .line 377
    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/Sheet;->addMergedRegion(Lorg/apache/poi/ss/util/CellRangeAddress;)I

    move-result p0

    return p0
.end method

.method public static setCellValue(Lorg/apache/poi/ss/usermodel/Cell;Ljava/lang/Object;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 190
    :cond_0
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getCellType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 191
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->setBlank()V

    .line 194
    :cond_1
    invoke-static {p1}, Lcn/hutool/poi/excel/cell/setters/CellSetterFactory;->createCellSetter(Ljava/lang/Object;)Lcn/hutool/poi/excel/cell/CellSetter;

    move-result-object p1

    invoke-interface {p1, p0}, Lcn/hutool/poi/excel/cell/CellSetter;->setValue(Lorg/apache/poi/ss/usermodel/Cell;)V

    return-void
.end method

.method public static setCellValue(Lorg/apache/poi/ss/usermodel/Cell;Ljava/lang/Object;Lcn/hutool/poi/excel/StyleSet;Z)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 148
    invoke-virtual {p2, p1, p3}, Lcn/hutool/poi/excel/StyleSet;->getStyleByValueType(Ljava/lang/Object;Z)Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object p2

    invoke-interface {p0, p2}, Lorg/apache/poi/ss/usermodel/Cell;->setCellStyle(Lorg/apache/poi/ss/usermodel/CellStyle;)V

    .line 151
    :cond_1
    invoke-static {p0, p1}, Lcn/hutool/poi/excel/cell/CellUtil;->setCellValue(Lorg/apache/poi/ss/usermodel/Cell;Ljava/lang/Object;)V

    return-void
.end method

.method public static setCellValue(Lorg/apache/poi/ss/usermodel/Cell;Ljava/lang/Object;Lorg/apache/poi/ss/usermodel/CellStyle;)V
    .locals 1

    .line 164
    new-instance v0, Lcn/hutool/poi/excel/cell/CellUtil$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcn/hutool/poi/excel/cell/CellUtil$$ExternalSyntheticLambda0;-><init>(Lorg/apache/poi/ss/usermodel/Cell;Ljava/lang/Object;Lorg/apache/poi/ss/usermodel/CellStyle;)V

    invoke-static {p0, v0}, Lcn/hutool/poi/excel/cell/CellUtil;->setCellValue(Lorg/apache/poi/ss/usermodel/Cell;Ljava/lang/Object;)V

    return-void
.end method

.method public static setComment(Lorg/apache/poi/ss/usermodel/Cell;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ss/usermodel/ClientAnchor;)V
    .locals 3

    .line 452
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v0

    .line 453
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v1

    .line 454
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Sheet;->createDrawingPatriarch()Lorg/apache/poi/ss/usermodel/Drawing;

    move-result-object v0

    .line 455
    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Workbook;->getCreationHelper()Lorg/apache/poi/ss/usermodel/CreationHelper;

    move-result-object v1

    if-nez p3, :cond_0

    .line 457
    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/CreationHelper;->createClientAnchor()Lorg/apache/poi/ss/usermodel/ClientAnchor;

    move-result-object p3

    .line 459
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getColumnIndex()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {p3, v2}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->setCol1(I)V

    .line 460
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getColumnIndex()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-interface {p3, v2}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->setCol2(I)V

    .line 461
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getRowIndex()I

    move-result v2

    invoke-interface {p3, v2}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->setRow1(I)V

    .line 462
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getRowIndex()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-interface {p3, v2}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->setRow2(I)V

    .line 464
    sget-object v2, Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;->MOVE_AND_RESIZE:Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;

    invoke-interface {p3, v2}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->setAnchorType(Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;)V

    .line 466
    :cond_0
    invoke-interface {v0, p3}, Lorg/apache/poi/ss/usermodel/Drawing;->createCellComment(Lorg/apache/poi/ss/usermodel/ClientAnchor;)Lorg/apache/poi/ss/usermodel/Comment;

    move-result-object p3

    .line 469
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getAddress()Lorg/apache/poi/ss/util/CellAddress;

    move-result-object v0

    invoke-interface {p3, v0}, Lorg/apache/poi/ss/usermodel/Comment;->setAddress(Lorg/apache/poi/ss/util/CellAddress;)V

    .line 470
    invoke-interface {v1, p1}, Lorg/apache/poi/ss/usermodel/CreationHelper;->createRichTextString(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/RichTextString;

    move-result-object p1

    invoke-interface {p3, p1}, Lorg/apache/poi/ss/usermodel/Comment;->setString(Lorg/apache/poi/ss/usermodel/RichTextString;)V

    .line 471
    invoke-static {p2}, Lcn/hutool/core/util/StrUtil;->nullToEmpty(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lorg/apache/poi/ss/usermodel/Comment;->setAuthor(Ljava/lang/String;)V

    .line 472
    invoke-interface {p0, p3}, Lorg/apache/poi/ss/usermodel/Cell;->setCellComment(Lorg/apache/poi/ss/usermodel/Comment;)V

    return-void
.end method

.method private static setMergeCellStyle(Lorg/apache/poi/ss/usermodel/CellStyle;Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/Sheet;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 505
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getBorderTop()Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/apache/poi/ss/util/RegionUtil;->setBorderTop(Lorg/apache/poi/ss/usermodel/BorderStyle;Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/Sheet;)V

    .line 506
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getBorderRight()Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/apache/poi/ss/util/RegionUtil;->setBorderRight(Lorg/apache/poi/ss/usermodel/BorderStyle;Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/Sheet;)V

    .line 507
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getBorderBottom()Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/apache/poi/ss/util/RegionUtil;->setBorderBottom(Lorg/apache/poi/ss/usermodel/BorderStyle;Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/Sheet;)V

    .line 508
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getBorderLeft()Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/apache/poi/ss/util/RegionUtil;->setBorderLeft(Lorg/apache/poi/ss/usermodel/BorderStyle;Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/Sheet;)V

    .line 509
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getTopBorderColor()S

    move-result v0

    invoke-static {v0, p1, p2}, Lorg/apache/poi/ss/util/RegionUtil;->setTopBorderColor(ILorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/Sheet;)V

    .line 510
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getRightBorderColor()S

    move-result v0

    invoke-static {v0, p1, p2}, Lorg/apache/poi/ss/util/RegionUtil;->setRightBorderColor(ILorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/Sheet;)V

    .line 511
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getLeftBorderColor()S

    move-result v0

    invoke-static {v0, p1, p2}, Lorg/apache/poi/ss/util/RegionUtil;->setLeftBorderColor(ILorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/Sheet;)V

    .line 512
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getBottomBorderColor()S

    move-result p0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/util/RegionUtil;->setBottomBorderColor(ILorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/Sheet;)V

    :cond_0
    return-void
.end method

.method public static setMergedRegionStyle(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellStyle;)V
    .locals 1

    .line 337
    invoke-static {p0}, Lcn/hutool/poi/excel/cell/CellUtil;->getCellRangeAddress(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 339
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcn/hutool/poi/excel/cell/CellUtil;->setMergeCellStyle(Lorg/apache/poi/ss/usermodel/CellStyle;Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/Sheet;)V

    :cond_0
    return-void
.end method

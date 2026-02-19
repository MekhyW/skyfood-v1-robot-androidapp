.class public Lcn/hutool/poi/excel/ExcelBase;
.super Ljava/lang/Object;
.source "ExcelBase.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcn/hutool/poi/excel/ExcelBase<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/io/Closeable;"
    }
.end annotation


# instance fields
.field protected destFile:Ljava/io/File;

.field protected headerAlias:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected isClosed:Z

.field protected sheet:Lorg/apache/poi/ss/usermodel/Sheet;

.field protected workbook:Lorg/apache/poi/ss/usermodel/Workbook;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/usermodel/Sheet;)V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "No Sheet provided."

    .line 61
    invoke-static {p1, v1, v0}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iput-object p1, p0, Lcn/hutool/poi/excel/ExcelBase;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    .line 63
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object p1

    iput-object p1, p0, Lcn/hutool/poi/excel/ExcelBase;->workbook:Lorg/apache/poi/ss/usermodel/Workbook;

    return-void
.end method


# virtual methods
.method public addHeaderAlias(Ljava/lang/String;Ljava/lang/String;)Lcn/hutool/poi/excel/ExcelBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 543
    iget-object v0, p0, Lcn/hutool/poi/excel/ExcelBase;->headerAlias:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 545
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 547
    :cond_0
    iput-object v0, p0, Lcn/hutool/poi/excel/ExcelBase;->headerAlias:Ljava/util/Map;

    .line 548
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public clearHeaderAlias()Lcn/hutool/poi/excel/ExcelBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 571
    iput-object v0, p0, Lcn/hutool/poi/excel/ExcelBase;->headerAlias:Ljava/util/Map;

    return-object p0
.end method

.method public cloneSheet(ILjava/lang/String;Z)Lcn/hutool/poi/excel/ExcelBase;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcn/hutool/poi/excel/ExcelBase;->workbook:Lorg/apache/poi/ss/usermodel/Workbook;

    instance-of v1, v0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    if-eqz v1, :cond_0

    .line 188
    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    .line 189
    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->cloneSheet(ILjava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object p1

    goto :goto_0

    .line 191
    :cond_0
    invoke-interface {v0, p1}, Lorg/apache/poi/ss/usermodel/Workbook;->cloneSheet(I)Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v0

    .line 192
    iget-object v1, p0, Lcn/hutool/poi/excel/ExcelBase;->workbook:Lorg/apache/poi/ss/usermodel/Workbook;

    invoke-interface {v1, p1, p2}, Lorg/apache/poi/ss/usermodel/Workbook;->setSheetName(ILjava/lang/String;)V

    move-object p1, v0

    :goto_0
    if-eqz p3, :cond_1

    .line 195
    iput-object p1, p0, Lcn/hutool/poi/excel/ExcelBase;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    :cond_1
    return-object p0
.end method

.method public close()V
    .locals 1

    .line 508
    iget-object v0, p0, Lcn/hutool/poi/excel/ExcelBase;->workbook:Lorg/apache/poi/ss/usermodel/Workbook;

    invoke-static {v0}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    .line 509
    iput-object v0, p0, Lcn/hutool/poi/excel/ExcelBase;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    .line 510
    iput-object v0, p0, Lcn/hutool/poi/excel/ExcelBase;->workbook:Lorg/apache/poi/ss/usermodel/Workbook;

    const/4 v0, 0x1

    .line 511
    iput-boolean v0, p0, Lcn/hutool/poi/excel/ExcelBase;->isClosed:Z

    return-void
.end method

.method public createCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;
    .locals 1

    .line 351
    iget-object v0, p0, Lcn/hutool/poi/excel/ExcelBase;->workbook:Lorg/apache/poi/ss/usermodel/Workbook;

    invoke-static {v0}, Lcn/hutool/poi/excel/style/StyleUtil;->createCellStyle(Lorg/apache/poi/ss/usermodel/Workbook;)Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v0

    return-object v0
.end method

.method public createCellStyle(II)Lorg/apache/poi/ss/usermodel/CellStyle;
    .locals 0

    .line 337
    invoke-virtual {p0, p1, p2}, Lcn/hutool/poi/excel/ExcelBase;->getOrCreateCell(II)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object p1

    .line 338
    iget-object p2, p0, Lcn/hutool/poi/excel/ExcelBase;->workbook:Lorg/apache/poi/ss/usermodel/Workbook;

    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Workbook;->createCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object p2

    .line 339
    invoke-interface {p1, p2}, Lorg/apache/poi/ss/usermodel/Cell;->setCellStyle(Lorg/apache/poi/ss/usermodel/CellStyle;)V

    return-object p2
.end method

.method public createCellStyle(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/CellStyle;
    .locals 1

    .line 324
    invoke-static {p1}, Lcn/hutool/poi/excel/ExcelUtil;->toLocation(Ljava/lang/String;)Lcn/hutool/poi/excel/cell/CellLocation;

    move-result-object p1

    .line 325
    invoke-virtual {p1}, Lcn/hutool/poi/excel/cell/CellLocation;->getX()I

    move-result v0

    invoke-virtual {p1}, Lcn/hutool/poi/excel/cell/CellLocation;->getY()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcn/hutool/poi/excel/ExcelBase;->createCellStyle(II)Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object p1

    return-object p1
.end method

.method public createColumnStyle(I)Lorg/apache/poi/ss/usermodel/CellStyle;
    .locals 2

    .line 401
    iget-object v0, p0, Lcn/hutool/poi/excel/ExcelBase;->workbook:Lorg/apache/poi/ss/usermodel/Workbook;

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Workbook;->createCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v0

    .line 402
    iget-object v1, p0, Lcn/hutool/poi/excel/ExcelBase;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-interface {v1, p1, v0}, Lorg/apache/poi/ss/usermodel/Sheet;->setDefaultColumnStyle(ILorg/apache/poi/ss/usermodel/CellStyle;)V

    return-object v0
.end method

.method public createHyperlink(Lorg/apache/poi/common/usermodel/HyperlinkType;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Hyperlink;
    .locals 0

    .line 414
    invoke-virtual {p0, p1, p2, p2}, Lcn/hutool/poi/excel/ExcelBase;->createHyperlink(Lorg/apache/poi/common/usermodel/HyperlinkType;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Hyperlink;

    move-result-object p1

    return-object p1
.end method

.method public createHyperlink(Lorg/apache/poi/common/usermodel/HyperlinkType;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Hyperlink;
    .locals 1

    .line 426
    iget-object v0, p0, Lcn/hutool/poi/excel/ExcelBase;->workbook:Lorg/apache/poi/ss/usermodel/Workbook;

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Workbook;->getCreationHelper()Lorg/apache/poi/ss/usermodel/CreationHelper;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/poi/ss/usermodel/CreationHelper;->createHyperlink(Lorg/apache/poi/common/usermodel/HyperlinkType;)Lorg/apache/poi/ss/usermodel/Hyperlink;

    move-result-object p1

    .line 427
    invoke-interface {p1, p2}, Lorg/apache/poi/ss/usermodel/Hyperlink;->setAddress(Ljava/lang/String;)V

    .line 428
    invoke-interface {p1, p3}, Lorg/apache/poi/ss/usermodel/Hyperlink;->setLabel(Ljava/lang/String;)V

    return-object p1
.end method

.method public createRowStyle(I)Lorg/apache/poi/ss/usermodel/CellStyle;
    .locals 1

    .line 375
    iget-object v0, p0, Lcn/hutool/poi/excel/ExcelBase;->workbook:Lorg/apache/poi/ss/usermodel/Workbook;

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Workbook;->createCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v0

    .line 376
    invoke-virtual {p0, p1}, Lcn/hutool/poi/excel/ExcelBase;->getOrCreateRow(I)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object p1

    invoke-interface {p1, v0}, Lorg/apache/poi/ss/usermodel/Row;->setRowStyle(Lorg/apache/poi/ss/usermodel/CellStyle;)V

    return-object v0
.end method

.method public getCell(II)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 1

    const/4 v0, 0x0

    .line 222
    invoke-virtual {p0, p1, p2, v0}, Lcn/hutool/poi/excel/ExcelBase;->getCell(IIZ)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object p1

    return-object p1
.end method

.method public getCell(IIZ)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 1

    .line 272
    iget-object v0, p0, Lcn/hutool/poi/excel/ExcelBase;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    if-eqz p3, :cond_0

    invoke-static {v0, p2}, Lcn/hutool/poi/excel/RowUtil;->getOrCreateRow(Lorg/apache/poi/ss/usermodel/Sheet;I)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-interface {v0, p2}, Lorg/apache/poi/ss/usermodel/Sheet;->getRow(I)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    .line 274
    invoke-static {p2, p1}, Lcn/hutool/poi/excel/cell/CellUtil;->getOrCreateCell(Lorg/apache/poi/ss/usermodel/Row;I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-interface {p2, p1}, Lorg/apache/poi/ss/usermodel/Row;->getCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object p1

    :goto_1
    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCell(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 1

    .line 209
    invoke-static {p1}, Lcn/hutool/poi/excel/ExcelUtil;->toLocation(Ljava/lang/String;)Lcn/hutool/poi/excel/cell/CellLocation;

    move-result-object p1

    .line 210
    invoke-virtual {p1}, Lcn/hutool/poi/excel/cell/CellLocation;->getX()I

    move-result v0

    invoke-virtual {p1}, Lcn/hutool/poi/excel/cell/CellLocation;->getY()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcn/hutool/poi/excel/ExcelBase;->getCell(II)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object p1

    return-object p1
.end method

.method public getCell(Ljava/lang/String;Z)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 1

    .line 258
    invoke-static {p1}, Lcn/hutool/poi/excel/ExcelUtil;->toLocation(Ljava/lang/String;)Lcn/hutool/poi/excel/cell/CellLocation;

    move-result-object p1

    .line 259
    invoke-virtual {p1}, Lcn/hutool/poi/excel/cell/CellLocation;->getX()I

    move-result v0

    invoke-virtual {p1}, Lcn/hutool/poi/excel/cell/CellLocation;->getY()I

    move-result p1

    invoke-virtual {p0, v0, p1, p2}, Lcn/hutool/poi/excel/ExcelBase;->getCell(IIZ)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object p1

    return-object p1
.end method

.method public getColumnCount()I
    .locals 1

    const/4 v0, 0x0

    .line 470
    invoke-virtual {p0, v0}, Lcn/hutool/poi/excel/ExcelBase;->getColumnCount(I)I

    move-result v0

    return v0
.end method

.method public getColumnCount(I)I
    .locals 1

    .line 484
    iget-object v0, p0, Lcn/hutool/poi/excel/ExcelBase;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-interface {v0, p1}, Lorg/apache/poi/ss/usermodel/Sheet;->getRow(I)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 487
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Row;->getLastCellNum()S

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public getHeaderAlias()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 520
    iget-object v0, p0, Lcn/hutool/poi/excel/ExcelBase;->headerAlias:Ljava/util/Map;

    return-object v0
.end method

.method public getOrCreateCell(II)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 1

    const/4 v0, 0x1

    .line 246
    invoke-virtual {p0, p1, p2, v0}, Lcn/hutool/poi/excel/ExcelBase;->getCell(IIZ)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object p1

    return-object p1
.end method

.method public getOrCreateCell(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 1

    .line 233
    invoke-static {p1}, Lcn/hutool/poi/excel/ExcelUtil;->toLocation(Ljava/lang/String;)Lcn/hutool/poi/excel/cell/CellLocation;

    move-result-object p1

    .line 234
    invoke-virtual {p1}, Lcn/hutool/poi/excel/cell/CellLocation;->getX()I

    move-result v0

    invoke-virtual {p1}, Lcn/hutool/poi/excel/cell/CellLocation;->getY()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcn/hutool/poi/excel/ExcelBase;->getOrCreateCell(II)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object p1

    return-object p1
.end method

.method public getOrCreateCellStyle(II)Lorg/apache/poi/ss/usermodel/CellStyle;
    .locals 2

    .line 312
    invoke-virtual {p0, p1, p2}, Lcn/hutool/poi/excel/ExcelBase;->getOrCreateCell(II)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Cell;->getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v0

    .line 313
    iget-object v1, p0, Lcn/hutool/poi/excel/ExcelBase;->workbook:Lorg/apache/poi/ss/usermodel/Workbook;

    invoke-static {v1, v0}, Lcn/hutool/poi/excel/style/StyleUtil;->isNullOrDefaultStyle(Lorg/apache/poi/ss/usermodel/Workbook;Lorg/apache/poi/ss/usermodel/CellStyle;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcn/hutool/poi/excel/ExcelBase;->createCellStyle(II)Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getOrCreateCellStyle(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/CellStyle;
    .locals 1

    .line 299
    invoke-static {p1}, Lcn/hutool/poi/excel/ExcelUtil;->toLocation(Ljava/lang/String;)Lcn/hutool/poi/excel/cell/CellLocation;

    move-result-object p1

    .line 300
    invoke-virtual {p1}, Lcn/hutool/poi/excel/cell/CellLocation;->getX()I

    move-result v0

    invoke-virtual {p1}, Lcn/hutool/poi/excel/cell/CellLocation;->getY()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcn/hutool/poi/excel/ExcelBase;->getOrCreateCellStyle(II)Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object p1

    return-object p1
.end method

.method public getOrCreateColumnStyle(I)Lorg/apache/poi/ss/usermodel/CellStyle;
    .locals 2

    .line 389
    iget-object v0, p0, Lcn/hutool/poi/excel/ExcelBase;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-interface {v0, p1}, Lorg/apache/poi/ss/usermodel/Sheet;->getColumnStyle(I)Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v0

    .line 390
    iget-object v1, p0, Lcn/hutool/poi/excel/ExcelBase;->workbook:Lorg/apache/poi/ss/usermodel/Workbook;

    invoke-static {v1, v0}, Lcn/hutool/poi/excel/style/StyleUtil;->isNullOrDefaultStyle(Lorg/apache/poi/ss/usermodel/Workbook;Lorg/apache/poi/ss/usermodel/CellStyle;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcn/hutool/poi/excel/ExcelBase;->createColumnStyle(I)Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getOrCreateRow(I)Lorg/apache/poi/ss/usermodel/Row;
    .locals 1

    .line 288
    iget-object v0, p0, Lcn/hutool/poi/excel/ExcelBase;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-static {v0, p1}, Lcn/hutool/poi/excel/RowUtil;->getOrCreateRow(Lorg/apache/poi/ss/usermodel/Sheet;I)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object p1

    return-object p1
.end method

.method public getOrCreateRowStyle(I)Lorg/apache/poi/ss/usermodel/CellStyle;
    .locals 2

    .line 363
    invoke-virtual {p0, p1}, Lcn/hutool/poi/excel/ExcelBase;->getOrCreateRow(I)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Row;->getRowStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v0

    .line 364
    iget-object v1, p0, Lcn/hutool/poi/excel/ExcelBase;->workbook:Lorg/apache/poi/ss/usermodel/Workbook;

    invoke-static {v1, v0}, Lcn/hutool/poi/excel/style/StyleUtil;->isNullOrDefaultStyle(Lorg/apache/poi/ss/usermodel/Workbook;Lorg/apache/poi/ss/usermodel/CellStyle;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcn/hutool/poi/excel/ExcelBase;->createRowStyle(I)Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPhysicalRowCount()I
    .locals 1

    .line 457
    iget-object v0, p0, Lcn/hutool/poi/excel/ExcelBase;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Sheet;->getPhysicalNumberOfRows()I

    move-result v0

    return v0
.end method

.method public getRowCount()I
    .locals 1

    .line 443
    iget-object v0, p0, Lcn/hutool/poi/excel/ExcelBase;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Sheet;->getLastRowNum()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getSheet()Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 1

    .line 121
    iget-object v0, p0, Lcn/hutool/poi/excel/ExcelBase;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    return-object v0
.end method

.method public getSheetCount()I
    .locals 1

    .line 82
    iget-object v0, p0, Lcn/hutool/poi/excel/ExcelBase;->workbook:Lorg/apache/poi/ss/usermodel/Workbook;

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Workbook;->getNumberOfSheets()I

    move-result v0

    return v0
.end method

.method public getSheetNames()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcn/hutool/poi/excel/ExcelBase;->workbook:Lorg/apache/poi/ss/usermodel/Workbook;

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Workbook;->getNumberOfSheets()I

    move-result v0

    .line 108
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 110
    iget-object v3, p0, Lcn/hutool/poi/excel/ExcelBase;->workbook:Lorg/apache/poi/ss/usermodel/Workbook;

    invoke-interface {v3, v2}, Lorg/apache/poi/ss/usermodel/Workbook;->getSheetAt(I)Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/poi/ss/usermodel/Sheet;->getSheetName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getSheets()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/usermodel/Sheet;",
            ">;"
        }
    .end annotation

    .line 92
    invoke-virtual {p0}, Lcn/hutool/poi/excel/ExcelBase;->getSheetCount()I

    move-result v0

    .line 93
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 95
    iget-object v3, p0, Lcn/hutool/poi/excel/ExcelBase;->workbook:Lorg/apache/poi/ss/usermodel/Workbook;

    invoke-interface {v3, v2}, Lorg/apache/poi/ss/usermodel/Workbook;->getSheetAt(I)Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 1

    .line 72
    iget-object v0, p0, Lcn/hutool/poi/excel/ExcelBase;->workbook:Lorg/apache/poi/ss/usermodel/Workbook;

    return-object v0
.end method

.method public isXlsx()Z
    .locals 2

    .line 499
    iget-object v0, p0, Lcn/hutool/poi/excel/ExcelBase;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    instance-of v1, v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    if-nez v1, :cond_1

    instance-of v0, v0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public removeHeaderAlias(Ljava/lang/String;)Lcn/hutool/poi/excel/ExcelBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 560
    iget-object v0, p0, Lcn/hutool/poi/excel/ExcelBase;->headerAlias:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public renameSheet(Ljava/lang/String;)Lcn/hutool/poi/excel/ExcelBase;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcn/hutool/poi/excel/ExcelBase;->workbook:Lorg/apache/poi/ss/usermodel/Workbook;

    iget-object v1, p0, Lcn/hutool/poi/excel/ExcelBase;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-interface {v0, v1}, Lorg/apache/poi/ss/usermodel/Workbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v1

    invoke-interface {v0, v1, p1}, Lorg/apache/poi/ss/usermodel/Workbook;->setSheetName(ILjava/lang/String;)V

    return-object p0
.end method

.method public setHeaderAlias(Ljava/util/Map;)Lcn/hutool/poi/excel/ExcelBase;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    .line 530
    iput-object p1, p0, Lcn/hutool/poi/excel/ExcelBase;->headerAlias:Ljava/util/Map;

    return-object p0
.end method

.method public setSheet(I)Lcn/hutool/poi/excel/ExcelBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcn/hutool/poi/excel/ExcelBase;->workbook:Lorg/apache/poi/ss/usermodel/Workbook;

    invoke-static {v0, p1}, Lcn/hutool/poi/excel/WorkbookUtil;->getOrCreateSheet(Lorg/apache/poi/ss/usermodel/Workbook;I)Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/hutool/poi/excel/ExcelBase;->setSheet(Lorg/apache/poi/ss/usermodel/Sheet;)Lcn/hutool/poi/excel/ExcelBase;

    move-result-object p1

    return-object p1
.end method

.method public setSheet(Ljava/lang/String;)Lcn/hutool/poi/excel/ExcelBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcn/hutool/poi/excel/ExcelBase;->workbook:Lorg/apache/poi/ss/usermodel/Workbook;

    invoke-static {v0, p1}, Lcn/hutool/poi/excel/WorkbookUtil;->getOrCreateSheet(Lorg/apache/poi/ss/usermodel/Workbook;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/hutool/poi/excel/ExcelBase;->setSheet(Lorg/apache/poi/ss/usermodel/Sheet;)Lcn/hutool/poi/excel/ExcelBase;

    move-result-object p1

    return-object p1
.end method

.method public setSheet(Lorg/apache/poi/ss/usermodel/Sheet;)Lcn/hutool/poi/excel/ExcelBase;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/usermodel/Sheet;",
            ")TT;"
        }
    .end annotation

    .line 172
    iput-object p1, p0, Lcn/hutool/poi/excel/ExcelBase;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    return-object p0
.end method

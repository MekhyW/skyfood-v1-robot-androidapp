.class public Lcn/hutool/poi/excel/ExcelWriter;
.super Lcn/hutool/poi/excel/ExcelBase;
.source "ExcelWriter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/hutool/poi/excel/ExcelBase<",
        "Lcn/hutool/poi/excel/ExcelWriter;",
        ">;"
    }
.end annotation


# instance fields
.field private aliasComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final currentRow:Ljava/util/concurrent/atomic/AtomicInteger;

.field private headLocationCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private onlyAlias:Z

.field private styleSet:Lcn/hutool/poi/excel/StyleSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, v0}, Lcn/hutool/poi/excel/ExcelWriter;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x0

    .line 148
    invoke-direct {p0, p1, v0}, Lcn/hutool/poi/excel/ExcelWriter;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    .line 158
    invoke-static {p1}, Lcn/hutool/poi/excel/WorkbookUtil;->createBookForWriter(Ljava/io/File;)Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcn/hutool/poi/excel/ExcelWriter;-><init>(Lorg/apache/poi/ss/usermodel/Workbook;Ljava/lang/String;)V

    .line 159
    iput-object p1, p0, Lcn/hutool/poi/excel/ExcelWriter;->destFile:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 116
    invoke-direct {p0, p1, v0}, Lcn/hutool/poi/excel/ExcelWriter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 139
    invoke-static {p1}, Lcn/hutool/core/io/FileUtil;->file(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcn/hutool/poi/excel/ExcelWriter;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/usermodel/Sheet;)V
    .locals 1

    .line 183
    invoke-direct {p0, p1}, Lcn/hutool/poi/excel/ExcelBase;-><init>(Lorg/apache/poi/ss/usermodel/Sheet;)V

    .line 184
    new-instance p1, Lcn/hutool/poi/excel/StyleSet;

    iget-object v0, p0, Lcn/hutool/poi/excel/ExcelWriter;->workbook:Lorg/apache/poi/ss/usermodel/Workbook;

    invoke-direct {p1, v0}, Lcn/hutool/poi/excel/StyleSet;-><init>(Lorg/apache/poi/ss/usermodel/Workbook;)V

    iput-object p1, p0, Lcn/hutool/poi/excel/ExcelWriter;->styleSet:Lcn/hutool/poi/excel/StyleSet;

    .line 185
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcn/hutool/poi/excel/ExcelWriter;->currentRow:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/usermodel/Workbook;Ljava/lang/String;)V
    .locals 0

    .line 171
    invoke-static {p1, p2}, Lcn/hutool/poi/excel/WorkbookUtil;->getOrCreateSheet(Lorg/apache/poi/ss/usermodel/Workbook;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/hutool/poi/excel/ExcelWriter;-><init>(Lorg/apache/poi/ss/usermodel/Sheet;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 107
    invoke-static {p1}, Lcn/hutool/poi/excel/WorkbookUtil;->createBook(Z)Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/hutool/poi/excel/ExcelWriter;-><init>(Lorg/apache/poi/ss/usermodel/Workbook;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0

    .line 129
    invoke-static {p1}, Lcn/hutool/poi/excel/WorkbookUtil;->createBook(Z)Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcn/hutool/poi/excel/ExcelWriter;-><init>(Lorg/apache/poi/ss/usermodel/Workbook;Ljava/lang/String;)V

    return-void
.end method

.method private aliasTable(Ljava/util/Map;)Lcn/hutool/core/map/multi/Table;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)",
            "Lcn/hutool/core/map/multi/Table<",
            "***>;"
        }
    .end annotation

    .line 1454
    new-instance v0, Lcn/hutool/core/map/multi/RowKeyTable;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v2, Lcn/hutool/poi/excel/ExcelWriter$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcn/hutool/poi/excel/ExcelWriter$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1, v2}, Lcn/hutool/core/map/multi/RowKeyTable;-><init>(Ljava/util/Map;Lcn/hutool/core/builder/Builder;)V

    .line 1455
    iget-object v1, p0, Lcn/hutool/poi/excel/ExcelWriter;->headerAlias:Ljava/util/Map;

    invoke-static {v1}, Lcn/hutool/core/map/MapUtil;->isEmpty(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1456
    new-instance v1, Lcn/hutool/poi/excel/ExcelWriter$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcn/hutool/poi/excel/ExcelWriter$$ExternalSyntheticLambda1;-><init>(Lcn/hutool/core/map/multi/Table;)V

    invoke-interface {p1, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    goto :goto_0

    .line 1458
    :cond_0
    new-instance v1, Lcn/hutool/poi/excel/ExcelWriter$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Lcn/hutool/poi/excel/ExcelWriter$$ExternalSyntheticLambda2;-><init>(Lcn/hutool/poi/excel/ExcelWriter;Lcn/hutool/core/map/multi/Table;)V

    invoke-interface {p1, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    :goto_0
    return-object v0
.end method

.method private getCachedAliasComparator()Ljava/util/Comparator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1480
    iget-object v0, p0, Lcn/hutool/poi/excel/ExcelWriter;->headerAlias:Ljava/util/Map;

    invoke-static {v0}, Lcn/hutool/core/map/MapUtil;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1483
    :cond_0
    iget-object v0, p0, Lcn/hutool/poi/excel/ExcelWriter;->aliasComparator:Ljava/util/Comparator;

    if-nez v0, :cond_1

    .line 1485
    iget-object v0, p0, Lcn/hutool/poi/excel/ExcelWriter;->headerAlias:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1486
    new-instance v1, Lcn/hutool/core/comparator/IndexedComparator;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v0}, Lcn/hutool/core/comparator/IndexedComparator;-><init>([Ljava/lang/Object;)V

    .line 1487
    iput-object v1, p0, Lcn/hutool/poi/excel/ExcelWriter;->aliasComparator:Ljava/util/Comparator;

    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method static synthetic lambda$aliasTable$0(Lcn/hutool/core/map/multi/Table;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1456
    invoke-interface {p0, p1, p1, p2}, Lcn/hutool/core/map/multi/Table;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic addHeaderAlias(Ljava/lang/String;Ljava/lang/String;)Lcn/hutool/poi/excel/ExcelBase;
    .locals 0

    .line 62
    invoke-virtual {p0, p1, p2}, Lcn/hutool/poi/excel/ExcelWriter;->addHeaderAlias(Ljava/lang/String;Ljava/lang/String;)Lcn/hutool/poi/excel/ExcelWriter;

    move-result-object p1

    return-object p1
.end method

.method public addHeaderAlias(Ljava/lang/String;Ljava/lang/String;)Lcn/hutool/poi/excel/ExcelWriter;
    .locals 1

    const/4 v0, 0x0

    .line 477
    iput-object v0, p0, Lcn/hutool/poi/excel/ExcelWriter;->aliasComparator:Ljava/util/Comparator;

    .line 478
    invoke-super {p0, p1, p2}, Lcn/hutool/poi/excel/ExcelBase;->addHeaderAlias(Ljava/lang/String;Ljava/lang/String;)Lcn/hutool/poi/excel/ExcelBase;

    move-result-object p1

    check-cast p1, Lcn/hutool/poi/excel/ExcelWriter;

    return-object p1
.end method

.method public varargs addSelect(II[Ljava/lang/String;)Lcn/hutool/poi/excel/ExcelWriter;
    .locals 1

    .line 603
    new-instance v0, Lorg/apache/poi/ss/util/CellRangeAddressList;

    invoke-direct {v0, p2, p2, p1, p1}, Lorg/apache/poi/ss/util/CellRangeAddressList;-><init>(IIII)V

    invoke-virtual {p0, v0, p3}, Lcn/hutool/poi/excel/ExcelWriter;->addSelect(Lorg/apache/poi/ss/util/CellRangeAddressList;[Ljava/lang/String;)Lcn/hutool/poi/excel/ExcelWriter;

    move-result-object p1

    return-object p1
.end method

.method public varargs addSelect(Lorg/apache/poi/ss/util/CellRangeAddressList;[Ljava/lang/String;)Lcn/hutool/poi/excel/ExcelWriter;
    .locals 1

    .line 615
    iget-object v0, p0, Lcn/hutool/poi/excel/ExcelWriter;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Sheet;->getDataValidationHelper()Lorg/apache/poi/ss/usermodel/DataValidationHelper;

    move-result-object v0

    .line 616
    invoke-interface {v0, p2}, Lorg/apache/poi/ss/usermodel/DataValidationHelper;->createExplicitListConstraint([Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/DataValidationConstraint;

    move-result-object p2

    .line 619
    invoke-interface {v0, p2, p1}, Lorg/apache/poi/ss/usermodel/DataValidationHelper;->createValidation(Lorg/apache/poi/ss/usermodel/DataValidationConstraint;Lorg/apache/poi/ss/util/CellRangeAddressList;)Lorg/apache/poi/ss/usermodel/DataValidation;

    move-result-object p1

    .line 622
    instance-of p2, p1, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 623
    invoke-interface {p1, p2}, Lorg/apache/poi/ss/usermodel/DataValidation;->setSuppressDropDownArrow(Z)V

    .line 624
    invoke-interface {p1, p2}, Lorg/apache/poi/ss/usermodel/DataValidation;->setShowErrorBox(Z)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 626
    invoke-interface {p1, p2}, Lorg/apache/poi/ss/usermodel/DataValidation;->setSuppressDropDownArrow(Z)V

    .line 629
    :goto_0
    invoke-virtual {p0, p1}, Lcn/hutool/poi/excel/ExcelWriter;->addValidationData(Lorg/apache/poi/ss/usermodel/DataValidation;)Lcn/hutool/poi/excel/ExcelWriter;

    move-result-object p1

    return-object p1
.end method

.method public addValidationData(Lorg/apache/poi/ss/usermodel/DataValidation;)Lcn/hutool/poi/excel/ExcelWriter;
    .locals 1

    .line 640
    iget-object v0, p0, Lcn/hutool/poi/excel/ExcelWriter;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-interface {v0, p1}, Lorg/apache/poi/ss/usermodel/Sheet;->addValidationData(Lorg/apache/poi/ss/usermodel/DataValidation;)V

    return-object p0
.end method

.method public autoSizeColumn(I)Lcn/hutool/poi/excel/ExcelWriter;
    .locals 1

    .line 269
    iget-object v0, p0, Lcn/hutool/poi/excel/ExcelWriter;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-interface {v0, p1}, Lorg/apache/poi/ss/usermodel/Sheet;->autoSizeColumn(I)V

    return-object p0
.end method

.method public autoSizeColumn(IZ)Lcn/hutool/poi/excel/ExcelWriter;
    .locals 1

    .line 283
    iget-object v0, p0, Lcn/hutool/poi/excel/ExcelWriter;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-interface {v0, p1, p2}, Lorg/apache/poi/ss/usermodel/Sheet;->autoSizeColumn(IZ)V

    return-object p0
.end method

.method public autoSizeColumnAll()Lcn/hutool/poi/excel/ExcelWriter;
    .locals 2

    .line 253
    invoke-virtual {p0}, Lcn/hutool/poi/excel/ExcelWriter;->getColumnCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 255
    invoke-virtual {p0, v1}, Lcn/hutool/poi/excel/ExcelWriter;->autoSizeColumn(I)Lcn/hutool/poi/excel/ExcelWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic clearHeaderAlias()Lcn/hutool/poi/excel/ExcelBase;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lcn/hutool/poi/excel/ExcelWriter;->clearHeaderAlias()Lcn/hutool/poi/excel/ExcelWriter;

    move-result-object v0

    return-object v0
.end method

.method public clearHeaderAlias()Lcn/hutool/poi/excel/ExcelWriter;
    .locals 1

    const/4 v0, 0x0

    .line 470
    iput-object v0, p0, Lcn/hutool/poi/excel/ExcelWriter;->aliasComparator:Ljava/util/Comparator;

    .line 471
    invoke-super {p0}, Lcn/hutool/poi/excel/ExcelBase;->clearHeaderAlias()Lcn/hutool/poi/excel/ExcelBase;

    move-result-object v0

    check-cast v0, Lcn/hutool/poi/excel/ExcelWriter;

    return-object v0
.end method

.method public close()V
    .locals 1

    .line 1427
    iget-object v0, p0, Lcn/hutool/poi/excel/ExcelWriter;->destFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 1428
    invoke-virtual {p0}, Lcn/hutool/poi/excel/ExcelWriter;->flush()Lcn/hutool/poi/excel/ExcelWriter;

    .line 1430
    :cond_0
    invoke-virtual {p0}, Lcn/hutool/poi/excel/ExcelWriter;->closeWithoutFlush()V

    return-void
.end method

.method protected closeWithoutFlush()V
    .locals 2

    .line 1437
    invoke-super {p0}, Lcn/hutool/poi/excel/ExcelBase;->close()V

    .line 1440
    iget-object v0, p0, Lcn/hutool/poi/excel/ExcelWriter;->currentRow:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const/4 v0, 0x0

    .line 1441
    iput-object v0, p0, Lcn/hutool/poi/excel/ExcelWriter;->styleSet:Lcn/hutool/poi/excel/StyleSet;

    return-void
.end method

.method public createFont()Lorg/apache/poi/ss/usermodel/Font;
    .locals 1

    .line 1357
    invoke-virtual {p0}, Lcn/hutool/poi/excel/ExcelWriter;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Workbook;->createFont()Lorg/apache/poi/ss/usermodel/Font;

    move-result-object v0

    return-object v0
.end method

.method public disableDefaultStyle()Lcn/hutool/poi/excel/ExcelWriter;
    .locals 1

    const/4 v0, 0x0

    .line 295
    invoke-virtual {p0, v0}, Lcn/hutool/poi/excel/ExcelWriter;->setStyleSet(Lcn/hutool/poi/excel/StyleSet;)Lcn/hutool/poi/excel/ExcelWriter;

    move-result-object v0

    return-object v0
.end method

.method public flush()Lcn/hutool/poi/excel/ExcelWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 1369
    iget-object v0, p0, Lcn/hutool/poi/excel/ExcelWriter;->destFile:Ljava/io/File;

    invoke-virtual {p0, v0}, Lcn/hutool/poi/excel/ExcelWriter;->flush(Ljava/io/File;)Lcn/hutool/poi/excel/ExcelWriter;

    move-result-object v0

    return-object v0
.end method

.method public flush(Ljava/io/File;)Lcn/hutool/poi/excel/ExcelWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "[destFile] is null, and you must call setDestFile(File) first or call flush(OutputStream)."

    .line 1382
    invoke-static {p1, v1, v0}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1383
    invoke-static {p1}, Lcn/hutool/core/io/FileUtil;->getOutputStream(Ljava/io/File;)Ljava/io/BufferedOutputStream;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcn/hutool/poi/excel/ExcelWriter;->flush(Ljava/io/OutputStream;Z)Lcn/hutool/poi/excel/ExcelWriter;

    move-result-object p1

    return-object p1
.end method

.method public flush(Ljava/io/OutputStream;)Lcn/hutool/poi/excel/ExcelWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1394
    invoke-virtual {p0, p1, v0}, Lcn/hutool/poi/excel/ExcelWriter;->flush(Ljava/io/OutputStream;Z)Lcn/hutool/poi/excel/ExcelWriter;

    move-result-object p1

    return-object p1
.end method

.method public flush(Ljava/io/OutputStream;Z)Lcn/hutool/poi/excel/ExcelWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 1407
    iget-boolean v0, p0, Lcn/hutool/poi/excel/ExcelWriter;->isClosed:Z

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ExcelWriter has been closed!"

    invoke-static {v0, v2, v1}, Lcn/hutool/core/lang/Assert;->isFalse(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1409
    :try_start_0
    iget-object v0, p0, Lcn/hutool/poi/excel/ExcelWriter;->workbook:Lorg/apache/poi/ss/usermodel/Workbook;

    invoke-interface {v0, p1}, Lorg/apache/poi/ss/usermodel/Workbook;->write(Ljava/io/OutputStream;)V

    .line 1410
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    .line 1415
    invoke-static {p1}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    :cond_0
    return-object p0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1412
    :try_start_1
    new-instance v1, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {v1, v0}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz p2, :cond_1

    .line 1415
    invoke-static {p1}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    .line 1417
    :cond_1
    throw v0
.end method

.method public getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;
    .locals 1

    .line 342
    iget-object v0, p0, Lcn/hutool/poi/excel/ExcelWriter;->styleSet:Lcn/hutool/poi/excel/StyleSet;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 345
    :cond_0
    iget-object v0, v0, Lcn/hutool/poi/excel/StyleSet;->cellStyle:Lorg/apache/poi/ss/usermodel/CellStyle;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 393
    invoke-virtual {p0}, Lcn/hutool/poi/excel/ExcelWriter;->isXlsx()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    goto :goto_0

    :cond_0
    const-string v0, "application/vnd.ms-excel"

    :goto_0
    return-object v0
.end method

.method public getCurrentRow()I
    .locals 1

    .line 354
    iget-object v0, p0, Lcn/hutool/poi/excel/ExcelWriter;->currentRow:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getDisposition(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    if-nez p2, :cond_0

    .line 370
    sget-object p2, Lcn/hutool/core/util/CharsetUtil;->CHARSET_UTF_8:Ljava/nio/charset/Charset;

    .line 373
    :cond_0
    invoke-static {p1}, Lcn/hutool/core/util/StrUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 375
    invoke-static {}, Lcn/hutool/core/util/IdUtil;->fastSimpleUUID()Ljava/lang/String;

    move-result-object p1

    .line 378
    :cond_1
    invoke-static {p1, p2}, Lcn/hutool/core/util/URLUtil;->encodeAll(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcn/hutool/poi/excel/ExcelWriter;->isXlsx()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, ".xlsx"

    goto :goto_0

    :cond_2
    const-string p2, ".xls"

    :goto_0
    invoke-static {p1, p2}, Lcn/hutool/core/util/StrUtil;->addSuffixIfNot(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const-string p1, "attachment; filename=\"{}\""

    .line 379
    invoke-static {p1, p2}, Lcn/hutool/core/util/StrUtil;->format(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHeadCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;
    .locals 1

    .line 333
    iget-object v0, p0, Lcn/hutool/poi/excel/ExcelWriter;->styleSet:Lcn/hutool/poi/excel/StyleSet;

    iget-object v0, v0, Lcn/hutool/poi/excel/StyleSet;->headCellStyle:Lorg/apache/poi/ss/usermodel/CellStyle;

    return-object v0
.end method

.method public getStyleSet()Lcn/hutool/poi/excel/StyleSet;
    .locals 1

    .line 324
    iget-object v0, p0, Lcn/hutool/poi/excel/ExcelWriter;->styleSet:Lcn/hutool/poi/excel/StyleSet;

    return-object v0
.end method

.method synthetic lambda$aliasTable$1$cn-hutool-poi-excel-ExcelWriter(Lcn/hutool/core/map/multi/Table;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1459
    iget-object v0, p0, Lcn/hutool/poi/excel/ExcelWriter;->headerAlias:Ljava/util/Map;

    invoke-static {p2}, Lcn/hutool/core/util/StrUtil;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1462
    invoke-interface {p1, p2, v0, p3}, Lcn/hutool/core/map/multi/Table;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1463
    :cond_0
    iget-boolean v0, p0, Lcn/hutool/poi/excel/ExcelWriter;->onlyAlias:Z

    if-nez v0, :cond_1

    .line 1465
    invoke-interface {p1, p2, p2, p3}, Lcn/hutool/core/map/multi/Table;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public merge(I)Lcn/hutool/poi/excel/ExcelWriter;
    .locals 1

    const/4 v0, 0x0

    .line 652
    invoke-virtual {p0, p1, v0}, Lcn/hutool/poi/excel/ExcelWriter;->merge(ILjava/lang/Object;)Lcn/hutool/poi/excel/ExcelWriter;

    move-result-object p1

    return-object p1
.end method

.method public merge(IIIILjava/lang/Object;Lorg/apache/poi/ss/usermodel/CellStyle;)Lcn/hutool/poi/excel/ExcelWriter;
    .locals 9

    .line 730
    iget-boolean v0, p0, Lcn/hutool/poi/excel/ExcelWriter;->isClosed:Z

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ExcelWriter has been closed!"

    invoke-static {v0, v2, v1}, Lcn/hutool/core/lang/Assert;->isFalse(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 732
    invoke-virtual {p0}, Lcn/hutool/poi/excel/ExcelWriter;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v3

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p6

    invoke-static/range {v3 .. v8}, Lcn/hutool/poi/excel/cell/CellUtil;->mergingCells(Lorg/apache/poi/ss/usermodel/Sheet;IIIILorg/apache/poi/ss/usermodel/CellStyle;)I

    if-eqz p5, :cond_0

    .line 736
    invoke-virtual {p0, p3, p1}, Lcn/hutool/poi/excel/ExcelWriter;->getOrCreateCell(II)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object p1

    .line 737
    invoke-static {p1, p5, p6}, Lcn/hutool/poi/excel/cell/CellUtil;->setCellValue(Lorg/apache/poi/ss/usermodel/Cell;Ljava/lang/Object;Lorg/apache/poi/ss/usermodel/CellStyle;)V

    :cond_0
    return-object p0
.end method

.method public merge(IIIILjava/lang/Object;Z)Lcn/hutool/poi/excel/ExcelWriter;
    .locals 7

    .line 706
    iget-boolean v0, p0, Lcn/hutool/poi/excel/ExcelWriter;->isClosed:Z

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ExcelWriter has been closed!"

    invoke-static {v0, v2, v1}, Lcn/hutool/core/lang/Assert;->isFalse(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 709
    iget-object v0, p0, Lcn/hutool/poi/excel/ExcelWriter;->styleSet:Lcn/hutool/poi/excel/StyleSet;

    if-eqz v0, :cond_0

    .line 710
    invoke-virtual {v0, p5, p6}, Lcn/hutool/poi/excel/StyleSet;->getStyleByValueType(Ljava/lang/Object;Z)Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object p6

    goto :goto_0

    :cond_0
    const/4 p6, 0x0

    :goto_0
    move-object v6, p6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 713
    invoke-virtual/range {v0 .. v6}, Lcn/hutool/poi/excel/ExcelWriter;->merge(IIIILjava/lang/Object;Lorg/apache/poi/ss/usermodel/CellStyle;)Lcn/hutool/poi/excel/ExcelWriter;

    move-result-object p1

    return-object p1
.end method

.method public merge(ILjava/lang/Object;)Lcn/hutool/poi/excel/ExcelWriter;
    .locals 1

    const/4 v0, 0x1

    .line 665
    invoke-virtual {p0, p1, p2, v0}, Lcn/hutool/poi/excel/ExcelWriter;->merge(ILjava/lang/Object;Z)Lcn/hutool/poi/excel/ExcelWriter;

    move-result-object p1

    return-object p1
.end method

.method public merge(ILjava/lang/Object;Z)Lcn/hutool/poi/excel/ExcelWriter;
    .locals 8

    .line 680
    iget-boolean v0, p0, Lcn/hutool/poi/excel/ExcelWriter;->isClosed:Z

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ExcelWriter has been closed!"

    invoke-static {v0, v2, v1}, Lcn/hutool/core/lang/Assert;->isFalse(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 682
    iget-object v0, p0, Lcn/hutool/poi/excel/ExcelWriter;->currentRow:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    const/4 v4, 0x0

    move-object v1, p0

    move v2, v3

    move v5, p1

    move-object v6, p2

    move v7, p3

    .line 683
    invoke-virtual/range {v1 .. v7}, Lcn/hutool/poi/excel/ExcelWriter;->merge(IIIILjava/lang/Object;Z)Lcn/hutool/poi/excel/ExcelWriter;

    if-eqz p2, :cond_0

    .line 687
    iget-object p1, p0, Lcn/hutool/poi/excel/ExcelWriter;->currentRow:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_0
    return-object p0
.end method

.method public passCurrentRow()Lcn/hutool/poi/excel/ExcelWriter;
    .locals 1

    .line 423
    iget-object v0, p0, Lcn/hutool/poi/excel/ExcelWriter;->currentRow:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-object p0
.end method

.method public passRows(I)Lcn/hutool/poi/excel/ExcelWriter;
    .locals 1

    .line 434
    iget-object v0, p0, Lcn/hutool/poi/excel/ExcelWriter;->currentRow:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    return-object p0
.end method

.method public bridge synthetic renameSheet(Ljava/lang/String;)Lcn/hutool/poi/excel/ExcelBase;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lcn/hutool/poi/excel/ExcelWriter;->renameSheet(Ljava/lang/String;)Lcn/hutool/poi/excel/ExcelWriter;

    move-result-object p1

    return-object p1
.end method

.method public renameSheet(ILjava/lang/String;)Lcn/hutool/poi/excel/ExcelWriter;
    .locals 1

    .line 240
    iget-object v0, p0, Lcn/hutool/poi/excel/ExcelWriter;->workbook:Lorg/apache/poi/ss/usermodel/Workbook;

    invoke-interface {v0, p1, p2}, Lorg/apache/poi/ss/usermodel/Workbook;->setSheetName(ILjava/lang/String;)V

    return-object p0
.end method

.method public renameSheet(Ljava/lang/String;)Lcn/hutool/poi/excel/ExcelWriter;
    .locals 2

    .line 228
    iget-object v0, p0, Lcn/hutool/poi/excel/ExcelWriter;->workbook:Lorg/apache/poi/ss/usermodel/Workbook;

    iget-object v1, p0, Lcn/hutool/poi/excel/ExcelWriter;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-interface {v0, v1}, Lorg/apache/poi/ss/usermodel/Workbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcn/hutool/poi/excel/ExcelWriter;->renameSheet(ILjava/lang/String;)Lcn/hutool/poi/excel/ExcelWriter;

    move-result-object p1

    return-object p1
.end method

.method public reset()Lcn/hutool/poi/excel/ExcelWriter;
    .locals 0

    .line 216
    invoke-virtual {p0}, Lcn/hutool/poi/excel/ExcelWriter;->resetRow()Lcn/hutool/poi/excel/ExcelWriter;

    return-object p0
.end method

.method public resetRow()Lcn/hutool/poi/excel/ExcelWriter;
    .locals 2

    .line 444
    iget-object v0, p0, Lcn/hutool/poi/excel/ExcelWriter;->currentRow:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-object p0
.end method

.method public setColumnStyle(ILorg/apache/poi/ss/usermodel/CellStyle;)Lcn/hutool/poi/excel/ExcelWriter;
    .locals 1

    .line 1319
    iget-object v0, p0, Lcn/hutool/poi/excel/ExcelWriter;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-interface {v0, p1, p2}, Lorg/apache/poi/ss/usermodel/Sheet;->setDefaultColumnStyle(ILorg/apache/poi/ss/usermodel/CellStyle;)V

    return-object p0
.end method

.method public setColumnStyleIfHasData(IILorg/apache/poi/ss/usermodel/CellStyle;)Lcn/hutool/poi/excel/ExcelWriter;
    .locals 2

    const-string v0, ")"

    if-ltz p1, :cond_2

    if-ltz p2, :cond_1

    .line 1343
    invoke-virtual {p0}, Lcn/hutool/poi/excel/ExcelWriter;->getRowCount()I

    move-result v0

    :goto_0
    if-ge p2, v0, :cond_0

    .line 1345
    invoke-virtual {p0, p3, p1, p2}, Lcn/hutool/poi/excel/ExcelWriter;->setStyle(Lorg/apache/poi/ss/usermodel/CellStyle;II)Lcn/hutool/poi/excel/ExcelWriter;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-object p0

    .line 1341
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "Invalid row number ("

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1338
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "Invalid column number ("

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setColumnWidth(II)Lcn/hutool/poi/excel/ExcelWriter;
    .locals 1

    if-gez p1, :cond_0

    .line 528
    iget-object p1, p0, Lcn/hutool/poi/excel/ExcelWriter;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-interface {p1, p2}, Lorg/apache/poi/ss/usermodel/Sheet;->setDefaultColumnWidth(I)V

    goto :goto_0

    .line 530
    :cond_0
    iget-object v0, p0, Lcn/hutool/poi/excel/ExcelWriter;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    mul-int/lit16 p2, p2, 0x100

    invoke-interface {v0, p1, p2}, Lorg/apache/poi/ss/usermodel/Sheet;->setColumnWidth(II)V

    :goto_0
    return-object p0
.end method

.method public setCurrentRow(I)Lcn/hutool/poi/excel/ExcelWriter;
    .locals 1

    .line 403
    iget-object v0, p0, Lcn/hutool/poi/excel/ExcelWriter;->currentRow:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-object p0
.end method

.method public setCurrentRowToEnd()Lcn/hutool/poi/excel/ExcelWriter;
    .locals 1

    .line 414
    invoke-virtual {p0}, Lcn/hutool/poi/excel/ExcelWriter;->getRowCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/hutool/poi/excel/ExcelWriter;->setCurrentRow(I)Lcn/hutool/poi/excel/ExcelWriter;

    move-result-object v0

    return-object v0
.end method

.method public setDefaultRowHeight(I)Lcn/hutool/poi/excel/ExcelWriter;
    .locals 1

    const/4 v0, -0x1

    .line 543
    invoke-virtual {p0, v0, p1}, Lcn/hutool/poi/excel/ExcelWriter;->setRowHeight(II)Lcn/hutool/poi/excel/ExcelWriter;

    move-result-object p1

    return-object p1
.end method

.method public setDestFile(Ljava/io/File;)Lcn/hutool/poi/excel/ExcelWriter;
    .locals 0

    .line 455
    iput-object p1, p0, Lcn/hutool/poi/excel/ExcelWriter;->destFile:Ljava/io/File;

    return-object p0
.end method

.method public setFreezePane(I)Lcn/hutool/poi/excel/ExcelWriter;
    .locals 1

    const/4 v0, 0x0

    .line 502
    invoke-virtual {p0, v0, p1}, Lcn/hutool/poi/excel/ExcelWriter;->setFreezePane(II)Lcn/hutool/poi/excel/ExcelWriter;

    move-result-object p1

    return-object p1
.end method

.method public setFreezePane(II)Lcn/hutool/poi/excel/ExcelWriter;
    .locals 1

    .line 514
    invoke-virtual {p0}, Lcn/hutool/poi/excel/ExcelWriter;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/poi/ss/usermodel/Sheet;->createFreezePane(II)V

    return-object p0
.end method

.method public bridge synthetic setHeaderAlias(Ljava/util/Map;)Lcn/hutool/poi/excel/ExcelBase;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lcn/hutool/poi/excel/ExcelWriter;->setHeaderAlias(Ljava/util/Map;)Lcn/hutool/poi/excel/ExcelWriter;

    move-result-object p1

    return-object p1
.end method

.method public setHeaderAlias(Ljava/util/Map;)Lcn/hutool/poi/excel/ExcelWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcn/hutool/poi/excel/ExcelWriter;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 463
    iput-object v0, p0, Lcn/hutool/poi/excel/ExcelWriter;->aliasComparator:Ljava/util/Comparator;

    .line 464
    invoke-super {p0, p1}, Lcn/hutool/poi/excel/ExcelBase;->setHeaderAlias(Ljava/util/Map;)Lcn/hutool/poi/excel/ExcelBase;

    move-result-object p1

    check-cast p1, Lcn/hutool/poi/excel/ExcelWriter;

    return-object p1
.end method

.method public setHeaderOrFooter(Ljava/lang/String;Lcn/hutool/poi/excel/style/Align;Z)Lcn/hutool/poi/excel/ExcelWriter;
    .locals 1

    if-eqz p3, :cond_0

    .line 576
    iget-object p3, p0, Lcn/hutool/poi/excel/ExcelWriter;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-interface {p3}, Lorg/apache/poi/ss/usermodel/Sheet;->getFooter()Lorg/apache/poi/ss/usermodel/Footer;

    move-result-object p3

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcn/hutool/poi/excel/ExcelWriter;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-interface {p3}, Lorg/apache/poi/ss/usermodel/Sheet;->getHeader()Lorg/apache/poi/ss/usermodel/Header;

    move-result-object p3

    .line 577
    :goto_0
    sget-object v0, Lcn/hutool/poi/excel/ExcelWriter$1;->$SwitchMap$cn$hutool$poi$excel$style$Align:[I

    invoke-virtual {p2}, Lcn/hutool/poi/excel/style/Align;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    goto :goto_1

    .line 585
    :cond_1
    invoke-interface {p3, p1}, Lorg/apache/poi/ss/usermodel/HeaderFooter;->setCenter(Ljava/lang/String;)V

    goto :goto_1

    .line 582
    :cond_2
    invoke-interface {p3, p1}, Lorg/apache/poi/ss/usermodel/HeaderFooter;->setRight(Ljava/lang/String;)V

    goto :goto_1

    .line 579
    :cond_3
    invoke-interface {p3, p1}, Lorg/apache/poi/ss/usermodel/HeaderFooter;->setLeft(Ljava/lang/String;)V

    :goto_1
    return-object p0
.end method

.method public setOnlyAlias(Z)Lcn/hutool/poi/excel/ExcelWriter;
    .locals 0

    .line 489
    iput-boolean p1, p0, Lcn/hutool/poi/excel/ExcelWriter;->onlyAlias:Z

    return-object p0
.end method

.method public setRowHeight(II)Lcn/hutool/poi/excel/ExcelWriter;
    .locals 1

    if-gez p1, :cond_0

    .line 556
    iget-object p1, p0, Lcn/hutool/poi/excel/ExcelWriter;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    int-to-float p2, p2

    invoke-interface {p1, p2}, Lorg/apache/poi/ss/usermodel/Sheet;->setDefaultRowHeightInPoints(F)V

    goto :goto_0

    .line 558
    :cond_0
    iget-object v0, p0, Lcn/hutool/poi/excel/ExcelWriter;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-interface {v0, p1}, Lorg/apache/poi/ss/usermodel/Sheet;->getRow(I)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object p1

    if-eqz p1, :cond_1

    int-to-float p2, p2

    .line 560
    invoke-interface {p1, p2}, Lorg/apache/poi/ss/usermodel/Row;->setHeightInPoints(F)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public setRowStyle(ILorg/apache/poi/ss/usermodel/CellStyle;)Lcn/hutool/poi/excel/ExcelWriter;
    .locals 0

    .line 1283
    invoke-virtual {p0, p1}, Lcn/hutool/poi/excel/ExcelWriter;->getOrCreateRow(I)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/apache/poi/ss/usermodel/Row;->setRowStyle(Lorg/apache/poi/ss/usermodel/CellStyle;)V

    return-object p0
.end method

.method public setRowStyleIfHasData(ILorg/apache/poi/ss/usermodel/CellStyle;)Lcn/hutool/poi/excel/ExcelWriter;
    .locals 2

    if-ltz p1, :cond_1

    .line 1303
    invoke-virtual {p0}, Lcn/hutool/poi/excel/ExcelWriter;->getColumnCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1305
    invoke-virtual {p0, p2, v1, p1}, Lcn/hutool/poi/excel/ExcelWriter;->setStyle(Lorg/apache/poi/ss/usermodel/CellStyle;II)Lcn/hutool/poi/excel/ExcelWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0

    .line 1301
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid row number ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public bridge synthetic setSheet(I)Lcn/hutool/poi/excel/ExcelBase;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lcn/hutool/poi/excel/ExcelWriter;->setSheet(I)Lcn/hutool/poi/excel/ExcelWriter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setSheet(Ljava/lang/String;)Lcn/hutool/poi/excel/ExcelBase;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lcn/hutool/poi/excel/ExcelWriter;->setSheet(Ljava/lang/String;)Lcn/hutool/poi/excel/ExcelWriter;

    move-result-object p1

    return-object p1
.end method

.method public setSheet(I)Lcn/hutool/poi/excel/ExcelWriter;
    .locals 0

    .line 193
    invoke-virtual {p0}, Lcn/hutool/poi/excel/ExcelWriter;->reset()Lcn/hutool/poi/excel/ExcelWriter;

    .line 194
    invoke-super {p0, p1}, Lcn/hutool/poi/excel/ExcelBase;->setSheet(I)Lcn/hutool/poi/excel/ExcelBase;

    move-result-object p1

    check-cast p1, Lcn/hutool/poi/excel/ExcelWriter;

    return-object p1
.end method

.method public setSheet(Ljava/lang/String;)Lcn/hutool/poi/excel/ExcelWriter;
    .locals 0

    .line 200
    invoke-virtual {p0}, Lcn/hutool/poi/excel/ExcelWriter;->reset()Lcn/hutool/poi/excel/ExcelWriter;

    .line 201
    invoke-super {p0, p1}, Lcn/hutool/poi/excel/ExcelBase;->setSheet(Ljava/lang/String;)Lcn/hutool/poi/excel/ExcelBase;

    move-result-object p1

    check-cast p1, Lcn/hutool/poi/excel/ExcelWriter;

    return-object p1
.end method

.method public setStyle(Lorg/apache/poi/ss/usermodel/CellStyle;II)Lcn/hutool/poi/excel/ExcelWriter;
    .locals 0

    .line 1268
    invoke-virtual {p0, p2, p3}, Lcn/hutool/poi/excel/ExcelWriter;->getOrCreateCell(II)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object p2

    .line 1269
    invoke-interface {p2, p1}, Lorg/apache/poi/ss/usermodel/Cell;->setCellStyle(Lorg/apache/poi/ss/usermodel/CellStyle;)V

    return-object p0
.end method

.method public setStyle(Lorg/apache/poi/ss/usermodel/CellStyle;Ljava/lang/String;)Lcn/hutool/poi/excel/ExcelWriter;
    .locals 1

    .line 1249
    invoke-static {p2}, Lcn/hutool/poi/excel/ExcelUtil;->toLocation(Ljava/lang/String;)Lcn/hutool/poi/excel/cell/CellLocation;

    move-result-object p2

    .line 1250
    invoke-virtual {p2}, Lcn/hutool/poi/excel/cell/CellLocation;->getX()I

    move-result v0

    invoke-virtual {p2}, Lcn/hutool/poi/excel/cell/CellLocation;->getY()I

    move-result p2

    invoke-virtual {p0, p1, v0, p2}, Lcn/hutool/poi/excel/ExcelWriter;->setStyle(Lorg/apache/poi/ss/usermodel/CellStyle;II)Lcn/hutool/poi/excel/ExcelWriter;

    move-result-object p1

    return-object p1
.end method

.method public setStyleSet(Lcn/hutool/poi/excel/StyleSet;)Lcn/hutool/poi/excel/ExcelWriter;
    .locals 0

    .line 306
    iput-object p1, p0, Lcn/hutool/poi/excel/ExcelWriter;->styleSet:Lcn/hutool/poi/excel/StyleSet;

    return-object p0
.end method

.method public write(Ljava/lang/Iterable;)Lcn/hutool/poi/excel/ExcelWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lcn/hutool/poi/excel/ExcelWriter;"
        }
    .end annotation

    .line 762
    invoke-virtual {p0}, Lcn/hutool/poi/excel/ExcelWriter;->getCurrentRow()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcn/hutool/poi/excel/ExcelWriter;->write(Ljava/lang/Iterable;Z)Lcn/hutool/poi/excel/ExcelWriter;

    move-result-object p1

    return-object p1
.end method

.method public write(Ljava/lang/Iterable;Ljava/util/Comparator;)Lcn/hutool/poi/excel/ExcelWriter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;",
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;)",
            "Lcn/hutool/poi/excel/ExcelWriter;"
        }
    .end annotation

    .line 814
    iget-boolean v0, p0, Lcn/hutool/poi/excel/ExcelWriter;->isClosed:Z

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ExcelWriter has been closed!"

    invoke-static {v0, v3, v2}, Lcn/hutool/core/lang/Assert;->isFalse(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 817
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 818
    instance-of v3, v2, Ljava/util/Map;

    if-eqz v3, :cond_1

    .line 819
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3, p2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 820
    check-cast v2, Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_1

    .line 822
    :cond_1
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3, p2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-static {v2, v3, v1, v1}, Lcn/hutool/core/bean/BeanUtil;->beanToMap(Ljava/lang/Object;Ljava/util/Map;ZZ)Ljava/util/Map;

    move-result-object v3

    .line 824
    :goto_1
    invoke-virtual {p0, v3, v0}, Lcn/hutool/poi/excel/ExcelWriter;->writeRow(Ljava/util/Map;Z)Lcn/hutool/poi/excel/ExcelWriter;

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public write(Ljava/lang/Iterable;Z)Lcn/hutool/poi/excel/ExcelWriter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;Z)",
            "Lcn/hutool/poi/excel/ExcelWriter;"
        }
    .end annotation

    .line 785
    iget-boolean v0, p0, Lcn/hutool/poi/excel/ExcelWriter;->isClosed:Z

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ExcelWriter has been closed!"

    invoke-static {v0, v3, v2}, Lcn/hutool/core/lang/Assert;->isFalse(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 787
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    move v2, v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    move v4, v1

    .line 788
    :goto_1
    invoke-virtual {p0, v3, v4}, Lcn/hutool/poi/excel/ExcelWriter;->writeRow(Ljava/lang/Object;Z)Lcn/hutool/poi/excel/ExcelWriter;

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public writeCellValue(IILjava/lang/Object;)Lcn/hutool/poi/excel/ExcelWriter;
    .locals 1

    const/4 v0, 0x0

    .line 1216
    invoke-virtual {p0, p1, p2, p3, v0}, Lcn/hutool/poi/excel/ExcelWriter;->writeCellValue(IILjava/lang/Object;Z)Lcn/hutool/poi/excel/ExcelWriter;

    move-result-object p1

    return-object p1
.end method

.method public writeCellValue(IILjava/lang/Object;Z)Lcn/hutool/poi/excel/ExcelWriter;
    .locals 0

    .line 1230
    invoke-virtual {p0, p1, p2}, Lcn/hutool/poi/excel/ExcelWriter;->getOrCreateCell(II)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object p1

    .line 1231
    iget-object p2, p0, Lcn/hutool/poi/excel/ExcelWriter;->styleSet:Lcn/hutool/poi/excel/StyleSet;

    invoke-static {p1, p3, p2, p4}, Lcn/hutool/poi/excel/cell/CellUtil;->setCellValue(Lorg/apache/poi/ss/usermodel/Cell;Ljava/lang/Object;Lcn/hutool/poi/excel/StyleSet;Z)V

    return-object p0
.end method

.method public writeCellValue(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/poi/excel/ExcelWriter;
    .locals 1

    const/4 v0, 0x0

    .line 1189
    invoke-virtual {p0, p1, p2, v0}, Lcn/hutool/poi/excel/ExcelWriter;->writeCellValue(Ljava/lang/String;Ljava/lang/Object;Z)Lcn/hutool/poi/excel/ExcelWriter;

    move-result-object p1

    return-object p1
.end method

.method public writeCellValue(Ljava/lang/String;Ljava/lang/Object;Z)Lcn/hutool/poi/excel/ExcelWriter;
    .locals 1

    .line 1202
    invoke-static {p1}, Lcn/hutool/poi/excel/ExcelUtil;->toLocation(Ljava/lang/String;)Lcn/hutool/poi/excel/cell/CellLocation;

    move-result-object p1

    .line 1203
    invoke-virtual {p1}, Lcn/hutool/poi/excel/cell/CellLocation;->getX()I

    move-result v0

    invoke-virtual {p1}, Lcn/hutool/poi/excel/cell/CellLocation;->getY()I

    move-result p1

    invoke-virtual {p0, v0, p1, p2, p3}, Lcn/hutool/poi/excel/ExcelWriter;->writeCellValue(IILjava/lang/Object;Z)Lcn/hutool/poi/excel/ExcelWriter;

    move-result-object p1

    return-object p1
.end method

.method public writeCol(Ljava/lang/Object;ILjava/lang/Iterable;Z)Lcn/hutool/poi/excel/ExcelWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/Iterable<",
            "*>;Z)",
            "Lcn/hutool/poi/excel/ExcelWriter;"
        }
    .end annotation

    .line 1164
    iget-boolean v0, p0, Lcn/hutool/poi/excel/ExcelWriter;->isClosed:Z

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ExcelWriter has been closed!"

    invoke-static {v0, v2, v1}, Lcn/hutool/core/lang/Assert;->isFalse(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1165
    iget-object v0, p0, Lcn/hutool/poi/excel/ExcelWriter;->currentRow:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 1167
    invoke-virtual {p0, p2, v0, p1, v1}, Lcn/hutool/poi/excel/ExcelWriter;->writeCellValue(IILjava/lang/Object;Z)Lcn/hutool/poi/excel/ExcelWriter;

    add-int/lit8 v0, v0, 0x1

    .line 1170
    :cond_0
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 1171
    invoke-virtual {p0, p2, v0, p3}, Lcn/hutool/poi/excel/ExcelWriter;->writeCellValue(IILjava/lang/Object;)Lcn/hutool/poi/excel/ExcelWriter;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-nez p4, :cond_2

    .line 1175
    iget-object p1, p0, Lcn/hutool/poi/excel/ExcelWriter;->currentRow:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_2
    return-object p0
.end method

.method public writeCol(Ljava/lang/Object;Ljava/lang/Iterable;Z)Lcn/hutool/poi/excel/ExcelWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Iterable<",
            "*>;Z)",
            "Lcn/hutool/poi/excel/ExcelWriter;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1148
    invoke-virtual {p0, p1, v0, p2, p3}, Lcn/hutool/poi/excel/ExcelWriter;->writeCol(Ljava/lang/Object;ILjava/lang/Iterable;Z)Lcn/hutool/poi/excel/ExcelWriter;

    move-result-object p1

    return-object p1
.end method

.method public writeCol(Ljava/util/Map;IZ)Lcn/hutool/poi/excel/ExcelWriter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "*+",
            "Ljava/lang/Iterable<",
            "*>;>;IZ)",
            "Lcn/hutool/poi/excel/ExcelWriter;"
        }
    .end annotation

    .line 1125
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1126
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    if-eqz v2, :cond_0

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 1128
    :goto_1
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-eq p2, v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {p0, v1, p2, v2, v4}, Lcn/hutool/poi/excel/ExcelWriter;->writeCol(Ljava/lang/Object;ILjava/lang/Iterable;Z)Lcn/hutool/poi/excel/ExcelWriter;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public writeCol(Ljava/util/Map;Z)Lcn/hutool/poi/excel/ExcelWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "*+",
            "Ljava/lang/Iterable<",
            "*>;>;Z)",
            "Lcn/hutool/poi/excel/ExcelWriter;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1110
    invoke-virtual {p0, p1, v0, p2}, Lcn/hutool/poi/excel/ExcelWriter;->writeCol(Ljava/util/Map;IZ)Lcn/hutool/poi/excel/ExcelWriter;

    move-result-object p1

    return-object p1
.end method

.method public writeHeadRow(Ljava/lang/Iterable;)Lcn/hutool/poi/excel/ExcelWriter;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lcn/hutool/poi/excel/ExcelWriter;"
        }
    .end annotation

    .line 940
    iget-boolean v0, p0, Lcn/hutool/poi/excel/ExcelWriter;->isClosed:Z

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ExcelWriter has been closed!"

    invoke-static {v0, v3, v2}, Lcn/hutool/core/lang/Assert;->isFalse(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 941
    new-instance v0, Lcn/hutool/core/map/SafeConcurrentHashMap;

    invoke-direct {v0}, Lcn/hutool/core/map/SafeConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcn/hutool/poi/excel/ExcelWriter;->headLocationCache:Ljava/util/Map;

    .line 942
    iget-object v0, p0, Lcn/hutool/poi/excel/ExcelWriter;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    iget-object v2, p0, Lcn/hutool/poi/excel/ExcelWriter;->currentRow:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    invoke-interface {v0, v2}, Lorg/apache/poi/ss/usermodel/Sheet;->createRow(I)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v0

    .line 945
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 946
    invoke-interface {v0, v1}, Lorg/apache/poi/ss/usermodel/Row;->createCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v3

    .line 947
    iget-object v4, p0, Lcn/hutool/poi/excel/ExcelWriter;->styleSet:Lcn/hutool/poi/excel/StyleSet;

    const/4 v5, 0x1

    invoke-static {v3, v2, v4, v5}, Lcn/hutool/poi/excel/cell/CellUtil;->setCellValue(Lorg/apache/poi/ss/usermodel/Cell;Ljava/lang/Object;Lcn/hutool/poi/excel/StyleSet;Z)V

    .line 948
    iget-object v3, p0, Lcn/hutool/poi/excel/ExcelWriter;->headLocationCache:Ljava/util/Map;

    invoke-static {v2}, Lcn/hutool/core/util/StrUtil;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v1, v5

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public writeImg(Ljava/io/File;IIII)Lcn/hutool/poi/excel/ExcelWriter;
    .locals 10

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    .line 846
    invoke-virtual/range {v0 .. v9}, Lcn/hutool/poi/excel/ExcelWriter;->writeImg(Ljava/io/File;IIIIIIII)Lcn/hutool/poi/excel/ExcelWriter;

    move-result-object p1

    return-object p1
.end method

.method public writeImg(Ljava/io/File;IIIIIIII)Lcn/hutool/poi/excel/ExcelWriter;
    .locals 11

    const/4 v2, 0x6

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    .line 868
    invoke-virtual/range {v0 .. v10}, Lcn/hutool/poi/excel/ExcelWriter;->writeImg(Ljava/io/File;IIIIIIIII)Lcn/hutool/poi/excel/ExcelWriter;

    move-result-object v0

    return-object v0
.end method

.method public writeImg(Ljava/io/File;IIIIIIIII)Lcn/hutool/poi/excel/ExcelWriter;
    .locals 11

    .line 891
    invoke-static {p1}, Lcn/hutool/core/io/FileUtil;->readBytes(Ljava/io/File;)[B

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Lcn/hutool/poi/excel/ExcelWriter;->writeImg([BIIIIIIIII)Lcn/hutool/poi/excel/ExcelWriter;

    move-result-object v0

    return-object v0
.end method

.method public writeImg([BIIIIIIIII)Lcn/hutool/poi/excel/ExcelWriter;
    .locals 2

    .line 915
    iget-object v0, p0, Lcn/hutool/poi/excel/ExcelWriter;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Sheet;->createDrawingPatriarch()Lorg/apache/poi/ss/usermodel/Drawing;

    move-result-object v0

    .line 916
    iget-object v1, p0, Lcn/hutool/poi/excel/ExcelWriter;->workbook:Lorg/apache/poi/ss/usermodel/Workbook;

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Workbook;->getCreationHelper()Lorg/apache/poi/ss/usermodel/CreationHelper;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/CreationHelper;->createClientAnchor()Lorg/apache/poi/ss/usermodel/ClientAnchor;

    move-result-object v1

    .line 917
    invoke-interface {v1, p3}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->setDx1(I)V

    .line 918
    invoke-interface {v1, p4}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->setDy1(I)V

    .line 919
    invoke-interface {v1, p5}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->setDx2(I)V

    .line 920
    invoke-interface {v1, p6}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->setDy2(I)V

    .line 921
    invoke-interface {v1, p7}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->setCol1(I)V

    .line 922
    invoke-interface {v1, p8}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->setRow1(I)V

    .line 923
    invoke-interface {v1, p9}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->setCol2(I)V

    .line 924
    invoke-interface {v1, p10}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->setRow2(I)V

    .line 926
    iget-object p3, p0, Lcn/hutool/poi/excel/ExcelWriter;->workbook:Lorg/apache/poi/ss/usermodel/Workbook;

    invoke-interface {p3, p1, p2}, Lorg/apache/poi/ss/usermodel/Workbook;->addPicture([BI)I

    move-result p1

    invoke-interface {v0, v1, p1}, Lorg/apache/poi/ss/usermodel/Drawing;->createPicture(Lorg/apache/poi/ss/usermodel/ClientAnchor;I)Lorg/apache/poi/ss/usermodel/Picture;

    return-object p0
.end method

.method public writeRow(Ljava/lang/Iterable;)Lcn/hutool/poi/excel/ExcelWriter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lcn/hutool/poi/excel/ExcelWriter;"
        }
    .end annotation

    .line 1094
    iget-boolean v0, p0, Lcn/hutool/poi/excel/ExcelWriter;->isClosed:Z

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ExcelWriter has been closed!"

    invoke-static {v0, v3, v2}, Lcn/hutool/core/lang/Assert;->isFalse(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1095
    iget-object v0, p0, Lcn/hutool/poi/excel/ExcelWriter;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    iget-object v2, p0, Lcn/hutool/poi/excel/ExcelWriter;->currentRow:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    invoke-interface {v0, v2}, Lorg/apache/poi/ss/usermodel/Sheet;->createRow(I)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v0

    iget-object v2, p0, Lcn/hutool/poi/excel/ExcelWriter;->styleSet:Lcn/hutool/poi/excel/StyleSet;

    invoke-static {v0, p1, v2, v1}, Lcn/hutool/poi/excel/RowUtil;->writeRow(Lorg/apache/poi/ss/usermodel/Row;Ljava/lang/Iterable;Lcn/hutool/poi/excel/StyleSet;Z)V

    return-object p0
.end method

.method public writeRow(Ljava/lang/Object;Z)Lcn/hutool/poi/excel/ExcelWriter;
    .locals 3

    .line 1009
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 1010
    iget-object v0, p0, Lcn/hutool/poi/excel/ExcelWriter;->headerAlias:Ljava/util/Map;

    invoke-static {v0}, Lcn/hutool/core/map/MapUtil;->isNotEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1011
    check-cast p1, Ljava/util/Map;

    invoke-direct {p0}, Lcn/hutool/poi/excel/ExcelWriter;->getCachedAliasComparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/hutool/core/map/MapUtil;->newTreeMap(Ljava/util/Map;Ljava/util/Comparator;)Ljava/util/TreeMap;

    move-result-object p1

    goto :goto_0

    .line 1013
    :cond_0
    check-cast p1, Ljava/util/Map;

    goto :goto_0

    .line 1015
    :cond_1
    instance-of v0, p1, Ljava/lang/Iterable;

    if-eqz v0, :cond_2

    .line 1018
    check-cast p1, Ljava/lang/Iterable;

    invoke-virtual {p0, p1}, Lcn/hutool/poi/excel/ExcelWriter;->writeRow(Ljava/lang/Iterable;)Lcn/hutool/poi/excel/ExcelWriter;

    move-result-object p1

    return-object p1

    .line 1019
    :cond_2
    instance-of v0, p1, Lorg/apache/poi/common/usermodel/Hyperlink;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2

    .line 1021
    invoke-static {v0}, Lcn/hutool/core/collection/CollUtil;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcn/hutool/poi/excel/ExcelWriter;->writeRow(Ljava/lang/Object;Z)Lcn/hutool/poi/excel/ExcelWriter;

    move-result-object p1

    return-object p1

    .line 1022
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/core/bean/BeanUtil;->isBean(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1023
    iget-object v0, p0, Lcn/hutool/poi/excel/ExcelWriter;->headerAlias:Ljava/util/Map;

    invoke-static {v0}, Lcn/hutool/core/map/MapUtil;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1024
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {p1, v0, v2, v2}, Lcn/hutool/core/bean/BeanUtil;->beanToMap(Ljava/lang/Object;Ljava/util/Map;ZZ)Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    .line 1027
    :cond_4
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {p0}, Lcn/hutool/poi/excel/ExcelWriter;->getCachedAliasComparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-static {p1, v0, v2, v2}, Lcn/hutool/core/bean/BeanUtil;->beanToMap(Ljava/lang/Object;Ljava/util/Map;ZZ)Ljava/util/Map;

    move-result-object p1

    .line 1033
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcn/hutool/poi/excel/ExcelWriter;->writeRow(Ljava/util/Map;Z)Lcn/hutool/poi/excel/ExcelWriter;

    move-result-object p1

    return-object p1

    :cond_5
    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2

    .line 1031
    invoke-static {v0}, Lcn/hutool/core/collection/CollUtil;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcn/hutool/poi/excel/ExcelWriter;->writeRow(Ljava/lang/Object;Z)Lcn/hutool/poi/excel/ExcelWriter;

    move-result-object p1

    return-object p1
.end method

.method public writeRow(Ljava/util/Map;Z)Lcn/hutool/poi/excel/ExcelWriter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;Z)",
            "Lcn/hutool/poi/excel/ExcelWriter;"
        }
    .end annotation

    .line 1045
    iget-boolean v0, p0, Lcn/hutool/poi/excel/ExcelWriter;->isClosed:Z

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ExcelWriter has been closed!"

    invoke-static {v0, v3, v2}, Lcn/hutool/core/lang/Assert;->isFalse(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1046
    invoke-static {p1}, Lcn/hutool/core/map/MapUtil;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1048
    invoke-virtual {p0}, Lcn/hutool/poi/excel/ExcelWriter;->passCurrentRow()Lcn/hutool/poi/excel/ExcelWriter;

    move-result-object p1

    return-object p1

    .line 1051
    :cond_0
    invoke-direct {p0, p1}, Lcn/hutool/poi/excel/ExcelWriter;->aliasTable(Ljava/util/Map;)Lcn/hutool/core/map/multi/Table;

    move-result-object p1

    if-eqz p2, :cond_1

    .line 1054
    invoke-interface {p1}, Lcn/hutool/core/map/multi/Table;->columnKeys()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcn/hutool/poi/excel/ExcelWriter;->writeHeadRow(Ljava/lang/Iterable;)Lcn/hutool/poi/excel/ExcelWriter;

    .line 1057
    invoke-interface {p1}, Lcn/hutool/core/map/multi/Table;->rowKeySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v0, v1

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1058
    iget-object v3, p0, Lcn/hutool/poi/excel/ExcelWriter;->headLocationCache:Ljava/util/Map;

    invoke-static {v2}, Lcn/hutool/core/util/StrUtil;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1064
    :cond_1
    iget-object p2, p0, Lcn/hutool/poi/excel/ExcelWriter;->headLocationCache:Ljava/util/Map;

    invoke-static {p2}, Lcn/hutool/core/map/MapUtil;->isNotEmpty(Ljava/util/Map;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1065
    iget-object p2, p0, Lcn/hutool/poi/excel/ExcelWriter;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    iget-object v0, p0, Lcn/hutool/poi/excel/ExcelWriter;->currentRow:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    invoke-static {p2, v0}, Lcn/hutool/poi/excel/RowUtil;->getOrCreateRow(Lorg/apache/poi/ss/usermodel/Sheet;I)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object p2

    .line 1067
    invoke-interface {p1}, Lcn/hutool/core/map/multi/Table;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/hutool/core/map/multi/Table$Cell;

    .line 1069
    iget-object v2, p0, Lcn/hutool/poi/excel/ExcelWriter;->headLocationCache:Ljava/util/Map;

    invoke-interface {v0}, Lcn/hutool/core/map/multi/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcn/hutool/core/util/StrUtil;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_3

    .line 1072
    iget-object v2, p0, Lcn/hutool/poi/excel/ExcelWriter;->headLocationCache:Ljava/util/Map;

    invoke-interface {v0}, Lcn/hutool/core/map/multi/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcn/hutool/core/util/StrUtil;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    :cond_3
    if-eqz v2, :cond_2

    .line 1075
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p2, v2}, Lcn/hutool/poi/excel/cell/CellUtil;->getOrCreateCell(Lorg/apache/poi/ss/usermodel/Row;I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v2

    invoke-interface {v0}, Lcn/hutool/core/map/multi/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget-object v3, p0, Lcn/hutool/poi/excel/ExcelWriter;->styleSet:Lcn/hutool/poi/excel/StyleSet;

    invoke-static {v2, v0, v3, v1}, Lcn/hutool/poi/excel/cell/CellUtil;->setCellValue(Lorg/apache/poi/ss/usermodel/Cell;Ljava/lang/Object;Lcn/hutool/poi/excel/StyleSet;Z)V

    goto :goto_1

    .line 1079
    :cond_4
    invoke-interface {p1}, Lcn/hutool/core/map/multi/Table;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/hutool/poi/excel/ExcelWriter;->writeRow(Ljava/lang/Iterable;)Lcn/hutool/poi/excel/ExcelWriter;

    :cond_5
    return-object p0
.end method

.method public writeSecHeadRow(Ljava/lang/Iterable;)Lcn/hutool/poi/excel/ExcelWriter;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lcn/hutool/poi/excel/ExcelWriter;"
        }
    .end annotation

    .line 968
    iget-object v0, p0, Lcn/hutool/poi/excel/ExcelWriter;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    iget-object v1, p0, Lcn/hutool/poi/excel/ExcelWriter;->currentRow:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-static {v0, v1}, Lcn/hutool/poi/excel/RowUtil;->getOrCreateRow(Lorg/apache/poi/ss/usermodel/Sheet;I)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v0

    .line 969
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 971
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Row;->getLastCellNum()S

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x0

    .line 972
    :goto_0
    iget-object v2, p0, Lcn/hutool/poi/excel/ExcelWriter;->workbook:Lorg/apache/poi/ss/usermodel/Workbook;

    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/Workbook;->getSpreadsheetVersion()Lorg/apache/poi/ss/SpreadsheetVersion;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/ss/SpreadsheetVersion;->getMaxColumns()I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 973
    invoke-interface {v0, p1}, Lorg/apache/poi/ss/usermodel/Row;->getCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 977
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 978
    invoke-interface {v0, p1}, Lorg/apache/poi/ss/usermodel/Row;->createCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v2

    .line 979
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcn/hutool/poi/excel/ExcelWriter;->styleSet:Lcn/hutool/poi/excel/StyleSet;

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Lcn/hutool/poi/excel/cell/CellUtil;->setCellValue(Lorg/apache/poi/ss/usermodel/Cell;Ljava/lang/Object;Lcn/hutool/poi/excel/StyleSet;Z)V

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 985
    :cond_1
    invoke-virtual {p0, p1}, Lcn/hutool/poi/excel/ExcelWriter;->writeHeadRow(Ljava/lang/Iterable;)Lcn/hutool/poi/excel/ExcelWriter;

    :cond_2
    return-object p0
.end method

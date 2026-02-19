.class public Lcn/hutool/poi/excel/WorkbookUtil;
.super Ljava/lang/Object;
.source "WorkbookUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBook(Ljava/io/File;)Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-static {p0, v0}, Lcn/hutool/poi/excel/WorkbookUtil;->createBook(Ljava/io/File;Z)Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object p0

    return-object p0
.end method

.method public static createBook(Ljava/io/File;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 1

    const/4 v0, 0x0

    .line 106
    invoke-static {p0, p1, v0}, Lcn/hutool/poi/excel/WorkbookUtil;->createBook(Ljava/io/File;Ljava/lang/String;Z)Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object p0

    return-object p0
.end method

.method public static createBook(Ljava/io/File;Ljava/lang/String;Z)Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 0

    .line 120
    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/usermodel/WorkbookFactory;->create(Ljava/io/File;Ljava/lang/String;Z)Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 122
    new-instance p1, Lcn/hutool/poi/exceptions/POIException;

    invoke-direct {p1, p0}, Lcn/hutool/poi/exceptions/POIException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static createBook(Ljava/io/File;Z)Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-static {p0, v0, p1}, Lcn/hutool/poi/excel/WorkbookUtil;->createBook(Ljava/io/File;Ljava/lang/String;Z)Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object p0

    return-object p0
.end method

.method public static createBook(Ljava/io/InputStream;)Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 1

    const/4 v0, 0x0

    .line 133
    invoke-static {p0, v0}, Lcn/hutool/poi/excel/WorkbookUtil;->createBook(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object p0

    return-object p0
.end method

.method public static createBook(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 1

    .line 146
    :try_start_0
    invoke-static {p0}, Lcn/hutool/core/io/IoUtil;->toMarkSupportStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/poi/ss/usermodel/WorkbookFactory;->create(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    invoke-static {p0}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 148
    :try_start_1
    new-instance v0, Lcn/hutool/poi/exceptions/POIException;

    invoke-direct {v0, p1}, Lcn/hutool/poi/exceptions/POIException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    :goto_0
    invoke-static {p0}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    .line 151
    throw p1
.end method

.method public static createBook(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-static {p0, v0}, Lcn/hutool/poi/excel/WorkbookUtil;->createBook(Ljava/lang/String;Z)Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object p0

    return-object p0
.end method

.method public static createBook(Ljava/lang/String;Z)Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 1

    .line 48
    invoke-static {p0}, Lcn/hutool/core/io/FileUtil;->file(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcn/hutool/poi/excel/WorkbookUtil;->createBook(Ljava/io/File;Ljava/lang/String;Z)Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object p0

    return-object p0
.end method

.method public static createBook(Z)Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 1

    .line 163
    :try_start_0
    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/WorkbookFactory;->create(Z)Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 165
    new-instance v0, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {v0, p0}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static createBookForWriter(Ljava/io/File;)Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    .line 88
    invoke-static {p0}, Lcn/hutool/poi/excel/WorkbookUtil;->createBook(Z)Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object p0

    return-object p0

    .line 91
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    invoke-static {p0}, Lcn/hutool/core/io/FileUtil;->getInputStream(Ljava/io/File;)Ljava/io/BufferedInputStream;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/poi/excel/WorkbookUtil;->createBook(Ljava/io/InputStream;)Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object p0

    return-object p0

    .line 95
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, ".xlsx"

    invoke-static {p0, v0}, Lcn/hutool/core/util/StrUtil;->endWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    invoke-static {p0}, Lcn/hutool/poi/excel/WorkbookUtil;->createBook(Z)Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object p0

    return-object p0
.end method

.method public static createSXSSFBook()Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;
    .locals 1

    .line 272
    new-instance v0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    invoke-direct {v0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;-><init>()V

    return-object v0
.end method

.method public static createSXSSFBook(I)Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;
    .locals 1

    .line 283
    new-instance v0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;-><init>(I)V

    return-object v0
.end method

.method public static createSXSSFBook(IZZ)Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;
    .locals 2

    .line 296
    new-instance v0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1, p2}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;IZZ)V

    return-object v0
.end method

.method public static createSXSSFBook(Ljava/io/File;)Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;
    .locals 1

    const/4 v0, 0x0

    .line 200
    invoke-static {p0, v0}, Lcn/hutool/poi/excel/WorkbookUtil;->createSXSSFBook(Ljava/io/File;Z)Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    move-result-object p0

    return-object p0
.end method

.method public static createSXSSFBook(Ljava/io/File;Ljava/lang/String;)Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;
    .locals 1

    const/4 v0, 0x0

    .line 225
    invoke-static {p0, p1, v0}, Lcn/hutool/poi/excel/WorkbookUtil;->createSXSSFBook(Ljava/io/File;Ljava/lang/String;Z)Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    move-result-object p0

    return-object p0
.end method

.method public static createSXSSFBook(Ljava/io/File;Ljava/lang/String;Z)Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;
    .locals 0

    .line 239
    invoke-static {p0, p1, p2}, Lcn/hutool/poi/excel/WorkbookUtil;->createBook(Ljava/io/File;Ljava/lang/String;Z)Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/poi/excel/WorkbookUtil;->toSXSSFBook(Lorg/apache/poi/ss/usermodel/Workbook;)Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    move-result-object p0

    return-object p0
.end method

.method public static createSXSSFBook(Ljava/io/File;Z)Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;
    .locals 1

    const/4 v0, 0x0

    .line 212
    invoke-static {p0, v0, p1}, Lcn/hutool/poi/excel/WorkbookUtil;->createSXSSFBook(Ljava/io/File;Ljava/lang/String;Z)Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    move-result-object p0

    return-object p0
.end method

.method public static createSXSSFBook(Ljava/io/InputStream;)Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;
    .locals 1

    const/4 v0, 0x0

    .line 250
    invoke-static {p0, v0}, Lcn/hutool/poi/excel/WorkbookUtil;->createSXSSFBook(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    move-result-object p0

    return-object p0
.end method

.method public static createSXSSFBook(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;
    .locals 0

    .line 262
    invoke-static {p0, p1}, Lcn/hutool/poi/excel/WorkbookUtil;->createBook(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/poi/excel/WorkbookUtil;->toSXSSFBook(Lorg/apache/poi/ss/usermodel/Workbook;)Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    move-result-object p0

    return-object p0
.end method

.method public static createSXSSFBook(Ljava/lang/String;)Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;
    .locals 1

    const/4 v0, 0x0

    .line 177
    invoke-static {p0, v0}, Lcn/hutool/poi/excel/WorkbookUtil;->createSXSSFBook(Ljava/lang/String;Z)Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    move-result-object p0

    return-object p0
.end method

.method public static createSXSSFBook(Ljava/lang/String;Z)Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;
    .locals 1

    .line 189
    invoke-static {p0}, Lcn/hutool/core/io/FileUtil;->file(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcn/hutool/poi/excel/WorkbookUtil;->createSXSSFBook(Ljava/io/File;Ljava/lang/String;Z)Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    move-result-object p0

    return-object p0
.end method

.method public static getOrCreateSheet(Lorg/apache/poi/ss/usermodel/Workbook;I)Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 0

    .line 349
    :try_start_0
    invoke-interface {p0, p1}, Lorg/apache/poi/ss/usermodel/Workbook;->getSheetAt(I)Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_0

    .line 354
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Workbook;->createSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public static getOrCreateSheet(Lorg/apache/poi/ss/usermodel/Workbook;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 328
    :cond_0
    invoke-static {p1}, Lcn/hutool/core/util/StrUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "sheet1"

    .line 329
    :cond_1
    invoke-interface {p0, p1}, Lorg/apache/poi/ss/usermodel/Workbook;->getSheet(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v0

    if-nez v0, :cond_2

    .line 331
    invoke-interface {p0, p1}, Lorg/apache/poi/ss/usermodel/Workbook;->createSheet(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public static isEmpty(Lorg/apache/poi/ss/usermodel/Sheet;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 367
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Sheet;->getLastRowNum()I

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Sheet;->getPhysicalNumberOfRows()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static toSXSSFBook(Lorg/apache/poi/ss/usermodel/Workbook;)Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;
    .locals 1

    .line 380
    instance-of v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    if-eqz v0, :cond_0

    .line 381
    check-cast p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    return-object p0

    .line 383
    :cond_0
    instance-of v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    if-eqz v0, :cond_1

    .line 384
    new-instance v0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    check-cast p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)V

    return-object v0

    .line 386
    :cond_1
    new-instance p0, Lcn/hutool/poi/exceptions/POIException;

    const-string v0, "The input is not a [xlsx] format."

    invoke-direct {p0, v0}, Lcn/hutool/poi/exceptions/POIException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static writeBook(Lorg/apache/poi/ss/usermodel/Workbook;Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 309
    :try_start_0
    invoke-interface {p0, p1}, Lorg/apache/poi/ss/usermodel/Workbook;->write(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 311
    new-instance p1, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {p1, p0}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

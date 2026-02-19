.class public Lcn/hutool/poi/excel/sax/Excel07SaxReader;
.super Ljava/lang/Object;
.source "Excel07SaxReader.java"

# interfaces
.implements Lcn/hutool/poi/excel/sax/ExcelSaxReader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/hutool/poi/excel/sax/ExcelSaxReader<",
        "Lcn/hutool/poi/excel/sax/Excel07SaxReader;",
        ">;"
    }
.end annotation


# instance fields
.field private final handler:Lcn/hutool/poi/excel/sax/SheetDataSaxHandler;


# direct methods
.method public constructor <init>(Lcn/hutool/poi/excel/sax/handler/RowHandler;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcn/hutool/poi/excel/sax/SheetDataSaxHandler;

    invoke-direct {v0, p1}, Lcn/hutool/poi/excel/sax/SheetDataSaxHandler;-><init>(Lcn/hutool/poi/excel/sax/handler/RowHandler;)V

    iput-object v0, p0, Lcn/hutool/poi/excel/sax/Excel07SaxReader;->handler:Lcn/hutool/poi/excel/sax/SheetDataSaxHandler;

    return-void
.end method

.method private getSheetIndex(Lorg/apache/poi/xssf/eventusermodel/XSSFReader;Ljava/lang/String;)I
    .locals 2

    const-string v0, "rId"

    .line 197
    invoke-static {p2, v0}, Lcn/hutool/core/util/StrUtil;->startWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    invoke-static {p2, v0}, Lcn/hutool/core/util/StrUtil;->removePrefixIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 202
    :cond_0
    invoke-static {p1}, Lcn/hutool/poi/excel/sax/SheetRidReader;->parse(Lorg/apache/poi/xssf/eventusermodel/XSSFReader;)Lcn/hutool/poi/excel/sax/SheetRidReader;

    move-result-object p1

    const-string v0, "sheetName:"

    .line 204
    invoke-static {p2, v0}, Lcn/hutool/core/util/StrUtil;->startWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 206
    invoke-static {p2, v0}, Lcn/hutool/core/util/StrUtil;->removePrefixIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 207
    invoke-virtual {p1, p2}, Lcn/hutool/poi/excel/sax/SheetRidReader;->getRidByNameBase0(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 209
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 213
    :cond_1
    invoke-virtual {p1, p2}, Lcn/hutool/poi/excel/sax/SheetRidReader;->getRidByNameBase0(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 215
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 219
    :cond_2
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 220
    invoke-virtual {p1, v0}, Lcn/hutool/poi/excel/sax/SheetRidReader;->getRidBySheetIdBase0(I)Ljava/lang/Integer;

    move-result-object p1

    .line 222
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/hutool/core/util/ObjectUtil;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 228
    :catch_0
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid rId or id or sheetName: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readSheets(Lorg/apache/poi/xssf/eventusermodel/XSSFReader;Ljava/lang/String;)Lcn/hutool/poi/excel/sax/Excel07SaxReader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/poi/exceptions/POIException;
        }
    .end annotation

    const-string v0, "rId"

    .line 151
    iget-object v1, p0, Lcn/hutool/poi/excel/sax/Excel07SaxReader;->handler:Lcn/hutool/poi/excel/sax/SheetDataSaxHandler;

    invoke-direct {p0, p1, p2}, Lcn/hutool/poi/excel/sax/Excel07SaxReader;->getSheetIndex(Lorg/apache/poi/xssf/eventusermodel/XSSFReader;Ljava/lang/String;)I

    move-result p2

    iput p2, v1, Lcn/hutool/poi/excel/sax/SheetDataSaxHandler;->sheetIndex:I

    const/4 p2, 0x0

    .line 154
    :try_start_0
    iget-object v1, p0, Lcn/hutool/poi/excel/sax/Excel07SaxReader;->handler:Lcn/hutool/poi/excel/sax/SheetDataSaxHandler;

    iget v1, v1, Lcn/hutool/poi/excel/sax/SheetDataSaxHandler;->sheetIndex:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/hutool/poi/excel/sax/Excel07SaxReader;->handler:Lcn/hutool/poi/excel/sax/SheetDataSaxHandler;

    iget v0, v0, Lcn/hutool/poi/excel/sax/SheetDataSaxHandler;->sheetIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;->getSheet(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2

    .line 157
    iget-object p1, p0, Lcn/hutool/poi/excel/sax/Excel07SaxReader;->handler:Lcn/hutool/poi/excel/sax/SheetDataSaxHandler;

    invoke-static {p2, p1}, Lcn/hutool/poi/excel/sax/ExcelSaxUtil;->readFrom(Ljava/io/InputStream;Lorg/xml/sax/ContentHandler;)V

    .line 158
    iget-object p1, p0, Lcn/hutool/poi/excel/sax/Excel07SaxReader;->handler:Lcn/hutool/poi/excel/sax/SheetDataSaxHandler;

    iget-object p1, p1, Lcn/hutool/poi/excel/sax/SheetDataSaxHandler;->rowHandler:Lcn/hutool/poi/excel/sax/handler/RowHandler;

    invoke-interface {p1}, Lcn/hutool/poi/excel/sax/handler/RowHandler;->doAfterAllAnalysed()V

    goto :goto_1

    .line 160
    :cond_0
    iget-object v0, p0, Lcn/hutool/poi/excel/sax/Excel07SaxReader;->handler:Lcn/hutool/poi/excel/sax/SheetDataSaxHandler;

    iput v2, v0, Lcn/hutool/poi/excel/sax/SheetDataSaxHandler;->sheetIndex:I

    .line 162
    invoke-virtual {p1}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;->getSheetsData()Ljava/util/Iterator;

    move-result-object p1

    .line 163
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcn/hutool/poi/excel/sax/Excel07SaxReader;->handler:Lcn/hutool/poi/excel/sax/SheetDataSaxHandler;

    const/4 v1, 0x0

    iput v1, v0, Lcn/hutool/poi/excel/sax/SheetDataSaxHandler;->index:I

    .line 166
    iget-object v0, p0, Lcn/hutool/poi/excel/sax/Excel07SaxReader;->handler:Lcn/hutool/poi/excel/sax/SheetDataSaxHandler;

    iget v1, v0, Lcn/hutool/poi/excel/sax/SheetDataSaxHandler;->sheetIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcn/hutool/poi/excel/sax/SheetDataSaxHandler;->sheetIndex:I

    .line 167
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 168
    :try_start_1
    iget-object p2, p0, Lcn/hutool/poi/excel/sax/Excel07SaxReader;->handler:Lcn/hutool/poi/excel/sax/SheetDataSaxHandler;

    invoke-static {v0, p2}, Lcn/hutool/poi/excel/sax/ExcelSaxUtil;->readFrom(Ljava/io/InputStream;Lorg/xml/sax/ContentHandler;)V

    .line 169
    iget-object p2, p0, Lcn/hutool/poi/excel/sax/Excel07SaxReader;->handler:Lcn/hutool/poi/excel/sax/SheetDataSaxHandler;

    iget-object p2, p2, Lcn/hutool/poi/excel/sax/SheetDataSaxHandler;->rowHandler:Lcn/hutool/poi/excel/sax/handler/RowHandler;

    invoke-interface {p2}, Lcn/hutool/poi/excel/sax/handler/RowHandler;->doAfterAllAnalysed()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object p2, v0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object p2, v0

    goto :goto_4

    :catch_0
    move-exception p1

    move-object p2, v0

    goto :goto_2

    :catch_1
    move-exception p1

    move-object p2, v0

    goto :goto_3

    .line 177
    :cond_1
    :goto_1
    invoke-static {p2}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    return-object p0

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_2
    move-exception p1

    .line 175
    :goto_2
    :try_start_2
    new-instance v0, Lcn/hutool/poi/exceptions/POIException;

    invoke-direct {v0, p1}, Lcn/hutool/poi/exceptions/POIException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_3
    move-exception p1

    .line 173
    :goto_3
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 177
    :goto_4
    invoke-static {p2}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    .line 178
    throw p1
.end method


# virtual methods
.method public read(Ljava/io/File;I)Lcn/hutool/poi/excel/sax/Excel07SaxReader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/poi/exceptions/POIException;
        }
    .end annotation

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rId"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcn/hutool/poi/excel/sax/Excel07SaxReader;->read(Ljava/io/File;Ljava/lang/String;)Lcn/hutool/poi/excel/sax/Excel07SaxReader;

    move-result-object p1

    return-object p1
.end method

.method public read(Ljava/io/File;Ljava/lang/String;)Lcn/hutool/poi/excel/sax/Excel07SaxReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/poi/exceptions/POIException;
        }
    .end annotation

    .line 60
    :try_start_0
    sget-object v0, Lorg/apache/poi/openxml4j/opc/PackageAccess;->READ:Lorg/apache/poi/openxml4j/opc/PackageAccess;

    invoke-static {p1, v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->open(Ljava/io/File;Lorg/apache/poi/openxml4j/opc/PackageAccess;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcn/hutool/poi/excel/sax/Excel07SaxReader;->read(Lorg/apache/poi/openxml4j/opc/OPCPackage;Ljava/lang/String;)Lcn/hutool/poi/excel/sax/Excel07SaxReader;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 62
    :try_start_2
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->close()V
    :try_end_2
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return-object p2

    :catchall_0
    move-exception p2

    .line 60
    :try_start_3
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_1

    .line 62
    :try_start_4
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    :try_start_5
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v0
    :try_end_5
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 63
    :goto_1
    new-instance p2, Lcn/hutool/poi/exceptions/POIException;

    invoke-direct {p2, p1}, Lcn/hutool/poi/exceptions/POIException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public read(Ljava/io/InputStream;I)Lcn/hutool/poi/excel/sax/Excel07SaxReader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/poi/exceptions/POIException;
        }
    .end annotation

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rId"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcn/hutool/poi/excel/sax/Excel07SaxReader;->read(Ljava/io/InputStream;Ljava/lang/String;)Lcn/hutool/poi/excel/sax/Excel07SaxReader;

    move-result-object p1

    return-object p1
.end method

.method public read(Ljava/io/InputStream;Ljava/lang/String;)Lcn/hutool/poi/excel/sax/Excel07SaxReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/poi/exceptions/POIException;
        }
    .end annotation

    .line 74
    :try_start_0
    invoke-static {p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->open(Ljava/io/InputStream;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcn/hutool/poi/excel/sax/Excel07SaxReader;->read(Lorg/apache/poi/openxml4j/opc/OPCPackage;Ljava/lang/String;)Lcn/hutool/poi/excel/sax/Excel07SaxReader;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 76
    :try_start_2
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return-object p2

    :catchall_0
    move-exception p2

    .line 74
    :try_start_3
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_1

    .line 76
    :try_start_4
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    :try_start_5
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    .line 79
    new-instance p2, Lcn/hutool/poi/exceptions/POIException;

    invoke-direct {p2, p1}, Lcn/hutool/poi/exceptions/POIException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 77
    new-instance p2, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {p2, p1}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public read(Lorg/apache/poi/openxml4j/opc/OPCPackage;I)Lcn/hutool/poi/excel/sax/Excel07SaxReader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/poi/exceptions/POIException;
        }
    .end annotation

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rId"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcn/hutool/poi/excel/sax/Excel07SaxReader;->read(Lorg/apache/poi/openxml4j/opc/OPCPackage;Ljava/lang/String;)Lcn/hutool/poi/excel/sax/Excel07SaxReader;

    move-result-object p1

    return-object p1
.end method

.method public read(Lorg/apache/poi/openxml4j/opc/OPCPackage;Ljava/lang/String;)Lcn/hutool/poi/excel/sax/Excel07SaxReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/poi/exceptions/POIException;
        }
    .end annotation

    .line 105
    :try_start_0
    new-instance v0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;

    invoke-direct {v0, p1}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    invoke-virtual {p0, v0, p2}, Lcn/hutool/poi/excel/sax/Excel07SaxReader;->read(Lorg/apache/poi/xssf/eventusermodel/XSSFReader;Ljava/lang/String;)Lcn/hutool/poi/excel/sax/Excel07SaxReader;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 109
    new-instance p2, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {p2, p1}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 107
    new-instance p2, Lcn/hutool/poi/exceptions/POIException;

    invoke-direct {p2, p1}, Lcn/hutool/poi/exceptions/POIException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public read(Lorg/apache/poi/xssf/eventusermodel/XSSFReader;Ljava/lang/String;)Lcn/hutool/poi/excel/sax/Excel07SaxReader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/poi/exceptions/POIException;
        }
    .end annotation

    .line 125
    :try_start_0
    iget-object v0, p0, Lcn/hutool/poi/excel/sax/Excel07SaxReader;->handler:Lcn/hutool/poi/excel/sax/SheetDataSaxHandler;

    invoke-virtual {p1}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;->getStylesTable()Lorg/apache/poi/xssf/model/StylesTable;

    move-result-object v1

    iput-object v1, v0, Lcn/hutool/poi/excel/sax/SheetDataSaxHandler;->stylesTable:Lorg/apache/poi/xssf/model/StylesTable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :catch_0
    iget-object v0, p0, Lcn/hutool/poi/excel/sax/Excel07SaxReader;->handler:Lcn/hutool/poi/excel/sax/SheetDataSaxHandler;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "getSharedStringsTable"

    invoke-static {p1, v2, v1}, Lcn/hutool/core/util/ReflectUtil;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/model/SharedStrings;

    iput-object v1, v0, Lcn/hutool/poi/excel/sax/SheetDataSaxHandler;->sharedStrings:Lorg/apache/poi/xssf/model/SharedStrings;

    .line 135
    invoke-direct {p0, p1, p2}, Lcn/hutool/poi/excel/sax/Excel07SaxReader;->readSheets(Lorg/apache/poi/xssf/eventusermodel/XSSFReader;Ljava/lang/String;)Lcn/hutool/poi/excel/sax/Excel07SaxReader;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic read(Ljava/io/File;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/poi/exceptions/POIException;
        }
    .end annotation

    .line 28
    invoke-virtual {p0, p1, p2}, Lcn/hutool/poi/excel/sax/Excel07SaxReader;->read(Ljava/io/File;I)Lcn/hutool/poi/excel/sax/Excel07SaxReader;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic read(Ljava/io/File;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/poi/exceptions/POIException;
        }
    .end annotation

    .line 28
    invoke-virtual {p0, p1, p2}, Lcn/hutool/poi/excel/sax/Excel07SaxReader;->read(Ljava/io/File;Ljava/lang/String;)Lcn/hutool/poi/excel/sax/Excel07SaxReader;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic read(Ljava/io/InputStream;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/poi/exceptions/POIException;
        }
    .end annotation

    .line 28
    invoke-virtual {p0, p1, p2}, Lcn/hutool/poi/excel/sax/Excel07SaxReader;->read(Ljava/io/InputStream;I)Lcn/hutool/poi/excel/sax/Excel07SaxReader;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic read(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/poi/exceptions/POIException;
        }
    .end annotation

    .line 28
    invoke-virtual {p0, p1, p2}, Lcn/hutool/poi/excel/sax/Excel07SaxReader;->read(Ljava/io/InputStream;Ljava/lang/String;)Lcn/hutool/poi/excel/sax/Excel07SaxReader;

    move-result-object p1

    return-object p1
.end method

.method public setRowHandler(Lcn/hutool/poi/excel/sax/handler/RowHandler;)Lcn/hutool/poi/excel/sax/Excel07SaxReader;
    .locals 1

    .line 48
    iget-object v0, p0, Lcn/hutool/poi/excel/sax/Excel07SaxReader;->handler:Lcn/hutool/poi/excel/sax/SheetDataSaxHandler;

    invoke-virtual {v0, p1}, Lcn/hutool/poi/excel/sax/SheetDataSaxHandler;->setRowHandler(Lcn/hutool/poi/excel/sax/handler/RowHandler;)V

    return-object p0
.end method

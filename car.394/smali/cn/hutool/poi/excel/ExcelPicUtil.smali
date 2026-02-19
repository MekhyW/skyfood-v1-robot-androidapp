.class public Lcn/hutool/poi/excel/ExcelPicUtil;
.super Ljava/lang/Object;
.source "ExcelPicUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPicMap(Lorg/apache/poi/ss/usermodel/Workbook;I)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/usermodel/Workbook;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/ss/usermodel/PictureData;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Workbook must be not null !"

    .line 42
    invoke-static {p0, v2, v1}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    if-gez p1, :cond_0

    move p1, v0

    .line 47
    :cond_0
    instance-of v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    if-eqz v1, :cond_1

    .line 48
    check-cast p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-static {p0, p1}, Lcn/hutool/poi/excel/ExcelPicUtil;->getPicMapXls(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;I)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 49
    :cond_1
    instance-of v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    if-eqz v1, :cond_2

    .line 50
    check-cast p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-static {p0, p1}, Lcn/hutool/poi/excel/ExcelPicUtil;->getPicMapXlsx(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;I)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 52
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    aput-object p0, v1, v0

    const-string p0, "Workbook type [{}] is not supported!"

    invoke-static {p0, v1}, Lcn/hutool/core/util/StrUtil;->format(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static getPicMapXls(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;I)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/ss/usermodel/PictureData;",
            ">;"
        }
    .end annotation

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 66
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getAllPictures()Ljava/util/List;

    move-result-object v1

    .line 67
    invoke-static {v1}, Lcn/hutool/core/collection/CollectionUtil;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object p0

    .line 71
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getDrawingPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->getChildren()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/hssf/usermodel/HSSFShape;

    .line 72
    instance-of v2, p1, Lorg/apache/poi/hssf/usermodel/HSSFPicture;

    if-eqz v2, :cond_0

    .line 73
    move-object v2, p1

    check-cast v2, Lorg/apache/poi/hssf/usermodel/HSSFPicture;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->getPictureIndex()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 74
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getAnchor()Lorg/apache/poi/hssf/usermodel/HSSFAnchor;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 75
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getRow1()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getCol1()S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    aput-object p1, v4, v3

    const-string p1, "{}_{}"

    invoke-static {p1, v4}, Lcn/hutool/core/util/StrUtil;->format(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static getPicMapXlsx(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;I)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/ss/usermodel/PictureData;",
            ">;"
        }
    .end annotation

    .line 90
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 91
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object p0

    .line 93
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRelations()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    .line 94
    instance-of v1, p1, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    if-eqz v1, :cond_0

    .line 95
    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    .line 96
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->getShapes()Ljava/util/List;

    move-result-object p1

    .line 99
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFShape;

    .line 100
    instance-of v2, v1, Lorg/apache/poi/xssf/usermodel/XSSFPicture;

    if-eqz v2, :cond_1

    .line 101
    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFPicture;

    .line 102
    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->getPreferredSize()Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getFrom()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 103
    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->getRow()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->getCol()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v3, v4

    const-string v2, "{}_{}"

    invoke-static {v2, v3}, Lcn/hutool/core/util/StrUtil;->format(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->getPictureData()Lorg/apache/poi/xssf/usermodel/XSSFPictureData;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v0
.end method

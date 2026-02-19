.class public Lcn/hutool/poi/excel/reader/ColumnSheetReader;
.super Lcn/hutool/poi/excel/reader/AbstractSheetReader;
.source "ColumnSheetReader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/hutool/poi/excel/reader/AbstractSheetReader<",
        "Ljava/util/List<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final columnIndex:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 27
    invoke-direct {p0, p2, p3}, Lcn/hutool/poi/excel/reader/AbstractSheetReader;-><init>(II)V

    .line 28
    iput p1, p0, Lcn/hutool/poi/excel/reader/ColumnSheetReader;->columnIndex:I

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lorg/apache/poi/ss/usermodel/Sheet;)Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcn/hutool/poi/excel/reader/ColumnSheetReader;->read(Lorg/apache/poi/ss/usermodel/Sheet;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public read(Lorg/apache/poi/ss/usermodel/Sheet;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/usermodel/Sheet;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    iget v1, p0, Lcn/hutool/poi/excel/reader/ColumnSheetReader;->startRowIndex:I

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Sheet;->getFirstRowNum()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 36
    iget v2, p0, Lcn/hutool/poi/excel/reader/ColumnSheetReader;->endRowIndex:I

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Sheet;->getLastRowNum()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_0
    if-gt v1, v2, :cond_2

    .line 40
    invoke-interface {p1, v1}, Lorg/apache/poi/ss/usermodel/Sheet;->getRow(I)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v3

    iget v4, p0, Lcn/hutool/poi/excel/reader/ColumnSheetReader;->columnIndex:I

    invoke-static {v3, v4}, Lcn/hutool/poi/excel/cell/CellUtil;->getCell(Lorg/apache/poi/ss/usermodel/Row;I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v3

    iget-object v4, p0, Lcn/hutool/poi/excel/reader/ColumnSheetReader;->cellEditor:Lcn/hutool/poi/excel/cell/CellEditor;

    invoke-static {v3, v4}, Lcn/hutool/poi/excel/cell/CellUtil;->getCellValue(Lorg/apache/poi/ss/usermodel/Cell;Lcn/hutool/poi/excel/cell/CellEditor;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 41
    iget-boolean v4, p0, Lcn/hutool/poi/excel/reader/ColumnSheetReader;->ignoreEmptyRow:Z

    if-nez v4, :cond_1

    .line 42
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

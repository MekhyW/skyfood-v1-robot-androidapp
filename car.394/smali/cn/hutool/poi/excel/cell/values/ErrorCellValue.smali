.class public Lcn/hutool/poi/excel/cell/values/ErrorCellValue;
.super Ljava/lang/Object;
.source "ErrorCellValue.java"

# interfaces
.implements Lcn/hutool/poi/excel/cell/CellValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/hutool/poi/excel/cell/CellValue<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final cell:Lorg/apache/poi/ss/usermodel/Cell;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/usermodel/Cell;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcn/hutool/poi/excel/cell/values/ErrorCellValue;->cell:Lorg/apache/poi/ss/usermodel/Cell;

    return-void
.end method


# virtual methods
.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcn/hutool/poi/excel/cell/values/ErrorCellValue;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcn/hutool/poi/excel/cell/values/ErrorCellValue;->cell:Lorg/apache/poi/ss/usermodel/Cell;

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Cell;->getErrorCellValue()B

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/FormulaError;->forInt(B)Lorg/apache/poi/ss/usermodel/FormulaError;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/FormulaError;->getString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.class public Lcn/hutool/poi/excel/cell/FormulaCellValue;
.super Ljava/lang/Object;
.source "FormulaCellValue.java"

# interfaces
.implements Lcn/hutool/poi/excel/cell/CellValue;
.implements Lcn/hutool/poi/excel/cell/CellSetter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/hutool/poi/excel/cell/CellValue<",
        "Ljava/lang/String;",
        ">;",
        "Lcn/hutool/poi/excel/cell/CellSetter;"
    }
.end annotation


# instance fields
.field private final formula:Ljava/lang/String;

.field private final result:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, v0}, Lcn/hutool/poi/excel/cell/FormulaCellValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcn/hutool/poi/excel/cell/FormulaCellValue;->formula:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcn/hutool/poi/excel/cell/FormulaCellValue;->result:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getResult()Ljava/lang/Object;
    .locals 1

    .line 62
    iget-object v0, p0, Lcn/hutool/poi/excel/cell/FormulaCellValue;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcn/hutool/poi/excel/cell/FormulaCellValue;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcn/hutool/poi/excel/cell/FormulaCellValue;->formula:Ljava/lang/String;

    return-object v0
.end method

.method public setValue(Lorg/apache/poi/ss/usermodel/Cell;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcn/hutool/poi/excel/cell/FormulaCellValue;->formula:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/apache/poi/ss/usermodel/Cell;->setCellFormula(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcn/hutool/poi/excel/cell/FormulaCellValue;->getResult()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

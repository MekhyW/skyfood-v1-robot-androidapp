.class public Lcn/hutool/poi/excel/cell/setters/NumberCellSetter;
.super Ljava/lang/Object;
.source "NumberCellSetter.java"

# interfaces
.implements Lcn/hutool/poi/excel/cell/CellSetter;


# instance fields
.field private final value:Ljava/lang/Number;


# direct methods
.method constructor <init>(Ljava/lang/Number;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcn/hutool/poi/excel/cell/setters/NumberCellSetter;->value:Ljava/lang/Number;

    return-void
.end method


# virtual methods
.method public setValue(Lorg/apache/poi/ss/usermodel/Cell;)V
    .locals 2

    .line 30
    iget-object v0, p0, Lcn/hutool/poi/excel/cell/setters/NumberCellSetter;->value:Ljava/lang/Number;

    invoke-static {v0}, Lcn/hutool/core/util/NumberUtil;->toDouble(Ljava/lang/Number;)D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/apache/poi/ss/usermodel/Cell;->setCellValue(D)V

    return-void
.end method

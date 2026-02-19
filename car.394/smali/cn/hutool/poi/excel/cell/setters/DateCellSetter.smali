.class public Lcn/hutool/poi/excel/cell/setters/DateCellSetter;
.super Ljava/lang/Object;
.source "DateCellSetter.java"

# interfaces
.implements Lcn/hutool/poi/excel/cell/CellSetter;


# instance fields
.field private final value:Ljava/util/Date;


# direct methods
.method constructor <init>(Ljava/util/Date;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcn/hutool/poi/excel/cell/setters/DateCellSetter;->value:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public setValue(Lorg/apache/poi/ss/usermodel/Cell;)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcn/hutool/poi/excel/cell/setters/DateCellSetter;->value:Ljava/util/Date;

    invoke-interface {p1, v0}, Lorg/apache/poi/ss/usermodel/Cell;->setCellValue(Ljava/util/Date;)V

    return-void
.end method

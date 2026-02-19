.class public Lcn/hutool/poi/excel/cell/setters/BooleanCellSetter;
.super Ljava/lang/Object;
.source "BooleanCellSetter.java"

# interfaces
.implements Lcn/hutool/poi/excel/cell/CellSetter;


# instance fields
.field private final value:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Ljava/lang/Boolean;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcn/hutool/poi/excel/cell/setters/BooleanCellSetter;->value:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public setValue(Lorg/apache/poi/ss/usermodel/Cell;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcn/hutool/poi/excel/cell/setters/BooleanCellSetter;->value:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/ss/usermodel/Cell;->setCellValue(Z)V

    return-void
.end method
